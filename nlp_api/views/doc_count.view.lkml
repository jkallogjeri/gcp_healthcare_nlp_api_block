view: doc_count {
  derived_table: {
    sql: SELECT
        doc_type,
        count(distinct raw_file_path) as count
      FROM entities.Entity
      WHERE doc_type IN('ExternalEval',
                        'AdditionalRedacted Patient Documents',
                        'Synthetic Clinical Notes',
                        'Genetic Tests',
                        'AdditionalSnippets')
      GROUP BY 1
      ORDER BY 2 DESC
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

  dimension: count_ {
    type: number
    sql: ${TABLE}.count ;;
  }

  set: detail {
    fields: [doc_type, count_]
  }
}
