CLASS zcl_119008_exercise_0202 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
 INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119008_exercise_0202 IMPLEMENTATION.

 METHOD if_oo_adt_classrun~main.

 DATA TRAVELS TYPE Z119008_TRAVELS .
 Data TRAVEL TYPE Z119008_travel.
DATA(num_of_travels) = lines( travels ).

 Travels = Value #(
 ( travel_id = 1 description = 'Paris' begin_date = '20210204' end_date = '20210208' )
 ( travel_id = 2 description = 'Berlin' begin_date = '20210306' end_date = '20210311' )
 ( travel_id = 3 description = 'Rom' begin_date = '20210624' end_date = '20210630' )
 ( travel_id = 4 description = '' begin_date = '20210204' end_date = '20210208' )
 ( travel_id = 5 description = 'Litauen' begin_date = '20210306' end_date = '20210311' )
 ( travel_id = 6 description = 'Ägypten' begin_date = '20210624' end_date = '20210630' )
 ).
num_of_travels = lines( travels ).
 out->write( | Die neu erzeugten Daten: | ) .
 LOOP AT Travels INTO travel .
      out->write( | { sy-tabix } - { travel-travel_id } - { travel-description } - { travel-begin_date } - { travel-end_date } { num_of_travels } | ).
    ENDLOOP.

 travels[ 2 ]-travel_id = 8. "...Index
    travels[ travel_id = 8 description = 'Berlin' ]-travel_id = 10. "...Schlüssel
num_of_travels = lines( travels ).
 out->write( | Der zweite Datensatz wurde verändert: | ) .
 LOOP AT Travels INTO travel .
      out->write( | { sy-tabix } - { travel-travel_id } - { travel-description } - { travel-begin_date } - { travel-end_date } { num_of_travels } | ).
    ENDLOOP.


DELETE travels WHERE description IS INITIAL OR description = 'Ägypten'.
num_of_travels = lines( travels ).
out->write( | Mehrere Reisen wurden gelöscht: | ) .
LOOP AT Travels INTO travel .
      out->write( | { sy-tabix } - { travel-travel_id } - { travel-description } - { travel-begin_date } - { travel-end_date } { num_of_travels } | ).
    ENDLOOP.

 ENDMETHOD.
ENDCLASS.
