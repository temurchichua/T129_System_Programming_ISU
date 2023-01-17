/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 *
 * In this naive approach, a block is allocated by simply incrementing
 * the brk pointer.  A block is pure payload. There are no headers or
 * footers.  Blocks are never coalesced or reused. Realloc is
 * implemented directly using mm_malloc and mm_free.
 *
Malloclab uses a single continuous list to keep track of all free memory blocks in the heap.
 The heap is initialized using the mm_init function, which creates a prologue block and an epilogue footer
 for alignment purposes. A global variable, heap_listp, points to the "payload" of the prologue block
 and is used to navigate the heap.

When malloc is called, the program conducts a first-fit search of the global list to find a suitable block.
 Once a block is identified, it is allocated. If the free block size minus the requested size is large enough
 to create another block, it is split and added to the free list. Otherwise, the entire free block is allocated
 for the requested malloc.

When a block is freed, it is added back to the free list. The program then checks the adjacent blocks
 and merges any that are also free. A heap checker has also been implemented to test the heap's consistency
 by running tests to ensure that pointers in the heap point to valid heap addresses and that the free list
 contains only free blocks.
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/*********************************************************
 * NOTE TO STUDENTS: Before you do anything else, please
 * provide your team information in the following struct.
 ********************************************************/
team_t team = {
        /* Team name */
        "CyberGang",
        /* First member's full name */
        "Temur Chichua",
        /* First member's email address */
        "temur.chichua.1@iliauni.edu.ge",
        /* Second member's full name (leave blank if none) */
        "",
        /* Second member's email address (leave blank if none) */
        ""
};

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8
#define WSIZE 4 /* Word and header/footer size (bytes) */
#define DSIZE 8 /* Double word size (bytes) */
#define DDSIZE 16 /* Double word size (bytes) */
#define CHUNKSIZE (1<<12) /* Extend heap by this amount (bytes) */

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc) ((size) | (alloc))

/* GET and PUT words from address */
#define GET(p) (*(unsigned int *)(p))
#define PUT(p, val) (*(unsigned int *)(p) = (val))

/* Read the size and allocated fields from address p */
#define GET_SIZE(p) (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp) ((char *)(bp) - WSIZE) /* bp points to payload */
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp) ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE)))
#define PREV_BLKP(bp) ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE)))

/* Global variables */
static char *heap_listp = 0; /* Pointer to first block */
char *list_head = 0; /* Pointer to the head of the free list */
char *epilogue = 0; /* Pointer to the epilogue block */
int free_count = 0; /* Number of free blocks in the heap */

/* Function prototypes for internal helper routines */
static void *extend_heap(size_t size); // Extend heap with free block and return its block pointer
static void *coalesce(void *bp); // Coalesce free blocks
static void *find_fit(size_t asize); // Find a fit for a block with asize bytes
static void place(void *bp, size_t asize); // Place block of asize bytes at start of free block bp and split if remainder would be at least minimum block size
static void add_to_list(void *bp); // Add a free block to the free list
static void remove_from_list(void *bp); // Remove a free block from the free list

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)


#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

/*
 * mm_init - initialize the malloc package.
 */
int mm_init(void)
{
    // Create the initial empty heap
    // The heap is initialized with a prologue block and an epilogue footer for alignment purposes
    if ((heap_listp = mem_sbrk(4*WSIZE)) == (void *)-1) // 4 words for prologue, epilogue, and two free blocks
        // mem_sbrk is a wrapper function for sbrk
        // sbrk is a system call that extends the heap by the number of bytes specified
        // mem_sbrk returns the address of the new heap
        // if the address is -1, then the heap could not be extended
        return -1;

    PUT(heap_listp, 0); // Alignment padding
    PUT(heap_listp + (1*WSIZE), PACK(DSIZE, 1)); // Prologue header
    PUT(heap_listp + (2*WSIZE), PACK(DSIZE, 1)); // Prologue footer
    PUT(heap_listp + (3*WSIZE), PACK(0, 1)); // Epilogue header
    // update epilogue block address
    epilogue = (heap_listp + (3*WSIZE)); // Epilogue block
    heap_listp += (2*WSIZE); // heap_listp points to the payload of the prologue block
    list_head = 0; //initialize global list to indicate empty
    free_count = 0; //no free blocks
    // Extend the empty heap with a free block of CHUNKSIZE bytes
    if (extend_heap(CHUNKSIZE) == NULL) // CHUNKSIZE is 4096 bytes (1<<12) and WSIZE is 4 bytes (1 word)
        // extend_heap returns the address of the new free block
        // if the address is NULL, then the heap could not be extended
        return -1;
    // The heap now contains a prologue block, an epilogue footer, and a free block
    return 0;
}

