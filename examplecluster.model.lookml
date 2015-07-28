- connection: examplecluster

- scoping: true                    # for backward compatibility
- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- base_view: category

- base_view: date

- base_view: event
  joins:
    - join: date
      sql_foreign_key: event.dateid

    - join: venue
      sql_foreign_key: event.venueid


- base_view: line_items_corrections

- base_view: listing
  joins:
    - join: event
      sql_foreign_key: listing.eventid

    - join: date
      sql_foreign_key: listing.dateid

    - join: venue
      sql_foreign_key: event.venueid
      required_joins: [event]


- base_view: sales
  joins:
    - join: event
      sql_foreign_key: sales.eventid

    - join: date
      sql_foreign_key: sales.dateid

    - join: venue
      sql_foreign_key: event.venueid
      required_joins: [event]


- base_view: users

- base_view: venue

