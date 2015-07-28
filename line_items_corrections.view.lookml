- view: line_items_corrections
  sql_table_name: public.line_items_corrections
  fields:

  - dimension: action_name
    sql: ${TABLE}.action_name

  - dimension: action_type
    sql: ${TABLE}.action_type

  - dimension: advertiser_comm
    type: number
    sql: ${TABLE}.advertiser_comm

  - dimension: cj_fee
    type: number
    sql: ${TABLE}.cj_fee

  - dimension: commision_id
    type: int
    sql: ${TABLE}.commision_id

  - dimension: corrected_amt
    type: number
    sql: ${TABLE}.corrected_amt

  - dimension_group: event_dt
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.event_dt

  - dimension: order_discount
    type: number
    sql: ${TABLE}.order_discount

  - dimension: order_id
    sql: ${TABLE}.order_id

  - dimension_group: posting_dt
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.posting_dt

  - dimension: pub_comm
    type: number
    sql: ${TABLE}.pub_comm

  - dimension: sale_amt
    type: number
    sql: ${TABLE}.sale_amt

  - dimension: status
    sql: ${TABLE}.status

  - dimension: website_name
    sql: ${TABLE}.website_name

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - action_name
      - website_name

