view: density_score {
  derived_table: {
    sql: WITH x as (
      SELECT
       doc_type,
       e.text,
       automl_file_path,
       nlp_file_path,
       raw_file_path,
       CASE
       WHEN raw_file_path = 'ConcertAI Dataset/AdditionalSnippets.xlsx' THEN right(raw_file_path, 23)
       WHEN raw_file_path = 'gs://cai-poc-dataset/ConcertAI Dataset/GeneticTesting_NGSdocs/Caris_12345678A.pdf'
         OR raw_file_path = 'gs://cai-poc-dataset/ConcertAI Dataset/GeneticTesting_NGSdocs/Caris_12345678B.pdf' THEN right(raw_file_path, 19)
       WHEN raw_file_path = 'gs://cai-poc-dataset/ConcertAI Dataset/GeneticTesting_NGSdocs/Guardant_34567891A.pdf'
         OR raw_file_path = 'gs://cai-poc-dataset/ConcertAI Dataset/GeneticTesting_NGSdocs/Guardant_34567891B.pdf' THEN right(raw_file_path, 22)
       WHEN raw_file_path = 'gs://cai-poc-dataset/ConcertAI Dataset/GeneticTesting_NGSdocs/Foundation_23456789B.pdf'
         OR raw_file_path = 'gs://cai-poc-dataset/ConcertAI Dataset/GeneticTesting_NGSdocs/Foundation_23456789A.pdf' THEN right(raw_file_path, 24)
       WHEN raw_file_path = '/b/cai-poc-dataset/o/ConcertAI%20Dataset%2FExternalEval_March2022_4pts_120docs%2FPatient_4%2F140743076.ocr_REDACTED_txt.txt' THEN right(raw_file_path, 42)
       WHEN raw_file_path LIKE '/b/cai-poc-dataset/o/ConcertAI%20Dataset%2FExternalEval_March2022%' THEN right(raw_file_path, 38)
       WHEN raw_file_path = '/b/cai-poc-dataset/o/ConcertAI%20Dataset%2FSynthetic%20Clinical%20Notes%2FJohn%20Doe.txt' THEN right(raw_file_path, 14)
       WHEN raw_file_path = '/b/cai-poc-dataset/o/ConcertAI%20Dataset%2FSynthetic%20Clinical%20Notes%2FBear%20Trap.txt'
         OR raw_file_path = '/b/cai-poc-dataset/o/ConcertAI%20Dataset%2FSynthetic%20Clinical%20Notes%2FLeelavathi.txt' THEN right(raw_file_path, 15)
       WHEN raw_file_path = '/b/cai-poc-dataset/o/ConcertAI%20Dataset%2FSynthetic%20Clinical%20Notes%2FRaja%20Sekar.txt'
         OR raw_file_path = '/b/cai-poc-dataset/o/ConcertAI%20Dataset%2FSynthetic%20Clinical%20Notes%2FSundarlingam.txt' THEN right(raw_file_path, 16)
       WHEN raw_file_path = '/b/cai-poc-dataset/o/ConcertAI%20Dataset%2FSynthetic%20Clinical%20Notes%2FRose%20Philip.txt'
         OR raw_file_path = '/b/cai-poc-dataset/o/ConcertAI%20Dataset%2FSynthetic%20Clinical%20Notes%2FSammy%20White.txt'
         OR raw_file_path = '/b/cai-poc-dataset/o/ConcertAI%20Dataset%2FSynthetic%20Clinical%20Notes%2FVimala%20Raja.txt'
         OR raw_file_path = '/b/cai-poc-dataset/o/ConcertAI%20Dataset%2FSynthetic%20Clinical%20Notes%2FSue%20H%20Yoo.txt' THEN right(raw_file_path, 17)
       WHEN raw_file_path = '/b/cai-poc-dataset/o/ConcertAI%20Dataset%2FSynthetic%20Clinical%20Notes%2FSydney%20Harbour.txt' THEN right(raw_file_path, 20)
       WHEN raw_file_path = '/b/cai-poc-dataset/o/ConcertAI%20Dataset%2FSynthetic%20Clinical%20Notes%2FMonicka%20Rajendran.txt' THEN right(raw_file_path, 23)
       WHEN raw_file_path = '/b/cai-poc-dataset/o/ConcertAI%20Dataset%2FSynthetic%20Clinical%20Notes%2FAshwin%20Ramachandran.txt' THEN right(raw_file_path, 25)
       WHEN raw_file_path = 'gs://cai-poc-dataset/ConcertAI Dataset/Lab reports_Redacted/CA 19-9_redacted.pdf' THEN right(raw_file_path, 20)
       WHEN raw_file_path = 'gs://cai-poc-dataset/ConcertAI Dataset/Lab reports_Redacted/CA 27.29_redacted.pdf' THEN right(raw_file_path, 21)
       WHEN raw_file_path = 'gs://cai-poc-dataset/ConcertAI Dataset/Lab reports_Redacted/Albumin, globulin, beta-2 microglobulin_redacted.pdf' THEN right(raw_file_path, 51)
       WHEN raw_file_path LIKE 'gs://cai-poc-dataset/ConcertAI Dataset/Lab reports_Redacted/%' THEN right(raw_file_path, 16)
       ELSE raw_file_path
       END AS file_name,
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

      WHERE doc_type IN('ExternalEval',
      'AdditionalRedacted Patient Documents',
      'Synthetic Clinical Notes',
      'Genetic Tests',
      'AdditionalSnippets')
      )

      select
      replace(replace(file_name, "%20", "_"),"%2F","_") as file_name,
      count(distinct mentions_text) as mentions,
      count(distinct entity_id) as entities
      FROM x
      GROUP BY 1
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

  dimension: mentions {
    type: number
    sql: ${TABLE}.mentions ;;
  }

  dimension: entities {
    type: number
    sql: ${TABLE}.entities ;;
  }

  set: detail {
    fields: [file_name, mentions, entities]
  }
}
