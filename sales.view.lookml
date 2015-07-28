- view: sales
  sql_table_name: public.sales
  fields:

  - dimension: salesid
    primary_key: true
    type: int
    sql: ${TABLE}.salesid

  - dimension: buyerid
    type: int
    sql: ${TABLE}.buyerid

  - dimension: commission
    type: number
    sql: ${TABLE}.commission

  - dimension: dateid
    type: int
    hidden: true
    sql: ${TABLE}.dateid

  - dimension: eventid
    type: int
    hidden: true
    sql: ${TABLE}.eventid

  - dimension: listid
    type: int
    sql: ${TABLE}.listid

  - dimension: pricepaid
    type: int
    sql: ${TABLE}.pricepaid

  - dimension: qtysold
    type: number
    sql: ${TABLE}.qtysold

  - dimension_group: saletime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.saletime

  - dimension: sellerid
    type: int
    sql: ${TABLE}.sellerid

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - salesid
      - event.eventname
      - event.eventid
      - date.dateid