/*
 * extend_heap - Extend heap with free block and return its block pointer
 */
static void *extend_heap(size_t size){
    char *bp;
    size_t asize;

    // Allocate an even number of words to maintain alignment
    asize = DSIZE * ((size + DSIZE + (DSIZE - 1))/ DSIZE); // asize is the number of bytes to be allocated

    if ((long)(bp = mem_sbrk(asize)) == -1) // mem_sbrk returns the address of the new heap
        return NULL;

    // Initialize free block header/footer and the epilogue header
    PUT(HDRP(bp), PACK(asize, 0)); // Free block header
    PUT(FTRP(bp), PACK(asize, 0)); // Free block footer
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1)); // New epilogue header

    // Coalesce if the previous block was free
    return coalesce(bp);

}

/*
 * MAX - Returns the maximum of two numbers
 */
size_t MAX(size_t asize, int i) {
    if (asize > i) {
        return asize;
    }
    return i;
}

/*
 * find_fit - Find a fit for a block with asize bytes
 */
static void *find_fit(size_t asize) {
    // check free blocks
    if (free_count == 0) { // if there are no free blocks, return NULL
        return NULL;
    }
    // if there are free blocks, find the first fit
    char *bp = list_head; // start at the head of the free list
    for (int i = 0; i < free_count; i++) { // iterate through the free list
        if (asize <= GET_SIZE(HDRP(bp))) { // if the free block is big enough, return the address of the free block
            return bp;
        }
        bp = (char *) GET(bp + WSIZE); // otherwise, move to the next free block
    }
    return NULL; // if no free block is big enough, return NULL
}

/*
 * place - Place block of asize bytes at start of free block bp
 * and split if remainder would be at least minimum block size
 */
static void place(void *bp, size_t asize) {
    size_t csize = GET_SIZE(HDRP(bp)); // csize is the size of the free block
    void *next; // next is the address of the next block
    if ((csize - asize) >= (2*DSIZE)) { // if the free block is big enough to split
        remove_from_list(bp); // remove the free block from the free list
        PUT(HDRP(bp), PACK(asize, 1)); // allocate the block
        PUT(FTRP(bp), PACK(asize, 1));
        next = NEXT_BLKP(bp); // next is the address of the next block
        PUT(HDRP(next), PACK(csize-asize, 0)); // create a new free block
        PUT(FTRP(next), PACK(csize-asize, 0));
        add_to_list(next); // add the new free block to the free list
    }
    else { // if the free block is not big enough to split
        PUT(HDRP(bp), PACK(csize, 1)); // allocate the block
        PUT(FTRP(bp), PACK(csize, 1));
        remove_from_list(bp); // remove the free block from the free list
    }
}

/*
 * remove_from_list - Remove a free block from the free list
 */
static void remove_from_list(void *bp) {
    if (GET(bp) == 0 && GET(bp+WSIZE) == 0) { // if the free block is the only free block
        list_head = 0; // set the head of the free list to 0
    }
    else if (GET(bp) == 0 && GET(bp + WSIZE) != 0) { // if the free block is the head of the free list
        list_head = (char *) GET(bp + WSIZE); // set the head of the free list to the next free block
        PUT(list_head, 0); // set the previous pointer of the new head to NULL
    }
    else if (GET(bp) != 0 && GET(bp + WSIZE) == 0) { // if the free block is the tail of the free list
        char *prev = (char *) GET(bp); // get the previous free block
        PUT(prev + WSIZE, 0); // set the next pointer of the previous free block to NULL
    }
    else { // if the free block is in the middle of the free list
        char *prev = (char *) GET(bp); // get the previous free block
        char *next = (char *) GET(bp + WSIZE); // get the next free block
        PUT(prev + WSIZE, (size_t) next); // set the next pointer of the previous free block to the next free block
        PUT(next, (size_t) prev); // set the previous pointer of the next free block to the previous free block

    }
    free_count--; // decrement the number of free blocks
}

