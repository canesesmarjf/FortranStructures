SUBROUTINE function_1(in0,out0)
  USE dataTYP

  IMPLICIT NONE
  TYPE(inTYP) :: in0
  TYPE(outTYP) :: out0

  out0%sum_int  = in0%a + in0%b + in0%c
  out0%sum_real = in0%x + in0%y + in0%z
  out0%flag_AND = in0%flag_1 .AND. in0%flag_2 .AND. in0%flag_3

END SUBROUTINE function_1
