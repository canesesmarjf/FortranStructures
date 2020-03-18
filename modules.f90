! ==============================================================================
MODULE local
  IMPLICIT NONE
  INTEGER, PARAMETER ::i4=SELECTED_INT_KIND(9),i8=SELECTED_INT_KIND(18),  &
  r4=SELECTED_REAL_KIND(6,37),r8=SELECTED_REAL_KIND(13,307)
END MODULE local

! ==============================================================================
MODULE dataTYP
  USE local
  IMPLICIT NONE

  TYPE inTYP
    INTEGER(i4) :: a, b, c
    REAL(r8) :: x, y, z
    LOGICAL :: flag_1, flag_2, flag_3
  END TYPE inTYP

  TYPE outTYP
    INTEGER(i4) :: sum_int
    REAL(r8) :: sum_real
    LOGICAL :: flag_AND
  END TYPE outTYP

END MODULE dataTYP
! ==============================================================================
