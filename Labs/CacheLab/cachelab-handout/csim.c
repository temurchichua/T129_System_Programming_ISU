#include <getopt.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <limits.h>
// Temur Chichua - temur.chichua.1@iliauni.edu.ge

// struct to store cache properties
typedef struct {
    int s; // number of set index bits
    int S; // number of sets
    int E; // number of lines per set
    int b; // number of block bits
    int B; // block size (bytes)

    int hit_count; // number of hits
    int miss_count; // number of misses
    int eviction_count; // number of evictions
    int lru_counter; // counter for LRU replacement policy
    int verbose; // verbose flag
    char * trace_file; // name of the valgrind trace to replay
} cache_properties;

// cache line struct
typedef struct {
    int valid; // valid bit
    unsigned long long tag; // tag
    int lru; // LRU counter
    char * block; // block for data (not used for this lab)
} cache_line;

// cache set struct
typedef struct {
    cache_line * lines; // lines (pointer to array of lines)
} cache_set;

// cache struct
typedef struct {
    cache_set * sets; // sets (pointer to array of sets)
} cache;

// function prototypes
void printManual(); // print help message
void printProperties(cache_properties properties); // print cache properties
int argumentsToProperties(int argc, char ** argv, cache_properties * properties); // parse arguments and store them in cache_properties struct
cache init_cache(cache_properties props); // initialize cache
cache_properties parse_args(int argc, char ** argv, cache_properties *properties); // parse command line arguments
int find_open_line(cache_set set, cache_properties properties); // finds if there is an open line in the set

// helper print functions
void printSummary(int hit_count, int miss_count, int eviction_count);
void printManual(){
    printf("Usage: ./csim-ref [-hv] -s <s> -E <E> -b <b> -t <tracefile>\n");
    printf("Options:\n");
    printf("  -h         Print this help message.\n");
    printf("  -v         Optional verbose flag.\n");
    printf("  -s <s>     Number of set index bits.\n");
    printf("  -E <E>     Number of lines per set.\n");
    printf("  -b <b>     Number of block offset bits.\n");
    printf("  -t <tracefile>  Name of the valgrind trace to replay.\n");
    printf("\n");
    printf("Examples:\n");
    printf("  linux>  ./csim -v -s 4 -E 1 -b 4 -t traces/yi.trace\n");
};
void printProperties(cache_properties properties){
    printf("s: %d S: %d E: %d b: %d B: %d\n", properties.s, properties.S, properties.E, properties.b, properties.B);
    printf("hit_count: %d miss_count: %d eviction_count: %d verbose: %d\n", properties.hit_count, properties.miss_count, properties.eviction_count, properties.verbose);
};
// helper function to parse arguments
int argumentsToProperties(int argc, char **argv, cache_properties *properties){

    // set default values
    properties->s = 0;
    properties->S = 0;
    properties->E = 0;
    properties->b = 0;
    properties->B = 0;
    properties->hit_count = 0;
    properties->miss_count = 0;
    properties->eviction_count = 0;
    properties->verbose = 0;
    properties->trace_file = NULL;

    // check if there are arguments
    if (argc < 2){
        printManual();
        return 0;
    }

    // parse arguments using getopt
    int opt;
    while ((opt = getopt(argc, argv, "hvs:E:b:t:")) != -1){
        switch (opt){
            case 'h':
                printManual();
                return 0;
            case 'v':
                properties->verbose = 1;
                break;
            case 's':
                properties->s = atoi(optarg);
                break;
            case 'E':
                properties->E = atoi(optarg);
                break;
            case 'b':
                properties->b = atoi(optarg);
                break;
            case 't':
                properties->trace_file = optarg;
                break;
            default:
                printManual();
                return 0;
        }
    }
    // calculate S and B
    properties->S = pow(2, properties->s);
    properties->B = pow(2, properties->b);

    // check if all arguments are set
    if (properties->s == 0 || properties->E == 0 || properties->b == 0 || properties->trace_file == NULL){
        printManual();
        exit(-1);
    }
    return 0;
};

int find_open_line(cache_set set, cache_properties properties){
    // find the index of the next open line in the set
    for (int i = 0; i < properties.E; i++){
        if (set.lines[i].valid == 0){
            return i;
        }
    }
    // if the set is full, return -1
    return -1;
};

