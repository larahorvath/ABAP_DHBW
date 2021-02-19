CLASS zcl_119008_exercise_0203 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119008_exercise_0203 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA travels TYPE TABLE OF /dmo/travel.
  Data travel TYPE /dmo/travel.



MOVE-CORRESPONDING ZCL_119000_FLIGHT=>get_all_Travels( ) TO travels.
  out->write(  |hallo| ).

*LOOP AT travels INTO travel WHERE status <> 'B'.
*      Delete travel From Travels.
*    ENDLOOP.

    DELETE travels WHERE status IS INITIAL OR status <> 'B'.

out->write(  |hallo| ).

  ENDMETHOD.
ENDCLASS.
