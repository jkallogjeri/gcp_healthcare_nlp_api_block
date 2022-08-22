view: entities_view {
  derived_table: {
    sql: SELECT
        doc_type,
        e.text,
        automl_file_path,
        nlp_file_path,
        raw_file_path,
        preferred_term,
        v as vocabulary_codes,
        h.subject as subject,
        h.confidence as confidence,
        h.end_offset  as end_offset,
        h.start_offset  as start_offset,
        h.text  AS mentions_text,
        h.type as type,
        entity_id
      FROM entities.Entity e
      LEFT OUTER JOIN unnest(mentions) as h
      LEFT OUTER JOIN unnest(vocabulary_codes) as v
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: doc_type {
    type: string
    sql: ${TABLE}.doc_type ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension: automl_file_path {
    type: string
    sql: ${TABLE}.automl_file_path ;;
  }

  dimension: nlp_file_path {
    type: string
    sql: ${TABLE}.nlp_file_path ;;
  }

  dimension: raw_file_path {
    type: string
    sql: ${TABLE}.raw_file_path ;;
  }

  dimension: preferred_term {
    type: string
    sql: ${TABLE}.preferred_term ;;
  }

  dimension: vocabulary_codes {
    type: string
    sql: ${TABLE}.vocabulary_codes ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: confidence {
    type: number
    sql: ${TABLE}.confidence ;;
  }

  dimension: end_offset {
    type: number
    sql: ${TABLE}.end_offset ;;
  }

  dimension: start_offset {
    type: number
    sql: ${TABLE}.start_offset ;;
  }

  dimension: mentions_text {
    type: string
    sql: ${TABLE}.mentions_text ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: entity_id {
    type: string
    sql: ${TABLE}.entity_id ;;
  }

  set: detail {
    fields: [
      doc_type,
      text,
      automl_file_path,
      nlp_file_path,
      raw_file_path,
      preferred_term,
      vocabulary_codes,
      subject,
      confidence,
      end_offset,
      start_offset,
      mentions_text,
      type,
      entity_id
    ]
  }
}
