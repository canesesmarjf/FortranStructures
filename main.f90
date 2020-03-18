PROGRAM readInputData
  ! Purpose:
  ! Demonstrate the use of structures defined in modules to simplify the input
  ! and output of data from a program
  ! In the module, we define a user-defined variable called dataTYP whose fields
  ! hold the values of the data stored in the input file called data.in

  ! Modules to use:
  USE dataTYP

  ! Declare local variables:
  IMPLICIT NONE
  CHARACTER*250 :: fileName
  TYPE(inTYP) :: in
  TYPE(outTYP) :: out

  ! Create input and output namelists from the user-defined structures:
  namelist/in_nml/in
  namelist/out_nml/out

  ! Read input data:
  fileName = "data.in"
  open(unit=4,file=fileName,status='old',form='formatted')
  read(4,in_nml)
  close(unit=4)

  ! Calculations:
  out%sum_int  = in%a + in%b + in%c
  out%sum_real = in%x + in%y + in%z
  out%flag_AND = in%flag_1 .AND. in%flag_2 .AND. in%flag_3

  ! Write output data:
  fileName = "data.out"
  open(unit=8,file=fileName,form="formatted",status="unknown")
  write(8,NML = out_nml)
  close(unit=8)

END PROGRAM readInputData
