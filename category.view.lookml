- view: category
  sql_table_name: public.category
  fields:

  - dimension: catdesc
    sql: ${TABLE}.catdesc

  - dimension: catgroup
    sql: ${TABLE}.catgroup

  - dimension: catid
    type: int
    sql: ${TABLE}.catid

  - dimension: catname
    sql: ${TABLE}.catname

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - catname

