project_name: "concertai-demo"

# Use local_dependency: To enable referencing of another project
# on this instance with include: statements
#
constant: CONNECTION_NAME {
  value: "concertai-nlp"
  export: override_optional
}

# constant: NLP_RESULTS_SCOPED_TABLE_PATH {
#   value: "concertai-demo.Entity"
#   export: override_optional
# }

# constant: ENCOUNTER_SCOPED_TABLE_PATH {
#   value: ""
#   export: override_optional
# }

# constant: PATIENT_SCOPED_TABLE_PATH {
#   value: ""
#   export: override_optional
# }