// initialize cache
cache init_cache(cache_properties props){
    cache cache;
    // allocate memory for sets
    cache.sets = (cache_set *) malloc(props.S * sizeof(cache_set));
    // allocate memory for lines in each set
    for (int i = 0; i < props.S; i++){
        cache.sets[i].lines = (cache_line *) malloc(props.E * sizeof(cache_line));
        for (int j = 0; j < props.E; j++){
            cache.sets[i].lines[j].valid = 0;
            cache.sets[i].lines[j].tag = 0;
            cache.sets[i].lines[j].block = (char *) malloc(props.B * sizeof(char));

        }
    }
    return cache;
};

cache_properties simulate(cache currentCache, cache_properties properties, unsigned long long address){
    // get tag and set index (data is not needed)
    unsigned long long tag = address >> (properties.s + properties.b);
    // set index is the last s bits of the address. we shift the address to the right by b bits and mask the last s bits
    unsigned long long set_index = (address >> properties.b) & (properties.S - 1);
    // get set from cache
    cache_set set = currentCache.sets[set_index];
    // count hits
    int hits = 0;
    // check hit by iterating over the lines in set
    for (int i = 0; i < properties.E; i++){
        // init set line
        cache_line line = set.lines[i];
        // check if line is valid and tag matches
        if (line.valid == 1 && line.tag == tag){
            // increment hit count
            properties.hit_count++;
            // increment hits
            hits++;
            // update LRU counter
            currentCache.sets[set_index].lines[i].lru = properties.lru_counter++;;
            // print verbose output
            if (properties.verbose == 1){
                printf(" hit");
            }
        }
    } // end of hit check
    // if there was no hit, read from memory
    if ( hits == 0){
        // increment miss count
        properties.miss_count++;
        // print verbose output
        if (properties.verbose == 1){
            printf(" miss");
        }
        // check if there is an open line in the set
        int open_line = find_open_line(set, properties);
        // if there is an open line, write to it
        if (open_line != -1){
            // write to open line
            currentCache.sets[set_index].lines[open_line].valid = 1;
            currentCache.sets[set_index].lines[open_line].tag = tag;
            currentCache.sets[set_index].lines[open_line].lru = properties.lru_counter++;
        } else {
            // if there is no open line, evict
            // increment eviction count
            properties.eviction_count++;
            // print verbose output
            if (properties.verbose == 1){
                printf(" eviction");
            }
            // find the Least Recently Used line in the set
            int eviction_line = 0;
            int eviction_lru = INT_MAX;
            // iterate over the lines in the set to find the line with the lowest LRU counter
            for (int i = 0; i < properties.E; i++){
                if (currentCache.sets[set_index].lines[i].lru < eviction_lru){
                    eviction_line = i;
                    eviction_lru = currentCache.sets[set_index].lines[i].lru;
                }
            }

            // write to the line to evict
            currentCache.sets[set_index].lines[eviction_line].valid = 1;
            currentCache.sets[set_index].lines[eviction_line].tag = tag;
            currentCache.sets[set_index].lines[eviction_line].lru = properties.lru_counter++;
        }
    }



    return properties;
}

int main(int argc, char **argv){
    // cache properties
    cache_properties properties;

    // get the arguments from argv
    argumentsToProperties(argc, argv, &properties);
    // debug print
    if (properties.verbose == 1){
        printProperties(properties);
    }
    // initialize cache
    cache cache = init_cache(properties);

    // wrap trace file in a file pointer
    FILE *fp = fopen(properties.trace_file, "r");
    char operation; // operation
    unsigned long long address; // address
    int size; // size

    // read trace file
    while (fscanf(fp, " %c %llx,%d", &operation, &address, &size) > 0){
        // print verbose output
        if (properties.verbose == 1){
            printf("\n%c %llx,%d", operation, address, size);
        }
        // check if operation is L, S or M
        if (operation == 'L' || operation == 'S' || operation == 'M'){
            // simulate cache
            properties = simulate(cache, properties, address);
            // check if operation is
            if (operation == 'M'){ // M - Modification = data load followed by a data store
                // simulate cache again
                properties = simulate(cache, properties, address);
            }
        }
    }
    // close file pointer
    fclose(fp);
    // print results
    printf("\n");
    printSummary(properties.hit_count, properties.miss_count, properties.eviction_count);
    return 0;
}