/*
 * add_to_list - Add a free block to the free list
 */
static void add_to_list(void *bp) {
    if (free_count == 0) { // if the free list is empty
        list_head = bp; // set the head of the free list to the free block
        PUT(bp, 0); // set the previous pointer of the free block to NULL
        PUT(bp + WSIZE, 0); // set the next pointer of the free block to NULL
    }
    else { // if the free list is not empty
        PUT(((char *)list_head), (int)bp); //set the current head of the list's previous to bp
        PUT(bp, 0); //sets bp's previous to 0
        PUT(bp + WSIZE, (int)list_head); //sets bp's next to the head of the list
        list_head = bp;  //sets the head of the list to bpt to the free block
    }
    free_count++; // increment the number of free blocks
}

/*
 * coalesce - Boundary tag coalescing. Return ptr to coalesced block
 */
static void *coalesce(void *bp)
{
    size_t prev_alloc = GET_ALLOC(HDRP(PREV_BLKP(bp))); // check if the previous block is allocated
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp))); // check if the next block is allocated
    size_t size = GET_SIZE(HDRP(bp)); // get the size of the free block

    if (prev_alloc && next_alloc) { // Case 1: both the previous and next blocks are allocated
        add_to_list(bp); // add the free block to the free list
        return bp;
    }

    else if (prev_alloc && !next_alloc) { // Case 2: the previous block is allocated and the next block is free
        remove_from_list(NEXT_BLKP(bp)); // remove the next block from the free list
        size += GET_SIZE(HDRP(NEXT_BLKP(bp))); // add the size of the next block to the size of the free block
        PUT(HDRP(bp), PACK(size, 0)); // set the header of the free block to the new size
        PUT(FTRP(bp), PACK(size, 0)); // set the footer of the free block to the new size
        add_to_list(bp); // add the free block to the free list
    }

    else if (!prev_alloc && next_alloc) { // Case 3: the previous block is free and the next block is allocated
        remove_from_list(PREV_BLKP(bp)); // remove the previous block from the free list
        size += GET_SIZE(HDRP(PREV_BLKP(bp))); // add the size of the previous block to the size of the free block
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0)); // set the header of the free block to the new size
        PUT(FTRP(bp), PACK(size, 0)); // set the footer of the free block to the new size
        bp = PREV_BLKP(bp); // move to the previous block
        add_to_list(bp); // add the free block to the free list
    }

    else { // Case 4: both the previous and next blocks are free
        remove_from_list(PREV_BLKP(bp)); // remove the previous block from the free list
        remove_from_list(NEXT_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(FTRP(NEXT_BLKP(bp))); // add the size of the previous block and the size of the next block to the size of the free block
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0)); // set the header of the free block to the new size
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0)); // set the footer of the free block to the new size
        bp = PREV_BLKP(bp); // move to the previous block
        add_to_list(bp); // add the free block to the free list
    }

    return bp;
}

