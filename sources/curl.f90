module curl
  use iso_c_binding

  implicit none

  include "constants.f90"

  interface
     subroutine curl_easy_cleanup(curl) &
          bind(c, name="curl_easy_cleanup")
       use iso_c_binding, only: c_ptr
       type(c_ptr), value :: curl
     end subroutine curl_easy_cleanup

     function curl_easy_init() result(res) &
          bind(c, name="curl_easy_init")
       use iso_c_binding, only: c_ptr
       type(c_ptr) :: res
     end function curl_easy_init

     function curl_easy_perform(handle) result(res) &
          bind(c, name="curl_easy_perform")
       use iso_c_binding, only: c_int, c_ptr
       type(c_ptr), value :: handle
       integer(c_int) :: res
     end function curl_easy_perform

     !! See: https://curl.haxx.se/docs/todo.html#Typesafe_curl_easy_setopt
     function curl_easy_set_ptr(handle, option, param) result(res) &
          bind(c, name="curl_easy_setopt")
       use iso_c_binding, only: c_int, c_ptr
       type(c_ptr), value :: handle
       integer(c_int), value :: option
       type(c_ptr), value :: param
       integer(c_int) :: res
     end function curl_easy_set_ptr

  end interface
end module curl
