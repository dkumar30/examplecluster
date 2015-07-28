- view: users
  sql_table_name: public.users
  fields:

  - dimension: userid
    primary_key: true
    type: int
    sql: ${TABLE}.userid

  - dimension: city
    sql: ${TABLE}.city

  - dimension: email
    sql: ${TABLE}.email

  - dimension: firstname
    sql: ${TABLE}.firstname

  - dimension: lastname
    sql: ${TABLE}.lastname

  - dimension: likebroadway
    type: yesno
    sql: ${TABLE}.likebroadway

  - dimension: likeclassical
    type: yesno
    sql: ${TABLE}.likeclassical

  - dimension: likeconcerts
    type: yesno
    sql: ${TABLE}.likeconcerts

  - dimension: likejazz
    type: yesno
    sql: ${TABLE}.likejazz

  - dimension: likemusicals
    type: yesno
    sql: ${TABLE}.likemusicals

  - dimension: likeopera
    type: yesno
    sql: ${TABLE}.likeopera

  - dimension: likerock
    type: yesno
    sql: ${TABLE}.likerock

  - dimension: likesports
    type: yesno
    sql: ${TABLE}.likesports

  - dimension: liketheatre
    type: yesno
    sql: ${TABLE}.liketheatre

  - dimension: likevegas
    type: yesno
    sql: ${TABLE}.likevegas

  - dimension: phone
    sql: ${TABLE}.phone

  - dimension: state
    sql: ${TABLE}.state

  - dimension: username
    sql: ${TABLE}.username

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - lastname
      - firstname
      - username
      - userid

