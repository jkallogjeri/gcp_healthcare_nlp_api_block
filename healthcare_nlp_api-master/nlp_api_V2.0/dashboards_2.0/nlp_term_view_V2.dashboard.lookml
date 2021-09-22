- dashboard: nlp_term_view_2_0
  title: NLP Term View (2.0)
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"\n\theight: 54px; \n\tbackground-color: #fff; \n\tcolor:\
      \ #5f6368; \n\tborder-radius: 54px; \n\tborder: solid 1px #5f6368; \n\tfont-family:\
      \ Google Sans,Noto Sans,Noto Sans JP,Noto Sans KR,Noto Naskh Arabic,Noto Sans\
      \ Thai,Noto Sans Hebrew,Noto Sans Bengali,sans-serif; \n\tpadding: 12px;\">\n\
      <span style=\"\n\twidth: 38px;\n\theight: 38px; \n\tborder-radius: 60px; \n\t\
      background-color: white; \n\tdisplay:table-cell; \n\tvertical-align:middle;\
      \ \n\ttext-align:center; \n\tmargin-right: 12px; \n\tfloat: left;\">\n<img width=\"\
      30px\" src=\"https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png\"\
      />\n</span>\n\n<span style=\"\n\tpadding: 4px; \n\tfloat:left;\">\n\t<h1 style=\"\
      margin-top:0;\n\t\tcolor: #6E6E6E; \n\tline-height: 1.2rem;\">\n\t\tNLP Term\
      \ View\n\t</h1>\n</span>\n<span style=\"padding: 4px; float:right;\">\n\t<a\
      \ style=\"background-color: #fff; color: #5f6368; padding: 5px 10px;\" href=\"\
      /boards/82\">Home</a>\n\t<a style=\"background-color: #fff; color: #5f6368;\
      \ padding: 5px 10px;\" href=\"/explore/healthcare_nlp_api_2.0/kaggle_nlp_results_terms\"\
      >Explore the Data</a>\n\t<a style=\"background-color: #fff; color: #5f6368;\
      \ padding: 5px 10px;\" href=\"/dashboards-next/healthcare_nlp_api_2.0::nlp_patient_view_2_0\"\
      >Go to Patient View</a>\n</span>\n\n<div>"
    row: 0
    col: 0
    width: 19
    height: 2
  - title: Top LIKELY Current Medications
    name: Top LIKELY Current Medications
    model: healthcare_nlp_api_2.0
    explore: kaggle_nlp_results_terms
    type: looker_grid
    fields: [kaggle_clinical_notes_nlp_results__entity_mentions.text__content_medicine,
      kaggle_clinical_notes_nlp_results__entity_mentions.term_mention_count, kaggle_clinical_notes_nlp_results__entity_mentions.confidence_mean]
    filters:
      kaggle_clinical_notes_nlp_results__entity_mentions.is_patient_current_medication: 'Yes'
    sorts: [kaggle_clinical_notes_nlp_results__entity_mentions.term_mention_count
        desc, kaggle_clinical_notes_nlp_results__entity_mentions.confidence_mean]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      kaggle_clinical_notes_nlp_results__entity_mentions.term_mention_count: Term
        Mention Count
      kaggle_clinical_notes_nlp_results__entity_mentions.text__content_medicine: Orig
        Term Medicine
    series_cell_visualizations:
      kaggle_clinical_notes_nlp_results__entity_mentions.term_mention_count:
        is_active: true
        palette:
          palette_id: 8aa0cfc3-e7f1-6169-aa5f-478efc539f63
          collection_id: google
          custom_colors:
          - "#0F9D58"
          - "#0F9D58"
    header_font_color: "#000000"
    header_background_color: "#E8EAED"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Filter on Original Term: kaggle_nlp_results_terms.filter_on_original_term
    row: 11
    col: 8
    width: 8
    height: 8
  - title: Top LIKELY Current Problems/Conditions
    name: Top LIKELY Current Problems/Conditions
    model: healthcare_nlp_api_2.0
    explore: kaggle_nlp_results_terms
    type: looker_grid
    fields: [kaggle_clinical_notes_nlp_results__entity_mentions.term_mention_count,
      kaggle_clinical_notes_nlp_results__entity_mentions.confidence_mean, kaggle_clinical_notes_nlp_results__entity_mentions.text__content_problem]
    filters:
      kaggle_clinical_notes_nlp_results__entity_mentions.is_patient_current_problem: 'Yes'
    sorts: [kaggle_clinical_notes_nlp_results__entity_mentions.term_mention_count
        desc, kaggle_clinical_notes_nlp_results__entity_mentions.confidence_mean]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      kaggle_clinical_notes_nlp_results__entity_mentions.term_mention_count: Term
        Mention Count
      kaggle_clinical_notes_nlp_results__entity_mentions.text__content_medicine: Orig
        Term Medicine
      kaggle_clinical_notes_nlp_results__entity_mentions.text__content_problem: Orig
        Term Problem
    series_cell_visualizations:
      kaggle_clinical_notes_nlp_results__entity_mentions.term_mention_count:
        is_active: true
        palette:
          palette_id: 8aa8e796-ddb0-b8c5-5300-b8080c53a105
          collection_id: google
          custom_colors:
          - "#4285F4"
          - "#4285F4"
    header_font_color: "#000000"
    header_background_color: "#E8EAED"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Filter on Original Term: kaggle_nlp_results_terms.filter_on_original_term
    row: 11
    col: 0
    width: 8
    height: 8
  - title: Top LIKELY Clinical History
    name: Top LIKELY Clinical History
    model: healthcare_nlp_api_2.0
    explore: kaggle_nlp_results_terms
    type: looker_grid
    fields: [kaggle_clinical_notes_nlp_results__entity_mentions.term_mention_count,
      kaggle_clinical_notes_nlp_results__entity_mentions.confidence_mean, kaggle_clinical_notes_nlp_results__entity_mentions.text__content_clinical_history]
    filters:
      kaggle_clinical_notes_nlp_results__entity_mentions.is_patient_clinical_history: 'Yes'
    sorts: [kaggle_clinical_notes_nlp_results__entity_mentions.term_mention_count
        desc, kaggle_clinical_notes_nlp_results__entity_mentions.confidence_mean]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      kaggle_clinical_notes_nlp_results__entity_mentions.term_mention_count: Term
        Mention Count
      kaggle_clinical_notes_nlp_results__entity_mentions.text__content_medicine: Orig
        Term Medicine
      kaggle_clinical_notes_nlp_results__entity_mentions.text__content_clinical_history: Orig
        Term Clinical History
    series_cell_visualizations:
      kaggle_clinical_notes_nlp_results__entity_mentions.term_mention_count:
        is_active: true
        palette:
          palette_id: e0dc88c3-b0ae-279e-d8e1-cd1186afabdd
          collection_id: google
          custom_colors:
          - "#F4B400"
          - "#F4B400"
    header_font_color: "#000000"
    header_background_color: "#E8EAED"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Filter on Original Term: kaggle_nlp_results_terms.filter_on_original_term
    row: 11
    col: 16
    width: 8
    height: 8
  - title: Filtered Term View
    name: Filtered Term View
    model: healthcare_nlp_api_2.0
    explore: kaggle_nlp_results_terms
    type: looker_grid
    fields: [kaggle_nlp_results_terms.text_list]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '22'
    rows_font_size: '32'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations: {}
    series_text_format:
      kaggle_nlp_results_terms.text_list:
        align: left
        fg_color: "#EA4335"
        bold: true
    header_font_color: "#EA4335"
    defaults_version: 1
    series_types: {}
    title_hidden: true
    listen:
      Filter on Original Term: kaggle_nlp_results_terms.filter_on_original_term
    row: 5
    col: 8
    width: 16
    height: 6
  - name: " (2)"
    type: text
    title_text: ''
    body_text: |-
      <body>
      <p><b>Color Key: </b><br>
      <mark style="color: white; background-color: #4285F4">Blue</mark>: Patient Current Problem/Condition<br>
      <mark style="color: white; background-color:#0F9D58">Green</mark>: Patient Current Medication <br>
      <mark style="color: white; background-color:#F4B400">Yellow</mark>: Patient Clinical History <br>
      </p>
      </body>
    row: 0
    col: 19
    width: 5
    height: 2
  - title: Count of Mentions
    name: Count of Mentions
    model: healthcare_nlp_api_2.0
    explore: kaggle_nlp_results_terms
    type: single_value
    fields: [kaggle_nlp_results_terms.filtered_text_mention_count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#EA4335"
    single_value_title: Count of Mentions
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#EA4335",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Filter on Original Term: kaggle_nlp_results_terms.filter_on_original_term
    row: 7
    col: 0
    width: 4
    height: 2
  - title: Count of Observations
    name: Count of Observations
    model: healthcare_nlp_api_2.0
    explore: kaggle_nlp_results_terms
    type: single_value
    fields: [kaggle_nlp_results_terms.filtered_text_observation_count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#EA4335"
    single_value_title: Count of Observations
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#EA4335",
        font_color: "#ffffff", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Filter on Original Term: kaggle_nlp_results_terms.filter_on_original_term
    row: 5
    col: 4
    width: 4
    height: 2
  - title: Count of Filtered Distinct Terms
    name: Count of Filtered Distinct Terms
    model: healthcare_nlp_api_2.0
    explore: kaggle_nlp_results_terms
    type: single_value
    fields: [kaggle_nlp_results_terms.filtered_text_distinct_count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#EA4335"
    single_value_title: Count of Distinct Terms
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#EA4335",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Filter on Original Term: kaggle_nlp_results_terms.filter_on_original_term
    row: 7
    col: 4
    width: 4
    height: 2
  - title: Count of Patients
    name: Count of Patients
    model: healthcare_nlp_api_2.0
    explore: kaggle_nlp_results_terms
    type: single_value
    fields: [kaggle_nlp_results_terms.filtered_patient_distinct_count, kaggle_nlp_results_terms.filtered_text_observation_count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#EA4335"
    single_value_title: Count of Patients
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#EA4335",
        font_color: "#ffffff", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Filter on Original Term: kaggle_nlp_results_terms.filter_on_original_term
    row: 5
    col: 0
    width: 4
    height: 2
  - title: Visit Service Type Summary
    name: Visit Service Type Summary
    model: healthcare_nlp_api_2.0
    explore: kaggle_nlp_results_terms
    type: looker_pie
    fields: [kaggle_nlp_results_terms.filtered_patient_distinct_count, kaggle_clinical_notes_nlp_results.service]
    sorts: [kaggle_nlp_results_terms.filtered_patient_distinct_count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    series_colors: {}
    custom_color_enabled: true
    custom_color: "#EA4335"
    show_single_value_title: true
    single_value_title: Count of Patients
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Filter on Original Term: kaggle_nlp_results_terms.filter_on_original_term
    row: 22
    col: 0
    width: 8
    height: 8
  - title: Patient Age Tier Summary
    name: Patient Age Tier Summary
    model: healthcare_nlp_api_2.0
    explore: kaggle_nlp_results_terms
    type: looker_column
    fields: [kaggle_nlp_results_terms.filtered_patient_distinct_count, kaggle_clinical_notes_nlp_results.age_tier,
      kaggle_clinical_notes_nlp_results.sex]
    pivots: [kaggle_clinical_notes_nlp_results.sex]
    fill_fields: [kaggle_clinical_notes_nlp_results.age_tier]
    sorts: [kaggle_clinical_notes_nlp_results.age_tier, kaggle_clinical_notes_nlp_results.sex]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: Count of Patients, orientation: left, series: [{axisId: kaggle_nlp_results_terms.filtered_patient_distinct_count,
            id: kaggle_nlp_results_terms.filtered_patient_distinct_count, name: Filtered
              Patient Distinct Count}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      kaggle_nlp_results_terms.filtered_patient_distinct_count: "#E52592"
      F - kaggle_nlp_results_terms.filtered_patient_distinct_count: "#EA4335"
    column_spacing_ratio: 0
    column_group_spacing_ratio: 0
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    custom_color_enabled: true
    custom_color: "#EA4335"
    show_single_value_title: true
    single_value_title: Count of Patients
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Filter on Original Term: kaggle_nlp_results_terms.filter_on_original_term
    row: 22
    col: 8
    width: 8
    height: 8
  - title: Patient Gender Summary
    name: Patient Gender Summary
    model: healthcare_nlp_api_2.0
    explore: kaggle_nlp_results_terms
    type: looker_pie
    fields: [kaggle_nlp_results_terms.filtered_patient_distinct_count, kaggle_clinical_notes_nlp_results.sex]
    sorts: [kaggle_nlp_results_terms.filtered_patient_distinct_count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    series_colors:
      kaggle_nlp_results_terms.filtered_patient_distinct_count: "#E52592"
      M: "#12B5CB"
      F: "#EA4335"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Count of Patients, orientation: left, series: [{axisId: kaggle_nlp_results_terms.filtered_patient_distinct_count,
            id: kaggle_nlp_results_terms.filtered_patient_distinct_count, name: Filtered
              Patient Distinct Count}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    column_spacing_ratio: 0
    column_group_spacing_ratio: 0
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    custom_color: "#EA4335"
    show_single_value_title: true
    single_value_title: Count of Patients
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Filter on Original Term: kaggle_nlp_results_terms.filter_on_original_term
    row: 22
    col: 16
    width: 8
    height: 8
  - title: Average LOS in Days
    name: Average LOS in Days
    model: healthcare_nlp_api_2.0
    explore: kaggle_nlp_results_terms
    type: single_value
    fields: [kaggle_clinical_notes_nlp_results.average_los_days]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: '4.5/${kaggle_clinical_notes_nlp_results.average_los_days}',
        label: National Average LOS, value_format: !!null '', value_format_name: percent_1,
        _kind_hint: measure, table_calculation: national_average_los, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    custom_color: "#EA4335"
    single_value_title: Average LOS in Days
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#12B5CB",
        font_color: "#ffffff", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    series_colors:
      kaggle_nlp_results_terms.filtered_patient_distinct_count: "#E52592"
      M: "#12B5CB"
      F: "#EA4335"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Count of Patients, orientation: left, series: [{axisId: kaggle_nlp_results_terms.filtered_patient_distinct_count,
            id: kaggle_nlp_results_terms.filtered_patient_distinct_count, name: Filtered
              Patient Distinct Count}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    column_spacing_ratio: 0
    column_group_spacing_ratio: 0
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Filter on Original Term: kaggle_nlp_results_terms.filter_on_original_term
    row: 9
    col: 0
    width: 8
    height: 2
  - name: " (3)"
    type: text
    title_text: ''
    body_text: |2

      <h1 style="margin-top:20px; padding: 5px; border-bottom: solid 1px black; height: 60px; color: black; text-align: center;">Filtered Term Summary</h1>
    row: 2
    col: 0
    width: 24
    height: 3
  - name: " (4)"
    type: text
    title_text: ''
    body_text: |2

      <h1 style="margin-top:20px; padding: 5px; border-bottom: solid 1px black; height: 60px; color: black; text-align: center;">Patient Demographics Summary</h1>
    row: 19
    col: 0
    width: 24
    height: 3
  filters:
  - name: Filter on Original Term
    title: Filter on Original Term
    type: string_filter
    default_value: "%cancer%"
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: popover
      options: []
