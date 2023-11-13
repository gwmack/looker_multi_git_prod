view: pageviews_2022 {
  sql_table_name: `datamonetizationdemo.wikipedia_pageviews.pageviews_2022` ;;

  dimension_group: datehour {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.datehour ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }
  dimension: views {
    type: number
    sql: ${TABLE}.views ;;
  }
  dimension: wiki {
    type: string
    sql: ${TABLE}.wiki ;;
  }
  measure: count {
    type: count
  }
}
