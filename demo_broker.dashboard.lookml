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
      left: 0
      top: 0
      height: 9
      width: 18
      model: demo_broker
      explore: records
      type: looker_bar
      fields: [records.count, records.query_category]
      pivots: [records.query_category]
      filters:
        records.match_status: Unmatched
        records.system: Acturis
      sorts: [records.count desc 0, records.query_category]
      limit: 500
      stacking: ''
      show_value_labels: true
      label_density: 13
      legend_position: left
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
      value_labels: legend
      label_type: labPer
      series_types: {}
      hide_legend: false
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: Cannot
                Trace, name: Cannot Trace, axisId: records.count}, {id: Client Outstanding,
              name: Client Outstanding, axisId: records.count}, {id: Commission Rate,
              name: Commission Rate, axisId: records.count}, {id: Contact Broker, name: Contact
                Broker, axisId: records.count}, {id: Contact Insurer, name: Contact Insurer,
              axisId: records.count}, {id: Lapsed Policy, name: Lapsed Policy, axisId: records.count},
            {id: Not Due, name: Not Due, axisId: records.count}, {id: Not Invoiced, name: Not
                Invoiced, axisId: records.count}, {id: Paid Previous Month, name: Paid
                Previous Month, axisId: records.count}, {id: Pay Method Broker, name: Pay
                Method Broker, axisId: records.count}, {id: Pay Method Insurer, name: Pay
                Method Insurer, axisId: records.count}, {id: Premium Query, name: Premium
                Query, axisId: records.count}]}]
      hidden_series: []
      label_color: ["#000000"]
      font_size: ''

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

    - name: top_10_unmatched_entity
      title: Top 10 Entities - Unmatched Policies
      left: 0
      top: 9
      height: 3
      width: 24
      model: demo_broker
      explore: records
      type: looker_column
      fields: [records.entity, records.sum_amount]
      filters:
        records.match_status: Unmatched
        records.system: Acturis
      sorts: [records.sum_amount desc]
      limit: 10
      stacking: ''
      show_value_labels: false
      label_density: 13
      legend_position: left
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
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
