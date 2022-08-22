connection: "@{CONNECTION_NAME}"

include: "/**/*.view.lkml"          # include all views the project
# include: "/**/*.dashboard.lookml"   # include LookML dashboards

persist_for: "24 hours"
label: "NLP Demo"

explore: entities_view {}

explore: doc_count {}

explore: tags_table {}