/*
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size)
{
    size_t asize; // Adjusted block size
    size_t extendsize; // Amount to extend heap if no fit
    char *bp; // Pointer to the free block

    // Ignore spurious requests
    if (size <= 0)
        return NULL;

    // Adjust block size to include overhead and alignment reqs.
    if (size <= DSIZE) // DSIZE is 8 bytes
        asize = 2*DSIZE; // 16 bytes
    else
        asize = DSIZE * ((size + DSIZE + (DSIZE - 1))/ DSIZE); // 8 byte alignment

    // Search the free list for a fit
    if ((bp = find_fit(asize)) != NULL) { // find_fit returns the address of the free block
        place(bp, asize); // place the block at the start of the free block
        return bp;
    }

    // No fit found. Get more memory and place the block
    extendsize = MAX(asize, CHUNKSIZE); // CHUNKSIZE is 4096 bytes
    if ((bp = extend_heap(extendsize)) == NULL) // extend_heap returns the address of the new free block
        return NULL;
    place(bp, asize); // place the block at the start of the free block
    return bp;
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *ptr)
{
    // check if the pointer is NULL or if the pointer is not aligned
    if (ptr == NULL || ((size_t)ptr % 8) != 0) {
        return;
    }
    // check if the heap is initialized
    if (heap_listp == 0) {
        printf("Heap is not initialized");
        return;
    }
    // get block size
    size_t size = GET_SIZE(HDRP(ptr));

    // set header and footer to free
    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size, 0));

    // coalesce
    coalesce(ptr);
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size)
{
    void *oldptr = ptr;
    void *newptr;
    void *temp;
    size_t temp_size; // size of the free block
    size_t copySize; // size of the block to be copied
    size_t prev_alloc; // check if the previous block is allocated
    size_t next_alloc; // check if the next block is allocated
    size_t curr_size; // size of the current block
    int incSize; // size to increase the block by

    prev_alloc = GET_ALLOC(HDRP(PREV_BLKP(oldptr))); // check if the previous block is allocated
    next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(oldptr))); // check if the next block is allocated
    curr_size = GET_SIZE(HDRP(oldptr)); // get the size of the current block

    // if the size is 0, free the block
    if (size == 0) {
        mm_free(ptr);
        return NULL;
    }

    // if the pointer is NULL, call malloc
    if (oldptr == NULL) {
        return mm_malloc(size);
    }

    if (curr_size < size + DSIZE){ // if the current size is less than the size to be reallocated
        incSize = 1; // increase the size by 1
    }
    else {
        incSize = 0; // don't increase the size
    }

    // if the previous block is allocated and the next block is allocated
    if ((curr_size - size - DSIZE) > DDSIZE && incSize == 0) { // if the current size is greater than the size to be reallocated
        if (size <= DSIZE) { // if the size is less than or equal to 8 bytes
            size = 2*DSIZE; // set the size to 16 bytes
        }
        else {
            size = DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE); // 8 byte alignment
        }

        // if there is space for a new free block
        if((curr_size - size) > DDSIZE) {
            // set the header and footer of the new free block
            PUT(HDRP(oldptr), PACK(size, 1));
            PUT(FTRP(oldptr), PACK(size, 1));
            // set the header and footer of the reallocated block
            newptr = ptr; // set the new pointer to the old pointer
            oldptr = (NEXT_BLKP(ptr)); // set the old pointer to the next block
            PUT(HDRP(oldptr), PACK(curr_size - size, 0)); // set the header of the reallocated block
            PUT(FTRP(oldptr), PACK(curr_size - size, 0)); // set the footer of the reallocated block
            coalesce(oldptr); // coalesce the old pointer
            return newptr;
        }
    }

    if (incSize == 0 ){ // if the size is not increased
        return ptr;
    } else {
        int next_size = GET_SIZE(HDRP(NEXT_BLKP(oldptr))); // get the size of the next block
        int prev_size = GET_SIZE(HDRP(PREV_BLKP(oldptr))); // get the size of the previous block
        // if nex and prev alloc are free and the size is enough to reallocate
        if (next_alloc == 0 && prev_alloc == 0 && (next_size + prev_size + curr_size) >= (size + DSIZE)) {
            // remove the free block from the free list
            remove_from_list(PREV_BLKP(oldptr));
            remove_from_list(NEXT_BLKP(oldptr));
            // set the header and footer of the new free block
            temp_size = next_size + prev_size + curr_size;
            if (size <= DSIZE) { // if the size is less than or equal to 8 bytes
                size = 2*DSIZE; // set the size to 16 bytes
            }
            else {
                size = DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE); // 8 byte alignment
            }
            // if can't be split
            if ((temp_size + curr_size) < (size + DDSIZE))
                size = temp_size + curr_size;

            // set the header and footer of the reallocated block
            newptr = PREV_BLKP(oldptr); // set the new pointer to the previous block
            oldptr = NEXT_BLKP(oldptr); // set the old pointer to the next block
            PUT(HDRP(newptr), PACK(size, 1)); // set the header of the reallocated block

            // get copy size
            copySize = GET_SIZE(HDRP(oldptr));
            memcpy(newptr, oldptr, copySize); // copy the old block to the new block
            PUT(FTRP(newptr), PACK(size, 1)); // set the footer of the reallocated block

            if((temp_size + curr_size) >= (size + DDSIZE) ) { // if the block can be split
                // get new empty block
                temp = NEXT_BLKP(newptr);
                // set the header and footer of the new free block
                PUT(HDRP(temp), PACK(temp_size + curr_size - size, 0));
                PUT(FTRP(temp), PACK(temp_size + curr_size - size, 0));
                coalesce(temp); // coalesce the new free block
            }
            return newptr;
        }
        else if(next_alloc == 0 && (next_size + curr_size) >= (size + DSIZE)) { // if the next block is free and the size is enough to reallocate
            remove_from_list(NEXT_BLKP(ptr)); // remove the free block from the free list

            if (size <= DSIZE) { // if the size is less than or equal to 8 bytes
                size = 2 * DSIZE; // set the size to 16 bytes
            } else {
                size = DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE); // 8 byte alignment
            }

            // if space not enough for free block
            if ((next_size + curr_size) < (size + DDSIZE))
                size = next_size + curr_size;

            // set the header and footer of the reallocated block
            PUT(HDRP(oldptr), PACK(size, 1)); // set the header of the reallocated block
            PUT(FTRP(oldptr), PACK(size, 1)); // set the footer of the reallocated block

            // if new free block can be created
            if ((next_size + curr_size) >= (size + DDSIZE)) {
                // get new empty block
                temp = NEXT_BLKP(oldptr);
                // set the header and footer of the new free block
                PUT(HDRP(temp), PACK(next_size + curr_size - size, 0));
                PUT(FTRP(temp), PACK(next_size + curr_size - size, 0));
                coalesce(temp); // coalesce the new free block
            }
            return oldptr;
        }
            // if prev_alloc is free and prev + current has enough space for a new block
        else if (prev_alloc == 0 && (prev_size + curr_size) >= (size + DSIZE)) {
            newptr = PREV_BLKP(oldptr); // set the new pointer to the previous block

            // remove the free block from the free list
            remove_from_list(PREV_BLKP(oldptr));
            if (size <= DSIZE) { // if the size is less than or equal to 8 bytes
                size = 2 * DSIZE; // set the size to 16 bytes
            } else {
                size = DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE); // 8 byte alignment
            }

            // if space not enough for free block
            if ((prev_size + curr_size) < (size + DDSIZE))
                size = prev_size + curr_size;

            // set the header and footer of the reallocated block
            PUT(HDRP(newptr), PACK(size, 1)); // set the header of the reallocated block

            copySize = GET_SIZE(HDRP(oldptr)); // get the size of the old block
            memcpy(newptr, oldptr, copySize); // copy the old block to the new block

            PUT(FTRP(newptr), PACK(size, 1)); // set the footer of the reallocated block

            // if new free block can be created
            if ((prev_size + curr_size) >= (size + DDSIZE)) {
                // get new empty block
                temp = NEXT_BLKP(newptr);
                // set the header and footer of the new free block
                PUT(HDRP(temp), PACK(prev_size + curr_size - size, 0));
                PUT(FTRP(temp), PACK(prev_size + curr_size - size, 0));
                coalesce(temp); // coalesce the new free block
            }
            return newptr;
        }
            // else, extend the heap and set new pointer
        else {
            newptr = mm_malloc(size);
            copySize = GET_SIZE(HDRP(oldptr));
            if (size < copySize)
                copySize = size;
            memcpy(newptr, oldptr, copySize);
            mm_free(oldptr);
            return newptr;

        }
    }
}









