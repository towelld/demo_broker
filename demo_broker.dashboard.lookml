- dashboard: broker_summary
  title: Broker Summary
  layout: static
  width: 1632
  tile_size: 68
  auto_run: true
  embed_style:
    background_color: "#ffffff"
    show_title: true
    title_color: "#646569"
    show_filters_bar: false
    tile_background_color: "#ffffff"
    tile_text_color: "#646569"

  elements:

    - name: query_category
      title: Query Category
      left: 6
      top: 0
      height: 6
      width: 12
      model: demo_broker
      explore: records
      type: looker_grid
      fields: [records.count, records.query_category]
      filters:
        records.match_status: Unmatched
        records.system: Acturis
      sorts: [records.count desc, records.query_category]
      limit: 500
      column_limit: 50
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: '12'
      rows_font_size: '12'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      color_application:
        collection_id: gresham
        palette_id: gresham-categorical-0
        options:
          steps: 5
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      series_cell_visualizations:
        records.count:
          is_active: true
          palette:
            palette_id: ef1d0ab1-2ee4-60b3-26db-45ce353b147a
            collection_id: gresham
            custom_colors:
            - "#92c26e"
            - "#de5454"
      x_axis_gridlines: false
      y_axis_gridlines: true
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
          showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: !!null '',
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: records.count,
              name: Records, axisId: records.count, __FILE: demo_broker/demo_broker.dashboard.lookml,
              __LINE_NUM: 85}], __FILE: demo_broker/demo_broker.dashboard.lookml, __LINE_NUM: 83}]
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
      hidden_series: []
      hide_legend: false
      legend_position: left
      colors: ['palette: Mixed Dark']
      font_size: ''
      series_types: {}
      point_style: none
      series_colors: {}
      show_value_labels: false
      label_density: 13
      label_color: ["#000000"]
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      map: uk_postcode_areas
      map_projection: ''
      quantize_colors: false
      map_plot_mode: points
      heatmap_gridlines: false
      heatmap_gridlines_empty: false
      heatmap_opacity: 0.5
      show_region_field: true
      draw_map_labels_above_data: true
      map_tile_provider: positron
      map_position: fit_data
      map_scale_indicator: 'off'
      map_pannable: true
      map_zoomable: true
      map_marker_type: circle
      map_marker_icon_name: default
      map_marker_radius_mode: proportional_value
      map_marker_units: meters
      map_marker_proportional_scale_type: linear
      map_marker_color_mode: fixed
      show_legend: true
      quantize_map_value_colors: false
      reverse_map_value_colors: false
      value_labels: legend
      label_type: labPer
      defaults_version: 1
      up_color: "#021150"
      down_color: "#757575"
      total_color: "#007c8f"
      leftAxisLabelVisible: false
      leftAxisLabel: ''
      rightAxisLabelVisible: false
      rightAxisLabel: ''
      smoothedBars: false
      orientation: automatic
      labelPosition: left
      percentType: total
      percentPosition: inline
      valuePosition: right
      labelColorEnabled: false
      labelColor: "#FFF"




    - name: unmatched_entity
      title: Unmatched Policy Value (£)
      left: 0
      top: 0
      height: 12
      width: 6
      model: demo_broker
      explore: records
      type: looker_geo_choropleth
      fields: [records.sum_amount, records.post_code]
      filters:
        records.match_status: Unmatched
        records.system: Acturis
      sorts: [records.sum_amount desc]
      map: uk_postcode_areas
      map_projection: ''
      show_view_names: false
      quantize_colors: false
      stacking: ''
      show_value_labels: false
      label_density: 13
      legend_position: left
      x_axis_gridlines: false
      y_axis_gridlines: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      value_labels: legend
      label_type: labPer
      series_types: {}
      hide_legend: false
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: '', series: [{id: records.sum_amount,
              name: Records Sum Amount, axisId: records.sum_amount}]}]
      hidden_series: []
      label_color: ["#000000"]
      font_size: ''
      reference_lines: []
      colors: [green, orange, red]
      empty_color: "#646569"
      outer_border_color: "#000000"
      inner_border_color: "#CCCCCC"


    - name: top_10_unmatched_entity
      title: Top 10 Entities - Unmatched Policy Value (£)
      left: 6
      top: 6
      height: 6
      width: 12
      model: demo_broker
      explore: records
      type: looker_grid
      fields: [records.entity, records.sum_amount]
      filters:
        records.match_status: Unmatched
        records.system: Acturis
      sorts: [records.sum_amount desc, records.entity]
      limit: 10
      column_limit: 10
      show_view_names: true
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: '12'
      rows_font_size: '12'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      color_application:
        collection_id: gresham
        palette_id: gresham-categorical-0
        options:
          steps: 5
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      series_cell_visualizations:
        records.sum_amount:
          is_active: true
          palette:
            palette_id: 478deca0-ff83-6d54-0b9f-2d67d867dc58
            collection_id: gresham
            custom_colors:
            - "#eaa153"
            - "#de5454"
      conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
          font_color: !!null '', color_application: {collection_id: gresham, palette_id: gresham-diverging-0},
          bold: false, italic: false, strikethrough: false, fields: !!null ''}]
      x_axis_gridlines: false
      y_axis_gridlines: true
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: '', series: [{id: records.sum_amount,
              name: Records Sum Amount, axisId: records.sum_amount, __FILE: demo_broker/demo_broker.dashboard.lookml,
              __LINE_NUM: 246}], __FILE: demo_broker/demo_broker.dashboard.lookml, __LINE_NUM: 244}]
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
      hidden_series: []
      hide_legend: false
      legend_position: left
      colors: ['palette: Mixed Dark']
      font_size: ''
      series_types: {}
      point_style: circle
      series_colors: {}
      show_value_labels: false
      label_density: 13
      label_color: ["#000000"]
      x_axis_scale: auto
      y_axis_combined: true
      reference_lines: []
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      value_labels: legend
      label_type: labPer
      defaults_version: 1
      show_null_points: true



    - name: query_status
      title: Query Status
      left: 18
      top: 0
      height: 3
      width: 6
      model: demo_broker
      explore: records
      type: looker_pie
      fields: [records.count, records.query_status]
      filters:
        records.match_status: Unmatched
        records.system: Acturis
      sorts: [records.count desc]
      limit: 500
      value_labels: legend
      label_type: labPer
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: false
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: PremiumQuery,
              name: PremiumQuery, axisId: records.count}, {id: PayMethodInsurer, name: PayMethodInsurer,
              axisId: records.count}, {id: PayMethodBroker, name: PayMethodBroker, axisId: records.count},
            {id: PaidPreviousMonth, name: PaidPreviousMonth, axisId: records.count}, {
              id: NotInvoiced, name: NotInvoiced, axisId: records.count}, {id: NotDue,
              name: NotDue, axisId: records.count}, {id: LapsedPolicy, name: LapsedPolicy,
              axisId: records.count}, {id: ContactInsurer, name: ContactInsurer, axisId: records.count},
            {id: ContactBroker, name: ContactBroker, axisId: records.count}, {id: CommRate,
              name: CommRate, axisId: records.count}, {id: ClientOutstanding, name: ClientOutstanding,
              axisId: records.count}, {id: CannotTrace, name: CannotTrace, axisId: records.count}]}]

    - name: query_method
      title: Query Method
      left: 18
      top: 3
      height: 3
      width: 6
      model: demo_broker
      explore: records
      type: looker_pie
      fields: [records.count, records.query_method]
      filters:
        records.match_status: Unmatched
        records.system: Acturis
      sorts: [records.count desc]
      limit: 500
      value_labels: legend
      label_type: labPer
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: false
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: PremiumQuery,
              name: PremiumQuery, axisId: records.count}, {id: PayMethodInsurer, name: PayMethodInsurer,
              axisId: records.count}, {id: PayMethodBroker, name: PayMethodBroker, axisId: records.count},
            {id: PaidPreviousMonth, name: PaidPreviousMonth, axisId: records.count}, {
              id: NotInvoiced, name: NotInvoiced, axisId: records.count}, {id: NotDue,
              name: NotDue, axisId: records.count}, {id: LapsedPolicy, name: LapsedPolicy,
              axisId: records.count}, {id: ContactInsurer, name: ContactInsurer, axisId: records.count},
            {id: ContactBroker, name: ContactBroker, axisId: records.count}, {id: CommRate,
              name: CommRate, axisId: records.count}, {id: ClientOutstanding, name: ClientOutstanding,
              axisId: records.count}, {id: CannotTrace, name: CannotTrace, axisId: records.count}]}]

    - name: query_with
      title: Query With
      left: 18
      top: 6
      height: 3
      width: 6
      model: demo_broker
      explore: records
      type: looker_pie
      fields: [records.query_with, records.count]
      filters:
        records.match_status: Unmatched
        records.system: Acturis
      sorts: [records.count desc]
      limit: 500
      value_labels: legend
      label_type: labPer
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}

    - name: match_status
      title: Match Status
      left: 18
      top: 9
      height: 3
      width: 6
      model: demo_broker
      explore: records
      type: looker_pie
      fields: [records.match_status, records.count]
      sorts: [records.count desc]
      limit: 500
      value_labels: legend
      label_type: labPer
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
