int sum(int *a, int n)
{
	static int sum = 0;
	for(int i=0; i < n; i++)
	{
		sum += a[i];
	}

	return sum;
}
