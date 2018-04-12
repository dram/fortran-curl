#include <curl/curl.h>

#include <stdio.h>

int main(void)
{
	printf("integer(c_int) :: curle_url_malformat = %d\n",
	       CURLE_URL_MALFORMAT);

	printf("integer(c_int) :: curle_ok = %d\n",
	       CURLE_OK);

	printf("integer(c_int) :: curlopt_url = %d\n",
	       CURLOPT_URL);

	printf("integer(c_int) :: curlopt_writedata = %d\n",
	       CURLOPT_WRITEDATA);

	return 0;
}
