view: citibike_stations {
  sql_table_name: `datamonetizationdemo.nyc_citi_bike_trips.citibike_stations` ;;

  dimension: capacity {
    type: number
    description: "ANumber of total docking points installed at this station, both available and unavailable."
    sql: ${TABLE}.capacity ;;
  }
  dimension: eightd_has_available_keys {
    type: yesno
    sql: ${TABLE}.eightd_has_available_keys ;;
  }
  dimension: eightd_has_key_dispenser {
    type: yesno
    sql: ${TABLE}.eightd_has_key_dispenser ;;
  }
  dimension: is_installed {
    type: yesno
    description: "Is the station currently on the street?"
    sql: ${TABLE}.is_installed ;;
  }
  dimension: is_renting {
    type: yesno
    description: "Is the station currently renting bikes?"
    sql: ${TABLE}.is_renting ;;
  }
  dimension: is_returning {
    type: yesno
    description: "Is the station accepting bike returns?"
    sql: ${TABLE}.is_returning ;;
  }
  dimension_group: last_reported {
    type: time
    description: "Timestamp indicating the last time this station reported its status to the backend, in NYC local time."
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_reported ;;
  }
  dimension: latitude {
    type: number
    description: "The latitude of station. The field value must be a valid WGS 84 latitude in decimal degrees format."
    sql: ${TABLE}.latitude ;;
  }
  dimension: longitude {
    type: number
    description: "The longitude of station. The field value must be a valid WGS 84 latitude in decimal degrees format."
    sql: ${TABLE}.longitude ;;
  }
  dimension: name {
    type: string
    description: "Public name of the station."
    sql: ${TABLE}.name ;;
  }
  dimension: num_bikes_available {
    type: number
    description: "Number of bikes available for rental."
    sql: ${TABLE}.num_bikes_available ;;
  }
  dimension: num_bikes_disabled {
    type: number
    description: "Number of disabled bikes at the station."
    sql: ${TABLE}.num_bikes_disabled ;;
  }
  dimension: num_docks_available {
    type: number
    description: "Number of docks accepting bike returns."
    sql: ${TABLE}.num_docks_available ;;
  }
  dimension: num_docks_disabled {
    type: number
    description: "Number of empty but disabled dock points at the station."
    sql: ${TABLE}.num_docks_disabled ;;
  }
  dimension: region_id {
    type: number
    description: "ID of the region where station is located."
    sql: ${TABLE}.region_id ;;
  }
  dimension: rental_methods {
    type: string
    description: "Array of enumerables containing the payment methods accepted at this station."
    sql: ${TABLE}.rental_methods ;;
  }
  dimension: short_name {
    type: string
    description: "Short name or other type of identifier, as used by the data publisher."
    sql: ${TABLE}.short_name ;;
  }
  dimension: station_id {
    type: string
    description: "Unique identifier of a station."
    sql: ${TABLE}.station_id ;;
  }
  measure: count {
    type: count
    drill_fields: [name, short_name]
  }
}
