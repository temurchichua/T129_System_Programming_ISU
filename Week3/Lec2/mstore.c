long plus(long x, long y);

void multstore(long x, long y, long *dest)
{
	long t = plus(x, y);
	*dest = t;
}
