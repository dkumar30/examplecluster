- view: venue
  sql_table_name: public.venue
  fields:

  - dimension: venueid
    primary_key: true
    type: int
    sql: ${TABLE}.venueid

  - dimension: venuecity
    sql: ${TABLE}.venuecity

  - dimension: venuename
    sql: ${TABLE}.venuename

  - dimension: venueseats
    type: int
    sql: ${TABLE}.venueseats

  - dimension: venuestate
    sql: ${TABLE}.venuestate

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - venuename
      - venueid
        # Counters for views that join 'venue'
      - event.count

