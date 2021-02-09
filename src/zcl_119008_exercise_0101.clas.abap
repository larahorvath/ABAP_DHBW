CLASS zcl_119008_exercise_0101 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119008_exercise_0101 IMPLEMENTATION.

    METHOD if_oo_adt_classrun~main.



    DATA travel_id TYPE /dmo/travel_id VALUE '00000001'.
    DATA travel_desc TYPE /dmo/description VALUE 'Beschreibung dies das.'.
    DATA travel_start_date TYPE /dmo/begin_date VALUE '20210208'.
    Data travel_end_date TYPE /dmo/end_date VALUE '20210312'.

    out->write( |Reisenummer: | && travel_id && |\n| && |Reisebeschreibung: | && travel_desc && |\n| && |Reisestart: | && travel_start_date ).

    ENDMETHOD.

ENDCLASS.
