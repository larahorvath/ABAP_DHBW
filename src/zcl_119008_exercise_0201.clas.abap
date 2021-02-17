CLASS zcl_119008_exercise_0201 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119008_exercise_0201 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

DATA travelB TYPE /dmo/travel.
  Data travel TYPE Z119008_travel .
  travel-travel_id = 3.
  travel-description = 'Reise nach Paris.'.
  travel-begin_date = '20210218'.
  travel-end_date = '20210228'.

  out->write( |Reisenummer: { travel-travel_id } | ).
   out->write( |Reisebeschreibung: { travel-description } | ).
    out->write( | Startdatum: { travel-begin_date } | ).
     out->write(  | Enddatum: { travel-end_date } | ).


travelB = zcl_119000_flight=>GET_LATEST_TRAVEL( ).
travel = CORRESPONDING #( zcl_119000_Flight=>GET_LATEST_TRAVEL( ) ).

out->write( |Reisenummer: { travel-travel_id } | ).
   out->write( |Reisebeschreibung: { travel-description } | ).
    out->write( | Startdatum: { travel-begin_date } | ).
     out->write(  | Enddatum: { travel-end_date } | ).

     out->write( |Reisenummer: { travelb-travel_id } | ).
   out->write( |Reisebeschreibung: { travelb-description } | ).
    out->write( | Startdatum: { travelb-begin_date } | ).
     out->write(  | Enddatum: { travelb-end_date } | ).

  ENDMETHOD.
ENDCLASS.
