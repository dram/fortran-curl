program main
  use iso_c_binding

  implicit none

  block
    use curl

    type(c_ptr) :: handle
    integer(c_int) :: res
    character(:), allocatable, target :: url

    url = "http://www.example.com" // c_null_char

    handle = curl_easy_init()

    res = curl_easy_set_ptr(handle, curlopt_url, c_loc(url))

    res = curl_easy_perform(handle)

    call curl_easy_cleanup(handle)

  end block
end program main
