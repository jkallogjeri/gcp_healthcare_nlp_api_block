view: document_table {
  derived_table: {
    sql: SELECT
        gcs_uri as file_name,
        was_ocrd,
        was_abstracted,
        raw_text,
        automl_dataset_url
      FROM entities.Document
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.file_name ;;
  }

  dimension: was_ocrd {
    type: yesno
    sql: ${TABLE}.was_ocrd ;;
  }

  dimension: was_abstracted {
    type: yesno
    sql: ${TABLE}.was_abstracted ;;
  }

  dimension: raw_text {
    type: string
    sql: ${TABLE}.raw_text ;;
  }

  dimension: automl_dataset_url {
    link: {
      label: "Automl Dataset"
      url: "{{ value }}"
      icon_url: "http://google.com/favicon.ico"
    }
    sql: ${TABLE}.automl_dataset_url ;;
  }

  set: detail {
    fields: [file_name, was_ocrd, was_abstracted, raw_text, automl_dataset_url]
  }
}
