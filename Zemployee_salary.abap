*&---------------------------------------------------------------------*
*& Report ZEMPLOYEE_SALARY_ALV
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------
REPORT zemployee_salary_alv.

TYPES: BEGIN OF ty_employee,
         employee_id TYPE i,
         name        TYPE string,
         department  TYPE string,
         salary      TYPE p DECIMALS 2,
         location    TYPE string,
       END OF ty_employee.


DATA: gt_employee TYPE TABLE OF ty_employee,
      gs_employee TYPE ty_employee.

DATA: gt_fieldcat TYPE slis_t_fieldcat_alv,
      gs_fieldcat TYPE slis_fieldcat_alv.

DATA: gt_filtered TYPE TABLE OF ty_employee,
      gs_filtered TYPE ty_employee.


PARAMETERS p_dept TYPE string.


" Employee 1
gs_employee-employee_id = 1001.
gs_employee-name        = 'Ravi'.
gs_employee-department  = 'IT'.
gs_employee-salary      = 45000.
gs_employee-location    = 'Hyderabad'.

APPEND gs_employee TO gt_employee.


" Employee 2
CLEAR gs_employee.

gs_employee-employee_id = 1002.
gs_employee-name        = 'Anu'.
gs_employee-department  = 'HR'.
gs_employee-salary      = 38000.
gs_employee-location    = 'Bangalore'.

APPEND gs_employee TO gt_employee.


" Employee 3
CLEAR gs_employee.

gs_employee-employee_id = 1003.
gs_employee-name        = 'Kiran'.
gs_employee-department  = 'Finance'.
gs_employee-salary      = 52000.
gs_employee-location    = 'Chennai'.

APPEND gs_employee TO gt_employee.


" Employee 4
CLEAR gs_employee.

gs_employee-employee_id = 1004.
gs_employee-name        = 'Priya'.
gs_employee-department  = 'IT'.
gs_employee-salary      = 48000.
gs_employee-location    = 'Pune'.

APPEND gs_employee TO gt_employee.


" Filter employee data

LOOP AT gt_employee INTO gs_employee.

  IF gs_employee-department = p_dept.

    APPEND gs_employee TO gt_filtered.

  ENDIF.

ENDLOOP.


" Field catalog

CLEAR gs_fieldcat.
gs_fieldcat-fieldname = 'EMPLOYEE_ID'.
gs_fieldcat-seltext_m = 'Employee ID'.
APPEND gs_fieldcat TO gt_fieldcat.


CLEAR gs_fieldcat.
gs_fieldcat-fieldname = 'NAME'.
gs_fieldcat-seltext_m = 'Name'.
APPEND gs_fieldcat TO gt_fieldcat.


CLEAR gs_fieldcat.
gs_fieldcat-fieldname = 'DEPARTMENT'.
gs_fieldcat-seltext_m = 'Department'.
APPEND gs_fieldcat TO gt_fieldcat.


CLEAR gs_fieldcat.
gs_fieldcat-fieldname = 'SALARY'.
gs_fieldcat-seltext_m = 'Salary'.
APPEND gs_fieldcat TO gt_fieldcat.


CLEAR gs_fieldcat.
gs_fieldcat-fieldname = 'LOCATION'.
gs_fieldcat-seltext_m = 'Location'.
APPEND gs_fieldcat TO gt_fieldcat.


" Display ALV

CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
  EXPORTING
    it_fieldcat = gt_fieldcat
  TABLES
    t_outtab    = gt_filtered.
