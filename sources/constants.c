#include <curl/curl.h>
#include <stdio.h>

#define INT_PARAMETER "integer(c_int), parameter :: "

int main(void)
{
	printf(INT_PARAMETER
	       "curle_url_malformat = %d\n", CURLE_URL_MALFORMAT);
	printf(INT_PARAMETER
	       "curle_ok = %d\n", CURLE_OK);
	printf(INT_PARAMETER
	       "curlopt_url = %d\n", CURLOPT_URL);
	printf(INT_PARAMETER
	       "curlopt_writedata = %d\n", CURLOPT_WRITEDATA);

	return 0;
}
