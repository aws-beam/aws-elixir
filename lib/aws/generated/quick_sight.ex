# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.QuickSight do
  @moduledoc """
  Amazon QuickSight API Reference

  Amazon QuickSight is a fully managed, serverless business intelligence service
  for the
  Amazon Web Services Cloud that makes it easy to extend data and insights to
  every user in your
  organization.

  This API reference contains documentation for a programming interface that
  you can use to manage Amazon QuickSight.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      box_plot_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "ChartConfiguration" => box_plot_chart_configuration(),
        "ColumnHierarchies" => list(column_hierarchy()()),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type box_plot_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      theme() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t(),
        "ThemeId" => String.t(),
        "Type" => list(any()),
        "Version" => theme_version()
      }

  """
  @type theme() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_point_drill_up_down_option() :: %{
        "AvailabilityStatus" => list(any())
      }

  """
  @type data_point_drill_up_down_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      folder_summary() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "FolderId" => String.t(),
        "FolderType" => list(any()),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t(),
        "SharingModel" => list(any())
      }

  """
  @type folder_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_topic_refresh_schedule_response() :: %{
        "DatasetArn" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "TopicArn" => String.t(),
        "TopicId" => String.t()
      }

  """
  @type update_topic_refresh_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      line_chart_default_series_settings() :: %{
        "AxisBinding" => list(any()),
        "LineStyleSettings" => line_chart_line_style_settings(),
        "MarkerStyleSettings" => line_chart_marker_style_settings()
      }

  """
  @type line_chart_default_series_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_label_type() :: %{
        "DataPathLabelType" => data_path_label_type(),
        "FieldLabelType" => field_label_type(),
        "MaximumLabelType" => maximum_label_type(),
        "MinimumLabelType" => minimum_label_type(),
        "RangeEndsLabelType" => range_ends_label_type()
      }

  """
  @type data_label_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      number_format_configuration() :: %{
        "FormatConfiguration" => numeric_format_configuration()
      }

  """
  @type number_format_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_dashboards_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_dashboards_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      growth_rate_computation() :: %{
        "ComputationId" => String.t(),
        "Name" => String.t(),
        "PeriodSize" => integer(),
        "Time" => dimension_field(),
        "Value" => measure_field()
      }

  """
  @type growth_rate_computation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dashboard_snapshot_job_request() :: %{}

  """
  @type describe_dashboard_snapshot_job_request() :: %{}

  @typedoc """

  ## Example:

      delete_brand_assignment_response() :: %{
        "RequestId" => String.t()
      }

  """
  @type delete_brand_assignment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dashboard_permissions_response() :: %{
        "DashboardArn" => String.t(),
        "DashboardId" => String.t(),
        "LinkSharingConfiguration" => link_sharing_configuration(),
        "Permissions" => list(resource_permission()()),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_dashboard_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_based_tooltip() :: %{
        "AggregationVisibility" => list(any()),
        "TooltipFields" => list(tooltip_item()()),
        "TooltipTitleType" => list(any())
      }

  """
  @type field_based_tooltip() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gutter_style() :: %{
        "Show" => boolean()
      }

  """
  @type gutter_style() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_namespace_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type delete_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      date_time_parameter() :: %{
        "Name" => String.t(),
        "Values" => list(non_neg_integer()())
      }

  """
  @type date_time_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      axis_label_options() :: %{
        "ApplyTo" => axis_label_reference_options(),
        "CustomLabel" => String.t(),
        "FontConfiguration" => font_configuration()
      }

  """
  @type axis_label_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_layer_definition() :: %{
        "LineLayer" => geospatial_line_layer(),
        "PointLayer" => geospatial_point_layer(),
        "PolygonLayer" => geospatial_polygon_layer()
      }

  """
  @type geospatial_layer_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      free_form_layout_canvas_size_options() :: %{
        "ScreenCanvasSizeOptions" => free_form_layout_screen_canvas_size_options()
      }

  """
  @type free_form_layout_canvas_size_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_menu_option() :: %{
        "AvailabilityStatus" => list(any())
      }

  """
  @type image_menu_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_iam_policy_assignments_for_user_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_iam_policy_assignments_for_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dashboard_error() :: %{
        "Message" => String.t(),
        "Type" => list(any()),
        "ViolatedEntities" => list(entity()())
      }

  """
  @type dashboard_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pivot_table_field_collapse_state_option() :: %{
        "State" => list(any()),
        "Target" => pivot_table_field_collapse_state_target()
      }

  """
  @type pivot_table_field_collapse_state_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_dashboard_embed_url_response() :: %{
        "EmbedUrl" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type get_dashboard_embed_url_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reference_line_custom_label_configuration() :: %{
        "CustomLabel" => String.t()
      }

  """
  @type reference_line_custom_label_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_analysis_definition_response() :: %{
        "AnalysisId" => String.t(),
        "Definition" => analysis_definition(),
        "Errors" => list(analysis_error()()),
        "Name" => String.t(),
        "RequestId" => String.t(),
        "ResourceStatus" => list(any()),
        "Status" => integer(),
        "ThemeArn" => String.t()
      }

  """
  @type describe_analysis_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filled_map_configuration() :: %{
        "FieldWells" => filled_map_field_wells(),
        "Interactions" => visual_interaction_options(),
        "Legend" => legend_options(),
        "MapStyleOptions" => geospatial_map_style_options(),
        "SortConfiguration" => filled_map_sort_configuration(),
        "Tooltip" => tooltip_options(),
        "WindowOptions" => geospatial_window_options()
      }

  """
  @type filled_map_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      brand_summary() :: %{
        "Arn" => String.t(),
        "BrandId" => String.t(),
        "BrandName" => String.t(),
        "BrandStatus" => list(any()),
        "CreatedTime" => [non_neg_integer()],
        "Description" => String.t(),
        "LastUpdatedTime" => [non_neg_integer()]
      }

  """
  @type brand_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_date_time_picker_control() :: %{
        "CommitMode" => list(any()),
        "DisplayOptions" => date_time_picker_control_display_options(),
        "FilterControlId" => String.t(),
        "SourceFilterId" => String.t(),
        "Title" => String.t(),
        "Type" => list(any())
      }

  """
  @type filter_date_time_picker_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dashboard_response() :: %{
        "Arn" => String.t(),
        "CreationStatus" => list(any()),
        "DashboardId" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "VersionArn" => String.t()
      }

  """
  @type update_dashboard_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reference_line_data_configuration() :: %{
        "AxisBinding" => list(any()),
        "DynamicConfiguration" => reference_line_dynamic_data_configuration(),
        "SeriesType" => list(any()),
        "StaticConfiguration" => reference_line_static_data_configuration()
      }

  """
  @type reference_line_data_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template_version() :: %{
        "CreatedTime" => non_neg_integer(),
        "DataSetConfigurations" => list(data_set_configuration()()),
        "Description" => String.t(),
        "Errors" => list(template_error()()),
        "Sheets" => list(sheet()()),
        "SourceEntityArn" => String.t(),
        "Status" => list(any()),
        "ThemeArn" => String.t(),
        "VersionNumber" => float()
      }

  """
  @type template_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trend_arrow_options() :: %{
        "Visibility" => list(any())
      }

  """
  @type trend_arrow_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      radar_chart_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "ChartConfiguration" => radar_chart_configuration(),
        "ColumnHierarchies" => list(column_hierarchy()()),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type radar_chart_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_list_control() :: %{
        "CascadingControlConfiguration" => cascading_control_configuration(),
        "DisplayOptions" => list_control_display_options(),
        "FilterControlId" => String.t(),
        "SelectableValues" => filter_selectable_values(),
        "SourceFilterId" => String.t(),
        "Title" => String.t(),
        "Type" => list(any())
      }

  """
  @type filter_list_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_aggregation() :: %{
        "DatasetRowDateGranularity" => list(any()),
        "DefaultDateColumnName" => String.t()
      }

  """
  @type data_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_sort() :: %{
        "Direction" => list(any()),
        "FieldId" => String.t()
      }

  """
  @type field_sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_s_p_i_c_e_capacity_configuration_request() :: %{
        required("PurchaseMode") => list(any())
      }

  """
  @type update_s_p_i_c_e_capacity_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_summary() :: %{
        "Arn" => String.t(),
        "AssetBundleImportJobId" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "FailureAction" => list(any()),
        "JobStatus" => list(any())
      }

  """
  @type asset_bundle_import_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_point_menu_label_option() :: %{
        "AvailabilityStatus" => list(any())
      }

  """
  @type data_point_menu_label_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      string_default_values() :: %{
        "DynamicValue" => dynamic_default_value(),
        "StaticValues" => list(String.t()())
      }

  """
  @type string_default_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_search_filter() :: %{
        "Name" => list(any()),
        "Operator" => list(any()),
        "Value" => String.t()
      }

  """
  @type topic_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template_alias() :: %{
        "AliasName" => String.t(),
        "Arn" => String.t(),
        "TemplateVersionNumber" => float()
      }

  """
  @type template_alias() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_vpc_connection_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer(),
        "VPCConnection" => vpc_connection()
      }

  """
  @type describe_vpc_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_dashboard_snapshot_job_request() :: %{
        required("SnapshotConfiguration") => snapshot_configuration(),
        required("SnapshotJobId") => String.t(),
        required("UserConfiguration") => snapshot_user_configuration()
      }

  """
  @type start_dashboard_snapshot_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dashboard_request() :: %{
        optional("DashboardPublishOptions") => dashboard_publish_options(),
        optional("Definition") => dashboard_version_definition(),
        optional("Parameters") => parameters(),
        optional("SourceEntity") => dashboard_source_entity(),
        optional("ThemeArn") => String.t(),
        optional("ValidationStrategy") => validation_strategy(),
        optional("VersionDescription") => String.t(),
        required("Name") => String.t()
      }

  """
  @type update_dashboard_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_set_refresh_properties() :: %{
        "RefreshConfiguration" => refresh_configuration()
      }

  """
  @type data_set_refresh_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_custom_permissions_request() :: %{
        optional("Capabilities") => capabilities(),
        optional("Tags") => list(tag()()),
        required("CustomPermissionsName") => String.t()
      }

  """
  @type create_custom_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_namespace_response() :: %{
        "Namespace" => namespace_info_v2(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      line_chart_aggregated_field_wells() :: %{
        "Category" => list(dimension_field()()),
        "Colors" => list(dimension_field()()),
        "SmallMultiples" => list(dimension_field()()),
        "Values" => list(measure_field()())
      }

  """
  @type line_chart_aggregated_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_q_personalization_configuration_request() :: %{
        required("PersonalizationMode") => list(any())
      }

  """
  @type update_q_personalization_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      drill_down_filter() :: %{
        "CategoryFilter" => category_drill_down_filter(),
        "NumericEqualityFilter" => numeric_equality_drill_down_filter(),
        "TimeRangeFilter" => time_range_drill_down_filter()
      }

  """
  @type drill_down_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_category_filter_constant() :: %{
        "CollectiveConstant" => collective_constant(),
        "ConstantType" => list(any()),
        "SingularConstant" => String.t()
      }

  """
  @type topic_category_filter_constant() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      override_dataset_parameter_operation() :: %{
        "NewDefaultValues" => new_default_values(),
        "NewParameterName" => String.t(),
        "ParameterName" => String.t()
      }

  """
  @type override_dataset_parameter_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bar_chart_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "ChartConfiguration" => bar_chart_configuration(),
        "ColumnHierarchies" => list(column_hierarchy()()),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type bar_chart_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_paginated_report_options() :: %{
        "OverflowColumnHeaderVisibility" => list(any()),
        "VerticalOverflowVisibility" => list(any())
      }

  """
  @type table_paginated_report_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_data_set_refresh_properties_response() :: %{
        "DataSetRefreshProperties" => data_set_refresh_properties(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_data_set_refresh_properties_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_level_permission_rule() :: %{
        "ColumnNames" => list(String.t()()),
        "Principals" => list(String.t()())
      }

  """
  @type column_level_permission_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_column_operation() :: %{
        "ColumnName" => String.t(),
        "TagNames" => list(list(any())())
      }

  """
  @type untag_column_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => list(tag()())
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      snapshot_file_sheet_selection() :: %{
        "SelectionScope" => list(any()),
        "SheetId" => String.t(),
        "VisualIds" => list(String.t()())
      }

  """
  @type snapshot_file_sheet_selection() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_account_subscription_request() :: %{}

  """
  @type delete_account_subscription_request() :: %{}

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      plugin_visual_field_well() :: %{
        "AxisName" => list(any()),
        "Dimensions" => list(dimension_field()()),
        "Measures" => list(measure_field()()),
        "Unaggregated" => list(unaggregated_field()())
      }

  """
  @type plugin_visual_field_well() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_columns_operation() :: %{
        "Columns" => list(calculated_column()())
      }

  """
  @type create_columns_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dashboard_definition_response() :: %{
        "DashboardId" => String.t(),
        "DashboardPublishOptions" => dashboard_publish_options(),
        "Definition" => dashboard_version_definition(),
        "Errors" => list(dashboard_error()()),
        "Name" => String.t(),
        "RequestId" => String.t(),
        "ResourceStatus" => list(any()),
        "Status" => integer(),
        "ThemeArn" => String.t()
      }

  """
  @type describe_dashboard_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_border_options() :: %{
        "Color" => String.t(),
        "Style" => list(any()),
        "Thickness" => integer()
      }

  """
  @type table_border_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      waterfall_chart_options() :: %{
        "TotalBarLabel" => String.t()
      }

  """
  @type waterfall_chart_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_gradient_color() :: %{
        "DefaultOpacity" => float(),
        "NullDataSettings" => geospatial_null_data_settings(),
        "NullDataVisibility" => list(any()),
        "StepColors" => list(geospatial_gradient_step_color()())
      }

  """
  @type geospatial_gradient_color() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      radar_chart_field_wells() :: %{
        "RadarChartAggregatedFieldWells" => radar_chart_aggregated_field_wells()
      }

  """
  @type radar_chart_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_dashboard_snapshot_job_schedule_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type start_dashboard_snapshot_job_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_template_alias_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer(),
        "TemplateAlias" => template_alias()
      }

  """
  @type create_template_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_identity_propagation_config_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_identity_propagation_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      label_options() :: %{
        "CustomLabel" => String.t(),
        "FontConfiguration" => font_configuration(),
        "Visibility" => list(any())
      }

  """
  @type label_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      legend_options() :: %{
        "Height" => String.t(),
        "Position" => list(any()),
        "Title" => label_options(),
        "ValueFontConfiguration" => font_configuration(),
        "Visibility" => list(any()),
        "Width" => String.t()
      }

  """
  @type legend_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      registered_user_q_search_bar_embedding_configuration() :: %{
        "InitialTopicId" => String.t()
      }

  """
  @type registered_user_q_search_bar_embedding_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_account_settings_request() :: %{}

  """
  @type describe_account_settings_request() :: %{}

  @typedoc """

  ## Example:

      string_parameter() :: %{
        "Name" => String.t(),
        "Values" => list(String.t()())
      }

  """
  @type string_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      upload_settings() :: %{
        "ContainsHeader" => boolean(),
        "Delimiter" => String.t(),
        "Format" => list(any()),
        "StartFromRow" => integer(),
        "TextQualifier" => list(any())
      }

  """
  @type upload_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_dashboard_embed_url_request() :: %{
        optional("AdditionalDashboardIds") => list(String.t()()),
        optional("Namespace") => String.t(),
        optional("ResetDisabled") => boolean(),
        optional("SessionLifetimeInMinutes") => float(),
        optional("StatePersistenceEnabled") => boolean(),
        optional("UndoRedoDisabled") => boolean(),
        optional("UserArn") => String.t(),
        required("IdentityType") => list(any())
      }

  """
  @type get_dashboard_embed_url_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameter_control() :: %{
        "DateTimePicker" => parameter_date_time_picker_control(),
        "Dropdown" => parameter_drop_down_control(),
        "List" => parameter_list_control(),
        "Slider" => parameter_slider_control(),
        "TextArea" => parameter_text_area_control(),
        "TextField" => parameter_text_field_control()
      }

  """
  @type parameter_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cell_value_synonym() :: %{
        "CellValue" => String.t(),
        "Synonyms" => list(String.t()())
      }

  """
  @type cell_value_synonym() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_visual() :: %{
        "Ir" => topic_i_r(),
        "Role" => list(any()),
        "SupportingVisuals" => list(topic_visual()()),
        "VisualId" => String.t()
      }

  """
  @type topic_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_data_source_request() :: %{}

  """
  @type describe_data_source_request() :: %{}

  @typedoc """

  ## Example:

      snapshot_configuration() :: %{
        "DestinationConfiguration" => snapshot_destination_configuration(),
        "FileGroups" => list(snapshot_file_group()()),
        "Parameters" => parameters()
      }

  """
  @type snapshot_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      numerical_aggregation_function() :: %{
        "PercentileAggregation" => percentile_aggregation(),
        "SimpleNumericalAggregation" => list(any())
      }

  """
  @type numerical_aggregation_function() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_grid_layout_configuration() :: %{
        "CanvasSizeOptions" => grid_layout_canvas_size_options()
      }

  """
  @type default_grid_layout_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      period_to_date_computation() :: %{
        "ComputationId" => String.t(),
        "Name" => String.t(),
        "PeriodTimeGranularity" => list(any()),
        "Time" => dimension_field(),
        "Value" => measure_field()
      }

  """
  @type period_to_date_computation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_folder_response() :: %{
        "Arn" => String.t(),
        "FolderId" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type create_folder_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_folder_request() :: %{}

  """
  @type describe_folder_request() :: %{}

  @typedoc """

  ## Example:

      create_vpc_connection_response() :: %{
        "Arn" => String.t(),
        "AvailabilityStatus" => list(any()),
        "CreationStatus" => list(any()),
        "RequestId" => String.t(),
        "Status" => integer(),
        "VPCConnectionId" => String.t()
      }

  """
  @type create_vpc_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logical_table() :: %{
        "Alias" => String.t(),
        "DataTransforms" => list(list()()),
        "Source" => logical_table_source()
      }

  """
  @type logical_table() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_map_style() :: %{
        "BackgroundColor" => String.t(),
        "BaseMapStyle" => list(any()),
        "BaseMapVisibility" => list(any())
      }

  """
  @type geospatial_map_style() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dashboard_snapshot_job_result_response() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "ErrorInfo" => snapshot_job_error_info(),
        "JobStatus" => list(any()),
        "LastUpdatedTime" => non_neg_integer(),
        "RequestId" => String.t(),
        "Result" => snapshot_job_result(),
        "Status" => integer()
      }

  """
  @type describe_dashboard_snapshot_job_result_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      q_a_result() :: %{
        "DashboardVisual" => dashboard_visual_result(),
        "GeneratedAnswer" => generated_answer_result(),
        "ResultType" => list(any())
      }

  """
  @type q_a_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      negative_format() :: %{
        "Prefix" => String.t(),
        "Suffix" => String.t()
      }

  """
  @type negative_format() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      anonymous_user_q_search_bar_embedding_configuration() :: %{
        "InitialTopicId" => String.t()
      }

  """
  @type anonymous_user_q_search_bar_embedding_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameter_text_area_control() :: %{
        "Delimiter" => String.t(),
        "DisplayOptions" => text_area_control_display_options(),
        "ParameterControlId" => String.t(),
        "SourceParameterName" => String.t(),
        "Title" => String.t()
      }

  """
  @type parameter_text_area_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      visual_subtitle_label_options() :: %{
        "FormatText" => long_format_text(),
        "Visibility" => list(any())
      }

  """
  @type visual_subtitle_label_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_source() :: %{
        "DataSourceArn" => String.t(),
        "InputColumns" => list(input_column()()),
        "UploadSettings" => upload_settings()
      }

  """
  @type s3_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_sets_response() :: %{
        "DataSetSummaries" => list(data_set_summary()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type list_data_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      date_time_picker_control_display_options() :: %{
        "DateIconVisibility" => list(any()),
        "DateTimeFormat" => String.t(),
        "HelperTextVisibility" => list(any()),
        "InfoIconLabelOptions" => sheet_control_info_icon_label_options(),
        "TitleOptions" => label_options()
      }

  """
  @type date_time_picker_control_display_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pivot_table_rows_label_options() :: %{
        "CustomLabel" => String.t(),
        "Visibility" => list(any())
      }

  """
  @type pivot_table_rows_label_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      combo_chart_sort_configuration() :: %{
        "CategoryItemsLimit" => items_limit_configuration(),
        "CategorySort" => list(field_sort_options()()),
        "ColorItemsLimit" => items_limit_configuration(),
        "ColorSort" => list(field_sort_options()())
      }

  """
  @type combo_chart_sort_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      anchor() :: %{
        "AnchorType" => list(any()),
        "Offset" => integer(),
        "TimeGranularity" => list(any())
      }

  """
  @type anchor() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_numeric_equality_filter() :: %{
        "Aggregation" => list(any()),
        "Constant" => topic_singular_filter_constant()
      }

  """
  @type topic_numeric_equality_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_account_subscription_request() :: %{}

  """
  @type describe_account_subscription_request() :: %{}

  @typedoc """

  ## Example:

      integer_parameter() :: %{
        "Name" => String.t(),
        "Values" => list(float()())
      }

  """
  @type integer_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_interactive_layout_configuration() :: %{
        "FreeForm" => default_free_form_layout_configuration(),
        "Grid" => default_grid_layout_configuration()
      }

  """
  @type default_interactive_layout_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      insight_configuration() :: %{
        "Computations" => list(computation()()),
        "CustomNarrative" => custom_narrative_options(),
        "Interactions" => visual_interaction_options()
      }

  """
  @type insight_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pivot_table_field_wells() :: %{
        "PivotTableAggregatedFieldWells" => pivot_table_aggregated_field_wells()
      }

  """
  @type pivot_table_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_refresh_schedule_request() :: %{}

  """
  @type describe_refresh_schedule_request() :: %{}

  @typedoc """

  ## Example:

      list_custom_permissions_response() :: %{
        "CustomPermissionsList" => list(custom_permissions()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type list_custom_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_free_form_layout_configuration() :: %{
        "CanvasSizeOptions" => free_form_layout_canvas_size_options()
      }

  """
  @type default_free_form_layout_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      numerical_measure_field() :: %{
        "AggregationFunction" => numerical_aggregation_function(),
        "Column" => column_identifier(),
        "FieldId" => String.t(),
        "FormatConfiguration" => number_format_configuration()
      }

  """
  @type numerical_measure_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      plugin_visual_sort_configuration() :: %{
        "PluginVisualTableQuerySort" => plugin_visual_table_query_sort()
      }

  """
  @type plugin_visual_sort_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schedule_refresh_on_entity() :: %{
        "DayOfMonth" => String.t(),
        "DayOfWeek" => list(any())
      }

  """
  @type schedule_refresh_on_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_error() :: %{
        "Arn" => String.t(),
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type asset_bundle_import_job_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_q_personalization_configuration_response() :: %{
        "PersonalizationMode" => list(any()),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_q_personalization_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_vpc_connections_response() :: %{
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "VPCConnectionSummaries" => list(vpc_connection_summary()())
      }

  """
  @type list_vpc_connections_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_refresh_schedule_response() :: %{
        "Arn" => String.t(),
        "RequestId" => String.t(),
        "ScheduleId" => String.t(),
        "Status" => integer()
      }

  """
  @type delete_refresh_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      predefined_hierarchy() :: %{
        "Columns" => list(column_identifier()()),
        "DrillDownFilters" => list(drill_down_filter()()),
        "HierarchyId" => String.t()
      }

  """
  @type predefined_hierarchy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ingestions_response() :: %{
        "Ingestions" => list(ingestion()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type list_ingestions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      quicksight_identifier() :: %{
        "Identity" => String.t()
      }

  """
  @type quicksight_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_ip_restriction_response() :: %{
        "AwsAccountId" => String.t(),
        "Enabled" => boolean(),
        "IpRestrictionRuleMap" => map(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "VpcEndpointIdRestrictionRuleMap" => map(),
        "VpcIdRestrictionRuleMap" => map()
      }

  """
  @type describe_ip_restriction_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aurora_parameters() :: %{
        "Database" => String.t(),
        "Host" => String.t(),
        "Port" => integer()
      }

  """
  @type aurora_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_source_template() :: %{
        "Arn" => String.t(),
        "DataSetReferences" => list(data_set_reference()())
      }

  """
  @type analysis_source_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dashboards_q_a_configuration_request() :: %{}

  """
  @type describe_dashboards_q_a_configuration_request() :: %{}

  @typedoc """

  ## Example:

      update_refresh_schedule_response() :: %{
        "Arn" => String.t(),
        "RequestId" => String.t(),
        "ScheduleId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_refresh_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      spatial_static_file() :: %{
        "Source" => static_file_source(),
        "StaticFileId" => String.t()
      }

  """
  @type spatial_static_file() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_ingestion_request() :: %{}

  """
  @type cancel_ingestion_request() :: %{}

  @typedoc """

  ## Example:

      delete_theme_alias_request() :: %{}

  """
  @type delete_theme_alias_request() :: %{}

  @typedoc """

  ## Example:

      dashboard_version_definition() :: %{
        "AnalysisDefaults" => analysis_defaults(),
        "CalculatedFields" => list(calculated_field()()),
        "ColumnConfigurations" => list(column_configuration()()),
        "DataSetIdentifierDeclarations" => list(data_set_identifier_declaration()()),
        "FilterGroups" => list(filter_group()()),
        "Options" => asset_options(),
        "ParameterDeclarations" => list(parameter_declaration()()),
        "Sheets" => list(sheet_definition()()),
        "StaticFiles" => list(static_file()())
      }

  """
  @type dashboard_version_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer(),
        "User" => user()
      }

  """
  @type update_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_source_request() :: %{
        optional("Credentials") => data_source_credentials(),
        optional("DataSourceParameters") => list(),
        optional("FolderArns") => list(String.t()()),
        optional("Permissions") => list(resource_permission()()),
        optional("SslProperties") => ssl_properties(),
        optional("Tags") => list(tag()()),
        optional("VpcConnectionProperties") => vpc_connection_properties(),
        required("DataSourceId") => String.t(),
        required("Name") => String.t(),
        required("Type") => list(any())
      }

  """
  @type create_data_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_topic_refresh_schedules_response() :: %{
        "RefreshSchedules" => list(topic_refresh_schedule_summary()()),
        "RequestId" => String.t(),
        "Status" => integer(),
        "TopicArn" => String.t(),
        "TopicId" => String.t()
      }

  """
  @type list_topic_refresh_schedules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_resource_permissions() :: %{
        "Actions" => list(String.t()()),
        "Principals" => list(String.t()())
      }

  """
  @type asset_bundle_resource_permissions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      waterfall_chart_configuration() :: %{
        "CategoryAxisDisplayOptions" => axis_display_options(),
        "CategoryAxisLabelOptions" => chart_axis_label_options(),
        "ColorConfiguration" => waterfall_chart_color_configuration(),
        "DataLabels" => data_label_options(),
        "FieldWells" => waterfall_chart_field_wells(),
        "Interactions" => visual_interaction_options(),
        "Legend" => legend_options(),
        "PrimaryYAxisDisplayOptions" => axis_display_options(),
        "PrimaryYAxisLabelOptions" => chart_axis_label_options(),
        "SortConfiguration" => waterfall_chart_sort_configuration(),
        "VisualPalette" => visual_palette(),
        "WaterfallChartOptions" => waterfall_chart_options()
      }

  """
  @type waterfall_chart_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_folders_response() :: %{
        "FolderSummaryList" => list(folder_summary()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type search_folders_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unique_key() :: %{
        "ColumnNames" => list(String.t()())
      }

  """
  @type unique_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gauge_chart_configuration() :: %{
        "ColorConfiguration" => gauge_chart_color_configuration(),
        "DataLabels" => data_label_options(),
        "FieldWells" => gauge_chart_field_wells(),
        "GaugeChartOptions" => gauge_chart_options(),
        "Interactions" => visual_interaction_options(),
        "TooltipOptions" => tooltip_options(),
        "VisualPalette" => visual_palette()
      }

  """
  @type gauge_chart_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_data_set_refresh_properties_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type put_data_set_refresh_properties_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_data_source_permissions_response() :: %{
        "DataSourceArn" => String.t(),
        "DataSourceId" => String.t(),
        "Permissions" => list(resource_permission()()),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_data_source_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      folder_member() :: %{
        "MemberId" => String.t(),
        "MemberType" => list(any())
      }

  """
  @type folder_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      decimal_dataset_parameter() :: %{
        "DefaultValues" => decimal_dataset_parameter_default_values(),
        "Id" => String.t(),
        "Name" => String.t(),
        "ValueType" => list(any())
      }

  """
  @type decimal_dataset_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_template_request() :: %{
        optional("AliasName") => String.t(),
        optional("VersionNumber") => float()
      }

  """
  @type describe_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sheet_text_box() :: %{
        "Content" => String.t(),
        "SheetTextBoxId" => String.t()
      }

  """
  @type sheet_text_box() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sheet_layout_element_maximization_option() :: %{
        "AvailabilityStatus" => list(any())
      }

  """
  @type sheet_layout_element_maximization_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      relational_table() :: %{
        "Catalog" => String.t(),
        "DataSourceArn" => String.t(),
        "InputColumns" => list(input_column()()),
        "Name" => String.t(),
        "Schema" => String.t()
      }

  """
  @type relational_table() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_field_options() :: %{
        "Order" => list(String.t()()),
        "PinnedFieldOptions" => table_pinned_field_options(),
        "SelectedFieldOptions" => list(table_field_option()())
      }

  """
  @type table_field_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      predict_q_a_results_request() :: %{
        optional("IncludeGeneratedAnswer") => list(any()),
        optional("IncludeQuickSightQIndex") => list(any()),
        optional("MaxTopicsToConsider") => integer(),
        required("QueryText") => String.t()
      }

  """
  @type predict_q_a_results_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      k_p_i_options() :: %{
        "Comparison" => comparison_configuration(),
        "PrimaryValueDisplayType" => list(any()),
        "PrimaryValueFontConfiguration" => font_configuration(),
        "ProgressBar" => progress_bar_options(),
        "SecondaryValue" => secondary_value_options(),
        "SecondaryValueFontConfiguration" => font_configuration(),
        "Sparkline" => k_p_i_sparkline_options(),
        "TrendArrows" => trend_arrow_options(),
        "VisualLayoutOptions" => k_p_i_visual_layout_options()
      }

  """
  @type k_p_i_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_templates_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sheet_controls_option() :: %{
        "VisibilityState" => list(any())
      }

  """
  @type sheet_controls_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tile_layout_style() :: %{
        "Gutter" => gutter_style(),
        "Margin" => margin_style()
      }

  """
  @type tile_layout_style() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      percentile_aggregation() :: %{
        "PercentileValue" => float()
      }

  """
  @type percentile_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type untag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      entity() :: %{
        "Path" => String.t()
      }

  """
  @type entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_analysis_response() :: %{
        "AnalysisId" => String.t(),
        "Arn" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "UpdateStatus" => list(any())
      }

  """
  @type update_analysis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      waterfall_chart_color_configuration() :: %{
        "GroupColorConfiguration" => waterfall_chart_group_color_configuration()
      }

  """
  @type waterfall_chart_color_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      axis_label_reference_options() :: %{
        "Column" => column_identifier(),
        "FieldId" => String.t()
      }

  """
  @type axis_label_reference_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_field_custom_icon_content() :: %{
        "Icon" => list(any())
      }

  """
  @type table_field_custom_icon_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_description() :: %{
        "Text" => String.t()
      }

  """
  @type column_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      k_p_i_field_wells() :: %{
        "TargetValues" => list(measure_field()()),
        "TrendGroups" => list(dimension_field()()),
        "Values" => list(measure_field()())
      }

  """
  @type k_p_i_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      text_field_control_display_options() :: %{
        "InfoIconLabelOptions" => sheet_control_info_icon_label_options(),
        "PlaceholderOptions" => text_control_placeholder_options(),
        "TitleOptions" => label_options()
      }

  """
  @type text_field_control_display_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_theme_override_parameters() :: %{
        "Name" => String.t(),
        "ThemeId" => String.t()
      }

  """
  @type asset_bundle_import_job_theme_override_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tooltip_options() :: %{
        "FieldBasedTooltip" => field_based_tooltip(),
        "SelectedTooltipType" => list(any()),
        "TooltipVisibility" => list(any())
      }

  """
  @type tooltip_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gauge_chart_arc_conditional_formatting() :: %{
        "ForegroundColor" => conditional_formatting_color()
      }

  """
  @type gauge_chart_arc_conditional_formatting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      axis_tick_label_options() :: %{
        "LabelOptions" => label_options(),
        "RotationAngle" => float()
      }

  """
  @type axis_tick_label_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ingestions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_ingestions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_namespaces_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_namespaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_identity_propagation_configs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_identity_propagation_configs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pie_chart_sort_configuration() :: %{
        "CategoryItemsLimit" => items_limit_configuration(),
        "CategorySort" => list(field_sort_options()()),
        "SmallMultiplesLimitConfiguration" => items_limit_configuration(),
        "SmallMultiplesSort" => list(field_sort_options()())
      }

  """
  @type pie_chart_sort_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_data_set_refresh_properties_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type delete_data_set_refresh_properties_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      k_p_i_conditional_formatting_option() :: %{
        "ActualValue" => k_p_i_actual_value_conditional_formatting(),
        "ComparisonValue" => k_p_i_comparison_value_conditional_formatting(),
        "PrimaryValue" => k_p_iprimary_value_conditional_formatting(),
        "ProgressBar" => k_p_iprogress_bar_conditional_formatting()
      }

  """
  @type k_p_i_conditional_formatting_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_export_job_vpc_connection_override_properties() :: %{
        "Arn" => String.t(),
        "Properties" => list(list(any())())
      }

  """
  @type asset_bundle_export_job_vpc_connection_override_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      line_chart_sort_configuration() :: %{
        "CategoryItemsLimitConfiguration" => items_limit_configuration(),
        "CategorySort" => list(field_sort_options()()),
        "ColorItemsLimitConfiguration" => items_limit_configuration(),
        "SmallMultiplesLimitConfiguration" => items_limit_configuration(),
        "SmallMultiplesSort" => list(field_sort_options()())
      }

  """
  @type line_chart_sort_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_template_permissions_response() :: %{
        "Permissions" => list(resource_permission()()),
        "RequestId" => String.t(),
        "Status" => integer(),
        "TemplateArn" => String.t(),
        "TemplateId" => String.t()
      }

  """
  @type update_template_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_theme_alias_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer(),
        "ThemeAlias" => theme_alias()
      }

  """
  @type create_theme_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_set() :: %{
        "Arn" => String.t(),
        "ColumnGroups" => list(column_group()()),
        "ColumnLevelPermissionRules" => list(column_level_permission_rule()()),
        "ConsumedSpiceCapacityInBytes" => float(),
        "CreatedTime" => non_neg_integer(),
        "DataSetId" => String.t(),
        "DataSetUsageConfiguration" => data_set_usage_configuration(),
        "DatasetParameters" => list(dataset_parameter()()),
        "FieldFolders" => map(),
        "ImportMode" => list(any()),
        "LastUpdatedTime" => non_neg_integer(),
        "LogicalTableMap" => map(),
        "Name" => String.t(),
        "OutputColumns" => list(output_column()()),
        "PerformanceConfiguration" => performance_configuration(),
        "PhysicalTableMap" => map(),
        "RowLevelPermissionDataSet" => row_level_permission_data_set(),
        "RowLevelPermissionTagConfiguration" => row_level_permission_tag_configuration()
      }

  """
  @type data_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      radar_chart_sort_configuration() :: %{
        "CategoryItemsLimit" => items_limit_configuration(),
        "CategorySort" => list(field_sort_options()()),
        "ColorItemsLimit" => items_limit_configuration(),
        "ColorSort" => list(field_sort_options()())
      }

  """
  @type radar_chart_sort_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_ingestion_request() :: %{
        optional("IngestionType") => list(any())
      }

  """
  @type create_ingestion_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_heatmap_data_color() :: %{
        "Color" => String.t()
      }

  """
  @type geospatial_heatmap_data_color() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_iam_policy_assignment_request() :: %{
        optional("Identities") => map(),
        optional("PolicyArn") => String.t(),
        required("AssignmentName") => String.t(),
        required("AssignmentStatus") => list(any())
      }

  """
  @type create_iam_policy_assignment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_template_alias_request() :: %{
        required("TemplateVersionNumber") => float()
      }

  """
  @type update_template_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_custom_permission_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_user_custom_permission_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_bundle_import_jobs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_asset_bundle_import_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sheet_image() :: %{
        "Actions" => list(image_custom_action()()),
        "ImageContentAltText" => String.t(),
        "Interactions" => image_interaction_options(),
        "Scaling" => sheet_image_scaling_configuration(),
        "SheetImageId" => String.t(),
        "Source" => sheet_image_source(),
        "Tooltip" => sheet_image_tooltip_configuration()
      }

  """
  @type sheet_image() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lookback_window() :: %{
        "ColumnName" => String.t(),
        "Size" => float(),
        "SizeUnit" => list(any())
      }

  """
  @type lookback_window() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cluster_marker() :: %{
        "SimpleClusterMarker" => simple_cluster_marker()
      }

  """
  @type cluster_marker() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pivot_table_sort_configuration() :: %{
        "FieldSortOptions" => list(pivot_field_sort_options()())
      }

  """
  @type pivot_table_sort_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_user_groups_response() :: %{
        "GroupList" => list(group()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type list_user_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      authorized_targets_by_service() :: %{
        "AuthorizedTargets" => list(String.t()()),
        "Service" => list(any())
      }

  """
  @type authorized_targets_by_service() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_set_search_filter() :: %{
        "Name" => list(any()),
        "Operator" => list(any()),
        "Value" => String.t()
      }

  """
  @type data_set_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      forecast_computation() :: %{
        "ComputationId" => String.t(),
        "CustomSeasonalityValue" => integer(),
        "LowerBoundary" => float(),
        "Name" => String.t(),
        "PeriodsBackward" => integer(),
        "PeriodsForward" => integer(),
        "PredictionInterval" => integer(),
        "Seasonality" => list(any()),
        "Time" => dimension_field(),
        "UpperBoundary" => float(),
        "Value" => measure_field()
      }

  """
  @type forecast_computation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filled_map_field_wells() :: %{
        "FilledMapAggregatedFieldWells" => filled_map_aggregated_field_wells()
      }

  """
  @type filled_map_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      snapshot_file_group() :: %{
        "Files" => list(snapshot_file()())
      }

  """
  @type snapshot_file_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_folders_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Filters") => list(folder_search_filter()())
      }

  """
  @type search_folders_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_set_configuration() :: %{
        "Original" => image_configuration()
      }

  """
  @type image_set_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      customer_managed_key_unavailable_exception() :: %{
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type customer_managed_key_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_topic_refresh_schedule_request() :: %{
        required("RefreshSchedule") => topic_refresh_schedule()
      }

  """
  @type update_topic_refresh_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_template_aliases_response() :: %{
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "TemplateAliasList" => list(template_alias()())
      }

  """
  @type list_template_aliases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_based_forecast_properties() :: %{
        "LowerBoundary" => float(),
        "PeriodsBackward" => integer(),
        "PeriodsForward" => integer(),
        "PredictionInterval" => integer(),
        "Seasonality" => integer(),
        "UpperBoundary" => float()
      }

  """
  @type time_based_forecast_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_data_source_credential_pair() :: %{
        "Password" => String.t(),
        "Username" => String.t()
      }

  """
  @type asset_bundle_import_job_data_source_credential_pair() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      header_footer_section_configuration() :: %{
        "Layout" => section_layout_configuration(),
        "SectionId" => String.t(),
        "Style" => section_style()
      }

  """
  @type header_footer_section_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_folder() :: %{
        "columns" => list(String.t()()),
        "description" => String.t()
      }

  """
  @type field_folder() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_vpc_connection_override_tags() :: %{
        "Tags" => list(tag()()),
        "VPCConnectionIds" => list(String.t()())
      }

  """
  @type asset_bundle_import_job_vpc_connection_override_tags() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_iam_policy_assignments_response() :: %{
        "IAMPolicyAssignments" => list(iam_policy_assignment_summary()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type list_iam_policy_assignments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      namespace_info_v2() :: %{
        "Arn" => String.t(),
        "CapacityRegion" => String.t(),
        "CreationStatus" => list(any()),
        "IamIdentityCenterApplicationArn" => String.t(),
        "IamIdentityCenterInstanceArn" => String.t(),
        "IdentityStore" => list(any()),
        "Name" => String.t(),
        "NamespaceError" => namespace_error()
      }

  """
  @type namespace_info_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      quick_sight_user_not_found_exception() :: %{
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type quick_sight_user_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      funnel_chart_sort_configuration() :: %{
        "CategoryItemsLimit" => items_limit_configuration(),
        "CategorySort" => list(field_sort_options()())
      }

  """
  @type funnel_chart_sort_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_custom_permissions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_custom_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      font_configuration() :: %{
        "FontColor" => String.t(),
        "FontDecoration" => list(any()),
        "FontFamily" => String.t(),
        "FontSize" => font_size(),
        "FontStyle" => list(any()),
        "FontWeight" => font_weight()
      }

  """
  @type font_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gauge_chart_conditional_formatting() :: %{
        "ConditionalFormattingOptions" => list(gauge_chart_conditional_formatting_option()())
      }

  """
  @type gauge_chart_conditional_formatting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_range_drill_down_filter() :: %{
        "Column" => column_identifier(),
        "RangeMaximum" => non_neg_integer(),
        "RangeMinimum" => non_neg_integer(),
        "TimeGranularity" => list(any())
      }

  """
  @type time_range_drill_down_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_source_description() :: %{
        "Body" => String.t(),
        "S3Uri" => String.t()
      }

  """
  @type asset_bundle_import_source_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      athena_parameters() :: %{
        "RoleArn" => String.t(),
        "WorkGroup" => String.t()
      }

  """
  @type athena_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_iam_policy_assignment_request() :: %{}

  """
  @type describe_iam_policy_assignment_request() :: %{}

  @typedoc """

  ## Example:

      bin_count_options() :: %{
        "Value" => integer()
      }

  """
  @type bin_count_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_bundle_export_job_response() :: %{
        "Arn" => String.t(),
        "AssetBundleExportJobId" => String.t(),
        "AwsAccountId" => String.t(),
        "CloudFormationOverridePropertyConfiguration" => asset_bundle_cloud_formation_override_property_configuration(),
        "CreatedTime" => non_neg_integer(),
        "DownloadUrl" => String.t(),
        "Errors" => list(asset_bundle_export_job_error()()),
        "ExportFormat" => list(any()),
        "IncludeAllDependencies" => boolean(),
        "IncludeFolderMembers" => list(any()),
        "IncludeFolderMemberships" => boolean(),
        "IncludePermissions" => boolean(),
        "IncludeTags" => boolean(),
        "JobStatus" => list(any()),
        "RequestId" => String.t(),
        "ResourceArns" => list(String.t()()),
        "Status" => integer(),
        "ValidationStrategy" => asset_bundle_export_job_validation_strategy(),
        "Warnings" => list(asset_bundle_export_job_warning()())
      }

  """
  @type describe_asset_bundle_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      restore_analysis_request() :: %{
        optional("RestoreToFolders") => boolean()
      }

  """
  @type restore_analysis_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      body_section_repeat_dimension_configuration() :: %{
        "DynamicCategoryDimensionConfiguration" => body_section_dynamic_category_dimension_configuration(),
        "DynamicNumericDimensionConfiguration" => body_section_dynamic_numeric_dimension_configuration()
      }

  """
  @type body_section_repeat_dimension_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      free_form_section_layout_configuration() :: %{
        "Elements" => list(free_form_layout_element()())
      }

  """
  @type free_form_section_layout_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_data_source_override_parameters() :: %{
        "Credentials" => asset_bundle_import_job_data_source_credentials(),
        "DataSourceId" => String.t(),
        "DataSourceParameters" => list(),
        "Name" => String.t(),
        "SslProperties" => ssl_properties(),
        "VpcConnectionProperties" => vpc_connection_properties()
      }

  """
  @type asset_bundle_import_job_data_source_override_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_coordinate_bounds() :: %{
        "East" => float(),
        "North" => float(),
        "South" => float(),
        "West" => float()
      }

  """
  @type geospatial_coordinate_bounds() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conditional_formatting_color() :: %{
        "Gradient" => conditional_formatting_gradient_color(),
        "Solid" => conditional_formatting_solid_color()
      }

  """
  @type conditional_formatting_color() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_brand_request() :: %{
        optional("BrandDefinition") => brand_definition()
      }

  """
  @type update_brand_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameter_text_field_control() :: %{
        "DisplayOptions" => text_field_control_display_options(),
        "ParameterControlId" => String.t(),
        "SourceParameterName" => String.t(),
        "Title" => String.t()
      }

  """
  @type parameter_text_field_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_layer_map_configuration() :: %{
        "Interactions" => visual_interaction_options(),
        "Legend" => legend_options(),
        "MapLayers" => list(geospatial_layer_item()()),
        "MapState" => geospatial_map_state(),
        "MapStyle" => geospatial_map_style()
      }

  """
  @type geospatial_layer_map_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_unavailable_exception() :: %{
        "Message" => String.t(),
        "RequestId" => String.t(),
        "ResourceType" => list(any())
      }

  """
  @type resource_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_heatmap_configuration() :: %{
        "HeatmapColor" => geospatial_heatmap_color_scale()
      }

  """
  @type geospatial_heatmap_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logo() :: %{
        "AltText" => String.t(),
        "LogoSet" => logo_set()
      }

  """
  @type logo() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_theme_override_permissions() :: %{
        "Permissions" => asset_bundle_resource_permissions(),
        "ThemeIds" => list(String.t()())
      }

  """
  @type asset_bundle_import_job_theme_override_permissions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gauge_chart_primary_value_conditional_formatting() :: %{
        "Icon" => conditional_formatting_icon(),
        "TextColor" => conditional_formatting_color()
      }

  """
  @type gauge_chart_primary_value_conditional_formatting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_brand_published_version_response() :: %{
        "BrandDefinition" => brand_definition(),
        "BrandDetail" => brand_detail(),
        "RequestId" => String.t()
      }

  """
  @type describe_brand_published_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_static_file_source() :: %{
        "StaticFileId" => String.t()
      }

  """
  @type geospatial_static_file_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_color() :: %{
        "Categorical" => geospatial_categorical_color(),
        "Gradient" => geospatial_gradient_color(),
        "Solid" => geospatial_solid_color()
      }

  """
  @type geospatial_color() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sheet_element_rendering_rule() :: %{
        "ConfigurationOverrides" => sheet_element_configuration_overrides(),
        "Expression" => String.t()
      }

  """
  @type sheet_element_rendering_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_asset_bundle_import_job_response() :: %{
        "Arn" => String.t(),
        "AssetBundleImportJobId" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type start_asset_bundle_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_topics_response() :: %{
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "TopicSummaryList" => list(topic_summary()())
      }

  """
  @type search_topics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_field_link_content_configuration() :: %{
        "CustomIconContent" => table_field_custom_icon_content(),
        "CustomTextContent" => table_field_custom_text_content()
      }

  """
  @type table_field_link_content_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot() :: %{
        "SlotId" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type slot() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_refresh_schedule_response() :: %{
        "Arn" => String.t(),
        "RefreshSchedule" => refresh_schedule(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_refresh_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      category_filter_configuration() :: %{
        "CustomFilterConfiguration" => custom_filter_configuration(),
        "CustomFilterListConfiguration" => custom_filter_list_configuration(),
        "FilterListConfiguration" => filter_list_configuration()
      }

  """
  @type category_filter_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_template_definition_response() :: %{
        "Definition" => template_version_definition(),
        "Errors" => list(template_error()()),
        "Name" => String.t(),
        "RequestId" => String.t(),
        "ResourceStatus" => list(any()),
        "Status" => integer(),
        "TemplateId" => String.t(),
        "ThemeArn" => String.t()
      }

  """
  @type describe_template_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_refresh_schedule() :: %{
        "BasedOnSpiceSchedule" => boolean(),
        "IsEnabled" => boolean(),
        "RepeatAt" => String.t(),
        "StartingAt" => non_neg_integer(),
        "Timezone" => String.t(),
        "TopicScheduleType" => list(any())
      }

  """
  @type topic_refresh_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_sort() :: %{
        "AggregationFunction" => aggregation_function(),
        "Direction" => list(any()),
        "SortBy" => column_identifier()
      }

  """
  @type column_sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_column() :: %{
        "Name" => String.t(),
        "SubType" => list(any()),
        "Type" => list(any())
      }

  """
  @type input_column() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_point_style() :: %{
        "CircleSymbolStyle" => geospatial_circle_symbol_style()
      }

  """
  @type geospatial_point_style() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_account_settings_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_account_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_export_job_resource_id_override_configuration() :: %{
        "PrefixForAllResources" => boolean()
      }

  """
  @type asset_bundle_export_job_resource_id_override_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      axis_display_range() :: %{
        "DataDriven" => axis_display_data_driven_range(),
        "MinMax" => axis_display_min_max_range()
      }

  """
  @type axis_display_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filled_map_shape_conditional_formatting() :: %{
        "FieldId" => String.t(),
        "Format" => shape_conditional_format()
      }

  """
  @type filled_map_shape_conditional_formatting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_interface() :: %{
        "AvailabilityZone" => String.t(),
        "ErrorMessage" => String.t(),
        "NetworkInterfaceId" => String.t(),
        "Status" => list(any()),
        "SubnetId" => String.t()
      }

  """
  @type network_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_iam_policy_assignment_response() :: %{
        "AssignmentId" => String.t(),
        "AssignmentName" => String.t(),
        "AssignmentStatus" => list(any()),
        "Identities" => map(),
        "PolicyArn" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type create_iam_policy_assignment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      line_chart_field_wells() :: %{
        "LineChartAggregatedFieldWells" => line_chart_aggregated_field_wells()
      }

  """
  @type line_chart_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gauge_chart_color_configuration() :: %{
        "BackgroundColor" => String.t(),
        "ForegroundColor" => String.t()
      }

  """
  @type gauge_chart_color_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dashboard_version() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "DataSetArns" => list(String.t()()),
        "Description" => String.t(),
        "Errors" => list(dashboard_error()()),
        "Sheets" => list(sheet()()),
        "SourceEntityArn" => String.t(),
        "Status" => list(any()),
        "ThemeArn" => String.t(),
        "VersionNumber" => float()
      }

  """
  @type dashboard_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_unaggregated_field_wells() :: %{
        "Values" => list(unaggregated_field()())
      }

  """
  @type table_unaggregated_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_summary() :: %{
        "AnalysisId" => String.t(),
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Status" => list(any())
      }

  """
  @type analysis_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      integer_default_values() :: %{
        "DynamicValue" => dynamic_default_value(),
        "StaticValues" => list(float()())
      }

  """
  @type integer_default_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_analysis_permissions_request() :: %{
        optional("GrantPermissions") => list(resource_permission()()),
        optional("RevokePermissions") => list(resource_permission()())
      }

  """
  @type update_analysis_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_point_layer() :: %{
        "Style" => geospatial_point_style()
      }

  """
  @type geospatial_point_layer() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pie_chart_field_wells() :: %{
        "PieChartAggregatedFieldWells" => pie_chart_aggregated_field_wells()
      }

  """
  @type pie_chart_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_folder_override_permissions() :: %{
        "FolderIds" => list(String.t()()),
        "Permissions" => asset_bundle_resource_permissions()
      }

  """
  @type asset_bundle_import_job_folder_override_permissions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_template_request() :: %{
        optional("Definition") => template_version_definition(),
        optional("Name") => String.t(),
        optional("Permissions") => list(resource_permission()()),
        optional("SourceEntity") => template_source_entity(),
        optional("Tags") => list(tag()()),
        optional("ValidationStrategy") => validation_strategy(),
        optional("VersionDescription") => String.t()
      }

  """
  @type create_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      named_entity_ref() :: %{
        "NamedEntityName" => String.t()
      }

  """
  @type named_entity_ref() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      anonymous_user_dashboard_embedding_configuration() :: %{
        "DisabledFeatures" => list(list(any())()),
        "EnabledFeatures" => list(list(any())()),
        "FeatureConfigurations" => anonymous_user_dashboard_feature_configurations(),
        "InitialDashboardId" => String.t()
      }

  """
  @type anonymous_user_dashboard_embedding_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dashboard_published_version_response() :: %{
        "DashboardArn" => String.t(),
        "DashboardId" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_dashboard_published_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_field_link_configuration() :: %{
        "Content" => table_field_link_content_configuration(),
        "Target" => list(any())
      }

  """
  @type table_field_link_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      generate_embed_url_for_registered_user_request() :: %{
        optional("AllowedDomains") => list(String.t()()),
        optional("SessionLifetimeInMinutes") => float(),
        required("ExperienceConfiguration") => registered_user_embedding_experience_configuration(),
        required("UserArn") => String.t()
      }

  """
  @type generate_embed_url_for_registered_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_data_sources_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Filters") => list(data_source_search_filter()())
      }

  """
  @type search_data_sources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account_info() :: %{
        "AccountName" => String.t(),
        "AccountSubscriptionStatus" => String.t(),
        "AuthenticationType" => String.t(),
        "Edition" => list(any()),
        "IAMIdentityCenterInstanceArn" => String.t(),
        "NotificationEmail" => String.t()
      }

  """
  @type account_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      global_table_border_options() :: %{
        "SideSpecificBorder" => table_side_border_options(),
        "UniformBorder" => table_border_options()
      }

  """
  @type global_table_border_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_slider_control() :: %{
        "DisplayOptions" => slider_control_display_options(),
        "FilterControlId" => String.t(),
        "MaximumValue" => float(),
        "MinimumValue" => float(),
        "SourceFilterId" => String.t(),
        "StepSize" => float(),
        "Title" => String.t(),
        "Type" => list(any())
      }

  """
  @type filter_slider_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      histogram_field_wells() :: %{
        "HistogramAggregatedFieldWells" => histogram_aggregated_field_wells()
      }

  """
  @type histogram_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      loading_animation() :: %{
        "Visibility" => list(any())
      }

  """
  @type loading_animation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_control_display_options() :: %{
        "InfoIconLabelOptions" => sheet_control_info_icon_label_options(),
        "SearchOptions" => list_control_search_options(),
        "SelectAllOptions" => list_control_select_all_options(),
        "TitleOptions" => label_options()
      }

  """
  @type list_control_display_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_account_customization_response() :: %{
        "AccountCustomization" => account_customization(),
        "Arn" => String.t(),
        "AwsAccountId" => String.t(),
        "Namespace" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_account_customization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      integer_dataset_parameter() :: %{
        "DefaultValues" => integer_dataset_parameter_default_values(),
        "Id" => String.t(),
        "Name" => String.t(),
        "ValueType" => list(any())
      }

  """
  @type integer_dataset_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      snapshot_s3_destination_configuration() :: %{
        "BucketConfiguration" => s3_bucket_configuration()
      }

  """
  @type snapshot_s3_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dashboard_links_request() :: %{
        required("LinkEntities") => list(String.t()())
      }

  """
  @type update_dashboard_links_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geo_spatial_column_group() :: %{
        "Columns" => list(String.t()()),
        "CountryCode" => list(any()),
        "Name" => String.t()
      }

  """
  @type geo_spatial_column_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_topic_request() :: %{
        optional("FolderArns") => list(String.t()()),
        optional("Tags") => list(tag()()),
        required("Topic") => topic_details(),
        required("TopicId") => String.t()
      }

  """
  @type create_topic_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_export_job_folder_override_properties() :: %{
        "Arn" => String.t(),
        "Properties" => list(list(any())())
      }

  """
  @type asset_bundle_export_job_folder_override_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_sets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_data_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      decimal_value_when_unset_configuration() :: %{
        "CustomValue" => float(),
        "ValueWhenUnsetOption" => list(any())
      }

  """
  @type decimal_value_when_unset_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      font() :: %{
        "FontFamily" => String.t()
      }

  """
  @type font() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unsupported_pricing_plan_exception() :: %{
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type unsupported_pricing_plan_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_point_style_options() :: %{
        "ClusterMarkerConfiguration" => cluster_marker_configuration(),
        "HeatmapConfiguration" => geospatial_heatmap_configuration(),
        "SelectedPointStyle" => list(any())
      }

  """
  @type geospatial_point_style_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      radar_chart_series_settings() :: %{
        "AreaStyleSettings" => radar_chart_area_style_settings()
      }

  """
  @type radar_chart_series_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_data_set_refresh_properties_request() :: %{
        required("DataSetRefreshProperties") => data_set_refresh_properties()
      }

  """
  @type put_data_set_refresh_properties_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scroll_bar_options() :: %{
        "Visibility" => list(any()),
        "VisibleRange" => visible_range_options()
      }

  """
  @type scroll_bar_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_custom_permissions_request() :: %{}

  """
  @type delete_custom_permissions_request() :: %{}

  @typedoc """

  ## Example:

      search_data_sources_response() :: %{
        "DataSourceSummaries" => list(data_source_summary()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type search_data_sources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_topics_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Filters") => list(topic_search_filter()())
      }

  """
  @type search_topics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_custom_permissions_response() :: %{
        "Arn" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type create_custom_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_topic_request() :: %{
        required("Topic") => topic_details()
      }

  """
  @type update_topic_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      theme_alias() :: %{
        "AliasName" => String.t(),
        "Arn" => String.t(),
        "ThemeVersionNumber" => float()
      }

  """
  @type theme_alias() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dashboard_published_version_request() :: %{}

  """
  @type update_dashboard_published_version_request() :: %{}

  @typedoc """

  ## Example:

      describe_asset_bundle_import_job_request() :: %{}

  """
  @type describe_asset_bundle_import_job_request() :: %{}

  @typedoc """

  ## Example:

      layout() :: %{
        "Configuration" => layout_configuration()
      }

  """
  @type layout() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_key_registration_request() :: %{
        required("KeyRegistration") => list(registered_customer_managed_key()())
      }

  """
  @type update_key_registration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reference_line_static_data_configuration() :: %{
        "Value" => float()
      }

  """
  @type reference_line_static_data_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      free_form_layout_element_border_style() :: %{
        "Color" => String.t(),
        "Visibility" => list(any())
      }

  """
  @type free_form_layout_element_border_style() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_group() :: %{
        "CrossDataset" => list(any()),
        "FilterGroupId" => String.t(),
        "Filters" => list(filter()()),
        "ScopeConfiguration" => filter_scope_configuration(),
        "Status" => list(any())
      }

  """
  @type filter_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_iam_policy_assignment_request() :: %{
        optional("AssignmentStatus") => list(any()),
        optional("Identities") => map(),
        optional("PolicyArn") => String.t()
      }

  """
  @type update_iam_policy_assignment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_namespace_request() :: %{}

  """
  @type describe_namespace_request() :: %{}

  @typedoc """

  ## Example:

      update_application_with_token_exchange_grant_request() :: %{
        required("Namespace") => String.t()
      }

  """
  @type update_application_with_token_exchange_grant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_ingestion_response() :: %{
        "Arn" => String.t(),
        "IngestionId" => String.t(),
        "IngestionStatus" => list(any()),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type create_ingestion_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_account_customization_request() :: %{
        optional("Namespace") => String.t(),
        optional("Resolved") => boolean()
      }

  """
  @type describe_account_customization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aws_iot_analytics_parameters() :: %{
        "DataSetName" => String.t()
      }

  """
  @type aws_iot_analytics_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_template_request() :: %{
        optional("Definition") => template_version_definition(),
        optional("Name") => String.t(),
        optional("SourceEntity") => template_source_entity(),
        optional("ValidationStrategy") => validation_strategy(),
        optional("VersionDescription") => String.t()
      }

  """
  @type update_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      context_menu_option() :: %{
        "AvailabilityStatus" => list(any())
      }

  """
  @type context_menu_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_filter_list_configuration() :: %{
        "CategoryValues" => list(String.t()()),
        "MatchOperator" => list(any()),
        "NullOption" => list(any()),
        "SelectAllOptions" => list(any())
      }

  """
  @type custom_filter_list_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_brand_request() :: %{
        optional("VersionId") => String.t()
      }

  """
  @type describe_brand_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_brands_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_brands_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scatter_plot_categorically_aggregated_field_wells() :: %{
        "Category" => list(dimension_field()()),
        "Label" => list(dimension_field()()),
        "Size" => list(measure_field()()),
        "XAxis" => list(measure_field()()),
        "YAxis" => list(measure_field()())
      }

  """
  @type scatter_plot_categorically_aggregated_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_theme_alias_request() :: %{
        required("ThemeVersionNumber") => float()
      }

  """
  @type create_theme_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bookmarks_configurations() :: %{
        "Enabled" => boolean()
      }

  """
  @type bookmarks_configurations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_source_response() :: %{
        "Arn" => String.t(),
        "DataSourceId" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "UpdateStatus" => list(any())
      }

  """
  @type update_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gauge_chart_options() :: %{
        "Arc" => arc_configuration(),
        "ArcAxis" => arc_axis_configuration(),
        "Comparison" => comparison_configuration(),
        "PrimaryValueDisplayType" => list(any()),
        "PrimaryValueFontConfiguration" => font_configuration()
      }

  """
  @type gauge_chart_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_topic_request() :: %{}

  """
  @type describe_topic_request() :: %{}

  @typedoc """

  ## Example:

      top_bottom_filter() :: %{
        "AggregationSortConfigurations" => list(aggregation_sort_configuration()()),
        "Column" => column_identifier(),
        "DefaultFilterControlConfiguration" => default_filter_control_configuration(),
        "FilterId" => String.t(),
        "Limit" => integer(),
        "ParameterName" => String.t(),
        "TimeGranularity" => list(any())
      }

  """
  @type top_bottom_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      error_info() :: %{
        "Message" => String.t(),
        "Type" => list(any())
      }

  """
  @type error_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_user_custom_permission_request() :: %{}

  """
  @type delete_user_custom_permission_request() :: %{}

  @typedoc """

  ## Example:

      maximum_minimum_computation() :: %{
        "ComputationId" => String.t(),
        "Name" => String.t(),
        "Time" => dimension_field(),
        "Type" => list(any()),
        "Value" => measure_field()
      }

  """
  @type maximum_minimum_computation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_account_customization_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type delete_account_customization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_sort_options() :: %{
        "ColumnSort" => column_sort(),
        "FieldSort" => field_sort()
      }

  """
  @type field_sort_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_folder_override_parameters() :: %{
        "FolderId" => String.t(),
        "Name" => String.t(),
        "ParentFolderArn" => String.t()
      }

  """
  @type asset_bundle_import_job_folder_override_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_connection() :: %{
        "Arn" => String.t(),
        "AvailabilityStatus" => list(any()),
        "CreatedTime" => non_neg_integer(),
        "DnsResolvers" => list(String.t()()),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t(),
        "NetworkInterfaces" => list(network_interface()()),
        "RoleArn" => String.t(),
        "SecurityGroupIds" => list(String.t()()),
        "Status" => list(any()),
        "VPCConnectionId" => String.t(),
        "VPCId" => String.t()
      }

  """
  @type vpc_connection() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_vpc_connection_request() :: %{
        optional("DnsResolvers") => list(String.t()()),
        optional("Tags") => list(tag()()),
        required("Name") => String.t(),
        required("RoleArn") => String.t(),
        required("SecurityGroupIds") => list(String.t()()),
        required("SubnetIds") => list(String.t()()),
        required("VPCConnectionId") => String.t()
      }

  """
  @type create_vpc_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_layer_join_definition() :: %{
        "ColorField" => geospatial_layer_color_field(),
        "DatasetKeyField" => unaggregated_field(),
        "ShapeKeyField" => String.t()
      }

  """
  @type geospatial_layer_join_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unaggregated_field() :: %{
        "Column" => column_identifier(),
        "FieldId" => String.t(),
        "FormatConfiguration" => format_configuration()
      }

  """
  @type unaggregated_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      line_series_axis_display_options() :: %{
        "AxisOptions" => axis_display_options(),
        "MissingDataConfigurations" => list(missing_data_configuration()())
      }

  """
  @type line_series_axis_display_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sheet_visual_scoping_configuration() :: %{
        "Scope" => list(any()),
        "SheetId" => String.t(),
        "VisualIds" => list(String.t()())
      }

  """
  @type sheet_visual_scoping_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dynamic_default_value() :: %{
        "DefaultValueColumn" => column_identifier(),
        "GroupNameColumn" => column_identifier(),
        "UserNameColumn" => column_identifier()
      }

  """
  @type dynamic_default_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      axis_display_min_max_range() :: %{
        "Maximum" => float(),
        "Minimum" => float()
      }

  """
  @type axis_display_min_max_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pivot_table_cell_conditional_formatting() :: %{
        "FieldId" => String.t(),
        "Scope" => pivot_table_conditional_formatting_scope(),
        "Scopes" => list(pivot_table_conditional_formatting_scope()()),
        "TextFormat" => text_conditional_format()
      }

  """
  @type pivot_table_cell_conditional_formatting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_analyses_response() :: %{
        "AnalysisSummaryList" => list(analysis_summary()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type search_analyses_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameters() :: %{
        "DateTimeParameters" => list(date_time_parameter()()),
        "DecimalParameters" => list(decimal_parameter()()),
        "IntegerParameters" => list(integer_parameter()()),
        "StringParameters" => list(string_parameter()())
      }

  """
  @type parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      grid_layout_configuration() :: %{
        "CanvasSizeOptions" => grid_layout_canvas_size_options(),
        "Elements" => list(grid_layout_element()())
      }

  """
  @type grid_layout_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_theme_request() :: %{
        optional("VersionNumber") => float()
      }

  """
  @type delete_theme_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template_version_definition() :: %{
        "AnalysisDefaults" => analysis_defaults(),
        "CalculatedFields" => list(calculated_field()()),
        "ColumnConfigurations" => list(column_configuration()()),
        "DataSetConfigurations" => list(data_set_configuration()()),
        "FilterGroups" => list(filter_group()()),
        "Options" => asset_options(),
        "ParameterDeclarations" => list(parameter_declaration()()),
        "QueryExecutionOptions" => query_execution_options(),
        "Sheets" => list(sheet_definition()()),
        "StaticFiles" => list(static_file()())
      }

  """
  @type template_version_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_application_with_token_exchange_grant_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_application_with_token_exchange_grant_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      named_entity_definition_metric() :: %{
        "Aggregation" => list(any()),
        "AggregationFunctionParameters" => map()
      }

  """
  @type named_entity_definition_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      free_form_layout_screen_canvas_size_options() :: %{
        "OptimizedViewPortWidth" => String.t()
      }

  """
  @type free_form_layout_screen_canvas_size_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_label_type() :: %{
        "FieldId" => String.t(),
        "Visibility" => list(any())
      }

  """
  @type field_label_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_data_set_permissions_request() :: %{}

  """
  @type describe_data_set_permissions_request() :: %{}

  @typedoc """

  ## Example:

      sheet_definition() :: %{
        "ContentType" => list(any()),
        "Description" => String.t(),
        "FilterControls" => list(filter_control()()),
        "Images" => list(sheet_image()()),
        "Layouts" => list(layout()()),
        "Name" => String.t(),
        "ParameterControls" => list(parameter_control()()),
        "SheetControlLayouts" => list(sheet_control_layout()()),
        "SheetId" => String.t(),
        "TextBoxes" => list(sheet_text_box()()),
        "Title" => String.t(),
        "Visuals" => list(visual()())
      }

  """
  @type sheet_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      relative_dates_filter() :: %{
        "AnchorDateConfiguration" => anchor_date_configuration(),
        "Column" => column_identifier(),
        "DefaultFilterControlConfiguration" => default_filter_control_configuration(),
        "ExcludePeriodConfiguration" => exclude_period_configuration(),
        "FilterId" => String.t(),
        "MinimumGranularity" => list(any()),
        "NullOption" => list(any()),
        "ParameterName" => String.t(),
        "RelativeDateType" => list(any()),
        "RelativeDateValue" => integer(),
        "TimeGranularity" => list(any())
      }

  """
  @type relative_dates_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      line_chart_series_settings() :: %{
        "LineStyleSettings" => line_chart_line_style_settings(),
        "MarkerStyleSettings" => line_chart_marker_style_settings()
      }

  """
  @type line_chart_series_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pivot_field_sort_options() :: %{
        "FieldId" => String.t(),
        "SortBy" => pivot_table_sort_by()
      }

  """
  @type pivot_field_sort_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      queue_info() :: %{
        "QueuedIngestion" => String.t(),
        "WaitingOnIngestion" => String.t()
      }

  """
  @type queue_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rename_column_operation() :: %{
        "ColumnName" => String.t(),
        "NewColumnName" => String.t()
      }

  """
  @type rename_column_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      long_format_text() :: %{
        "PlainText" => String.t(),
        "RichText" => String.t()
      }

  """
  @type long_format_text() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_constant_value() :: %{
        "ConstantType" => list(any()),
        "Maximum" => String.t(),
        "Minimum" => String.t(),
        "Value" => String.t(),
        "ValueList" => list(collective_constant_entry()())
      }

  """
  @type topic_constant_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tree_map_field_wells() :: %{
        "TreeMapAggregatedFieldWells" => tree_map_aggregated_field_wells()
      }

  """
  @type tree_map_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      grid_layout_element() :: %{
        "ColumnIndex" => integer(),
        "ColumnSpan" => integer(),
        "ElementId" => String.t(),
        "ElementType" => list(any()),
        "RowIndex" => integer(),
        "RowSpan" => integer()
      }

  """
  @type grid_layout_element() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_identifier() :: %{
        "ColumnName" => String.t(),
        "DataSetIdentifier" => String.t()
      }

  """
  @type column_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      heat_map_field_wells() :: %{
        "HeatMapAggregatedFieldWells" => heat_map_aggregated_field_wells()
      }

  """
  @type heat_map_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_role_custom_permission_request() :: %{}

  """
  @type delete_role_custom_permission_request() :: %{}

  @typedoc """

  ## Example:

      geospatial_line_layer() :: %{
        "Style" => geospatial_line_style()
      }

  """
  @type geospatial_line_layer() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ssl_properties() :: %{
        "DisableSsl" => boolean()
      }

  """
  @type ssl_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_topic_permissions_request() :: %{}

  """
  @type describe_topic_permissions_request() :: %{}

  @typedoc """

  ## Example:

      table_field_option() :: %{
        "CustomLabel" => String.t(),
        "FieldId" => String.t(),
        "URLStyling" => table_field_url_configuration(),
        "Visibility" => list(any()),
        "Width" => String.t()
      }

  """
  @type table_field_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      arc_axis_display_range() :: %{
        "Max" => float(),
        "Min" => float()
      }

  """
  @type arc_axis_display_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_account_customization_request() :: %{
        optional("Namespace") => String.t(),
        required("AccountCustomization") => account_customization()
      }

  """
  @type update_account_customization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_key_registration_response() :: %{
        "AwsAccountId" => String.t(),
        "KeyRegistration" => list(registered_customer_managed_key()()),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_key_registration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      word_cloud_chart_configuration() :: %{
        "CategoryLabelOptions" => chart_axis_label_options(),
        "FieldWells" => word_cloud_field_wells(),
        "Interactions" => visual_interaction_options(),
        "SortConfiguration" => word_cloud_sort_configuration(),
        "WordCloudOptions" => word_cloud_options()
      }

  """
  @type word_cloud_chart_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      histogram_configuration() :: %{
        "BinOptions" => histogram_bin_options(),
        "DataLabels" => data_label_options(),
        "FieldWells" => histogram_field_wells(),
        "Interactions" => visual_interaction_options(),
        "Tooltip" => tooltip_options(),
        "VisualPalette" => visual_palette(),
        "XAxisDisplayOptions" => axis_display_options(),
        "XAxisLabelOptions" => chart_axis_label_options(),
        "YAxisDisplayOptions" => axis_display_options()
      }

  """
  @type histogram_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      string_dataset_parameter() :: %{
        "DefaultValues" => string_dataset_parameter_default_values(),
        "Id" => String.t(),
        "Name" => String.t(),
        "ValueType" => list(any())
      }

  """
  @type string_dataset_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_analysis_request() :: %{
        optional("ForceDeleteWithoutRecovery") => boolean(),
        optional("RecoveryWindowInDays") => float()
      }

  """
  @type delete_analysis_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_group_request() :: %{
        optional("Description") => String.t()
      }

  """
  @type update_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_sql() :: %{
        "Columns" => list(input_column()()),
        "DataSourceArn" => String.t(),
        "Name" => String.t(),
        "SqlQuery" => String.t()
      }

  """
  @type custom_sql() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_selectable_values() :: %{
        "Values" => list(String.t()())
      }

  """
  @type filter_selectable_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_q_personalization_configuration_request() :: %{}

  """
  @type describe_q_personalization_configuration_request() :: %{}

  @typedoc """

  ## Example:

      donut_options() :: %{
        "ArcOptions" => arc_options(),
        "DonutCenterOptions" => donut_center_options()
      }

  """
  @type donut_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_analysis_response() :: %{
        "AnalysisId" => String.t(),
        "Arn" => String.t(),
        "CreationStatus" => list(any()),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type create_analysis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_analyses_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Filters") => list(analysis_search_filter()())
      }

  """
  @type search_analyses_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_categorical_color() :: %{
        "CategoryDataColors" => list(geospatial_categorical_data_color()()),
        "DefaultOpacity" => float(),
        "NullDataSettings" => geospatial_null_data_settings(),
        "NullDataVisibility" => list(any())
      }

  """
  @type geospatial_categorical_color() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_theme_permissions_response() :: %{
        "Permissions" => list(resource_permission()()),
        "RequestId" => String.t(),
        "Status" => integer(),
        "ThemeArn" => String.t(),
        "ThemeId" => String.t()
      }

  """
  @type describe_theme_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      integer_parameter_declaration() :: %{
        "DefaultValues" => integer_default_values(),
        "MappedDataSetParameters" => list(mapped_data_set_parameter()()),
        "Name" => String.t(),
        "ParameterValueType" => list(any()),
        "ValueWhenUnset" => integer_value_when_unset_configuration()
      }

  """
  @type integer_parameter_declaration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_relative_date_time_control_options() :: %{
        "CommitMode" => list(any()),
        "DisplayOptions" => relative_date_time_control_display_options()
      }

  """
  @type default_relative_date_time_control_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_interaction_options() :: %{
        "ImageMenuOption" => image_menu_option()
      }

  """
  @type image_interaction_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_brand_response() :: %{
        "BrandDefinition" => brand_definition(),
        "BrandDetail" => brand_detail(),
        "RequestId" => String.t()
      }

  """
  @type update_brand_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_folder_permissions_response() :: %{
        "Arn" => String.t(),
        "FolderId" => String.t(),
        "Permissions" => list(resource_permission()()),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_folder_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_data_set_refresh_properties_request() :: %{}

  """
  @type describe_data_set_refresh_properties_request() :: %{}

  @typedoc """

  ## Example:

      describe_theme_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer(),
        "Theme" => theme()
      }

  """
  @type describe_theme_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      state_persistence_configurations() :: %{
        "Enabled" => boolean()
      }

  """
  @type state_persistence_configurations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_path_sort() :: %{
        "Direction" => list(any()),
        "SortPaths" => list(data_path_value()())
      }

  """
  @type data_path_sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      folder_search_filter() :: %{
        "Name" => list(any()),
        "Operator" => list(any()),
        "Value" => String.t()
      }

  """
  @type folder_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      arc_options() :: %{
        "ArcThickness" => list(any())
      }

  """
  @type arc_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      combo_chart_field_wells() :: %{
        "ComboChartAggregatedFieldWells" => combo_chart_aggregated_field_wells()
      }

  """
  @type combo_chart_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_identity_propagation_config_request() :: %{
        optional("AuthorizedTargets") => list(String.t()())
      }

  """
  @type update_identity_propagation_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_topic_permissions_response() :: %{
        "Permissions" => list(resource_permission()()),
        "RequestId" => String.t(),
        "Status" => integer(),
        "TopicArn" => String.t(),
        "TopicId" => String.t()
      }

  """
  @type describe_topic_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_content_configuration() :: %{
        "ContentType" => list(any()),
        "ContentUrl" => String.t(),
        "ImageScaling" => list(any()),
        "Interactions" => visual_interaction_options()
      }

  """
  @type custom_content_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_line_style() :: %{
        "LineSymbolStyle" => geospatial_line_symbol_style()
      }

  """
  @type geospatial_line_style() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template_error() :: %{
        "Message" => String.t(),
        "Type" => list(any()),
        "ViolatedEntities" => list(entity()())
      }

  """
  @type template_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_data_source_response() :: %{
        "DataSource" => data_source(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_custom_permission_request() :: %{
        required("CustomPermissionsName") => String.t()
      }

  """
  @type update_user_custom_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_categorical_data_color() :: %{
        "Color" => String.t(),
        "DataValue" => String.t()
      }

  """
  @type geospatial_categorical_data_color() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dashboard_version_summary() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "SourceEntityArn" => String.t(),
        "Status" => list(any()),
        "VersionNumber" => float()
      }

  """
  @type dashboard_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_i_r_comparison_method() :: %{
        "Period" => list(any()),
        "Type" => list(any()),
        "WindowSize" => integer()
      }

  """
  @type topic_i_r_comparison_method() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_topic_response() :: %{
        "Arn" => String.t(),
        "RefreshArn" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "TopicId" => String.t()
      }

  """
  @type create_topic_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_folders_for_resource_response() :: %{
        "Folders" => list(String.t()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type list_folders_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      brand_element_style() :: %{
        "NavbarStyle" => navbar_style()
      }

  """
  @type brand_element_style() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      date_axis_options() :: %{
        "MissingDateVisibility" => list(any())
      }

  """
  @type date_axis_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      join_instruction() :: %{
        "LeftJoinKeyProperties" => join_key_properties(),
        "LeftOperand" => String.t(),
        "OnClause" => String.t(),
        "RightJoinKeyProperties" => join_key_properties(),
        "RightOperand" => String.t(),
        "Type" => list(any())
      }

  """
  @type join_instruction() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      comparison_format_configuration() :: %{
        "NumberDisplayFormatConfiguration" => number_display_format_configuration(),
        "PercentageDisplayFormatConfiguration" => percentage_display_format_configuration()
      }

  """
  @type comparison_format_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_resource_id_override_configuration() :: %{
        "PrefixForAllResources" => String.t()
      }

  """
  @type asset_bundle_import_job_resource_id_override_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_theme_alias_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer(),
        "ThemeAlias" => theme_alias()
      }

  """
  @type describe_theme_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_definition() :: %{
        "AnalysisDefaults" => analysis_defaults(),
        "CalculatedFields" => list(calculated_field()()),
        "ColumnConfigurations" => list(column_configuration()()),
        "DataSetIdentifierDeclarations" => list(data_set_identifier_declaration()()),
        "FilterGroups" => list(filter_group()()),
        "Options" => asset_options(),
        "ParameterDeclarations" => list(parameter_declaration()()),
        "QueryExecutionOptions" => query_execution_options(),
        "Sheets" => list(sheet_definition()()),
        "StaticFiles" => list(static_file()())
      }

  """
  @type analysis_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      integer_value_when_unset_configuration() :: %{
        "CustomValue" => float(),
        "ValueWhenUnsetOption" => list(any())
      }

  """
  @type integer_value_when_unset_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_set_response() :: %{
        "Arn" => String.t(),
        "DataSetId" => String.t(),
        "IngestionArn" => String.t(),
        "IngestionId" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_data_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_theme_response() :: %{
        "Arn" => String.t(),
        "CreationStatus" => list(any()),
        "RequestId" => String.t(),
        "Status" => integer(),
        "ThemeId" => String.t(),
        "VersionArn" => String.t()
      }

  """
  @type create_theme_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_template_definition_request() :: %{
        optional("AliasName") => String.t(),
        optional("VersionNumber") => float()
      }

  """
  @type describe_template_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pivot_total_options() :: %{
        "CustomLabel" => String.t(),
        "MetricHeaderCellStyle" => table_cell_style(),
        "Placement" => list(any()),
        "ScrollStatus" => list(any()),
        "TotalAggregationOptions" => list(total_aggregation_option()()),
        "TotalCellStyle" => table_cell_style(),
        "TotalsVisibility" => list(any()),
        "ValueCellStyle" => table_cell_style()
      }

  """
  @type pivot_total_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_inline_visualization() :: %{
        "DataBars" => data_bars_options()
      }

  """
  @type table_inline_visualization() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      named_entity_definition() :: %{
        "FieldName" => String.t(),
        "Metric" => named_entity_definition_metric(),
        "PropertyName" => String.t(),
        "PropertyRole" => list(any()),
        "PropertyUsage" => list(any())
      }

  """
  @type named_entity_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vpc_connection_request() :: %{}

  """
  @type delete_vpc_connection_request() :: %{}

  @typedoc """

  ## Example:

      snapshot_job_result() :: %{
        "AnonymousUsers" => list(anonymous_user_snapshot_job_result()())
      }

  """
  @type snapshot_job_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dashboard_search_filter() :: %{
        "Name" => list(any()),
        "Operator" => list(any()),
        "Value" => String.t()
      }

  """
  @type dashboard_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      small_multiples_axis_properties() :: %{
        "Placement" => list(any()),
        "Scale" => list(any())
      }

  """
  @type small_multiples_axis_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      maria_db_parameters() :: %{
        "Database" => String.t(),
        "Host" => String.t(),
        "Port" => integer()
      }

  """
  @type maria_db_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      registered_customer_managed_key() :: %{
        "DefaultKey" => boolean(),
        "KeyArn" => String.t()
      }

  """
  @type registered_customer_managed_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_analysis_permissions_response() :: %{
        "AnalysisArn" => String.t(),
        "AnalysisId" => String.t(),
        "Permissions" => list(resource_permission()()),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_analysis_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      axis_linear_scale() :: %{
        "StepCount" => integer(),
        "StepSize" => float()
      }

  """
  @type axis_linear_scale() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_quick_sight_q_search_configuration_request() :: %{
        required("QSearchStatus") => list(any())
      }

  """
  @type update_quick_sight_q_search_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameter_list_control() :: %{
        "CascadingControlConfiguration" => cascading_control_configuration(),
        "DisplayOptions" => list_control_display_options(),
        "ParameterControlId" => String.t(),
        "SelectableValues" => parameter_selectable_values(),
        "SourceParameterName" => String.t(),
        "Title" => String.t(),
        "Type" => list(any())
      }

  """
  @type parameter_list_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      static_file_url_source_options() :: %{
        "Url" => String.t()
      }

  """
  @type static_file_url_source_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_role_custom_permission_response() :: %{
        "CustomPermissionsName" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_role_custom_permission_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sheet_control_layout_configuration() :: %{
        "GridLayout" => grid_layout_configuration()
      }

  """
  @type sheet_control_layout_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      line_chart_configuration() :: %{
        "ContributionAnalysisDefaults" => list(contribution_analysis_default()()),
        "DataLabels" => data_label_options(),
        "DefaultSeriesSettings" => line_chart_default_series_settings(),
        "FieldWells" => line_chart_field_wells(),
        "ForecastConfigurations" => list(forecast_configuration()()),
        "Interactions" => visual_interaction_options(),
        "Legend" => legend_options(),
        "PrimaryYAxisDisplayOptions" => line_series_axis_display_options(),
        "PrimaryYAxisLabelOptions" => chart_axis_label_options(),
        "ReferenceLines" => list(reference_line()()),
        "SecondaryYAxisDisplayOptions" => line_series_axis_display_options(),
        "SecondaryYAxisLabelOptions" => chart_axis_label_options(),
        "Series" => list(series_item()()),
        "SingleAxisOptions" => single_axis_options(),
        "SmallMultiplesOptions" => small_multiples_options(),
        "SortConfiguration" => line_chart_sort_configuration(),
        "Tooltip" => tooltip_options(),
        "Type" => list(any()),
        "VisualPalette" => visual_palette(),
        "XAxisDisplayOptions" => axis_display_options(),
        "XAxisLabelOptions" => chart_axis_label_options()
      }

  """
  @type line_chart_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      visual_axis_sort_option() :: %{
        "AvailabilityStatus" => list(any())
      }

  """
  @type visual_axis_sort_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_named_entity() :: %{
        "Definition" => list(named_entity_definition()()),
        "EntityDescription" => String.t(),
        "EntityName" => String.t(),
        "EntitySynonyms" => list(String.t()()),
        "SemanticEntityType" => semantic_entity_type()
      }

  """
  @type topic_named_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_filter_control_options() :: %{
        "DefaultDateTimePickerOptions" => default_date_time_picker_control_options(),
        "DefaultDropdownOptions" => default_filter_drop_down_control_options(),
        "DefaultListOptions" => default_filter_list_control_options(),
        "DefaultRelativeDateTimeOptions" => default_relative_date_time_control_options(),
        "DefaultSliderOptions" => default_slider_control_options(),
        "DefaultTextAreaOptions" => default_text_area_control_options(),
        "DefaultTextFieldOptions" => default_text_field_control_options()
      }

  """
  @type default_filter_control_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pivot_table_total_options() :: %{
        "ColumnSubtotalOptions" => subtotal_options(),
        "ColumnTotalOptions" => pivot_total_options(),
        "RowSubtotalOptions" => subtotal_options(),
        "RowTotalOptions" => pivot_total_options()
      }

  """
  @type pivot_table_total_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bar_chart_aggregated_field_wells() :: %{
        "Category" => list(dimension_field()()),
        "Colors" => list(dimension_field()()),
        "SmallMultiples" => list(dimension_field()()),
        "Values" => list(measure_field()())
      }

  """
  @type bar_chart_aggregated_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logo_set() :: %{
        "Favicon" => image_set(),
        "Primary" => image_set()
      }

  """
  @type logo_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unsupported_user_edition_exception() :: %{
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type unsupported_user_edition_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_i_r_metric() :: %{
        "CalculatedFieldReferences" => list(quicksight_identifier()()),
        "ComparisonMethod" => topic_i_r_comparison_method(),
        "DisplayFormat" => list(any()),
        "DisplayFormatOptions" => display_format_options(),
        "Expression" => String.t(),
        "Function" => agg_function(),
        "MetricId" => quicksight_identifier(),
        "NamedEntity" => named_entity_ref(),
        "Operands" => list(quicksight_identifier()())
      }

  """
  @type topic_i_r_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      display_format_options() :: %{
        "BlankCellFormat" => String.t(),
        "CurrencySymbol" => String.t(),
        "DateFormat" => String.t(),
        "DecimalSeparator" => list(any()),
        "FractionDigits" => integer(),
        "GroupingSeparator" => String.t(),
        "NegativeFormat" => negative_format(),
        "Prefix" => String.t(),
        "Suffix" => String.t(),
        "UnitScaler" => list(any()),
        "UseBlankCellFormat" => boolean(),
        "UseGrouping" => boolean()
      }

  """
  @type display_format_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      total_aggregation_function() :: %{
        "SimpleTotalAggregationFunction" => list(any())
      }

  """
  @type total_aggregation_function() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      body_section_dynamic_numeric_dimension_configuration() :: %{
        "Column" => column_identifier(),
        "Limit" => integer(),
        "SortByMetrics" => list(column_sort()())
      }

  """
  @type body_section_dynamic_numeric_dimension_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      link_sharing_configuration() :: %{
        "Permissions" => list(resource_permission()())
      }

  """
  @type link_sharing_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_vpc_connections_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_vpc_connections_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mapped_data_set_parameter() :: %{
        "DataSetIdentifier" => String.t(),
        "DataSetParameterName" => String.t()
      }

  """
  @type mapped_data_set_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      starburst_parameters() :: %{
        "AuthenticationType" => list(any()),
        "Catalog" => String.t(),
        "DatabaseAccessControlRole" => String.t(),
        "Host" => String.t(),
        "OAuthParameters" => o_auth_parameters(),
        "Port" => integer(),
        "ProductType" => list(any())
      }

  """
  @type starburst_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_brand_published_version_request() :: %{}

  """
  @type describe_brand_published_version_request() :: %{}

  @typedoc """

  ## Example:

      shape_conditional_format() :: %{
        "BackgroundColor" => conditional_formatting_color()
      }

  """
  @type shape_conditional_format() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_sources_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_data_sources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sheet_image_tooltip_text() :: %{
        "PlainText" => String.t()
      }

  """
  @type sheet_image_tooltip_text() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_custom_permissions_response() :: %{
        "Arn" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type delete_custom_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tree_map_configuration() :: %{
        "ColorLabelOptions" => chart_axis_label_options(),
        "ColorScale" => color_scale(),
        "DataLabels" => data_label_options(),
        "FieldWells" => tree_map_field_wells(),
        "GroupLabelOptions" => chart_axis_label_options(),
        "Interactions" => visual_interaction_options(),
        "Legend" => legend_options(),
        "SizeLabelOptions" => chart_axis_label_options(),
        "SortConfiguration" => tree_map_sort_configuration(),
        "Tooltip" => tooltip_options()
      }

  """
  @type tree_map_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_role_custom_permission_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type delete_role_custom_permission_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      active_iam_policy_assignment() :: %{
        "AssignmentName" => String.t(),
        "PolicyArn" => String.t()
      }

  """
  @type active_iam_policy_assignment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_analysis_override_tags() :: %{
        "AnalysisIds" => list(String.t()()),
        "Tags" => list(tag()())
      }

  """
  @type asset_bundle_import_job_analysis_override_tags() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_namespace_request() :: %{
        optional("Tags") => list(tag()()),
        required("IdentityStore") => list(any()),
        required("Namespace") => String.t()
      }

  """
  @type create_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_bars_options() :: %{
        "FieldId" => String.t(),
        "NegativeColor" => String.t(),
        "PositiveColor" => String.t()
      }

  """
  @type data_bars_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_set_configuration() :: %{
        "ColumnGroupSchemaList" => list(column_group_schema()()),
        "DataSetSchema" => data_set_schema(),
        "Placeholder" => String.t()
      }

  """
  @type data_set_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source_search_filter() :: %{
        "Name" => list(any()),
        "Operator" => list(any()),
        "Value" => String.t()
      }

  """
  @type data_source_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      heat_map_aggregated_field_wells() :: %{
        "Columns" => list(dimension_field()()),
        "Rows" => list(dimension_field()()),
        "Values" => list(measure_field()())
      }

  """
  @type heat_map_aggregated_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_brand_published_version_response() :: %{
        "RequestId" => String.t(),
        "VersionId" => String.t()
      }

  """
  @type update_brand_published_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_paginated_layout_configuration() :: %{
        "SectionBased" => default_section_based_layout_configuration()
      }

  """
  @type default_paginated_layout_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_iam_policy_assignments_for_user_response() :: %{
        "ActiveAssignments" => list(active_iam_policy_assignment()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type list_iam_policy_assignments_for_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_data_source_response() :: %{
        "Arn" => String.t(),
        "DataSourceId" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type delete_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      axis_scale() :: %{
        "Linear" => axis_linear_scale(),
        "Logarithmic" => axis_logarithmic_scale()
      }

  """
  @type axis_scale() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_topic_reviewed_answers_response() :: %{
        "Answers" => list(topic_reviewed_answer()()),
        "RequestId" => String.t(),
        "Status" => integer(),
        "TopicArn" => String.t(),
        "TopicId" => String.t()
      }

  """
  @type list_topic_reviewed_answers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      missing_data_configuration() :: %{
        "TreatmentOption" => list(any())
      }

  """
  @type missing_data_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dashboard_snapshot_job_response() :: %{
        "Arn" => String.t(),
        "AwsAccountId" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "DashboardId" => String.t(),
        "JobStatus" => list(any()),
        "LastUpdatedTime" => non_neg_integer(),
        "RequestId" => String.t(),
        "SnapshotConfiguration" => snapshot_configuration(),
        "SnapshotJobId" => String.t(),
        "Status" => integer(),
        "UserConfiguration" => snapshot_user_configuration_redacted()
      }

  """
  @type describe_dashboard_snapshot_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      text_area_control_display_options() :: %{
        "InfoIconLabelOptions" => sheet_control_info_icon_label_options(),
        "PlaceholderOptions" => text_control_placeholder_options(),
        "TitleOptions" => label_options()
      }

  """
  @type text_area_control_display_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_template_request() :: %{
        optional("VersionNumber") => float()
      }

  """
  @type delete_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      nested_filter() :: %{
        "Column" => column_identifier(),
        "FilterId" => String.t(),
        "IncludeInnerSet" => boolean(),
        "InnerFilter" => inner_filter()
      }

  """
  @type nested_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_folder_membership_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type delete_folder_membership_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filled_map_conditional_formatting_option() :: %{
        "Shape" => filled_map_shape_conditional_formatting()
      }

  """
  @type filled_map_conditional_formatting_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_data_set_request() :: %{}

  """
  @type describe_data_set_request() :: %{}

  @typedoc """

  ## Example:

      delete_data_set_refresh_properties_request() :: %{}

  """
  @type delete_data_set_refresh_properties_request() :: %{}

  @typedoc """

  ## Example:

      conditional_formatting_icon_display_configuration() :: %{
        "IconDisplayOption" => list(any())
      }

  """
  @type conditional_formatting_icon_display_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_i_r_filter_option() :: %{
        "AggMetrics" => list(filter_agg_metrics()()),
        "Aggregation" => list(any()),
        "AggregationFunctionParameters" => map(),
        "AggregationPartitionBy" => list(aggregation_partition_by()()),
        "Anchor" => anchor(),
        "Constant" => topic_constant_value(),
        "FilterClass" => list(any()),
        "FilterType" => list(any()),
        "Function" => list(any()),
        "Inclusive" => boolean(),
        "Inverse" => boolean(),
        "LastNextOffset" => topic_constant_value(),
        "NullFilter" => list(any()),
        "OperandField" => quicksight_identifier(),
        "Range" => topic_constant_value(),
        "SortDirection" => list(any()),
        "TimeGranularity" => list(any()),
        "TopBottomLimit" => topic_constant_value()
      }

  """
  @type topic_i_r_filter_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      arc_configuration() :: %{
        "ArcAngle" => float(),
        "ArcThickness" => list(any())
      }

  """
  @type arc_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      box_plot_style_options() :: %{
        "FillStyle" => list(any())
      }

  """
  @type box_plot_style_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      minimum_label_type() :: %{
        "Visibility" => list(any())
      }

  """
  @type minimum_label_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      anonymous_user_dashboard_visual_embedding_configuration() :: %{
        "InitialDashboardVisualId" => dashboard_visual_id()
      }

  """
  @type anonymous_user_dashboard_visual_embedding_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_topic_response() :: %{
        "Arn" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "Topic" => topic_details(),
        "TopicId" => String.t()
      }

  """
  @type describe_topic_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      body_section_repeat_page_break_configuration() :: %{
        "After" => section_after_page_break()
      }

  """
  @type body_section_repeat_page_break_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      registered_user_dashboard_embedding_configuration() :: %{
        "FeatureConfigurations" => registered_user_dashboard_feature_configurations(),
        "InitialDashboardId" => String.t()
      }

  """
  @type registered_user_dashboard_embedding_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      numeric_range_filter() :: %{
        "AggregationFunction" => aggregation_function(),
        "Column" => column_identifier(),
        "DefaultFilterControlConfiguration" => default_filter_control_configuration(),
        "FilterId" => String.t(),
        "IncludeMaximum" => boolean(),
        "IncludeMinimum" => boolean(),
        "NullOption" => list(any()),
        "RangeMaximum" => numeric_range_filter_value(),
        "RangeMinimum" => numeric_range_filter_value(),
        "SelectAllOptions" => list(any())
      }

  """
  @type numeric_range_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_data_sets_response() :: %{
        "DataSetSummaries" => list(data_set_summary()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type search_data_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_identity_propagation_configs_response() :: %{
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Services" => list(authorized_targets_by_service()()),
        "Status" => integer()
      }

  """
  @type list_identity_propagation_configs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      box_plot_field_wells() :: %{
        "BoxPlotAggregatedFieldWells" => box_plot_aggregated_field_wells()
      }

  """
  @type box_plot_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_resource_link_sharing_configuration() :: %{
        "Permissions" => asset_bundle_resource_permissions()
      }

  """
  @type asset_bundle_resource_link_sharing_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      category_inner_filter() :: %{
        "Column" => column_identifier(),
        "Configuration" => category_filter_configuration(),
        "DefaultFilterControlConfiguration" => default_filter_control_configuration()
      }

  """
  @type category_inner_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_themes_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Type") => list(any())
      }

  """
  @type list_themes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_group_column_schema() :: %{
        "Name" => String.t()
      }

  """
  @type column_group_column_schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_reviewed_answer() :: %{
        "AnswerId" => String.t(),
        "Arn" => String.t(),
        "DatasetArn" => String.t(),
        "Mir" => topic_i_r(),
        "PrimaryVisual" => topic_visual(),
        "Question" => String.t(),
        "Template" => topic_template()
      }

  """
  @type topic_reviewed_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_relative_date_time_control() :: %{
        "CommitMode" => list(any()),
        "DisplayOptions" => relative_date_time_control_display_options(),
        "FilterControlId" => String.t(),
        "SourceFilterId" => String.t(),
        "Title" => String.t()
      }

  """
  @type filter_relative_date_time_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "RequestId" => String.t(),
        "ResourceType" => list(any())
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cluster_marker_configuration() :: %{
        "ClusterMarker" => cluster_marker()
      }

  """
  @type cluster_marker_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      string_dataset_parameter_default_values() :: %{
        "StaticValues" => list(String.t()())
      }

  """
  @type string_dataset_parameter_default_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dashboard_definition_request() :: %{
        optional("AliasName") => String.t(),
        optional("VersionNumber") => float()
      }

  """
  @type describe_dashboard_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_line_width() :: %{
        "LineWidth" => float()
      }

  """
  @type geospatial_line_width() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      plugin_visual_configuration() :: %{
        "FieldWells" => list(plugin_visual_field_well()()),
        "SortConfiguration" => plugin_visual_sort_configuration(),
        "VisualOptions" => plugin_visual_options()
      }

  """
  @type plugin_visual_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_analyses_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_analyses_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      numeric_range_filter_value() :: %{
        "Parameter" => String.t(),
        "StaticValue" => float()
      }

  """
  @type numeric_range_filter_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_analysis_request() :: %{}

  """
  @type describe_analysis_request() :: %{}

  @typedoc """

  ## Example:

      section_style() :: %{
        "Height" => String.t(),
        "Padding" => spacing()
      }

  """
  @type section_style() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      colors_configuration() :: %{
        "CustomColors" => list(custom_color()())
      }

  """
  @type colors_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      section_after_page_break() :: %{
        "Status" => list(any())
      }

  """
  @type section_after_page_break() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_search_filter() :: %{
        "Name" => list(any()),
        "Operator" => list(any()),
        "Value" => String.t()
      }

  """
  @type analysis_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pivot_table_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "ChartConfiguration" => pivot_table_configuration(),
        "ConditionalFormatting" => pivot_table_conditional_formatting(),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type pivot_table_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sheet_image_static_file_source() :: %{
        "StaticFileId" => String.t()
      }

  """
  @type sheet_image_static_file_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      text_control_placeholder_options() :: %{
        "Visibility" => list(any())
      }

  """
  @type text_control_placeholder_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      text_conditional_format() :: %{
        "BackgroundColor" => conditional_formatting_color(),
        "Icon" => conditional_formatting_icon(),
        "TextColor" => conditional_formatting_color()
      }

  """
  @type text_conditional_format() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unique_values_computation() :: %{
        "Category" => dimension_field(),
        "ComputationId" => String.t(),
        "Name" => String.t()
      }

  """
  @type unique_values_computation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      funnel_chart_data_label_options() :: %{
        "CategoryLabelVisibility" => list(any()),
        "LabelColor" => String.t(),
        "LabelFontConfiguration" => font_configuration(),
        "MeasureDataLabelStyle" => list(any()),
        "MeasureLabelVisibility" => list(any()),
        "Position" => list(any()),
        "Visibility" => list(any())
      }

  """
  @type funnel_chart_data_label_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      axis_logarithmic_scale() :: %{
        "Base" => float()
      }

  """
  @type axis_logarithmic_scale() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_template_permissions_response() :: %{
        "Permissions" => list(resource_permission()()),
        "RequestId" => String.t(),
        "Status" => integer(),
        "TemplateArn" => String.t(),
        "TemplateId" => String.t()
      }

  """
  @type describe_template_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ingestion() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "ErrorInfo" => error_info(),
        "IngestionId" => String.t(),
        "IngestionSizeInBytes" => float(),
        "IngestionStatus" => list(any()),
        "IngestionTimeInSeconds" => float(),
        "QueueInfo" => queue_info(),
        "RequestSource" => list(any()),
        "RequestType" => list(any()),
        "RowInfo" => row_info()
      }

  """
  @type ingestion() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_execution_options() :: %{
        "QueryExecutionMode" => list(any())
      }

  """
  @type query_execution_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subtotal_options() :: %{
        "CustomLabel" => String.t(),
        "FieldLevel" => list(any()),
        "FieldLevelOptions" => list(pivot_table_field_subtotal_options()()),
        "MetricHeaderCellStyle" => table_cell_style(),
        "StyleTargets" => list(table_style_target()()),
        "TotalCellStyle" => table_cell_style(),
        "TotalsVisibility" => list(any()),
        "ValueCellStyle" => table_cell_style()
      }

  """
  @type subtotal_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_theme_permissions_request() :: %{}

  """
  @type describe_theme_permissions_request() :: %{}

  @typedoc """

  ## Example:

      axis_display_options() :: %{
        "AxisLineVisibility" => list(any()),
        "AxisOffset" => String.t(),
        "DataOptions" => axis_data_options(),
        "GridLineVisibility" => list(any()),
        "ScrollbarOptions" => scroll_bar_options(),
        "TickLabelOptions" => axis_tick_label_options()
      }

  """
  @type axis_display_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_analysis_override_parameters() :: %{
        "AnalysisId" => String.t(),
        "Name" => String.t()
      }

  """
  @type asset_bundle_import_job_analysis_override_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pivot_table_field_collapse_state_target() :: %{
        "FieldDataPathValues" => list(data_path_value()()),
        "FieldId" => String.t()
      }

  """
  @type pivot_table_field_collapse_state_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }

  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_set_request() :: %{
        optional("ColumnGroups") => list(column_group()()),
        optional("ColumnLevelPermissionRules") => list(column_level_permission_rule()()),
        optional("DataSetUsageConfiguration") => data_set_usage_configuration(),
        optional("DatasetParameters") => list(dataset_parameter()()),
        optional("FieldFolders") => map(),
        optional("FolderArns") => list(String.t()()),
        optional("LogicalTableMap") => map(),
        optional("PerformanceConfiguration") => performance_configuration(),
        optional("Permissions") => list(resource_permission()()),
        optional("RowLevelPermissionDataSet") => row_level_permission_data_set(),
        optional("RowLevelPermissionTagConfiguration") => row_level_permission_tag_configuration(),
        optional("Tags") => list(tag()()),
        required("DataSetId") => String.t(),
        required("ImportMode") => list(any()),
        required("Name") => String.t(),
        required("PhysicalTableMap") => map()
      }

  """
  @type create_data_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      registered_user_dashboard_feature_configurations() :: %{
        "Bookmarks" => bookmarks_configurations(),
        "SharedView" => shared_view_configurations(),
        "StatePersistence" => state_persistence_configurations()
      }

  """
  @type registered_user_dashboard_feature_configurations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_operation() :: %{
        "ConditionExpression" => String.t()
      }

  """
  @type filter_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_export_job_data_set_override_properties() :: %{
        "Arn" => String.t(),
        "Properties" => list(list(any())())
      }

  """
  @type asset_bundle_export_job_data_set_override_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      layer_map_visual() :: %{
        "ChartConfiguration" => geospatial_layer_map_configuration(),
        "DataSetIdentifier" => String.t(),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type layer_map_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_data_sets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Filters") => list(data_set_search_filter()())
      }

  """
  @type search_data_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      visual_palette() :: %{
        "ChartColor" => String.t(),
        "ColorMap" => list(data_path_color()())
      }

  """
  @type visual_palette() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      visible_range_options() :: %{
        "PercentRange" => percent_visible_range()
      }

  """
  @type visible_range_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_export_job_error() :: %{
        "Arn" => String.t(),
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type asset_bundle_export_job_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scatter_plot_unaggregated_field_wells() :: %{
        "Category" => list(dimension_field()()),
        "Label" => list(dimension_field()()),
        "Size" => list(measure_field()()),
        "XAxis" => list(dimension_field()()),
        "YAxis" => list(dimension_field()())
      }

  """
  @type scatter_plot_unaggregated_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_user_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer(),
        "User" => user(),
        "UserInvitationUrl" => String.t()
      }

  """
  @type register_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_category_filter() :: %{
        "CategoryFilterFunction" => list(any()),
        "CategoryFilterType" => list(any()),
        "Constant" => topic_category_filter_constant(),
        "Inverse" => boolean()
      }

  """
  @type topic_category_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_folder_permissions_response() :: %{
        "Arn" => String.t(),
        "FolderId" => String.t(),
        "NextToken" => String.t(),
        "Permissions" => list(resource_permission()()),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_folder_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      semantic_entity_type() :: %{
        "SubTypeName" => String.t(),
        "TypeName" => String.t(),
        "TypeParameters" => map()
      }

  """
  @type semantic_entity_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      static_file() :: %{
        "ImageStaticFile" => image_static_file(),
        "SpatialStaticFile" => spatial_static_file()
      }

  """
  @type static_file() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filled_map_sort_configuration() :: %{
        "CategorySort" => list(field_sort_options()())
      }

  """
  @type filled_map_sort_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      snowflake_parameters() :: %{
        "AuthenticationType" => list(any()),
        "Database" => String.t(),
        "DatabaseAccessControlRole" => String.t(),
        "Host" => String.t(),
        "OAuthParameters" => o_auth_parameters(),
        "Warehouse" => String.t()
      }

  """
  @type snowflake_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template_source_analysis() :: %{
        "Arn" => String.t(),
        "DataSetReferences" => list(data_set_reference()())
      }

  """
  @type template_source_analysis() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_tooltip_item() :: %{
        "FieldId" => String.t(),
        "Label" => String.t(),
        "TooltipTarget" => list(any()),
        "Visibility" => list(any())
      }

  """
  @type field_tooltip_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scatter_plot_sort_configuration() :: %{
        "ScatterPlotLimitConfiguration" => items_limit_configuration()
      }

  """
  @type scatter_plot_sort_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_window_options() :: %{
        "Bounds" => geospatial_coordinate_bounds(),
        "MapZoomMode" => list(any())
      }

  """
  @type geospatial_window_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_layer_color_field() :: %{
        "ColorDimensionsFields" => list(dimension_field()()),
        "ColorValuesFields" => list(measure_field()())
      }

  """
  @type geospatial_layer_color_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_template_alias_request() :: %{}

  """
  @type describe_template_alias_request() :: %{}

  @typedoc """

  ## Example:

      layer_custom_action() :: %{
        "ActionOperations" => list(layer_custom_action_operation()()),
        "CustomActionId" => String.t(),
        "Name" => String.t(),
        "Status" => list(any()),
        "Trigger" => list(any())
      }

  """
  @type layer_custom_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_account_subscription_response() :: %{
        "AccountInfo" => account_info(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_account_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_bundle_export_jobs_response() :: %{
        "AssetBundleExportJobSummaryList" => list(asset_bundle_export_job_summary()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type list_asset_bundle_export_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      k_p_i_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "ChartConfiguration" => k_p_i_configuration(),
        "ColumnHierarchies" => list(column_hierarchy()()),
        "ConditionalFormatting" => k_p_i_conditional_formatting(),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type k_p_i_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dashboard() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "DashboardId" => String.t(),
        "LastPublishedTime" => non_neg_integer(),
        "LastUpdatedTime" => non_neg_integer(),
        "LinkEntities" => list(String.t()()),
        "Name" => String.t(),
        "Version" => dashboard_version()
      }

  """
  @type dashboard() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_topic_refresh_response() :: %{
        "RefreshDetails" => topic_refresh_details(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_topic_refresh_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conditional_formatting_custom_icon_options() :: %{
        "Icon" => list(any()),
        "UnicodeIcon" => String.t()
      }

  """
  @type conditional_formatting_custom_icon_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      panel_configuration() :: %{
        "BackgroundColor" => String.t(),
        "BackgroundVisibility" => list(any()),
        "BorderColor" => String.t(),
        "BorderStyle" => list(any()),
        "BorderThickness" => String.t(),
        "BorderVisibility" => list(any()),
        "GutterSpacing" => String.t(),
        "GutterVisibility" => list(any()),
        "Title" => panel_title_options()
      }

  """
  @type panel_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contribution_analysis_factor() :: %{
        "FieldName" => String.t()
      }

  """
  @type contribution_analysis_factor() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_topic_reviewed_answer() :: %{
        "AnswerId" => String.t(),
        "Error" => list(any())
      }

  """
  @type invalid_topic_reviewed_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_dashboard_snapshot_job_schedule_request() :: %{}

  """
  @type start_dashboard_snapshot_job_schedule_request() :: %{}

  @typedoc """

  ## Example:

      asset_bundle_import_job_data_source_override_tags() :: %{
        "DataSourceIds" => list(String.t()()),
        "Tags" => list(tag()())
      }

  """
  @type asset_bundle_import_job_data_source_override_tags() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_not_whitelisted_exception() :: %{
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type domain_not_whitelisted_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      semantic_type() :: %{
        "FalseyCellValue" => String.t(),
        "FalseyCellValueSynonyms" => list(String.t()()),
        "SubTypeName" => String.t(),
        "TruthyCellValue" => String.t(),
        "TruthyCellValueSynonyms" => list(String.t()()),
        "TypeName" => String.t(),
        "TypeParameters" => map()
      }

  """
  @type semantic_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "ChartConfiguration" => table_configuration(),
        "ConditionalFormatting" => table_conditional_formatting(),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type table_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      visual_menu_option() :: %{
        "AvailabilityStatus" => list(any())
      }

  """
  @type visual_menu_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dashboard_visual_publish_options() :: %{
        "ExportHiddenFieldsOption" => export_hidden_fields_option()
      }

  """
  @type dashboard_visual_publish_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_template() :: %{
        "Slots" => list(slot()()),
        "TemplateType" => String.t()
      }

  """
  @type topic_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      computation() :: %{
        "Forecast" => forecast_computation(),
        "GrowthRate" => growth_rate_computation(),
        "MaximumMinimum" => maximum_minimum_computation(),
        "MetricComparison" => metric_comparison_computation(),
        "PeriodOverPeriod" => period_over_period_computation(),
        "PeriodToDate" => period_to_date_computation(),
        "TopBottomMovers" => top_bottom_movers_computation(),
        "TopBottomRanked" => top_bottom_ranked_computation(),
        "TotalAggregation" => total_aggregation_computation(),
        "UniqueValues" => unique_values_computation()
      }

  """
  @type computation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_to_csv_option() :: %{
        "AvailabilityStatus" => list(any())
      }

  """
  @type export_to_csv_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_formatting() :: %{
        "DisplayFormat" => list(any()),
        "DisplayFormatOptions" => display_format_options()
      }

  """
  @type default_formatting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_source_entity() :: %{
        "SourceTemplate" => analysis_source_template()
      }

  """
  @type analysis_source_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conditional_formatting_custom_icon_condition() :: %{
        "Color" => String.t(),
        "DisplayConfiguration" => conditional_formatting_icon_display_configuration(),
        "Expression" => String.t(),
        "IconOptions" => conditional_formatting_custom_icon_options()
      }

  """
  @type conditional_formatting_custom_icon_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      snapshot_anonymous_user_redacted() :: %{
        "RowLevelPermissionTagKeys" => list(String.t()())
      }

  """
  @type snapshot_anonymous_user_redacted() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_next_token_exception() :: %{
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metric_comparison_computation() :: %{
        "ComputationId" => String.t(),
        "FromValue" => measure_field(),
        "Name" => String.t(),
        "TargetValue" => measure_field(),
        "Time" => dimension_field()
      }

  """
  @type metric_comparison_computation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_analysis_response() :: %{
        "Analysis" => analysis(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_analysis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_parameter_value_exception() :: %{
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type invalid_parameter_value_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      namespace_error() :: %{
        "Message" => String.t(),
        "Type" => list(any())
      }

  """
  @type namespace_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template_summary() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "LastUpdatedTime" => non_neg_integer(),
        "LatestVersionNumber" => float(),
        "Name" => String.t(),
        "TemplateId" => String.t()
      }

  """
  @type template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_path_label_type() :: %{
        "FieldId" => String.t(),
        "FieldValue" => String.t(),
        "Visibility" => list(any())
      }

  """
  @type data_path_label_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_template_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_template_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_export_job_theme_override_properties() :: %{
        "Arn" => String.t(),
        "Properties" => list(list(any())())
      }

  """
  @type asset_bundle_export_job_theme_override_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_agg_metrics() :: %{
        "Function" => list(any()),
        "MetricOperand" => quicksight_identifier(),
        "SortDirection" => list(any())
      }

  """
  @type filter_agg_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slider_control_display_options() :: %{
        "InfoIconLabelOptions" => sheet_control_info_icon_label_options(),
        "TitleOptions" => label_options()
      }

  """
  @type slider_control_display_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_analysis_request() :: %{
        optional("Definition") => analysis_definition(),
        optional("Parameters") => parameters(),
        optional("SourceEntity") => analysis_source_entity(),
        optional("ThemeArn") => String.t(),
        optional("ValidationStrategy") => validation_strategy(),
        required("Name") => String.t()
      }

  """
  @type update_analysis_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      total_aggregation_computation() :: %{
        "ComputationId" => String.t(),
        "Name" => String.t(),
        "Value" => measure_field()
      }

  """
  @type total_aggregation_computation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_refresh_schedule_request() :: %{
        required("Schedule") => refresh_schedule()
      }

  """
  @type update_refresh_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_users_response() :: %{
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "UserList" => list(user()())
      }

  """
  @type list_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_role_memberships_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_role_memberships_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_circle_symbol_style() :: %{
        "CircleRadius" => geospatial_circle_radius(),
        "FillColor" => geospatial_color(),
        "StrokeColor" => geospatial_color(),
        "StrokeWidth" => geospatial_line_width()
      }

  """
  @type geospatial_circle_symbol_style() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      project_operation() :: %{
        "ProjectedColumns" => list(String.t()())
      }

  """
  @type project_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_theme_request() :: %{
        optional("Configuration") => theme_configuration(),
        optional("Name") => String.t(),
        optional("VersionDescription") => String.t(),
        required("BaseThemeId") => String.t()
      }

  """
  @type update_theme_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_theme_alias_request() :: %{
        required("ThemeVersionNumber") => float()
      }

  """
  @type update_theme_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_theme_request() :: %{
        optional("Permissions") => list(resource_permission()()),
        optional("Tags") => list(tag()()),
        optional("VersionDescription") => String.t(),
        required("BaseThemeId") => String.t(),
        required("Configuration") => theme_configuration(),
        required("Name") => String.t()
      }

  """
  @type create_theme_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      plugin_visual_options() :: %{
        "VisualProperties" => list(plugin_visual_property()())
      }

  """
  @type plugin_visual_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      axis_data_options() :: %{
        "DateAxisOptions" => date_axis_options(),
        "NumericAxisOptions" => numeric_axis_options()
      }

  """
  @type axis_data_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      body_section_repeat_configuration() :: %{
        "DimensionConfigurations" => list(body_section_repeat_dimension_configuration()()),
        "NonRepeatingVisuals" => list(String.t()()),
        "PageBreakConfiguration" => body_section_repeat_page_break_configuration()
      }

  """
  @type body_section_repeat_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Filters") => list(group_search_filter()())
      }

  """
  @type search_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      radar_chart_configuration() :: %{
        "AlternateBandColorsVisibility" => list(any()),
        "AlternateBandEvenColor" => String.t(),
        "AlternateBandOddColor" => String.t(),
        "AxesRangeScale" => list(any()),
        "BaseSeriesSettings" => radar_chart_series_settings(),
        "CategoryAxis" => axis_display_options(),
        "CategoryLabelOptions" => chart_axis_label_options(),
        "ColorAxis" => axis_display_options(),
        "ColorLabelOptions" => chart_axis_label_options(),
        "FieldWells" => radar_chart_field_wells(),
        "Interactions" => visual_interaction_options(),
        "Legend" => legend_options(),
        "Shape" => list(any()),
        "SortConfiguration" => radar_chart_sort_configuration(),
        "StartAngle" => float(),
        "VisualPalette" => visual_palette()
      }

  """
  @type radar_chart_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dashboard_response() :: %{
        "Dashboard" => dashboard(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_dashboard_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      amazon_elasticsearch_parameters() :: %{
        "Domain" => String.t()
      }

  """
  @type amazon_elasticsearch_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pivot_table_conditional_formatting_option() :: %{
        "Cell" => pivot_table_cell_conditional_formatting()
      }

  """
  @type pivot_table_conditional_formatting_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sankey_diagram_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "ChartConfiguration" => sankey_diagram_chart_configuration(),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type sankey_diagram_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dashboard_permissions_response() :: %{
        "DashboardArn" => String.t(),
        "DashboardId" => String.t(),
        "LinkSharingConfiguration" => link_sharing_configuration(),
        "Permissions" => list(resource_permission()()),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_dashboard_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_set_response() :: %{
        "Arn" => String.t(),
        "DataSetId" => String.t(),
        "IngestionArn" => String.t(),
        "IngestionId" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type create_data_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_topics_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_topics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      k_p_i_visual_layout_options() :: %{
        "StandardLayout" => k_p_i_visual_standard_layout()
      }

  """
  @type k_p_i_visual_layout_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logo_configuration() :: %{
        "AltText" => String.t(),
        "LogoSet" => logo_set_configuration()
      }

  """
  @type logo_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_topic_refresh_schedule_request() :: %{}

  """
  @type delete_topic_refresh_schedule_request() :: %{}

  @typedoc """

  ## Example:

      theme_version() :: %{
        "Arn" => String.t(),
        "BaseThemeId" => String.t(),
        "Configuration" => theme_configuration(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "Errors" => list(theme_error()()),
        "Status" => list(any()),
        "VersionNumber" => float()
      }

  """
  @type theme_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      postgre_sql_parameters() :: %{
        "Database" => String.t(),
        "Host" => String.t(),
        "Port" => integer()
      }

  """
  @type postgre_sql_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameter_date_time_picker_control() :: %{
        "DisplayOptions" => date_time_picker_control_display_options(),
        "ParameterControlId" => String.t(),
        "SourceParameterName" => String.t(),
        "Title" => String.t()
      }

  """
  @type parameter_date_time_picker_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      refresh_configuration() :: %{
        "IncrementalRefresh" => incremental_refresh()
      }

  """
  @type refresh_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      k_p_i_actual_value_conditional_formatting() :: %{
        "Icon" => conditional_formatting_icon(),
        "TextColor" => conditional_formatting_color()
      }

  """
  @type k_p_i_actual_value_conditional_formatting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      combo_chart_aggregated_field_wells() :: %{
        "BarValues" => list(measure_field()()),
        "Category" => list(dimension_field()()),
        "Colors" => list(dimension_field()()),
        "LineValues" => list(measure_field()())
      }

  """
  @type combo_chart_aggregated_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_template_versions_response() :: %{
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "TemplateVersionSummaryList" => list(template_version_summary()())
      }

  """
  @type list_template_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      secondary_value_options() :: %{
        "Visibility" => list(any())
      }

  """
  @type secondary_value_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_custom_action() :: %{
        "ActionOperations" => list(image_custom_action_operation()()),
        "CustomActionId" => String.t(),
        "Name" => String.t(),
        "Status" => list(any()),
        "Trigger" => list(any())
      }

  """
  @type image_custom_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_user_custom_permission_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type delete_user_custom_permission_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dashboards_q_a_configuration_response() :: %{
        "DashboardsQAStatus" => list(any()),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_dashboards_q_a_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_refresh_schedule_request() :: %{}

  """
  @type delete_refresh_schedule_request() :: %{}

  @typedoc """

  ## Example:

      update_default_q_business_application_request() :: %{
        optional("Namespace") => String.t(),
        required("ApplicationId") => String.t()
      }

  """
  @type update_default_q_business_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_refresh_schedules_request() :: %{}

  """
  @type list_refresh_schedules_request() :: %{}

  @typedoc """

  ## Example:

      list_data_sources_response() :: %{
        "DataSources" => list(data_source()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type list_data_sources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_data_source_request() :: %{}

  """
  @type delete_data_source_request() :: %{}

  @typedoc """

  ## Example:

      member_id_arn_pair() :: %{
        "MemberArn" => String.t(),
        "MemberId" => String.t()
      }

  """
  @type member_id_arn_pair() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_theme_aliases_response() :: %{
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "ThemeAliasList" => list(theme_alias()())
      }

  """
  @type list_theme_aliases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_refresh_schedule_response() :: %{
        "Arn" => String.t(),
        "RequestId" => String.t(),
        "ScheduleId" => String.t(),
        "Status" => integer()
      }

  """
  @type create_refresh_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_brand_assignment_response() :: %{
        "BrandArn" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type describe_brand_assignment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameter_slider_control() :: %{
        "DisplayOptions" => slider_control_display_options(),
        "MaximumValue" => float(),
        "MinimumValue" => float(),
        "ParameterControlId" => String.t(),
        "SourceParameterName" => String.t(),
        "StepSize" => float(),
        "Title" => String.t()
      }

  """
  @type parameter_slider_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      string_value_when_unset_configuration() :: %{
        "CustomValue" => String.t(),
        "ValueWhenUnsetOption" => list(any())
      }

  """
  @type string_value_when_unset_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_filter_configuration() :: %{
        "CategoryValue" => String.t(),
        "MatchOperator" => list(any()),
        "NullOption" => list(any()),
        "ParameterName" => String.t(),
        "SelectAllOptions" => list(any())
      }

  """
  @type custom_filter_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dashboards_q_a_configuration_response() :: %{
        "DashboardsQAStatus" => list(any()),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_dashboards_q_a_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_brand_request() :: %{
        optional("BrandDefinition") => brand_definition(),
        optional("Tags") => list(tag()())
      }

  """
  @type create_brand_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_template_permissions_request() :: %{}

  """
  @type describe_template_permissions_request() :: %{}

  @typedoc """

  ## Example:

      describe_key_registration_request() :: %{
        optional("DefaultKeyOnly") => boolean()
      }

  """
  @type describe_key_registration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_set_summary() :: %{
        "Arn" => String.t(),
        "ColumnLevelPermissionRulesApplied" => boolean(),
        "CreatedTime" => non_neg_integer(),
        "DataSetId" => String.t(),
        "ImportMode" => list(any()),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t(),
        "RowLevelPermissionDataSet" => row_level_permission_data_set(),
        "RowLevelPermissionTagConfigurationApplied" => boolean()
      }

  """
  @type data_set_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_data_source_item() :: %{
        "StaticFileDataSource" => geospatial_static_file_source()
      }

  """
  @type geospatial_data_source_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tree_map_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "ChartConfiguration" => tree_map_configuration(),
        "ColumnHierarchies" => list(column_hierarchy()()),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type tree_map_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      empty_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "DataSetIdentifier" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type empty_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_data_set_override_tags() :: %{
        "DataSetIds" => list(String.t()()),
        "Tags" => list(tag()())
      }

  """
  @type asset_bundle_import_job_data_set_override_tags() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_polygon_layer() :: %{
        "Style" => geospatial_polygon_style()
      }

  """
  @type geospatial_polygon_layer() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pivot_table_field_option() :: %{
        "CustomLabel" => String.t(),
        "FieldId" => String.t(),
        "Visibility" => list(any())
      }

  """
  @type pivot_table_field_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_asset_bundle_export_job_request() :: %{
        optional("CloudFormationOverridePropertyConfiguration") => asset_bundle_cloud_formation_override_property_configuration(),
        optional("IncludeAllDependencies") => boolean(),
        optional("IncludeFolderMembers") => list(any()),
        optional("IncludeFolderMemberships") => boolean(),
        optional("IncludePermissions") => boolean(),
        optional("IncludeTags") => boolean(),
        optional("ValidationStrategy") => asset_bundle_export_job_validation_strategy(),
        required("AssetBundleExportJobId") => String.t(),
        required("ExportFormat") => list(any()),
        required("ResourceArns") => list(String.t()())
      }

  """
  @type start_asset_bundle_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conditional_formatting_icon_set() :: %{
        "Expression" => String.t(),
        "IconSetType" => list(any())
      }

  """
  @type conditional_formatting_icon_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pivot_table_field_options() :: %{
        "CollapseStateOptions" => list(pivot_table_field_collapse_state_option()()),
        "DataPathOptions" => list(pivot_table_data_path_option()()),
        "SelectedFieldOptions" => list(pivot_table_field_option()())
      }

  """
  @type pivot_table_field_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameter_drop_down_control() :: %{
        "CascadingControlConfiguration" => cascading_control_configuration(),
        "CommitMode" => list(any()),
        "DisplayOptions" => drop_down_control_display_options(),
        "ParameterControlId" => String.t(),
        "SelectableValues" => parameter_selectable_values(),
        "SourceParameterName" => String.t(),
        "Title" => String.t(),
        "Type" => list(any())
      }

  """
  @type parameter_drop_down_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      refresh_frequency() :: %{
        "Interval" => list(any()),
        "RefreshOnDay" => schedule_refresh_on_entity(),
        "TimeOfTheDay" => String.t(),
        "Timezone" => String.t()
      }

  """
  @type refresh_frequency() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tree_map_sort_configuration() :: %{
        "TreeMapGroupItemsLimitConfiguration" => items_limit_configuration(),
        "TreeMapSort" => list(field_sort_options()())
      }

  """
  @type tree_map_sort_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      grid_layout_canvas_size_options() :: %{
        "ScreenCanvasSizeOptions" => grid_layout_screen_canvas_size_options()
      }

  """
  @type grid_layout_canvas_size_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_folder_request() :: %{}

  """
  @type delete_folder_request() :: %{}

  @typedoc """

  ## Example:

      static_file_s3_source_options() :: %{
        "BucketName" => String.t(),
        "ObjectKey" => String.t(),
        "Region" => String.t()
      }

  """
  @type static_file_s3_source_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_custom_action_operation() :: %{
        "NavigationOperation" => custom_action_navigation_operation(),
        "SetParametersOperation" => custom_action_set_parameters_operation(),
        "URLOperation" => custom_action_url_operation()
      }

  """
  @type image_custom_action_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sheet_image_scaling_configuration() :: %{
        "ScalingType" => list(any())
      }

  """
  @type sheet_image_scaling_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template_source_template() :: %{
        "Arn" => String.t()
      }

  """
  @type template_source_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      row_level_permission_data_set() :: %{
        "Arn" => String.t(),
        "FormatVersion" => list(any()),
        "Namespace" => String.t(),
        "PermissionPolicy" => list(any()),
        "Status" => list(any())
      }

  """
  @type row_level_permission_data_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dashboard_permissions_request() :: %{
        optional("GrantLinkPermissions") => list(resource_permission()()),
        optional("GrantPermissions") => list(resource_permission()()),
        optional("RevokeLinkPermissions") => list(resource_permission()()),
        optional("RevokePermissions") => list(resource_permission()())
      }

  """
  @type update_dashboard_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      row_info() :: %{
        "RowsDropped" => float(),
        "RowsIngested" => float(),
        "TotalRowsInDataset" => float()
      }

  """
  @type row_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_group_memberships_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_group_memberships_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      row_level_permission_tag_rule() :: %{
        "ColumnName" => String.t(),
        "MatchAllValue" => String.t(),
        "TagKey" => String.t(),
        "TagMultiValueDelimiter" => String.t()
      }

  """
  @type row_level_permission_tag_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer(),
        "Tags" => list(tag()())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_control() :: %{
        "CrossSheet" => filter_cross_sheet_control(),
        "DateTimePicker" => filter_date_time_picker_control(),
        "Dropdown" => filter_drop_down_control(),
        "List" => filter_list_control(),
        "RelativeDateTime" => filter_relative_date_time_control(),
        "Slider" => filter_slider_control(),
        "TextArea" => filter_text_area_control(),
        "TextField" => filter_text_field_control()
      }

  """
  @type filter_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      my_sql_parameters() :: %{
        "Database" => String.t(),
        "Host" => String.t(),
        "Port" => integer()
      }

  """
  @type my_sql_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      k_p_iprogress_bar_conditional_formatting() :: %{
        "ForegroundColor" => conditional_formatting_color()
      }

  """
  @type k_p_iprogress_bar_conditional_formatting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_tag() :: %{
        "ColumnDescription" => column_description(),
        "ColumnGeographicRole" => list(any())
      }

  """
  @type column_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      free_form_layout_configuration() :: %{
        "CanvasSizeOptions" => free_form_layout_canvas_size_options(),
        "Elements" => list(free_form_layout_element()())
      }

  """
  @type free_form_layout_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      funnel_chart_aggregated_field_wells() :: %{
        "Category" => list(dimension_field()()),
        "Values" => list(measure_field()())
      }

  """
  @type funnel_chart_aggregated_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      date_time_parameter_declaration() :: %{
        "DefaultValues" => date_time_default_values(),
        "MappedDataSetParameters" => list(mapped_data_set_parameter()()),
        "Name" => String.t(),
        "TimeGranularity" => list(any()),
        "ValueWhenUnset" => date_time_value_when_unset_configuration()
      }

  """
  @type date_time_parameter_declaration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      panel_title_options() :: %{
        "FontConfiguration" => font_configuration(),
        "HorizontalTextAlignment" => list(any()),
        "Visibility" => list(any())
      }

  """
  @type panel_title_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_hidden_fields_option() :: %{
        "AvailabilityStatus" => list(any())
      }

  """
  @type export_hidden_fields_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      top_bottom_movers_computation() :: %{
        "Category" => dimension_field(),
        "ComputationId" => String.t(),
        "MoverSize" => integer(),
        "Name" => String.t(),
        "SortOrder" => list(any()),
        "Time" => dimension_field(),
        "Type" => list(any()),
        "Value" => measure_field()
      }

  """
  @type top_bottom_movers_computation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_topics_response() :: %{
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "TopicsSummaries" => list(topic_summary()())
      }

  """
  @type list_topics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contribution_analysis_time_ranges() :: %{
        "EndRange" => topic_i_r_filter_option(),
        "StartRange" => topic_i_r_filter_option()
      }

  """
  @type contribution_analysis_time_ranges() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      word_cloud_options() :: %{
        "CloudLayout" => list(any()),
        "MaximumStringLength" => integer(),
        "WordCasing" => list(any()),
        "WordOrientation" => list(any()),
        "WordPadding" => list(any()),
        "WordScaling" => list(any())
      }

  """
  @type word_cloud_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_topic_reviewed_answer_request() :: %{
        optional("AnswerIds") => list(String.t()())
      }

  """
  @type batch_delete_topic_reviewed_answer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_filter_control_configuration() :: %{
        "ControlOptions" => default_filter_control_options(),
        "Title" => String.t()
      }

  """
  @type default_filter_control_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      total_aggregation_option() :: %{
        "FieldId" => String.t(),
        "TotalAggregationFunction" => total_aggregation_function()
      }

  """
  @type total_aggregation_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_analysis_override_permissions() :: %{
        "AnalysisIds" => list(String.t()()),
        "Permissions" => asset_bundle_resource_permissions()
      }

  """
  @type asset_bundle_import_job_analysis_override_permissions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      radar_chart_aggregated_field_wells() :: %{
        "Category" => list(dimension_field()()),
        "Color" => list(dimension_field()()),
        "Values" => list(measure_field()())
      }

  """
  @type radar_chart_aggregated_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      generated_answer_result() :: %{
        "AnswerId" => String.t(),
        "AnswerStatus" => list(any()),
        "QuestionId" => String.t(),
        "QuestionText" => String.t(),
        "QuestionUrl" => String.t(),
        "Restatement" => String.t(),
        "TopicId" => String.t(),
        "TopicName" => String.t()
      }

  """
  @type generated_answer_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_refresh_schedule_override_parameters() :: %{
        "DataSetId" => String.t(),
        "ScheduleId" => String.t(),
        "StartAfterDateTime" => non_neg_integer()
      }

  """
  @type asset_bundle_import_job_refresh_schedule_override_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_brand_assignment_request() :: %{
        required("BrandArn") => String.t()
      }

  """
  @type update_brand_assignment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_default_q_business_application_request() :: %{
        optional("Namespace") => String.t()
      }

  """
  @type delete_default_q_business_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_layer_item() :: %{
        "Actions" => list(layer_custom_action()()),
        "DataSource" => geospatial_data_source_item(),
        "JoinDefinition" => geospatial_layer_join_definition(),
        "Label" => String.t(),
        "LayerDefinition" => geospatial_layer_definition(),
        "LayerId" => String.t(),
        "LayerType" => list(any()),
        "Tooltip" => tooltip_options(),
        "Visibility" => list(any())
      }

  """
  @type geospatial_layer_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pie_chart_aggregated_field_wells() :: %{
        "Category" => list(dimension_field()()),
        "SmallMultiples" => list(dimension_field()()),
        "Values" => list(measure_field()())
      }

  """
  @type pie_chart_aggregated_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      grid_layout_screen_canvas_size_options() :: %{
        "OptimizedViewPortWidth" => String.t(),
        "ResizeOption" => list(any())
      }

  """
  @type grid_layout_screen_canvas_size_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      what_if_range_scenario() :: %{
        "EndDate" => non_neg_integer(),
        "StartDate" => non_neg_integer(),
        "Value" => float()
      }

  """
  @type what_if_range_scenario() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_role_custom_permission_request() :: %{}

  """
  @type describe_role_custom_permission_request() :: %{}

  @typedoc """

  ## Example:

      create_group_request() :: %{
        optional("Description") => String.t(),
        required("GroupName") => String.t()
      }

  """
  @type create_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_template_permissions_request() :: %{
        optional("GrantPermissions") => list(resource_permission()()),
        optional("RevokePermissions") => list(resource_permission()())
      }

  """
  @type update_template_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_account_settings_request() :: %{
        optional("NotificationEmail") => String.t(),
        optional("TerminationProtectionEnabled") => boolean(),
        required("DefaultNamespace") => String.t()
      }

  """
  @type update_account_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_folder_membership_request() :: %{}

  """
  @type create_folder_membership_request() :: %{}

  @typedoc """

  ## Example:

      asset_bundle_export_job_refresh_schedule_override_properties() :: %{
        "Arn" => String.t(),
        "Properties" => list(list(any())())
      }

  """
  @type asset_bundle_export_job_refresh_schedule_override_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      generate_embed_url_for_registered_user_with_identity_request() :: %{
        optional("AllowedDomains") => list(String.t()()),
        optional("SessionLifetimeInMinutes") => float(),
        required("ExperienceConfiguration") => registered_user_embedding_experience_configuration()
      }

  """
  @type generate_embed_url_for_registered_user_with_identity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_group() :: %{
        "GeoSpatialColumnGroup" => geo_spatial_column_group()
      }

  """
  @type column_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_template_alias_request() :: %{
        required("TemplateVersionNumber") => float()
      }

  """
  @type create_template_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_error() :: %{
        "Message" => String.t(),
        "Type" => list(any()),
        "ViolatedEntities" => list(entity()())
      }

  """
  @type analysis_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      registered_user_dashboard_visual_embedding_configuration() :: %{
        "InitialDashboardVisualId" => dashboard_visual_id()
      }

  """
  @type registered_user_dashboard_visual_embedding_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_action_navigation_operation() :: %{
        "LocalNavigationConfiguration" => local_navigation_configuration()
      }

  """
  @type custom_action_navigation_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bar_chart_configuration() :: %{
        "BarsArrangement" => list(any()),
        "CategoryAxis" => axis_display_options(),
        "CategoryLabelOptions" => chart_axis_label_options(),
        "ColorLabelOptions" => chart_axis_label_options(),
        "ContributionAnalysisDefaults" => list(contribution_analysis_default()()),
        "DataLabels" => data_label_options(),
        "FieldWells" => bar_chart_field_wells(),
        "Interactions" => visual_interaction_options(),
        "Legend" => legend_options(),
        "Orientation" => list(any()),
        "ReferenceLines" => list(reference_line()()),
        "SmallMultiplesOptions" => small_multiples_options(),
        "SortConfiguration" => bar_chart_sort_configuration(),
        "Tooltip" => tooltip_options(),
        "ValueAxis" => axis_display_options(),
        "ValueLabelOptions" => chart_axis_label_options(),
        "VisualPalette" => visual_palette()
      }

  """
  @type bar_chart_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      date_measure_field() :: %{
        "AggregationFunction" => list(any()),
        "Column" => column_identifier(),
        "FieldId" => String.t(),
        "FormatConfiguration" => date_time_format_configuration()
      }

  """
  @type date_measure_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_iam_policy_assignment_response() :: %{
        "AssignmentId" => String.t(),
        "AssignmentName" => String.t(),
        "AssignmentStatus" => list(any()),
        "Identities" => map(),
        "PolicyArn" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_iam_policy_assignment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_group_membership_request() :: %{}

  """
  @type create_group_membership_request() :: %{}

  @typedoc """

  ## Example:

      describe_group_membership_request() :: %{}

  """
  @type describe_group_membership_request() :: %{}

  @typedoc """

  ## Example:

      generate_embed_url_for_anonymous_user_request() :: %{
        optional("AllowedDomains") => list(String.t()()),
        optional("SessionLifetimeInMinutes") => float(),
        optional("SessionTags") => list(session_tag()()),
        required("AuthorizedResourceArns") => list(String.t()()),
        required("ExperienceConfiguration") => anonymous_user_embedding_experience_configuration(),
        required("Namespace") => String.t()
      }

  """
  @type generate_embed_url_for_anonymous_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      date_time_dataset_parameter_default_values() :: %{
        "StaticValues" => list(non_neg_integer()())
      }

  """
  @type date_time_dataset_parameter_default_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      visual_interaction_options() :: %{
        "ContextMenuOption" => context_menu_option(),
        "VisualMenuOption" => visual_menu_option()
      }

  """
  @type visual_interaction_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_data_source_permissions_request() :: %{}

  """
  @type describe_data_source_permissions_request() :: %{}

  @typedoc """

  ## Example:

      asset_bundle_import_job_dashboard_override_tags() :: %{
        "DashboardIds" => list(String.t()()),
        "Tags" => list(tag()())
      }

  """
  @type asset_bundle_import_job_dashboard_override_tags() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_text_field_control() :: %{
        "DisplayOptions" => text_field_control_display_options(),
        "FilterControlId" => String.t(),
        "SourceFilterId" => String.t(),
        "Title" => String.t()
      }

  """
  @type filter_text_field_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tile_style() :: %{
        "Border" => border_style()
      }

  """
  @type tile_style() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_create_topic_reviewed_answer_response() :: %{
        "InvalidAnswers" => list(invalid_topic_reviewed_answer()()),
        "RequestId" => String.t(),
        "Status" => integer(),
        "SucceededAnswers" => list(succeeded_topic_reviewed_answer()()),
        "TopicArn" => String.t(),
        "TopicId" => String.t()
      }

  """
  @type batch_create_topic_reviewed_answer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_path_type() :: %{
        "PivotTableDataPathType" => list(any())
      }

  """
  @type data_path_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      anonymous_user_dashboard_feature_configurations() :: %{
        "SharedView" => shared_view_configurations()
      }

  """
  @type anonymous_user_dashboard_feature_configurations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      date_time_dataset_parameter() :: %{
        "DefaultValues" => date_time_dataset_parameter_default_values(),
        "Id" => String.t(),
        "Name" => String.t(),
        "TimeGranularity" => list(any()),
        "ValueType" => list(any())
      }

  """
  @type date_time_dataset_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_key_registration_response() :: %{
        "FailedKeyRegistration" => list(failed_key_registration_entry()()),
        "RequestId" => String.t(),
        "SuccessfulKeyRegistration" => list(successful_key_registration_entry()())
      }

  """
  @type update_key_registration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      currency_display_format_configuration() :: %{
        "DecimalPlacesConfiguration" => decimal_places_configuration(),
        "NegativeValueConfiguration" => negative_value_configuration(),
        "NullValueFormatConfiguration" => null_value_format_configuration(),
        "NumberScale" => list(any()),
        "Prefix" => String.t(),
        "SeparatorConfiguration" => numeric_separator_configuration(),
        "Suffix" => String.t(),
        "Symbol" => String.t()
      }

  """
  @type currency_display_format_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_asset_bundle_import_job_request() :: %{
        optional("FailureAction") => list(any()),
        optional("OverrideParameters") => asset_bundle_import_job_override_parameters(),
        optional("OverridePermissions") => asset_bundle_import_job_override_permissions(),
        optional("OverrideTags") => asset_bundle_import_job_override_tags(),
        optional("OverrideValidationStrategy") => asset_bundle_import_job_override_validation_strategy(),
        required("AssetBundleImportJobId") => String.t(),
        required("AssetBundleImportSource") => asset_bundle_import_source()
      }

  """
  @type start_asset_bundle_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_session_embed_url_response() :: %{
        "EmbedUrl" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type get_session_embed_url_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_bundle_import_jobs_response() :: %{
        "AssetBundleImportJobSummaryList" => list(asset_bundle_import_job_summary()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type list_asset_bundle_import_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_member() :: %{
        "Arn" => String.t(),
        "MemberName" => String.t()
      }

  """
  @type group_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      category_drill_down_filter() :: %{
        "CategoryValues" => list(String.t()()),
        "Column" => column_identifier()
      }

  """
  @type category_drill_down_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      signup_response() :: %{
        "IAMUser" => boolean(),
        "accountName" => String.t(),
        "directoryType" => String.t(),
        "userLoginName" => String.t()
      }

  """
  @type signup_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      section_based_layout_paper_canvas_size_options() :: %{
        "PaperMargin" => spacing(),
        "PaperOrientation" => list(any()),
        "PaperSize" => list(any())
      }

  """
  @type section_based_layout_paper_canvas_size_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source_credentials() :: %{
        "CopySourceArn" => String.t(),
        "CredentialPair" => credential_pair(),
        "SecretArn" => String.t()
      }

  """
  @type data_source_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account_customization() :: %{
        "DefaultEmailCustomizationTemplate" => String.t(),
        "DefaultTheme" => String.t()
      }

  """
  @type account_customization() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_theme_request() :: %{
        optional("AliasName") => String.t(),
        optional("VersionNumber") => float()
      }

  """
  @type describe_theme_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      series_item() :: %{
        "DataFieldSeriesItem" => data_field_series_item(),
        "FieldSeriesItem" => field_series_item()
      }

  """
  @type series_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_role_custom_permission_request() :: %{
        required("CustomPermissionsName") => String.t()
      }

  """
  @type update_role_custom_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      generate_embed_url_for_registered_user_response() :: %{
        "EmbedUrl" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type generate_embed_url_for_registered_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_strategy() :: %{
        "Mode" => list(any())
      }

  """
  @type validation_strategy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_user_request() :: %{}

  """
  @type delete_user_request() :: %{}

  @typedoc """

  ## Example:

      jira_parameters() :: %{
        "SiteBaseUrl" => String.t()
      }

  """
  @type jira_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_folder_permissions_request() :: %{
        optional("MaxResults") => integer(),
        optional("Namespace") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type describe_folder_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "CategoryFilter" => category_filter(),
        "NestedFilter" => nested_filter(),
        "NumericEqualityFilter" => numeric_equality_filter(),
        "NumericRangeFilter" => numeric_range_filter(),
        "RelativeDatesFilter" => relative_dates_filter(),
        "TimeEqualityFilter" => time_equality_filter(),
        "TimeRangeFilter" => time_range_filter(),
        "TopBottomFilter" => top_bottom_filter()
      }

  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      progress_bar_options() :: %{
        "Visibility" => list(any())
      }

  """
  @type progress_bar_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_range_filter_value() :: %{
        "Parameter" => String.t(),
        "RollingDate" => rolling_date_configuration(),
        "StaticValue" => non_neg_integer()
      }

  """
  @type time_range_filter_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      numeric_format_configuration() :: %{
        "CurrencyDisplayFormatConfiguration" => currency_display_format_configuration(),
        "NumberDisplayFormatConfiguration" => number_display_format_configuration(),
        "PercentageDisplayFormatConfiguration" => percentage_display_format_configuration()
      }

  """
  @type numeric_format_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_operation_selected_fields_configuration() :: %{
        "SelectedColumns" => list(column_identifier()()),
        "SelectedFieldOptions" => list(any()),
        "SelectedFields" => list(String.t()())
      }

  """
  @type filter_operation_selected_fields_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      anchor_date_configuration() :: %{
        "AnchorOption" => list(any()),
        "ParameterName" => String.t()
      }

  """
  @type anchor_date_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_map_style_options() :: %{
        "BaseMapStyle" => list(any())
      }

  """
  @type geospatial_map_style_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attribute_aggregation_function() :: %{
        "SimpleAttributeAggregation" => list(any()),
        "ValueForMultipleValues" => String.t()
      }

  """
  @type attribute_aggregation_function() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_role_membership_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type delete_role_membership_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dashboard_visual_result() :: %{
        "DashboardId" => String.t(),
        "DashboardName" => String.t(),
        "DashboardUrl" => String.t(),
        "SheetId" => String.t(),
        "SheetName" => String.t(),
        "VisualId" => String.t(),
        "VisualSubtitle" => String.t(),
        "VisualTitle" => String.t()
      }

  """
  @type dashboard_visual_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_set_identifier_declaration() :: %{
        "DataSetArn" => String.t(),
        "Identifier" => String.t()
      }

  """
  @type data_set_identifier_declaration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_topic_permissions_response() :: %{
        "Permissions" => list(resource_permission()()),
        "RequestId" => String.t(),
        "Status" => integer(),
        "TopicArn" => String.t(),
        "TopicId" => String.t()
      }

  """
  @type update_topic_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_topic_reviewed_answers_request() :: %{}

  """
  @type list_topic_reviewed_answers_request() :: %{}

  @typedoc """

  ## Example:

      set_parameter_value_configuration() :: %{
        "DestinationParameterName" => String.t(),
        "Value" => destination_parameter_value_configuration()
      }

  """
  @type set_parameter_value_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_i_r_contribution_analysis() :: %{
        "Direction" => list(any()),
        "Factors" => list(contribution_analysis_factor()()),
        "SortType" => list(any()),
        "TimeRanges" => contribution_analysis_time_ranges()
      }

  """
  @type topic_i_r_contribution_analysis() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      static_file_source() :: %{
        "S3Options" => static_file_s3_source_options(),
        "UrlOptions" => static_file_url_source_options()
      }

  """
  @type static_file_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      null_value_format_configuration() :: %{
        "NullString" => String.t()
      }

  """
  @type null_value_format_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      teradata_parameters() :: %{
        "Database" => String.t(),
        "Host" => String.t(),
        "Port" => integer()
      }

  """
  @type teradata_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      axis_display_data_driven_range() :: %{}

  """
  @type axis_display_data_driven_range() :: %{}

  @typedoc """

  ## Example:

      dashboard_visual_id() :: %{
        "DashboardId" => String.t(),
        "SheetId" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type dashboard_visual_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_brands_response() :: %{
        "Brands" => list(brand_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_brands_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      range_ends_label_type() :: %{
        "Visibility" => list(any())
      }

  """
  @type range_ends_label_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_custom_permissions_request() :: %{
        optional("Capabilities") => capabilities()
      }

  """
  @type update_custom_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      concurrent_updating_exception() :: %{
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type concurrent_updating_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      inner_filter() :: %{
        "CategoryInnerFilter" => category_inner_filter()
      }

  """
  @type inner_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      items_limit_configuration() :: %{
        "ItemsLimit" => float(),
        "OtherCategories" => list(any())
      }

  """
  @type items_limit_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_dashboard_request() :: %{
        optional("VersionNumber") => float()
      }

  """
  @type delete_dashboard_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      k_p_i_configuration() :: %{
        "FieldWells" => k_p_i_field_wells(),
        "Interactions" => visual_interaction_options(),
        "KPIOptions" => k_p_i_options(),
        "SortConfiguration" => k_p_i_sort_configuration()
      }

  """
  @type k_p_i_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_point_tooltip_option() :: %{
        "AvailabilityStatus" => list(any())
      }

  """
  @type data_point_tooltip_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dashboard_snapshot_job_result_request() :: %{}

  """
  @type describe_dashboard_snapshot_job_result_request() :: %{}

  @typedoc """

  ## Example:

      negative_value_configuration() :: %{
        "DisplayMode" => list(any())
      }

  """
  @type negative_value_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_user_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type delete_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sheet_control_layout() :: %{
        "Configuration" => sheet_control_layout_configuration()
      }

  """
  @type sheet_control_layout() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_theme_alias_response() :: %{
        "AliasName" => String.t(),
        "Arn" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "ThemeId" => String.t()
      }

  """
  @type delete_theme_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      iam_policy_assignment() :: %{
        "AssignmentId" => String.t(),
        "AssignmentName" => String.t(),
        "AssignmentStatus" => list(any()),
        "AwsAccountId" => String.t(),
        "Identities" => map(),
        "PolicyArn" => String.t()
      }

  """
  @type iam_policy_assignment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_filter_drop_down_control_options() :: %{
        "CommitMode" => list(any()),
        "DisplayOptions" => drop_down_control_display_options(),
        "SelectableValues" => filter_selectable_values(),
        "Type" => list(any())
      }

  """
  @type default_filter_drop_down_control_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_account_subscription_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type delete_account_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_side_border_options() :: %{
        "Bottom" => table_border_options(),
        "InnerHorizontal" => table_border_options(),
        "InnerVertical" => table_border_options(),
        "Left" => table_border_options(),
        "Right" => table_border_options(),
        "Top" => table_border_options()
      }

  """
  @type table_side_border_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gauge_chart_field_wells() :: %{
        "TargetValues" => list(measure_field()()),
        "Values" => list(measure_field()())
      }

  """
  @type gauge_chart_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_details() :: %{
        "ConfigOptions" => topic_config_options(),
        "DataSets" => list(dataset_metadata()()),
        "Description" => String.t(),
        "Name" => String.t(),
        "UserExperienceVersion" => list(any())
      }

  """
  @type topic_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataset_parameter() :: %{
        "DateTimeDatasetParameter" => date_time_dataset_parameter(),
        "DecimalDatasetParameter" => decimal_dataset_parameter(),
        "IntegerDatasetParameter" => integer_dataset_parameter(),
        "StringDatasetParameter" => string_dataset_parameter()
      }

  """
  @type dataset_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_vpc_connection_response() :: %{
        "Arn" => String.t(),
        "AvailabilityStatus" => list(any()),
        "RequestId" => String.t(),
        "Status" => integer(),
        "UpdateStatus" => list(any()),
        "VPCConnectionId" => String.t()
      }

  """
  @type update_vpc_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_default_q_business_application_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_default_q_business_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ad_hoc_filtering_option() :: %{
        "AvailabilityStatus" => list(any())
      }

  """
  @type ad_hoc_filtering_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_account_subscription_request() :: %{
        optional("ActiveDirectoryName") => String.t(),
        optional("AdminGroup") => list(String.t()()),
        optional("AdminProGroup") => list(String.t()()),
        optional("AuthorGroup") => list(String.t()()),
        optional("AuthorProGroup") => list(String.t()()),
        optional("ContactNumber") => String.t(),
        optional("DirectoryId") => String.t(),
        optional("Edition") => list(any()),
        optional("EmailAddress") => String.t(),
        optional("FirstName") => String.t(),
        optional("IAMIdentityCenterInstanceArn") => String.t(),
        optional("LastName") => String.t(),
        optional("ReaderGroup") => list(String.t()()),
        optional("ReaderProGroup") => list(String.t()()),
        optional("Realm") => String.t(),
        required("AccountName") => String.t(),
        required("AuthenticationMethod") => list(any()),
        required("NotificationEmail") => String.t()
      }

  """
  @type create_account_subscription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_column_operation() :: %{
        "ColumnName" => String.t(),
        "Tags" => list(column_tag()())
      }

  """
  @type tag_column_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_permissions() :: %{
        "Arn" => String.t(),
        "Capabilities" => capabilities(),
        "CustomPermissionsName" => String.t()
      }

  """
  @type custom_permissions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bar_chart_sort_configuration() :: %{
        "CategoryItemsLimit" => items_limit_configuration(),
        "CategorySort" => list(field_sort_options()()),
        "ColorItemsLimit" => items_limit_configuration(),
        "ColorSort" => list(field_sort_options()()),
        "SmallMultiplesLimitConfiguration" => items_limit_configuration(),
        "SmallMultiplesSort" => list(field_sort_options()())
      }

  """
  @type bar_chart_sort_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_drop_down_control() :: %{
        "CascadingControlConfiguration" => cascading_control_configuration(),
        "CommitMode" => list(any()),
        "DisplayOptions" => drop_down_control_display_options(),
        "FilterControlId" => String.t(),
        "SelectableValues" => filter_selectable_values(),
        "SourceFilterId" => String.t(),
        "Title" => String.t(),
        "Type" => list(any())
      }

  """
  @type filter_drop_down_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pie_chart_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "ChartConfiguration" => pie_chart_configuration(),
        "ColumnHierarchies" => list(column_hierarchy()()),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type pie_chart_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      refresh_schedule() :: %{
        "Arn" => String.t(),
        "RefreshType" => list(any()),
        "ScheduleFrequency" => refresh_frequency(),
        "ScheduleId" => String.t(),
        "StartAfterDateTime" => non_neg_integer()
      }

  """
  @type refresh_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_folders_response() :: %{
        "FolderSummaryList" => list(folder_summary()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type list_folders_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_aggregated_field_wells() :: %{
        "GroupBy" => list(dimension_field()()),
        "Values" => list(measure_field()())
      }

  """
  @type table_aggregated_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_dashboard_response() :: %{
        "Arn" => String.t(),
        "DashboardId" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type delete_dashboard_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_now_parameters() :: %{
        "SiteBaseUrl" => String.t()
      }

  """
  @type service_now_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_template_alias_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer(),
        "TemplateAlias" => template_alias()
      }

  """
  @type update_template_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logo_set_configuration() :: %{
        "Favicon" => image_set_configuration(),
        "Primary" => image_set_configuration()
      }

  """
  @type logo_set_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      destination_parameter_value_configuration() :: %{
        "CustomValuesConfiguration" => custom_values_configuration(),
        "SelectAllValueOptions" => list(any()),
        "SourceColumn" => column_identifier(),
        "SourceField" => String.t(),
        "SourceParameterName" => String.t()
      }

  """
  @type destination_parameter_value_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rds_parameters() :: %{
        "Database" => String.t(),
        "InstanceId" => String.t()
      }

  """
  @type rds_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_folders_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_folders_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      thousand_separator_options() :: %{
        "GroupingStyle" => list(any()),
        "Symbol" => list(any()),
        "Visibility" => list(any())
      }

  """
  @type thousand_separator_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aurora_postgre_sql_parameters() :: %{
        "Database" => String.t(),
        "Host" => String.t(),
        "Port" => integer()
      }

  """
  @type aurora_postgre_sql_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      palette() :: %{
        "Background" => String.t(),
        "Foreground" => String.t()
      }

  """
  @type palette() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_template_response() :: %{
        "Arn" => String.t(),
        "CreationStatus" => list(any()),
        "RequestId" => String.t(),
        "Status" => integer(),
        "TemplateId" => String.t(),
        "VersionArn" => String.t()
      }

  """
  @type update_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      numeric_separator_configuration() :: %{
        "DecimalSeparator" => list(any()),
        "ThousandsSeparator" => thousand_separator_options()
      }

  """
  @type numeric_separator_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conditional_formatting_icon() :: %{
        "CustomCondition" => conditional_formatting_custom_icon_condition(),
        "IconSet" => conditional_formatting_icon_set()
      }

  """
  @type conditional_formatting_icon() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_list_configuration() :: %{
        "CategoryValues" => list(String.t()()),
        "MatchOperator" => list(any()),
        "NullOption" => list(any()),
        "SelectAllOptions" => list(any())
      }

  """
  @type filter_list_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameter_declaration() :: %{
        "DateTimeParameterDeclaration" => date_time_parameter_declaration(),
        "DecimalParameterDeclaration" => decimal_parameter_declaration(),
        "IntegerParameterDeclaration" => integer_parameter_declaration(),
        "StringParameterDeclaration" => string_parameter_declaration()
      }

  """
  @type parameter_declaration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_map_state() :: %{
        "Bounds" => geospatial_coordinate_bounds(),
        "MapNavigation" => list(any())
      }

  """
  @type geospatial_map_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_content_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "ChartConfiguration" => custom_content_configuration(),
        "DataSetIdentifier" => String.t(),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type custom_content_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      waterfall_chart_aggregated_field_wells() :: %{
        "Breakdowns" => list(dimension_field()()),
        "Categories" => list(dimension_field()()),
        "Values" => list(measure_field()())
      }

  """
  @type waterfall_chart_aggregated_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_vpc_connection_request() :: %{}

  """
  @type describe_vpc_connection_request() :: %{}

  @typedoc """

  ## Example:

      delete_data_set_request() :: %{}

  """
  @type delete_data_set_request() :: %{}

  @typedoc """

  ## Example:

      sankey_diagram_field_wells() :: %{
        "SankeyDiagramAggregatedFieldWells" => sankey_diagram_aggregated_field_wells()
      }

  """
  @type sankey_diagram_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_warning() :: %{
        "Arn" => String.t(),
        "Message" => String.t()
      }

  """
  @type asset_bundle_import_job_warning() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      range_constant() :: %{
        "Maximum" => String.t(),
        "Minimum" => String.t()
      }

  """
  @type range_constant() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_row_conditional_formatting() :: %{
        "BackgroundColor" => conditional_formatting_color(),
        "TextColor" => conditional_formatting_color()
      }

  """
  @type table_row_conditional_formatting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      numeric_equality_drill_down_filter() :: %{
        "Column" => column_identifier(),
        "Value" => float()
      }

  """
  @type numeric_equality_drill_down_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sheet_image_tooltip_configuration() :: %{
        "TooltipText" => sheet_image_tooltip_text(),
        "Visibility" => list(any())
      }

  """
  @type sheet_image_tooltip_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      snapshot_destination_configuration() :: %{
        "S3Destinations" => list(snapshot_s3_destination_configuration()())
      }

  """
  @type snapshot_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_singular_filter_constant() :: %{
        "ConstantType" => list(any()),
        "SingularConstant" => String.t()
      }

  """
  @type topic_singular_filter_constant() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis() :: %{
        "AnalysisId" => String.t(),
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "DataSetArns" => list(String.t()()),
        "Errors" => list(analysis_error()()),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Sheets" => list(sheet()()),
        "Status" => list(any()),
        "ThemeArn" => String.t()
      }

  """
  @type analysis() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_section_based_layout_configuration() :: %{
        "CanvasSizeOptions" => section_based_layout_canvas_size_options()
      }

  """
  @type default_section_based_layout_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      new_default_values() :: %{
        "DateTimeStaticValues" => list(non_neg_integer()()),
        "DecimalStaticValues" => list(float()()),
        "IntegerStaticValues" => list(float()()),
        "StringStaticValues" => list(String.t()())
      }

  """
  @type new_default_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      k_p_i_sort_configuration() :: %{
        "TrendGroupSort" => list(field_sort_options()())
      }

  """
  @type k_p_i_sort_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      session_lifetime_in_minutes_invalid_exception() :: %{
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type session_lifetime_in_minutes_invalid_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_heatmap_color_scale() :: %{
        "Colors" => list(geospatial_heatmap_data_color()())
      }

  """
  @type geospatial_heatmap_color_scale() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      theme_version_summary() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "Status" => list(any()),
        "VersionNumber" => float()
      }

  """
  @type theme_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_source_response() :: %{
        "Arn" => String.t(),
        "CreationStatus" => list(any()),
        "DataSourceId" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type create_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_field_wells() :: %{
        "TableAggregatedFieldWells" => table_aggregated_field_wells(),
        "TableUnaggregatedFieldWells" => table_unaggregated_field_wells()
      }

  """
  @type table_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_sort_clause() :: %{
        "Operand" => quicksight_identifier(),
        "SortDirection" => list(any())
      }

  """
  @type topic_sort_clause() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      theme_configuration() :: %{
        "DataColorPalette" => data_color_palette(),
        "Sheet" => sheet_style(),
        "Typography" => typography(),
        "UIColorPalette" => ui_color_palette()
      }

  """
  @type theme_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      combo_chart_configuration() :: %{
        "BarDataLabels" => data_label_options(),
        "BarsArrangement" => list(any()),
        "CategoryAxis" => axis_display_options(),
        "CategoryLabelOptions" => chart_axis_label_options(),
        "ColorLabelOptions" => chart_axis_label_options(),
        "FieldWells" => combo_chart_field_wells(),
        "Interactions" => visual_interaction_options(),
        "Legend" => legend_options(),
        "LineDataLabels" => data_label_options(),
        "PrimaryYAxisDisplayOptions" => axis_display_options(),
        "PrimaryYAxisLabelOptions" => chart_axis_label_options(),
        "ReferenceLines" => list(reference_line()()),
        "SecondaryYAxisDisplayOptions" => axis_display_options(),
        "SecondaryYAxisLabelOptions" => chart_axis_label_options(),
        "SingleAxisOptions" => single_axis_options(),
        "SortConfiguration" => combo_chart_sort_configuration(),
        "Tooltip" => tooltip_options(),
        "VisualPalette" => visual_palette()
      }

  """
  @type combo_chart_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_bundle_export_job_request() :: %{}

  """
  @type describe_asset_bundle_export_job_request() :: %{}

  @typedoc """

  ## Example:

      describe_brand_assignment_request() :: %{}

  """
  @type describe_brand_assignment_request() :: %{}

  @typedoc """

  ## Example:

      describe_user_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer(),
        "User" => user()
      }

  """
  @type describe_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_role_memberships_response() :: %{
        "MembersList" => list(String.t()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type list_role_memberships_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_date_range_filter() :: %{
        "Constant" => topic_range_filter_constant(),
        "Inclusive" => boolean()
      }

  """
  @type topic_date_range_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      funnel_chart_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "ChartConfiguration" => funnel_chart_configuration(),
        "ColumnHierarchies" => list(column_hierarchy()()),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type funnel_chart_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_dashboard_response() :: %{
        "Arn" => String.t(),
        "CreationStatus" => list(any()),
        "DashboardId" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "VersionArn" => String.t()
      }

  """
  @type create_dashboard_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_analyses_response() :: %{
        "AnalysisSummaryList" => list(analysis_summary()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type list_analyses_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dashboards_q_a_configuration_request() :: %{
        required("DashboardsQAStatus") => list(any())
      }

  """
  @type update_dashboards_q_a_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tooltip_item() :: %{
        "ColumnTooltipItem" => column_tooltip_item(),
        "FieldTooltipItem" => field_tooltip_item()
      }

  """
  @type tooltip_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_custom_permissions_request() :: %{}

  """
  @type describe_custom_permissions_request() :: %{}

  @typedoc """

  ## Example:

      asset_bundle_export_job_data_source_override_properties() :: %{
        "Arn" => String.t(),
        "Properties" => list(list(any())())
      }

  """
  @type asset_bundle_export_job_data_source_override_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_field_custom_text_content() :: %{
        "FontConfiguration" => font_configuration(),
        "Value" => String.t()
      }

  """
  @type table_field_custom_text_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      string_format_configuration() :: %{
        "NullValueFormatConfiguration" => null_value_format_configuration(),
        "NumericFormatConfiguration" => numeric_format_configuration()
      }

  """
  @type string_format_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aggregation_sort_configuration() :: %{
        "AggregationFunction" => aggregation_function(),
        "Column" => column_identifier(),
        "SortDirection" => list(any())
      }

  """
  @type aggregation_sort_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      line_chart_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "ChartConfiguration" => line_chart_configuration(),
        "ColumnHierarchies" => list(column_hierarchy()()),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type line_chart_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_cross_sheet_control() :: %{
        "CascadingControlConfiguration" => cascading_control_configuration(),
        "FilterControlId" => String.t(),
        "SourceFilterId" => String.t()
      }

  """
  @type filter_cross_sheet_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_default_q_business_application_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type delete_default_q_business_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      row_alternate_color_options() :: %{
        "RowAlternateColors" => list(String.t()()),
        "Status" => list(any()),
        "UsePrimaryBackgroundColor" => list(any())
      }

  """
  @type row_alternate_color_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_q_personalization_configuration_response() :: %{
        "PersonalizationMode" => list(any()),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_q_personalization_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      integer_dataset_parameter_default_values() :: %{
        "StaticValues" => list(float()())
      }

  """
  @type integer_dataset_parameter_default_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_theme_response() :: %{
        "Arn" => String.t(),
        "CreationStatus" => list(any()),
        "RequestId" => String.t(),
        "Status" => integer(),
        "ThemeId" => String.t(),
        "VersionArn" => String.t()
      }

  """
  @type update_theme_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_topic_reviewed_answer() :: %{
        "AnswerId" => String.t(),
        "DatasetArn" => String.t(),
        "Mir" => topic_i_r(),
        "PrimaryVisual" => topic_visual(),
        "Question" => String.t(),
        "Template" => topic_template()
      }

  """
  @type create_topic_reviewed_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_topic_response() :: %{
        "Arn" => String.t(),
        "RefreshArn" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "TopicId" => String.t()
      }

  """
  @type update_topic_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gauge_chart_conditional_formatting_option() :: %{
        "Arc" => gauge_chart_arc_conditional_formatting(),
        "PrimaryValue" => gauge_chart_primary_value_conditional_formatting()
      }

  """
  @type gauge_chart_conditional_formatting_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      registered_user_generative_qn_a_embedding_configuration() :: %{
        "InitialTopicId" => String.t()
      }

  """
  @type registered_user_generative_qn_a_embedding_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_tooltip_item() :: %{
        "Aggregation" => aggregation_function(),
        "Column" => column_identifier(),
        "Label" => String.t(),
        "TooltipTarget" => list(any()),
        "Visibility" => list(any())
      }

  """
  @type column_tooltip_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source_summary() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "DataSourceId" => String.t(),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Type" => list(any())
      }

  """
  @type data_source_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      anonymous_user_snapshot_job_result() :: %{
        "FileGroups" => list(snapshot_job_result_file_group()())
      }

  """
  @type anonymous_user_snapshot_job_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_dashboard_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_dashboard_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_identity_propagation_config_request() :: %{}

  """
  @type delete_identity_propagation_config_request() :: %{}

  @typedoc """

  ## Example:

      cast_column_type_operation() :: %{
        "ColumnName" => String.t(),
        "Format" => String.t(),
        "NewColumnType" => list(any()),
        "SubType" => list(any())
      }

  """
  @type cast_column_type_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_action_url_operation() :: %{
        "URLTarget" => list(any()),
        "URLTemplate" => String.t()
      }

  """
  @type custom_action_url_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      selected_sheets_filter_scope_configuration() :: %{
        "SheetVisualScopingConfigurations" => list(sheet_visual_scoping_configuration()())
      }

  """
  @type selected_sheets_filter_scope_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_null_data_settings() :: %{
        "SymbolStyle" => geospatial_null_symbol_style()
      }

  """
  @type geospatial_null_data_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_create_topic_reviewed_answer_request() :: %{
        required("Answers") => list(create_topic_reviewed_answer()())
      }

  """
  @type batch_create_topic_reviewed_answer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_filter_list_control_options() :: %{
        "DisplayOptions" => list_control_display_options(),
        "SelectableValues" => filter_selectable_values(),
        "Type" => list(any())
      }

  """
  @type default_filter_list_control_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_data_set_permissions_response() :: %{
        "DataSetArn" => String.t(),
        "DataSetId" => String.t(),
        "Permissions" => list(resource_permission()()),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_data_set_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_cell_image_sizing_configuration() :: %{
        "TableCellImageScalingConfiguration" => list(any())
      }

  """
  @type table_cell_image_sizing_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_numeric_range_filter() :: %{
        "Aggregation" => list(any()),
        "Constant" => topic_range_filter_constant(),
        "Inclusive" => boolean()
      }

  """
  @type topic_numeric_range_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_polygon_symbol_style() :: %{
        "FillColor" => geospatial_color(),
        "StrokeColor" => geospatial_color(),
        "StrokeWidth" => geospatial_line_width()
      }

  """
  @type geospatial_polygon_symbol_style() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_source() :: %{
        "Body" => binary(),
        "S3Uri" => String.t()
      }

  """
  @type asset_bundle_import_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_config_options() :: %{
        "QBusinessInsightsEnabled" => boolean()
      }

  """
  @type topic_config_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_map_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "ChartConfiguration" => geospatial_map_configuration(),
        "ColumnHierarchies" => list(column_hierarchy()()),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type geospatial_map_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      registered_user_console_feature_configurations() :: %{
        "SharedView" => shared_view_configurations(),
        "StatePersistence" => state_persistence_configurations()
      }

  """
  @type registered_user_console_feature_configurations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_i_r() :: %{
        "ContributionAnalysis" => topic_i_r_contribution_analysis(),
        "Filters" => list(list(topic_i_r_filter_option()())()),
        "GroupByList" => list(topic_i_r_group_by()()),
        "Metrics" => list(topic_i_r_metric()()),
        "Sort" => topic_sort_clause(),
        "Visual" => visual_options()
      }

  """
  @type topic_i_r() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      snapshot_job_result_file_group() :: %{
        "Files" => list(snapshot_file()()),
        "S3Results" => list(snapshot_job_s3_result()())
      }

  """
  @type snapshot_job_result_file_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      o_auth_parameters() :: %{
        "IdentityProviderResourceUri" => String.t(),
        "IdentityProviderVpcConnectionProperties" => vpc_connection_properties(),
        "OAuthScope" => String.t(),
        "TokenProviderUrl" => String.t()
      }

  """
  @type o_auth_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dashboard_links_response() :: %{
        "DashboardArn" => String.t(),
        "LinkEntities" => list(String.t()()),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_dashboard_links_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template_source_entity() :: %{
        "SourceAnalysis" => template_source_analysis(),
        "SourceTemplate" => template_source_template()
      }

  """
  @type template_source_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_public_sharing_settings_request() :: %{
        optional("PublicSharingEnabled") => boolean()
      }

  """
  @type update_public_sharing_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image() :: %{
        "GeneratedImageUrl" => String.t(),
        "Source" => list()
      }

  """
  @type image() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_account_subscription_response() :: %{
        "RequestId" => String.t(),
        "SignupResponse" => signup_response(),
        "Status" => integer()
      }

  """
  @type create_account_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collective_constant_entry() :: %{
        "ConstantType" => list(any()),
        "Value" => String.t()
      }

  """
  @type collective_constant_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      spacing() :: %{
        "Bottom" => String.t(),
        "Left" => String.t(),
        "Right" => String.t(),
        "Top" => String.t()
      }

  """
  @type spacing() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_exists_exception() :: %{
        "Message" => String.t(),
        "RequestId" => String.t(),
        "ResourceType" => list(any())
      }

  """
  @type resource_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      snapshot_user_configuration() :: %{
        "AnonymousUsers" => list(snapshot_anonymous_user()())
      }

  """
  @type snapshot_user_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_theme_permissions_request() :: %{
        optional("GrantPermissions") => list(resource_permission()()),
        optional("RevokePermissions") => list(resource_permission()())
      }

  """
  @type update_theme_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      donut_center_options() :: %{
        "LabelVisibility" => list(any())
      }

  """
  @type donut_center_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_topic_refresh_schedules_request() :: %{}

  """
  @type list_topic_refresh_schedules_request() :: %{}

  @typedoc """

  ## Example:

      describe_group_membership_response() :: %{
        "GroupMember" => group_member(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_group_membership_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_label_options() :: %{
        "CategoryLabelVisibility" => list(any()),
        "DataLabelTypes" => list(data_label_type()()),
        "LabelColor" => String.t(),
        "LabelContent" => list(any()),
        "LabelFontConfiguration" => font_configuration(),
        "MeasureLabelVisibility" => list(any()),
        "Overlap" => list(any()),
        "Position" => list(any()),
        "TotalsVisibility" => list(any()),
        "Visibility" => list(any())
      }

  """
  @type data_label_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_polygon_style() :: %{
        "PolygonSymbolStyle" => geospatial_polygon_symbol_style()
      }

  """
  @type geospatial_polygon_style() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_configuration() :: %{
        "ColorsConfiguration" => colors_configuration(),
        "Column" => column_identifier(),
        "FormatConfiguration" => format_configuration(),
        "Role" => list(any())
      }

  """
  @type column_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      row_level_permission_tag_configuration() :: %{
        "Status" => list(any()),
        "TagRuleConfigurations" => list(list(String.t()())()),
        "TagRules" => list(row_level_permission_tag_rule()())
      }

  """
  @type row_level_permission_tag_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      what_if_point_scenario() :: %{
        "Date" => non_neg_integer(),
        "Value" => float()
      }

  """
  @type what_if_point_scenario() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_brand_response() :: %{
        "BrandDefinition" => brand_definition(),
        "BrandDetail" => brand_detail(),
        "RequestId" => String.t()
      }

  """
  @type describe_brand_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      exasol_parameters() :: %{
        "Host" => String.t(),
        "Port" => integer()
      }

  """
  @type exasol_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_theme_alias_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer(),
        "ThemeAlias" => theme_alias()
      }

  """
  @type update_theme_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dashboard_publish_options() :: %{
        "AdHocFilteringOption" => ad_hoc_filtering_option(),
        "DataPointDrillUpDownOption" => data_point_drill_up_down_option(),
        "DataPointMenuLabelOption" => data_point_menu_label_option(),
        "DataPointTooltipOption" => data_point_tooltip_option(),
        "ExportToCSVOption" => export_to_csv_option(),
        "ExportWithHiddenFieldsOption" => export_with_hidden_fields_option(),
        "SheetControlsOption" => sheet_controls_option(),
        "SheetLayoutElementMaximizationOption" => sheet_layout_element_maximization_option(),
        "VisualAxisSortOption" => visual_axis_sort_option(),
        "VisualMenuOption" => visual_menu_option(),
        "VisualPublishOptions" => dashboard_visual_publish_options()
      }

  """
  @type dashboard_publish_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_template_aliases_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_template_aliases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bar_chart_field_wells() :: %{
        "BarChartAggregatedFieldWells" => bar_chart_aggregated_field_wells()
      }

  """
  @type bar_chart_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_folder_membership_request() :: %{}

  """
  @type delete_folder_membership_request() :: %{}

  @typedoc """

  ## Example:

      delete_role_membership_request() :: %{}

  """
  @type delete_role_membership_request() :: %{}

  @typedoc """

  ## Example:

      asset_bundle_import_job_dashboard_override_parameters() :: %{
        "DashboardId" => String.t(),
        "Name" => String.t()
      }

  """
  @type asset_bundle_import_job_dashboard_override_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_template_alias_request() :: %{}

  """
  @type delete_template_alias_request() :: %{}

  @typedoc """

  ## Example:

      explicit_hierarchy() :: %{
        "Columns" => list(column_identifier()()),
        "DrillDownFilters" => list(drill_down_filter()()),
        "HierarchyId" => String.t()
      }

  """
  @type explicit_hierarchy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_group_membership_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type delete_group_membership_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_gradient_step_color() :: %{
        "Color" => String.t(),
        "DataValue" => float()
      }

  """
  @type geospatial_gradient_step_color() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      exclude_period_configuration() :: %{
        "Amount" => integer(),
        "Granularity" => list(any()),
        "Status" => list(any())
      }

  """
  @type exclude_period_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_group_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type delete_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      maximum_label_type() :: %{
        "Visibility" => list(any())
      }

  """
  @type maximum_label_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      registered_user_embedding_experience_configuration() :: %{
        "Dashboard" => registered_user_dashboard_embedding_configuration(),
        "DashboardVisual" => registered_user_dashboard_visual_embedding_configuration(),
        "GenerativeQnA" => registered_user_generative_qn_a_embedding_configuration(),
        "QSearchBar" => registered_user_q_search_bar_embedding_configuration(),
        "QuickSightConsole" => registered_user_quick_sight_console_embedding_configuration()
      }

  """
  @type registered_user_embedding_experience_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      categorical_dimension_field() :: %{
        "Column" => column_identifier(),
        "FieldId" => String.t(),
        "FormatConfiguration" => string_format_configuration(),
        "HierarchyId" => String.t()
      }

  """
  @type categorical_dimension_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_export_job_analysis_override_properties() :: %{
        "Arn" => String.t(),
        "Properties" => list(list(any())())
      }

  """
  @type asset_bundle_export_job_analysis_override_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      brand_detail() :: %{
        "Arn" => String.t(),
        "BrandId" => String.t(),
        "BrandStatus" => list(any()),
        "CreatedTime" => [non_neg_integer()],
        "Errors" => list(String.t()()),
        "LastUpdatedTime" => [non_neg_integer()],
        "Logo" => logo(),
        "VersionId" => String.t(),
        "VersionStatus" => list(any())
      }

  """
  @type brand_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_pinned_field_options() :: %{
        "PinnedLeftFields" => list(String.t()())
      }

  """
  @type table_pinned_field_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameter_selectable_values() :: %{
        "LinkToDataSetColumn" => column_identifier(),
        "Values" => list(String.t()())
      }

  """
  @type parameter_selectable_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reference_line_dynamic_data_configuration() :: %{
        "Calculation" => numerical_aggregation_function(),
        "Column" => column_identifier(),
        "MeasureAggregationFunction" => aggregation_function()
      }

  """
  @type reference_line_dynamic_data_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_ingestion_response() :: %{
        "Ingestion" => ingestion(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_ingestion_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_date_time_picker_control_options() :: %{
        "CommitMode" => list(any()),
        "DisplayOptions" => date_time_picker_control_display_options(),
        "Type" => list(any())
      }

  """
  @type default_date_time_picker_control_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_equality_filter() :: %{
        "Column" => column_identifier(),
        "DefaultFilterControlConfiguration" => default_filter_control_configuration(),
        "FilterId" => String.t(),
        "ParameterName" => String.t(),
        "RollingDate" => rolling_date_configuration(),
        "TimeGranularity" => list(any()),
        "Value" => non_neg_integer()
      }

  """
  @type time_equality_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      forecast_scenario() :: %{
        "WhatIfPointScenario" => what_if_point_scenario(),
        "WhatIfRangeScenario" => what_if_range_scenario()
      }

  """
  @type forecast_scenario() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_conditional_formatting_option() :: %{
        "Cell" => table_cell_conditional_formatting(),
        "Row" => table_row_conditional_formatting()
      }

  """
  @type table_conditional_formatting_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_relative_date_filter() :: %{
        "Constant" => topic_singular_filter_constant(),
        "RelativeDateFilterFunction" => list(any()),
        "TimeGranularity" => list(any())
      }

  """
  @type topic_relative_date_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_bundle_import_job_response() :: %{
        "Arn" => String.t(),
        "AssetBundleImportJobId" => String.t(),
        "AssetBundleImportSource" => asset_bundle_import_source_description(),
        "AwsAccountId" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Errors" => list(asset_bundle_import_job_error()()),
        "FailureAction" => list(any()),
        "JobStatus" => list(any()),
        "OverrideParameters" => asset_bundle_import_job_override_parameters(),
        "OverridePermissions" => asset_bundle_import_job_override_permissions(),
        "OverrideTags" => asset_bundle_import_job_override_tags(),
        "OverrideValidationStrategy" => asset_bundle_import_job_override_validation_strategy(),
        "RequestId" => String.t(),
        "RollbackErrors" => list(asset_bundle_import_job_error()()),
        "Status" => integer(),
        "Warnings" => list(asset_bundle_import_job_warning()())
      }

  """
  @type describe_asset_bundle_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_folder_request() :: %{
        required("Name") => String.t()
      }

  """
  @type update_folder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filled_map_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "ChartConfiguration" => filled_map_configuration(),
        "ColumnHierarchies" => list(column_hierarchy()()),
        "ConditionalFormatting" => filled_map_conditional_formatting(),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type filled_map_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_configuration() :: %{
        "FieldOptions" => table_field_options(),
        "FieldWells" => table_field_wells(),
        "Interactions" => visual_interaction_options(),
        "PaginatedReportOptions" => table_paginated_report_options(),
        "SortConfiguration" => table_sort_configuration(),
        "TableInlineVisualizations" => list(table_inline_visualization()()),
        "TableOptions" => table_options(),
        "TotalOptions" => total_options()
      }

  """
  @type table_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contribution_analysis_default() :: %{
        "ContributorDimensions" => list(column_identifier()()),
        "MeasureFieldId" => String.t()
      }

  """
  @type contribution_analysis_default() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      word_cloud_field_wells() :: %{
        "WordCloudAggregatedFieldWells" => word_cloud_aggregated_field_wells()
      }

  """
  @type word_cloud_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gauge_chart_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "ChartConfiguration" => gauge_chart_configuration(),
        "ConditionalFormatting" => gauge_chart_conditional_formatting(),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type gauge_chart_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      plugin_visual_table_query_sort() :: %{
        "ItemsLimitConfiguration" => plugin_visual_items_limit_configuration(),
        "RowSort" => list(field_sort_options()())
      }

  """
  @type plugin_visual_table_query_sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      date_time_value_when_unset_configuration() :: %{
        "CustomValue" => non_neg_integer(),
        "ValueWhenUnsetOption" => list(any())
      }

  """
  @type date_time_value_when_unset_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      percent_visible_range() :: %{
        "From" => float(),
        "To" => float()
      }

  """
  @type percent_visible_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_vpc_connection_override_parameters() :: %{
        "DnsResolvers" => list(String.t()()),
        "Name" => String.t(),
        "RoleArn" => String.t(),
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()()),
        "VPCConnectionId" => String.t()
      }

  """
  @type asset_bundle_import_job_vpc_connection_override_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      histogram_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "ChartConfiguration" => histogram_configuration(),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type histogram_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gradient_stop() :: %{
        "Color" => String.t(),
        "DataValue" => float(),
        "GradientOffset" => float()
      }

  """
  @type gradient_stop() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type tag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_brand_assignment_response() :: %{
        "BrandArn" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type update_brand_assignment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      box_plot_chart_configuration() :: %{
        "BoxPlotOptions" => box_plot_options(),
        "CategoryAxis" => axis_display_options(),
        "CategoryLabelOptions" => chart_axis_label_options(),
        "FieldWells" => box_plot_field_wells(),
        "Interactions" => visual_interaction_options(),
        "Legend" => legend_options(),
        "PrimaryYAxisDisplayOptions" => axis_display_options(),
        "PrimaryYAxisLabelOptions" => chart_axis_label_options(),
        "ReferenceLines" => list(reference_line()()),
        "SortConfiguration" => box_plot_sort_configuration(),
        "Tooltip" => tooltip_options(),
        "VisualPalette" => visual_palette()
      }

  """
  @type box_plot_chart_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dashboard_summary() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "DashboardId" => String.t(),
        "LastPublishedTime" => non_neg_integer(),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t(),
        "PublishedVersionNumber" => float()
      }

  """
  @type dashboard_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      date_time_format_configuration() :: %{
        "DateTimeFormat" => String.t(),
        "NullValueFormatConfiguration" => null_value_format_configuration(),
        "NumericFormatConfiguration" => numeric_format_configuration()
      }

  """
  @type date_time_format_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_template_alias_response() :: %{
        "AliasName" => String.t(),
        "Arn" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "TemplateId" => String.t()
      }

  """
  @type delete_template_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      short_format_text() :: %{
        "PlainText" => String.t(),
        "RichText" => String.t()
      }

  """
  @type short_format_text() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tree_map_aggregated_field_wells() :: %{
        "Colors" => list(measure_field()()),
        "Groups" => list(dimension_field()()),
        "Sizes" => list(measure_field()())
      }

  """
  @type tree_map_aggregated_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      big_query_parameters() :: %{
        "DataSetRegion" => String.t(),
        "ProjectId" => String.t()
      }

  """
  @type big_query_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_dashboard_snapshot_job_response() :: %{
        "Arn" => String.t(),
        "RequestId" => String.t(),
        "SnapshotJobId" => String.t(),
        "Status" => integer()
      }

  """
  @type start_dashboard_snapshot_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_series_item() :: %{
        "AxisBinding" => list(any()),
        "FieldId" => String.t(),
        "Settings" => line_chart_series_settings()
      }

  """
  @type field_series_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      visual_title_label_options() :: %{
        "FormatText" => short_format_text(),
        "Visibility" => list(any())
      }

  """
  @type visual_title_label_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_slider_control_options() :: %{
        "DisplayOptions" => slider_control_display_options(),
        "MaximumValue" => float(),
        "MinimumValue" => float(),
        "StepSize" => float(),
        "Type" => list(any())
      }

  """
  @type default_slider_control_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      join_key_properties() :: %{
        "UniqueKey" => boolean()
      }

  """
  @type join_key_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dashboard_permissions_request() :: %{}

  """
  @type describe_dashboard_permissions_request() :: %{}

  @typedoc """

  ## Example:

      delete_theme_response() :: %{
        "Arn" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "ThemeId" => String.t()
      }

  """
  @type delete_theme_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      theme_summary() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "LastUpdatedTime" => non_neg_integer(),
        "LatestVersionNumber" => float(),
        "Name" => String.t(),
        "ThemeId" => String.t()
      }

  """
  @type theme_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_column() :: %{
        "Aggregation" => list(any()),
        "AllowedAggregations" => list(list(any())()),
        "CellValueSynonyms" => list(cell_value_synonym()()),
        "ColumnDataRole" => list(any()),
        "ColumnDescription" => String.t(),
        "ColumnFriendlyName" => String.t(),
        "ColumnName" => String.t(),
        "ColumnSynonyms" => list(String.t()()),
        "ComparativeOrder" => comparative_order(),
        "DefaultFormatting" => default_formatting(),
        "DisableIndexing" => boolean(),
        "IsIncludedInTopic" => boolean(),
        "NeverAggregateInFilter" => boolean(),
        "NonAdditive" => boolean(),
        "NotAllowedAggregations" => list(list(any())()),
        "SemanticType" => semantic_type(),
        "TimeGranularity" => list(any())
      }

  """
  @type topic_column() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_options() :: %{
        "Timezone" => String.t(),
        "WeekStart" => list(any())
      }

  """
  @type asset_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      presto_parameters() :: %{
        "Catalog" => String.t(),
        "Host" => String.t(),
        "Port" => integer()
      }

  """
  @type presto_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pivot_table_sort_by() :: %{
        "Column" => column_sort(),
        "DataPath" => data_path_sort(),
        "Field" => field_sort()
      }

  """
  @type pivot_table_sort_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_user_request() :: %{}

  """
  @type describe_user_request() :: %{}

  @typedoc """

  ## Example:

      period_over_period_computation() :: %{
        "ComputationId" => String.t(),
        "Name" => String.t(),
        "Time" => dimension_field(),
        "Value" => measure_field()
      }

  """
  @type period_over_period_computation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      chart_axis_label_options() :: %{
        "AxisLabelOptions" => list(axis_label_options()()),
        "SortIconVisibility" => list(any()),
        "Visibility" => list(any())
      }

  """
  @type chart_axis_label_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      visual_options() :: %{
        "type" => String.t()
      }

  """
  @type visual_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_set_permissions_response() :: %{
        "DataSetArn" => String.t(),
        "DataSetId" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_data_set_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_topic_permissions_request() :: %{
        optional("GrantPermissions") => list(resource_permission()()),
        optional("RevokePermissions") => list(resource_permission()())
      }

  """
  @type update_topic_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      waterfall_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "ChartConfiguration" => waterfall_chart_configuration(),
        "ColumnHierarchies" => list(column_hierarchy()()),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type waterfall_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      plugin_visual_property() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }

  """
  @type plugin_visual_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sheet_element_configuration_overrides() :: %{
        "Visibility" => list(any())
      }

  """
  @type sheet_element_configuration_overrides() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account_settings() :: %{
        "AccountName" => String.t(),
        "DefaultNamespace" => String.t(),
        "Edition" => list(any()),
        "NotificationEmail" => String.t(),
        "PublicSharingEnabled" => boolean(),
        "TerminationProtectionEnabled" => boolean()
      }

  """
  @type account_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      number_display_format_configuration() :: %{
        "DecimalPlacesConfiguration" => decimal_places_configuration(),
        "NegativeValueConfiguration" => negative_value_configuration(),
        "NullValueFormatConfiguration" => null_value_format_configuration(),
        "NumberScale" => list(any()),
        "Prefix" => String.t(),
        "SeparatorConfiguration" => numeric_separator_configuration(),
        "Suffix" => String.t()
      }

  """
  @type number_display_format_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      failed_key_registration_entry() :: %{
        "KeyArn" => String.t(),
        "Message" => String.t(),
        "SenderFault" => boolean(),
        "StatusCode" => integer()
      }

  """
  @type failed_key_registration_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      calculated_measure_field() :: %{
        "Expression" => String.t(),
        "FieldId" => String.t()
      }

  """
  @type calculated_measure_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      category_filter() :: %{
        "Column" => column_identifier(),
        "Configuration" => category_filter_configuration(),
        "DefaultFilterControlConfiguration" => default_filter_control_configuration(),
        "FilterId" => String.t()
      }

  """
  @type category_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_connection_properties() :: %{
        "VpcConnectionArn" => String.t()
      }

  """
  @type vpc_connection_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      percentage_display_format_configuration() :: %{
        "DecimalPlacesConfiguration" => decimal_places_configuration(),
        "NegativeValueConfiguration" => negative_value_configuration(),
        "NullValueFormatConfiguration" => null_value_format_configuration(),
        "Prefix" => String.t(),
        "SeparatorConfiguration" => numeric_separator_configuration(),
        "Suffix" => String.t()
      }

  """
  @type percentage_display_format_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_namespace_response() :: %{
        "Arn" => String.t(),
        "CapacityRegion" => String.t(),
        "CreationStatus" => list(any()),
        "IdentityStore" => list(any()),
        "Name" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type create_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_request() :: %{
        optional("CustomFederationProviderUrl") => String.t(),
        optional("CustomPermissionsName") => String.t(),
        optional("ExternalLoginFederationProviderType") => String.t(),
        optional("ExternalLoginId") => String.t(),
        optional("UnapplyCustomPermissions") => boolean(),
        required("Email") => String.t(),
        required("Role") => list(any())
      }

  """
  @type update_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_i_r_group_by() :: %{
        "DisplayFormat" => list(any()),
        "DisplayFormatOptions" => display_format_options(),
        "FieldName" => quicksight_identifier(),
        "NamedEntity" => named_entity_ref(),
        "Sort" => topic_sort_clause(),
        "TimeGranularity" => list(any())
      }

  """
  @type topic_i_r_group_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_role_membership_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type create_role_membership_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sheet_control_info_icon_label_options() :: %{
        "InfoIconText" => String.t(),
        "Visibility" => list(any())
      }

  """
  @type sheet_control_info_icon_label_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_templates_response() :: %{
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "TemplateSummaryList" => list(template_summary()())
      }

  """
  @type list_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_source_permissions_response() :: %{
        "DataSourceArn" => String.t(),
        "DataSourceId" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_data_source_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_analysis_response() :: %{
        "AnalysisId" => String.t(),
        "Arn" => String.t(),
        "DeletionTime" => non_neg_integer(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type delete_analysis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_bucket_configuration() :: %{
        "BucketName" => String.t(),
        "BucketPrefix" => String.t(),
        "BucketRegion" => String.t()
      }

  """
  @type s3_bucket_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      credential_pair() :: %{
        "AlternateDataSourceParameters" => list(list()()),
        "Password" => String.t(),
        "Username" => String.t()
      }

  """
  @type credential_pair() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_group_schema() :: %{
        "ColumnGroupColumnSchemaList" => list(column_group_column_schema()()),
        "Name" => String.t()
      }

  """
  @type column_group_schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      amazon_open_search_parameters() :: %{
        "Domain" => String.t()
      }

  """
  @type amazon_open_search_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sheet() :: %{
        "Images" => list(sheet_image()()),
        "Name" => String.t(),
        "SheetId" => String.t()
      }

  """
  @type sheet() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      heat_map_configuration() :: %{
        "ColorScale" => color_scale(),
        "ColumnLabelOptions" => chart_axis_label_options(),
        "DataLabels" => data_label_options(),
        "FieldWells" => heat_map_field_wells(),
        "Interactions" => visual_interaction_options(),
        "Legend" => legend_options(),
        "RowLabelOptions" => chart_axis_label_options(),
        "SortConfiguration" => heat_map_sort_configuration(),
        "Tooltip" => tooltip_options()
      }

  """
  @type heat_map_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_custom_permissions_response() :: %{
        "Arn" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_custom_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_static_file() :: %{
        "Source" => static_file_source(),
        "StaticFileId" => String.t()
      }

  """
  @type image_static_file() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      list_folders_for_resource_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_folders_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_search_filter() :: %{
        "Name" => list(any()),
        "Operator" => list(any()),
        "Value" => String.t()
      }

  """
  @type group_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      decimal_parameter() :: %{
        "Name" => String.t(),
        "Values" => list(float()())
      }

  """
  @type decimal_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      categorical_measure_field() :: %{
        "AggregationFunction" => list(any()),
        "Column" => column_identifier(),
        "FieldId" => String.t(),
        "FormatConfiguration" => string_format_configuration()
      }

  """
  @type categorical_measure_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gradient_color() :: %{
        "Stops" => list(gradient_stop()())
      }

  """
  @type gradient_color() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_summary() :: %{
        "Arn" => String.t(),
        "Name" => String.t(),
        "TopicId" => String.t(),
        "UserExperienceVersion" => list(any())
      }

  """
  @type topic_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_folder_response() :: %{
        "Arn" => String.t(),
        "FolderId" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type delete_folder_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_session_embed_url_request() :: %{
        optional("EntryPoint") => String.t(),
        optional("SessionLifetimeInMinutes") => float(),
        optional("UserArn") => String.t()
      }

  """
  @type get_session_embed_url_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      snapshot_user_configuration_redacted() :: %{
        "AnonymousUsers" => list(snapshot_anonymous_user_redacted()())
      }

  """
  @type snapshot_user_configuration_redacted() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      border_style() :: %{
        "Show" => boolean()
      }

  """
  @type border_style() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      plugin_visual_items_limit_configuration() :: %{
        "ItemsLimit" => float()
      }

  """
  @type plugin_visual_items_limit_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logical_table_source() :: %{
        "DataSetArn" => String.t(),
        "JoinInstruction" => join_instruction(),
        "PhysicalTableId" => String.t()
      }

  """
  @type logical_table_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_topic_refresh_request() :: %{}

  """
  @type describe_topic_refresh_request() :: %{}

  @typedoc """

  ## Example:

      sankey_diagram_aggregated_field_wells() :: %{
        "Destination" => list(dimension_field()()),
        "Source" => list(dimension_field()()),
        "Weight" => list(measure_field()())
      }

  """
  @type sankey_diagram_aggregated_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_group_membership_request() :: %{}

  """
  @type delete_group_membership_request() :: %{}

  @typedoc """

  ## Example:

      pivot_table_data_path_option() :: %{
        "DataPathList" => list(data_path_value()()),
        "Width" => String.t()
      }

  """
  @type pivot_table_data_path_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      identity_center_configuration() :: %{
        "EnableIdentityPropagation" => boolean()
      }

  """
  @type identity_center_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_iam_policy_assignment_response() :: %{
        "IAMPolicyAssignment" => iam_policy_assignment(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_iam_policy_assignment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pivot_table_options() :: %{
        "CellStyle" => table_cell_style(),
        "CollapsedRowDimensionsVisibility" => list(any()),
        "ColumnHeaderStyle" => table_cell_style(),
        "ColumnNamesVisibility" => list(any()),
        "DefaultCellWidth" => String.t(),
        "MetricPlacement" => list(any()),
        "RowAlternateColorOptions" => row_alternate_color_options(),
        "RowFieldNamesStyle" => table_cell_style(),
        "RowHeaderStyle" => table_cell_style(),
        "RowsLabelOptions" => pivot_table_rows_label_options(),
        "RowsLayout" => list(any()),
        "SingleMetricVisibility" => list(any()),
        "ToggleButtonsVisibility" => list(any())
      }

  """
  @type pivot_table_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      successful_key_registration_entry() :: %{
        "KeyArn" => String.t(),
        "StatusCode" => integer()
      }

  """
  @type successful_key_registration_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_topic_refresh_schedule_response() :: %{
        "DatasetArn" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "TopicArn" => String.t(),
        "TopicId" => String.t()
      }

  """
  @type delete_topic_refresh_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_field_url_configuration() :: %{
        "ImageConfiguration" => table_field_image_configuration(),
        "LinkConfiguration" => table_field_link_configuration()
      }

  """
  @type table_field_url_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collective_constant() :: %{
        "ValueList" => list(String.t()())
      }

  """
  @type collective_constant() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      section_layout_configuration() :: %{
        "FreeFormLayout" => free_form_section_layout_configuration()
      }

  """
  @type section_layout_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      k_p_i_conditional_formatting() :: %{
        "ConditionalFormattingOptions" => list(k_p_i_conditional_formatting_option()())
      }

  """
  @type k_p_i_conditional_formatting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_template_alias_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer(),
        "TemplateAlias" => template_alias()
      }

  """
  @type describe_template_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sheet_style() :: %{
        "Tile" => tile_style(),
        "TileLayout" => tile_layout_style()
      }

  """
  @type sheet_style() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_source_request() :: %{
        optional("Credentials") => data_source_credentials(),
        optional("DataSourceParameters") => list(),
        optional("SslProperties") => ssl_properties(),
        optional("VpcConnectionProperties") => vpc_connection_properties(),
        required("Name") => String.t()
      }

  """
  @type update_data_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_s_p_i_c_e_capacity_configuration_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_s_p_i_c_e_capacity_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_range_filter() :: %{
        "Column" => column_identifier(),
        "DefaultFilterControlConfiguration" => default_filter_control_configuration(),
        "ExcludePeriodConfiguration" => exclude_period_configuration(),
        "FilterId" => String.t(),
        "IncludeMaximum" => boolean(),
        "IncludeMinimum" => boolean(),
        "NullOption" => list(any()),
        "RangeMaximumValue" => time_range_filter_value(),
        "RangeMinimumValue" => time_range_filter_value(),
        "TimeGranularity" => list(any())
      }

  """
  @type time_range_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_topic_refresh_schedule_response() :: %{
        "DatasetArn" => String.t(),
        "RefreshSchedule" => topic_refresh_schedule(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "TopicArn" => String.t(),
        "TopicId" => String.t()
      }

  """
  @type describe_topic_refresh_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_default_q_business_application_request() :: %{
        optional("Namespace") => String.t()
      }

  """
  @type describe_default_q_business_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_ingestion_response() :: %{
        "Arn" => String.t(),
        "IngestionId" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type cancel_ingestion_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_control_search_options() :: %{
        "Visibility" => list(any())
      }

  """
  @type list_control_search_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_theme_aliases_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_theme_aliases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_folder_override_tags() :: %{
        "FolderIds" => list(String.t()()),
        "Tags" => list(tag()())
      }

  """
  @type asset_bundle_import_job_folder_override_tags() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_cell_style() :: %{
        "BackgroundColor" => String.t(),
        "Border" => global_table_border_options(),
        "FontConfiguration" => font_configuration(),
        "Height" => integer(),
        "HorizontalTextAlignment" => list(any()),
        "TextWrap" => list(any()),
        "VerticalTextAlignment" => list(any()),
        "Visibility" => list(any())
      }

  """
  @type table_cell_style() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_line_symbol_style() :: %{
        "FillColor" => geospatial_color(),
        "LineWidth" => geospatial_line_width()
      }

  """
  @type geospatial_line_symbol_style() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_namespaces_response() :: %{
        "Namespaces" => list(namespace_info_v2()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type list_namespaces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_color() :: %{
        "Color" => String.t(),
        "DataValue" => float()
      }

  """
  @type data_color() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      font_weight() :: %{
        "Name" => list(any())
      }

  """
  @type font_weight() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "GroupName" => String.t(),
        "PrincipalId" => String.t()
      }

  """
  @type group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_topic_response() :: %{
        "Arn" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "TopicId" => String.t()
      }

  """
  @type delete_topic_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dashboard_source_template() :: %{
        "Arn" => String.t(),
        "DataSetReferences" => list(data_set_reference()())
      }

  """
  @type dashboard_source_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_folder_members_response() :: %{
        "FolderMemberList" => list(member_id_arn_pair()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type list_folder_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      word_cloud_sort_configuration() :: %{
        "CategoryItemsLimit" => items_limit_configuration(),
        "CategorySort" => list(field_sort_options()())
      }

  """
  @type word_cloud_sort_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user() :: %{
        "Active" => boolean(),
        "Arn" => String.t(),
        "CustomPermissionsName" => String.t(),
        "Email" => String.t(),
        "ExternalLoginFederationProviderType" => String.t(),
        "ExternalLoginFederationProviderUrl" => String.t(),
        "ExternalLoginId" => String.t(),
        "IdentityType" => list(any()),
        "PrincipalId" => String.t(),
        "Role" => list(any()),
        "UserName" => String.t()
      }

  """
  @type user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      arc_axis_configuration() :: %{
        "Range" => arc_axis_display_range(),
        "ReserveRange" => integer()
      }

  """
  @type arc_axis_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      snapshot_job_result_error_info() :: %{
        "ErrorMessage" => String.t(),
        "ErrorType" => String.t()
      }

  """
  @type snapshot_job_result_error_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_group_request() :: %{}

  """
  @type describe_group_request() :: %{}

  @typedoc """

  ## Example:

      list_user_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_user_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      radar_chart_area_style_settings() :: %{
        "Visibility" => list(any())
      }

  """
  @type radar_chart_area_style_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_folder_response() :: %{
        "Arn" => String.t(),
        "FolderId" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_folder_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      databricks_parameters() :: %{
        "Host" => String.t(),
        "Port" => integer(),
        "SqlEndpointPath" => String.t()
      }

  """
  @type databricks_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sankey_diagram_sort_configuration() :: %{
        "DestinationItemsLimit" => items_limit_configuration(),
        "SourceItemsLimit" => items_limit_configuration(),
        "WeightSort" => list(field_sort_options()())
      }

  """
  @type sankey_diagram_sort_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      layer_custom_action_operation() :: %{
        "FilterOperation" => custom_action_filter_operation(),
        "NavigationOperation" => custom_action_navigation_operation(),
        "SetParametersOperation" => custom_action_set_parameters_operation(),
        "URLOperation" => custom_action_url_operation()
      }

  """
  @type layer_custom_action_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_account_settings_response() :: %{
        "AccountSettings" => account_settings(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_account_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_ip_restriction_request() :: %{
        optional("Enabled") => boolean(),
        optional("IpRestrictionRuleMap") => map(),
        optional("VpcEndpointIdRestrictionRuleMap") => map(),
        optional("VpcIdRestrictionRuleMap") => map()
      }

  """
  @type update_ip_restriction_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      folder() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "FolderId" => String.t(),
        "FolderPath" => list(String.t()()),
        "FolderType" => list(any()),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t(),
        "SharingModel" => list(any())
      }

  """
  @type folder() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_scope_configuration() :: %{
        "AllSheets" => all_sheets_filter_scope_configuration(),
        "SelectedSheets" => selected_sheets_filter_scope_configuration()
      }

  """
  @type filter_scope_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_namespace_request() :: %{}

  """
  @type delete_namespace_request() :: %{}

  @typedoc """

  ## Example:

      geospatial_map_aggregated_field_wells() :: %{
        "Colors" => list(dimension_field()()),
        "Geospatial" => list(dimension_field()()),
        "Values" => list(measure_field()())
      }

  """
  @type geospatial_map_aggregated_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_dashboard_request() :: %{
        optional("DashboardPublishOptions") => dashboard_publish_options(),
        optional("Definition") => dashboard_version_definition(),
        optional("FolderArns") => list(String.t()()),
        optional("LinkEntities") => list(String.t()()),
        optional("LinkSharingConfiguration") => link_sharing_configuration(),
        optional("Parameters") => parameters(),
        optional("Permissions") => list(resource_permission()()),
        optional("SourceEntity") => dashboard_source_entity(),
        optional("Tags") => list(tag()()),
        optional("ThemeArn") => String.t(),
        optional("ValidationStrategy") => validation_strategy(),
        optional("VersionDescription") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_dashboard_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_brand_assignment_request() :: %{}

  """
  @type delete_brand_assignment_request() :: %{}

  @typedoc """

  ## Example:

      iam_policy_assignment_summary() :: %{
        "AssignmentName" => String.t(),
        "AssignmentStatus" => list(any())
      }

  """
  @type iam_policy_assignment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      visual_custom_action() :: %{
        "ActionOperations" => list(visual_custom_action_operation()()),
        "CustomActionId" => String.t(),
        "Name" => String.t(),
        "Status" => list(any()),
        "Trigger" => list(any())
      }

  """
  @type visual_custom_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      visual_custom_action_operation() :: %{
        "FilterOperation" => custom_action_filter_operation(),
        "NavigationOperation" => custom_action_navigation_operation(),
        "SetParametersOperation" => custom_action_set_parameters_operation(),
        "URLOperation" => custom_action_url_operation()
      }

  """
  @type visual_custom_action_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      measure_field() :: %{
        "CalculatedMeasureField" => calculated_measure_field(),
        "CategoricalMeasureField" => categorical_measure_field(),
        "DateMeasureField" => date_measure_field(),
        "NumericalMeasureField" => numerical_measure_field()
      }

  """
  @type measure_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      decimal_default_values() :: %{
        "DynamicValue" => dynamic_default_value(),
        "StaticValues" => list(float()())
      }

  """
  @type decimal_default_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_refresh_schedules_response() :: %{
        "RefreshSchedules" => list(refresh_schedule()()),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type list_refresh_schedules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_group_request() :: %{}

  """
  @type delete_group_request() :: %{}

  @typedoc """

  ## Example:

      list_control_select_all_options() :: %{
        "Visibility" => list(any())
      }

  """
  @type list_control_select_all_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      numerical_dimension_field() :: %{
        "Column" => column_identifier(),
        "FieldId" => String.t(),
        "FormatConfiguration" => number_format_configuration(),
        "HierarchyId" => String.t()
      }

  """
  @type numerical_dimension_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      restore_analysis_response() :: %{
        "AnalysisId" => String.t(),
        "Arn" => String.t(),
        "RequestId" => String.t(),
        "RestorationFailedFolderArns" => list(String.t()()),
        "Status" => integer()
      }

  """
  @type restore_analysis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      twitter_parameters() :: %{
        "MaxRows" => integer(),
        "Query" => String.t()
      }

  """
  @type twitter_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_set_usage_configuration() :: %{
        "DisableUseAsDirectQuerySource" => boolean(),
        "DisableUseAsImportedSource" => boolean()
      }

  """
  @type data_set_usage_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_dashboard_override_permissions() :: %{
        "DashboardIds" => list(String.t()()),
        "LinkSharingConfiguration" => asset_bundle_resource_link_sharing_configuration(),
        "Permissions" => asset_bundle_resource_permissions()
      }

  """
  @type asset_bundle_import_job_dashboard_override_permissions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      heat_map_sort_configuration() :: %{
        "HeatMapColumnItemsLimitConfiguration" => items_limit_configuration(),
        "HeatMapColumnSort" => list(field_sort_options()()),
        "HeatMapRowItemsLimitConfiguration" => items_limit_configuration(),
        "HeatMapRowSort" => list(field_sort_options()())
      }

  """
  @type heat_map_sort_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_style_target() :: %{
        "CellType" => list(any())
      }

  """
  @type table_style_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      numeric_equality_filter() :: %{
        "AggregationFunction" => aggregation_function(),
        "Column" => column_identifier(),
        "DefaultFilterControlConfiguration" => default_filter_control_configuration(),
        "FilterId" => String.t(),
        "MatchOperator" => list(any()),
        "NullOption" => list(any()),
        "ParameterName" => String.t(),
        "SelectAllOptions" => list(any()),
        "Value" => float()
      }

  """
  @type numeric_equality_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      funnel_chart_field_wells() :: %{
        "FunnelChartAggregatedFieldWells" => funnel_chart_aggregated_field_wells()
      }

  """
  @type funnel_chart_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      spark_parameters() :: %{
        "Host" => String.t(),
        "Port" => integer()
      }

  """
  @type spark_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_analysis_permissions_response() :: %{
        "AnalysisArn" => String.t(),
        "AnalysisId" => String.t(),
        "Permissions" => list(resource_permission()()),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_analysis_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      theme_error() :: %{
        "Message" => String.t(),
        "Type" => list(any())
      }

  """
  @type theme_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      line_chart_line_style_settings() :: %{
        "LineInterpolation" => list(any()),
        "LineStyle" => list(any()),
        "LineVisibility" => list(any()),
        "LineWidth" => String.t()
      }

  """
  @type line_chart_line_style_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reference_line_style_configuration() :: %{
        "Color" => String.t(),
        "Pattern" => list(any())
      }

  """
  @type reference_line_style_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      date_dimension_field() :: %{
        "Column" => column_identifier(),
        "DateGranularity" => list(any()),
        "FieldId" => String.t(),
        "FormatConfiguration" => date_time_format_configuration(),
        "HierarchyId" => String.t()
      }

  """
  @type date_dimension_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_account_customization_response() :: %{
        "AccountCustomization" => account_customization(),
        "Arn" => String.t(),
        "AwsAccountId" => String.t(),
        "Namespace" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type create_account_customization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      session_tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }

  """
  @type session_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pie_chart_configuration() :: %{
        "CategoryLabelOptions" => chart_axis_label_options(),
        "ContributionAnalysisDefaults" => list(contribution_analysis_default()()),
        "DataLabels" => data_label_options(),
        "DonutOptions" => donut_options(),
        "FieldWells" => pie_chart_field_wells(),
        "Interactions" => visual_interaction_options(),
        "Legend" => legend_options(),
        "SmallMultiplesOptions" => small_multiples_options(),
        "SortConfiguration" => pie_chart_sort_configuration(),
        "Tooltip" => tooltip_options(),
        "ValueLabelOptions" => chart_axis_label_options(),
        "VisualPalette" => visual_palette()
      }

  """
  @type pie_chart_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      generate_embed_url_for_anonymous_user_response() :: %{
        "AnonymousUserArn" => String.t(),
        "EmbedUrl" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type generate_embed_url_for_anonymous_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_users_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_theme_override_tags() :: %{
        "Tags" => list(tag()()),
        "ThemeIds" => list(String.t()())
      }

  """
  @type asset_bundle_import_job_theme_override_tags() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_dashboards_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Filters") => list(dashboard_search_filter()())
      }

  """
  @type search_dashboards_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      all_sheets_filter_scope_configuration() :: %{}

  """
  @type all_sheets_filter_scope_configuration() :: %{}

  @typedoc """

  ## Example:

      asset_bundle_import_job_data_set_override_permissions() :: %{
        "DataSetIds" => list(String.t()()),
        "Permissions" => asset_bundle_resource_permissions()
      }

  """
  @type asset_bundle_import_job_data_set_override_permissions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vpc_connection_response() :: %{
        "Arn" => String.t(),
        "AvailabilityStatus" => list(any()),
        "DeletionStatus" => list(any()),
        "RequestId" => String.t(),
        "Status" => integer(),
        "VPCConnectionId" => String.t()
      }

  """
  @type delete_vpc_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bin_width_options() :: %{
        "BinCountLimit" => float(),
        "Value" => float()
      }

  """
  @type bin_width_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pagination_configuration() :: %{
        "PageNumber" => float(),
        "PageSize" => float()
      }

  """
  @type pagination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "Message" => String.t(),
        "RequestId" => String.t(),
        "ResourceType" => list(any())
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_default_q_business_application_response() :: %{
        "ApplicationId" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_default_q_business_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_vpc_connection_request() :: %{
        optional("DnsResolvers") => list(String.t()()),
        required("Name") => String.t(),
        required("RoleArn") => String.t(),
        required("SecurityGroupIds") => list(String.t()()),
        required("SubnetIds") => list(String.t()())
      }

  """
  @type update_vpc_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scatter_plot_configuration() :: %{
        "DataLabels" => data_label_options(),
        "FieldWells" => scatter_plot_field_wells(),
        "Interactions" => visual_interaction_options(),
        "Legend" => legend_options(),
        "SortConfiguration" => scatter_plot_sort_configuration(),
        "Tooltip" => tooltip_options(),
        "VisualPalette" => visual_palette(),
        "XAxisDisplayOptions" => axis_display_options(),
        "XAxisLabelOptions" => chart_axis_label_options(),
        "YAxisDisplayOptions" => axis_display_options(),
        "YAxisLabelOptions" => chart_axis_label_options()
      }

  """
  @type scatter_plot_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_conditional_formatting() :: %{
        "ConditionalFormattingOptions" => list(table_conditional_formatting_option()())
      }

  """
  @type table_conditional_formatting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_folder_response() :: %{
        "Folder" => folder(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_folder_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_account_customization_request() :: %{
        optional("Namespace") => String.t(),
        optional("Tags") => list(tag()()),
        required("AccountCustomization") => account_customization()
      }

  """
  @type create_account_customization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_map_field_wells() :: %{
        "GeospatialMapAggregatedFieldWells" => geospatial_map_aggregated_field_wells()
      }

  """
  @type geospatial_map_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_brand_response() :: %{
        "RequestId" => String.t()
      }

  """
  @type delete_brand_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cascading_control_source() :: %{
        "ColumnToMatch" => column_identifier(),
        "SourceSheetControlId" => String.t()
      }

  """
  @type cascading_control_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      single_axis_options() :: %{
        "YAxisOptions" => y_axis_options()
      }

  """
  @type single_axis_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_connection_summary() :: %{
        "Arn" => String.t(),
        "AvailabilityStatus" => list(any()),
        "CreatedTime" => non_neg_integer(),
        "DnsResolvers" => list(String.t()()),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t(),
        "NetworkInterfaces" => list(network_interface()()),
        "RoleArn" => String.t(),
        "SecurityGroupIds" => list(String.t()()),
        "Status" => list(any()),
        "VPCConnectionId" => String.t(),
        "VPCId" => String.t()
      }

  """
  @type vpc_connection_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pivot_table_aggregated_field_wells() :: %{
        "Columns" => list(dimension_field()()),
        "Rows" => list(dimension_field()()),
        "Values" => list(measure_field()())
      }

  """
  @type pivot_table_aggregated_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      local_navigation_configuration() :: %{
        "TargetSheetId" => String.t()
      }

  """
  @type local_navigation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_analysis_permissions_request() :: %{}

  """
  @type describe_analysis_permissions_request() :: %{}

  @typedoc """

  ## Example:

      asset_bundle_export_job_summary() :: %{
        "Arn" => String.t(),
        "AssetBundleExportJobId" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "ExportFormat" => list(any()),
        "IncludeAllDependencies" => boolean(),
        "IncludePermissions" => boolean(),
        "IncludeTags" => boolean(),
        "JobStatus" => list(any())
      }

  """
  @type asset_bundle_export_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_topic_refresh_schedule_request() :: %{}

  """
  @type describe_topic_refresh_schedule_request() :: %{}

  @typedoc """

  ## Example:

      margin_style() :: %{
        "Show" => boolean()
      }

  """
  @type margin_style() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_export_job_dashboard_override_properties() :: %{
        "Arn" => String.t(),
        "Properties" => list(list(any())())
      }

  """
  @type asset_bundle_export_job_dashboard_override_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_ingestion_request() :: %{}

  """
  @type describe_ingestion_request() :: %{}

  @typedoc """

  ## Example:

      default_text_field_control_options() :: %{
        "DisplayOptions" => text_field_control_display_options()
      }

  """
  @type default_text_field_control_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      plugin_visual() :: %{
        "ChartConfiguration" => plugin_visual_configuration(),
        "PluginArn" => String.t(),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type plugin_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      anonymous_user_embedding_experience_configuration() :: %{
        "Dashboard" => anonymous_user_dashboard_embedding_configuration(),
        "DashboardVisual" => anonymous_user_dashboard_visual_embedding_configuration(),
        "GenerativeQnA" => anonymous_user_generative_qn_a_embedding_configuration(),
        "QSearchBar" => anonymous_user_q_search_bar_embedding_configuration()
      }

  """
  @type anonymous_user_embedding_experience_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      y_axis_options() :: %{
        "YAxis" => list(any())
      }

  """
  @type y_axis_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_topic_refresh_schedule_request() :: %{
        optional("DatasetName") => String.t(),
        required("DatasetArn") => String.t(),
        required("RefreshSchedule") => topic_refresh_schedule()
      }

  """
  @type create_topic_refresh_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_schema() :: %{
        "DataType" => String.t(),
        "GeographicRole" => String.t(),
        "Name" => String.t()
      }

  """
  @type column_schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application_theme() :: %{
        "BrandColorPalette" => brand_color_palette(),
        "BrandElementStyle" => brand_element_style()
      }

  """
  @type application_theme() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_ip_restriction_response() :: %{
        "AwsAccountId" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_ip_restriction_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      k_p_i_sparkline_options() :: %{
        "Color" => String.t(),
        "TooltipVisibility" => list(any()),
        "Type" => list(any()),
        "Visibility" => list(any())
      }

  """
  @type k_p_i_sparkline_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_theme_permissions_response() :: %{
        "Permissions" => list(resource_permission()()),
        "RequestId" => String.t(),
        "Status" => integer(),
        "ThemeArn" => String.t(),
        "ThemeId" => String.t()
      }

  """
  @type update_theme_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      waterfall_chart_sort_configuration() :: %{
        "BreakdownItemsLimit" => items_limit_configuration(),
        "CategorySort" => list(field_sort_options()())
      }

  """
  @type waterfall_chart_sort_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      date_time_default_values() :: %{
        "DynamicValue" => dynamic_default_value(),
        "RollingDate" => rolling_date_configuration(),
        "StaticValues" => list(non_neg_integer()())
      }

  """
  @type date_time_default_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_set_schema() :: %{
        "ColumnSchemaList" => list(column_schema()())
      }

  """
  @type data_set_schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_field_image_configuration() :: %{
        "SizingOptions" => table_cell_image_sizing_configuration()
      }

  """
  @type table_field_image_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_refresh_schedule_summary() :: %{
        "DatasetArn" => String.t(),
        "DatasetId" => String.t(),
        "DatasetName" => String.t(),
        "RefreshSchedule" => topic_refresh_schedule()
      }

  """
  @type topic_refresh_schedule_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_set_permissions_request() :: %{
        optional("GrantPermissions") => list(resource_permission()()),
        optional("RevokePermissions") => list(resource_permission()())
      }

  """
  @type update_data_set_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_color() :: %{
        "Color" => String.t(),
        "FieldValue" => String.t(),
        "SpecialValue" => list(any())
      }

  """
  @type custom_color() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aggregation_function() :: %{
        "AttributeAggregationFunction" => attribute_aggregation_function(),
        "CategoricalAggregationFunction" => list(any()),
        "DateAggregationFunction" => list(any()),
        "NumericalAggregationFunction" => numerical_aggregation_function()
      }

  """
  @type aggregation_function() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dashboard_request() :: %{
        optional("AliasName") => String.t(),
        optional("VersionNumber") => float()
      }

  """
  @type describe_dashboard_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      total_options() :: %{
        "CustomLabel" => String.t(),
        "Placement" => list(any()),
        "ScrollStatus" => list(any()),
        "TotalAggregationOptions" => list(total_aggregation_option()()),
        "TotalCellStyle" => table_cell_style(),
        "TotalsVisibility" => list(any())
      }

  """
  @type total_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_dashboards_response() :: %{
        "DashboardSummaryList" => list(dashboard_summary()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type search_dashboards_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      identity_type_not_supported_exception() :: %{
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type identity_type_not_supported_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      navbar_style() :: %{
        "ContextualNavbar" => palette(),
        "GlobalNavbar" => palette()
      }

  """
  @type navbar_style() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      box_plot_options() :: %{
        "AllDataPointsVisibility" => list(any()),
        "OutlierVisibility" => list(any()),
        "StyleOptions" => box_plot_style_options()
      }

  """
  @type box_plot_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_template_response() :: %{
        "Arn" => String.t(),
        "CreationStatus" => list(any()),
        "RequestId" => String.t(),
        "Status" => integer(),
        "TemplateId" => String.t(),
        "VersionArn" => String.t()
      }

  """
  @type create_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_group_response() :: %{
        "Group" => group(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      funnel_chart_configuration() :: %{
        "CategoryLabelOptions" => chart_axis_label_options(),
        "DataLabelOptions" => funnel_chart_data_label_options(),
        "FieldWells" => funnel_chart_field_wells(),
        "Interactions" => visual_interaction_options(),
        "SortConfiguration" => funnel_chart_sort_configuration(),
        "Tooltip" => tooltip_options(),
        "ValueLabelOptions" => chart_axis_label_options(),
        "VisualPalette" => visual_palette()
      }

  """
  @type funnel_chart_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      visual() :: %{
        "BarChartVisual" => bar_chart_visual(),
        "BoxPlotVisual" => box_plot_visual(),
        "ComboChartVisual" => combo_chart_visual(),
        "CustomContentVisual" => custom_content_visual(),
        "EmptyVisual" => empty_visual(),
        "FilledMapVisual" => filled_map_visual(),
        "FunnelChartVisual" => funnel_chart_visual(),
        "GaugeChartVisual" => gauge_chart_visual(),
        "GeospatialMapVisual" => geospatial_map_visual(),
        "HeatMapVisual" => heat_map_visual(),
        "HistogramVisual" => histogram_visual(),
        "InsightVisual" => insight_visual(),
        "KPIVisual" => k_p_i_visual(),
        "LayerMapVisual" => layer_map_visual(),
        "LineChartVisual" => line_chart_visual(),
        "PieChartVisual" => pie_chart_visual(),
        "PivotTableVisual" => pivot_table_visual(),
        "PluginVisual" => plugin_visual(),
        "RadarChartVisual" => radar_chart_visual(),
        "SankeyDiagramVisual" => sankey_diagram_visual(),
        "ScatterPlotVisual" => scatter_plot_visual(),
        "TableVisual" => table_visual(),
        "TreeMapVisual" => tree_map_visual(),
        "WaterfallVisual" => waterfall_visual(),
        "WordCloudVisual" => word_cloud_visual()
      }

  """
  @type visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_permission() :: %{
        "Actions" => list(String.t()()),
        "Principal" => String.t()
      }

  """
  @type resource_permission() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      registered_user_quick_sight_console_embedding_configuration() :: %{
        "FeatureConfigurations" => registered_user_console_feature_configurations(),
        "InitialPath" => String.t()
      }

  """
  @type registered_user_quick_sight_console_embedding_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_template_response() :: %{
        "Arn" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "TemplateId" => String.t()
      }

  """
  @type delete_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_options() :: %{
        "CellStyle" => table_cell_style(),
        "HeaderStyle" => table_cell_style(),
        "Orientation" => list(any()),
        "RowAlternateColorOptions" => row_alternate_color_options()
      }

  """
  @type table_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      redshift_iam_parameters() :: %{
        "AutoCreateDatabaseUser" => boolean(),
        "DatabaseGroups" => list(String.t()()),
        "DatabaseUser" => String.t(),
        "RoleArn" => String.t()
      }

  """
  @type redshift_iam_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_export_job_warning() :: %{
        "Arn" => String.t(),
        "Message" => String.t()
      }

  """
  @type asset_bundle_export_job_warning() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_folder_permissions_request() :: %{
        optional("GrantPermissions") => list(resource_permission()()),
        optional("RevokePermissions") => list(resource_permission()())
      }

  """
  @type update_folder_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      typography() :: %{
        "FontFamilies" => list(font()())
      }

  """
  @type typography() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t(),
        "TemplateId" => String.t(),
        "Version" => template_version()
      }

  """
  @type template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filled_map_aggregated_field_wells() :: %{
        "Geospatial" => list(dimension_field()()),
        "Values" => list(measure_field()())
      }

  """
  @type filled_map_aggregated_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dashboard_source_entity() :: %{
        "SourceTemplate" => dashboard_source_template()
      }

  """
  @type dashboard_source_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_ip_restriction_request() :: %{}

  """
  @type describe_ip_restriction_request() :: %{}

  @typedoc """

  ## Example:

      table_cell_conditional_formatting() :: %{
        "FieldId" => String.t(),
        "TextFormat" => text_conditional_format()
      }

  """
  @type table_cell_conditional_formatting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      histogram_bin_options() :: %{
        "BinCount" => bin_count_options(),
        "BinWidth" => bin_width_options(),
        "SelectedBinType" => list(any()),
        "StartValue" => float()
      }

  """
  @type histogram_bin_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trino_parameters() :: %{
        "Catalog" => String.t(),
        "Host" => String.t(),
        "Port" => integer()
      }

  """
  @type trino_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_group_membership_response() :: %{
        "GroupMember" => group_member(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type create_group_membership_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_data_set_response() :: %{
        "DataSet" => data_set(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_data_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_override_permissions() :: %{
        "Analyses" => list(asset_bundle_import_job_analysis_override_permissions()()),
        "Dashboards" => list(asset_bundle_import_job_dashboard_override_permissions()()),
        "DataSets" => list(asset_bundle_import_job_data_set_override_permissions()()),
        "DataSources" => list(asset_bundle_import_job_data_source_override_permissions()()),
        "Folders" => list(asset_bundle_import_job_folder_override_permissions()()),
        "Themes" => list(asset_bundle_import_job_theme_override_permissions()())
      }

  """
  @type asset_bundle_import_job_override_permissions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_hierarchy() :: %{
        "DateTimeHierarchy" => date_time_hierarchy(),
        "ExplicitHierarchy" => explicit_hierarchy(),
        "PredefinedHierarchy" => predefined_hierarchy()
      }

  """
  @type column_hierarchy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      simple_cluster_marker() :: %{
        "Color" => String.t()
      }

  """
  @type simple_cluster_marker() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      font_size() :: %{
        "Absolute" => String.t(),
        "Relative" => list(any())
      }

  """
  @type font_size() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      waterfall_chart_field_wells() :: %{
        "WaterfallChartAggregatedFieldWells" => waterfall_chart_aggregated_field_wells()
      }

  """
  @type waterfall_chart_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      calculated_field() :: %{
        "DataSetIdentifier" => String.t(),
        "Expression" => String.t(),
        "Name" => String.t()
      }

  """
  @type calculated_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_with_hidden_fields_option() :: %{
        "AvailabilityStatus" => list(any())
      }

  """
  @type export_with_hidden_fields_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      decimal_dataset_parameter_default_values() :: %{
        "StaticValues" => list(float()())
      }

  """
  @type decimal_dataset_parameter_default_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      incremental_refresh() :: %{
        "LookbackWindow" => lookback_window()
      }

  """
  @type incremental_refresh() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pivot_table_paginated_report_options() :: %{
        "OverflowColumnHeaderVisibility" => list(any()),
        "VerticalOverflowVisibility" => list(any())
      }

  """
  @type pivot_table_paginated_report_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      k_p_iprimary_value_conditional_formatting() :: %{
        "Icon" => conditional_formatting_icon(),
        "TextColor" => conditional_formatting_color()
      }

  """
  @type k_p_iprimary_value_conditional_formatting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_range_filter_constant() :: %{
        "ConstantType" => list(any()),
        "RangeConstant" => range_constant()
      }

  """
  @type topic_range_filter_constant() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source() :: %{
        "AlternateDataSourceParameters" => list(list()()),
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "DataSourceId" => String.t(),
        "DataSourceParameters" => list(),
        "ErrorInfo" => data_source_error_info(),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t(),
        "SecretArn" => String.t(),
        "SslProperties" => ssl_properties(),
        "Status" => list(any()),
        "Type" => list(any()),
        "VpcConnectionProperties" => vpc_connection_properties()
      }

  """
  @type data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_groups_response() :: %{
        "GroupList" => list(group()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type search_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      calculated_column() :: %{
        "ColumnId" => String.t(),
        "ColumnName" => String.t(),
        "Expression" => String.t()
      }

  """
  @type calculated_column() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dimension_field() :: %{
        "CategoricalDimensionField" => categorical_dimension_field(),
        "DateDimensionField" => date_dimension_field(),
        "NumericalDimensionField" => numerical_dimension_field()
      }

  """
  @type dimension_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      waterfall_chart_group_color_configuration() :: %{
        "NegativeBarColor" => String.t(),
        "PositiveBarColor" => String.t(),
        "TotalBarColor" => String.t()
      }

  """
  @type waterfall_chart_group_color_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      string_parameter_declaration() :: %{
        "DefaultValues" => string_default_values(),
        "MappedDataSetParameters" => list(mapped_data_set_parameter()()),
        "Name" => String.t(),
        "ParameterValueType" => list(any()),
        "ValueWhenUnset" => string_value_when_unset_configuration()
      }

  """
  @type string_parameter_declaration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_set_reference() :: %{
        "DataSetArn" => String.t(),
        "DataSetPlaceholder" => String.t()
      }

  """
  @type data_set_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_group_memberships_response() :: %{
        "GroupMemberList" => list(group_member()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type list_group_memberships_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      combo_chart_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "ChartConfiguration" => combo_chart_configuration(),
        "ColumnHierarchies" => list(column_hierarchy()()),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type combo_chart_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      comparison_configuration() :: %{
        "ComparisonFormat" => comparison_format_configuration(),
        "ComparisonMethod" => list(any())
      }

  """
  @type comparison_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      numeric_axis_options() :: %{
        "Range" => axis_display_range(),
        "Scale" => axis_scale()
      }

  """
  @type numeric_axis_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      forecast_configuration() :: %{
        "ForecastProperties" => time_based_forecast_properties(),
        "Scenario" => forecast_scenario()
      }

  """
  @type forecast_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_folder_membership_response() :: %{
        "FolderMember" => folder_member(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type create_folder_membership_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sql_server_parameters() :: %{
        "Database" => String.t(),
        "Host" => String.t(),
        "Port" => integer()
      }

  """
  @type sql_server_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_groups_response() :: %{
        "GroupList" => list(group()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type list_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_asset_bundle_export_job_response() :: %{
        "Arn" => String.t(),
        "AssetBundleExportJobId" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type start_asset_bundle_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_text_area_control() :: %{
        "Delimiter" => String.t(),
        "DisplayOptions" => text_area_control_display_options(),
        "FilterControlId" => String.t(),
        "SourceFilterId" => String.t(),
        "Title" => String.t()
      }

  """
  @type filter_text_area_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_custom_permissions_response() :: %{
        "CustomPermissions" => custom_permissions(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_custom_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conditional_formatting_solid_color() :: %{
        "Color" => String.t(),
        "Expression" => String.t()
      }

  """
  @type conditional_formatting_solid_color() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_set() :: %{
        "Height32" => image(),
        "Height64" => image(),
        "Original" => image()
      }

  """
  @type image_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      snapshot_anonymous_user() :: %{
        "RowLevelPermissionTags" => list(session_tag()())
      }

  """
  @type snapshot_anonymous_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rolling_date_configuration() :: %{
        "DataSetIdentifier" => String.t(),
        "Expression" => String.t()
      }

  """
  @type rolling_date_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conditional_formatting_gradient_color() :: %{
        "Color" => gradient_color(),
        "Expression" => String.t()
      }

  """
  @type conditional_formatting_gradient_color() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      shared_view_configurations() :: %{
        "Enabled" => boolean()
      }

  """
  @type shared_view_configurations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ui_color_palette() :: %{
        "Accent" => String.t(),
        "AccentForeground" => String.t(),
        "Danger" => String.t(),
        "DangerForeground" => String.t(),
        "Dimension" => String.t(),
        "DimensionForeground" => String.t(),
        "Measure" => String.t(),
        "MeasureForeground" => String.t(),
        "PrimaryBackground" => String.t(),
        "PrimaryForeground" => String.t(),
        "SecondaryBackground" => String.t(),
        "SecondaryForeground" => String.t(),
        "Success" => String.t(),
        "SuccessForeground" => String.t(),
        "Warning" => String.t(),
        "WarningForeground" => String.t()
      }

  """
  @type ui_color_palette() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      manifest_file_location() :: %{
        "Bucket" => String.t(),
        "Key" => String.t()
      }

  """
  @type manifest_file_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_circle_radius() :: %{
        "Radius" => float()
      }

  """
  @type geospatial_circle_radius() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      relative_date_time_control_display_options() :: %{
        "DateTimeFormat" => String.t(),
        "InfoIconLabelOptions" => sheet_control_info_icon_label_options(),
        "TitleOptions" => label_options()
      }

  """
  @type relative_date_time_control_display_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_user_by_principal_id_request() :: %{}

  """
  @type delete_user_by_principal_id_request() :: %{}

  @typedoc """

  ## Example:

      snapshot_file() :: %{
        "FormatType" => list(any()),
        "SheetSelections" => list(snapshot_file_sheet_selection()())
      }

  """
  @type snapshot_file() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      color_scale() :: %{
        "ColorFillType" => list(any()),
        "Colors" => list(data_color()()),
        "NullValueColor" => data_color()
      }

  """
  @type color_scale() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_data_source_credentials() :: %{
        "CredentialPair" => asset_bundle_import_job_data_source_credential_pair(),
        "SecretArn" => String.t()
      }

  """
  @type asset_bundle_import_job_data_source_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      same_sheet_target_visual_configuration() :: %{
        "TargetVisualOptions" => list(any()),
        "TargetVisuals" => list(String.t()())
      }

  """
  @type same_sheet_target_visual_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_user_by_principal_id_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type delete_user_by_principal_id_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pivot_table_conditional_formatting() :: %{
        "ConditionalFormattingOptions" => list(pivot_table_conditional_formatting_option()())
      }

  """
  @type pivot_table_conditional_formatting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_configuration() :: %{
        "Source" => list()
      }

  """
  @type image_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_field_series_item() :: %{
        "AxisBinding" => list(any()),
        "FieldId" => String.t(),
        "FieldValue" => String.t(),
        "Settings" => line_chart_series_settings()
      }

  """
  @type data_field_series_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_narrative_options() :: %{
        "Narrative" => String.t()
      }

  """
  @type custom_narrative_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_iam_policy_assignment_response() :: %{
        "AssignmentName" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type delete_iam_policy_assignment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      snapshot_job_error_info() :: %{
        "ErrorMessage" => String.t(),
        "ErrorType" => String.t()
      }

  """
  @type snapshot_job_error_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_folder_request() :: %{
        optional("FolderType") => list(any()),
        optional("Name") => String.t(),
        optional("ParentFolderArn") => String.t(),
        optional("Permissions") => list(resource_permission()()),
        optional("SharingModel") => list(any()),
        optional("Tags") => list(tag()())
      }

  """
  @type create_folder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_themes_response() :: %{
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "ThemeSummaryList" => list(theme_summary()())
      }

  """
  @type list_themes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_theme_versions_response() :: %{
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "ThemeVersionSummaryList" => list(theme_version_summary()())
      }

  """
  @type list_theme_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      date_time_hierarchy() :: %{
        "DrillDownFilters" => list(drill_down_filter()()),
        "HierarchyId" => String.t()
      }

  """
  @type date_time_hierarchy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_override_validation_strategy() :: %{
        "StrictModeForAllResources" => boolean()
      }

  """
  @type asset_bundle_import_job_override_validation_strategy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      body_section_configuration() :: %{
        "Content" => body_section_content(),
        "PageBreakConfiguration" => section_page_break_configuration(),
        "RepeatConfiguration" => body_section_repeat_configuration(),
        "SectionId" => String.t(),
        "Style" => section_style()
      }

  """
  @type body_section_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_dashboards_response() :: %{
        "DashboardSummaryList" => list(dashboard_summary()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type list_dashboards_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pivot_table_field_subtotal_options() :: %{
        "FieldId" => String.t()
      }

  """
  @type pivot_table_field_subtotal_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_export_job_validation_strategy() :: %{
        "StrictModeForAllResources" => boolean()
      }

  """
  @type asset_bundle_export_job_validation_strategy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aggregation_partition_by() :: %{
        "FieldName" => String.t(),
        "TimeGranularity" => list(any())
      }

  """
  @type aggregation_partition_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_defaults() :: %{
        "DefaultNewSheetConfiguration" => default_new_sheet_configuration()
      }

  """
  @type analysis_defaults() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_topic_refresh_schedule_response() :: %{
        "DatasetArn" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer(),
        "TopicArn" => String.t(),
        "TopicId" => String.t()
      }

  """
  @type create_topic_refresh_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      small_multiples_options() :: %{
        "MaxVisibleColumns" => float(),
        "MaxVisibleRows" => float(),
        "PanelConfiguration" => panel_configuration(),
        "XAxis" => small_multiples_axis_properties(),
        "YAxis" => small_multiples_axis_properties()
      }

  """
  @type small_multiples_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reference_line_value_label_configuration() :: %{
        "FormatConfiguration" => numeric_format_configuration(),
        "RelativePosition" => list(any())
      }

  """
  @type reference_line_value_label_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_folder_resolved_permissions_response() :: %{
        "Arn" => String.t(),
        "FolderId" => String.t(),
        "NextToken" => String.t(),
        "Permissions" => list(resource_permission()()),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_folder_resolved_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reference_line() :: %{
        "DataConfiguration" => reference_line_data_configuration(),
        "LabelConfiguration" => reference_line_label_configuration(),
        "Status" => list(any()),
        "StyleConfiguration" => reference_line_style_configuration()
      }

  """
  @type reference_line() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      body_section_dynamic_category_dimension_configuration() :: %{
        "Column" => column_identifier(),
        "Limit" => integer(),
        "SortByMetrics" => list(column_sort()())
      }

  """
  @type body_section_dynamic_category_dimension_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      section_page_break_configuration() :: %{
        "After" => section_after_page_break()
      }

  """
  @type section_page_break_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      snapshot_job_s3_result() :: %{
        "ErrorInfo" => list(snapshot_job_result_error_info()()),
        "S3DestinationConfiguration" => snapshot_s3_destination_configuration(),
        "S3Uri" => String.t()
      }

  """
  @type snapshot_job_s3_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      precondition_not_met_exception() :: %{
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type precondition_not_met_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sankey_diagram_chart_configuration() :: %{
        "DataLabels" => data_label_options(),
        "FieldWells" => sankey_diagram_field_wells(),
        "Interactions" => visual_interaction_options(),
        "SortConfiguration" => sankey_diagram_sort_configuration()
      }

  """
  @type sankey_diagram_chart_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_data_set_response() :: %{
        "Arn" => String.t(),
        "DataSetId" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type delete_data_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_operation_target_visuals_configuration() :: %{
        "SameSheetTargetVisualConfiguration" => same_sheet_target_visual_configuration()
      }

  """
  @type filter_operation_target_visuals_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_topic_reviewed_answer_response() :: %{
        "InvalidAnswers" => list(invalid_topic_reviewed_answer()()),
        "RequestId" => String.t(),
        "Status" => integer(),
        "SucceededAnswers" => list(succeeded_topic_reviewed_answer()()),
        "TopicArn" => String.t(),
        "TopicId" => String.t()
      }

  """
  @type batch_delete_topic_reviewed_answer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      free_form_layout_element_background_style() :: %{
        "Color" => String.t(),
        "Visibility" => list(any())
      }

  """
  @type free_form_layout_element_background_style() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_column() :: %{
        "Description" => String.t(),
        "Name" => String.t(),
        "SubType" => list(any()),
        "Type" => list(any())
      }

  """
  @type output_column() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      generate_embed_url_for_registered_user_with_identity_response() :: %{
        "EmbedUrl" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type generate_embed_url_for_registered_user_with_identity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      insight_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "DataSetIdentifier" => String.t(),
        "InsightConfiguration" => insight_configuration(),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type insight_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      drop_down_control_display_options() :: %{
        "InfoIconLabelOptions" => sheet_control_info_icon_label_options(),
        "SelectAllOptions" => list_control_select_all_options(),
        "TitleOptions" => label_options()
      }

  """
  @type drop_down_control_display_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pivot_table_configuration() :: %{
        "FieldOptions" => pivot_table_field_options(),
        "FieldWells" => pivot_table_field_wells(),
        "Interactions" => visual_interaction_options(),
        "PaginatedReportOptions" => pivot_table_paginated_report_options(),
        "SortConfiguration" => pivot_table_sort_configuration(),
        "TableOptions" => pivot_table_options(),
        "TotalOptions" => pivot_table_total_options()
      }

  """
  @type pivot_table_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_user_request() :: %{
        optional("CustomFederationProviderUrl") => String.t(),
        optional("CustomPermissionsName") => String.t(),
        optional("ExternalLoginFederationProviderType") => String.t(),
        optional("ExternalLoginId") => String.t(),
        optional("IamArn") => String.t(),
        optional("SessionName") => String.t(),
        optional("Tags") => list(tag()()),
        optional("UserName") => String.t(),
        required("Email") => String.t(),
        required("IdentityType") => list(any()),
        required("UserRole") => list(any())
      }

  """
  @type register_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_refresh_schedule_request() :: %{
        required("Schedule") => refresh_schedule()
      }

  """
  @type create_refresh_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_override_parameters() :: %{
        "Analyses" => list(asset_bundle_import_job_analysis_override_parameters()()),
        "Dashboards" => list(asset_bundle_import_job_dashboard_override_parameters()()),
        "DataSets" => list(asset_bundle_import_job_data_set_override_parameters()()),
        "DataSources" => list(asset_bundle_import_job_data_source_override_parameters()()),
        "Folders" => list(asset_bundle_import_job_folder_override_parameters()()),
        "RefreshSchedules" => list(asset_bundle_import_job_refresh_schedule_override_parameters()()),
        "ResourceIdOverrideConfiguration" => asset_bundle_import_job_resource_id_override_configuration(),
        "Themes" => list(asset_bundle_import_job_theme_override_parameters()()),
        "VPCConnections" => list(asset_bundle_import_job_vpc_connection_override_parameters()())
      }

  """
  @type asset_bundle_import_job_override_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source_error_info() :: %{
        "Message" => String.t(),
        "Type" => list(any())
      }

  """
  @type data_source_error_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_action_set_parameters_operation() :: %{
        "ParameterValueConfigurations" => list(set_parameter_value_configuration()())
      }

  """
  @type custom_action_set_parameters_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      comparative_order() :: %{
        "SpecifedOrder" => list(String.t()()),
        "TreatUndefinedSpecifiedValues" => list(any()),
        "UseOrdering" => list(any())
      }

  """
  @type comparative_order() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scatter_plot_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "ChartConfiguration" => scatter_plot_configuration(),
        "ColumnHierarchies" => list(column_hierarchy()()),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type scatter_plot_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_analysis_definition_request() :: %{}

  """
  @type describe_analysis_definition_request() :: %{}

  @typedoc """

  ## Example:

      heat_map_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "ChartConfiguration" => heat_map_configuration(),
        "ColumnHierarchies" => list(column_hierarchy()()),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type heat_map_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      decimal_parameter_declaration() :: %{
        "DefaultValues" => decimal_default_values(),
        "MappedDataSetParameters" => list(mapped_data_set_parameter()()),
        "Name" => String.t(),
        "ParameterValueType" => list(any()),
        "ValueWhenUnset" => decimal_value_when_unset_configuration()
      }

  """
  @type decimal_parameter_declaration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_analysis_request() :: %{
        optional("Definition") => analysis_definition(),
        optional("FolderArns") => list(String.t()()),
        optional("Parameters") => parameters(),
        optional("Permissions") => list(resource_permission()()),
        optional("SourceEntity") => analysis_source_entity(),
        optional("Tags") => list(tag()()),
        optional("ThemeArn") => String.t(),
        optional("ValidationStrategy") => validation_strategy(),
        required("Name") => String.t()
      }

  """
  @type create_analysis_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      brand_definition() :: %{
        "ApplicationTheme" => application_theme(),
        "BrandName" => String.t(),
        "Description" => String.t(),
        "LogoConfiguration" => logo_configuration()
      }

  """
  @type brand_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      oracle_parameters() :: %{
        "Database" => String.t(),
        "Host" => String.t(),
        "Port" => integer()
      }

  """
  @type oracle_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      top_bottom_ranked_computation() :: %{
        "Category" => dimension_field(),
        "ComputationId" => String.t(),
        "Name" => String.t(),
        "ResultSize" => integer(),
        "Type" => list(any()),
        "Value" => measure_field()
      }

  """
  @type top_bottom_ranked_computation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cascading_control_configuration() :: %{
        "SourceControls" => list(cascading_control_source()())
      }

  """
  @type cascading_control_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_color_palette() :: %{
        "Colors" => list(String.t()()),
        "EmptyFillColor" => String.t(),
        "MinMaxGradient" => list(String.t()())
      }

  """
  @type data_color_palette() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_parameter_values() :: %{
        "DateTimeValues" => list(non_neg_integer()()),
        "DecimalValues" => list(float()()),
        "IntegerValues" => list(float()()),
        "StringValues" => list(String.t()())
      }

  """
  @type custom_parameter_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_group_response() :: %{
        "Group" => group(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_brand_response() :: %{
        "BrandDefinition" => brand_definition(),
        "BrandDetail" => brand_detail(),
        "RequestId" => String.t()
      }

  """
  @type create_brand_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_iam_policy_assignment_request() :: %{}

  """
  @type delete_iam_policy_assignment_request() :: %{}

  @typedoc """

  ## Example:

      delete_identity_propagation_config_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type delete_identity_propagation_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      free_form_layout_element() :: %{
        "BackgroundStyle" => free_form_layout_element_background_style(),
        "BorderStyle" => free_form_layout_element_border_style(),
        "ElementId" => String.t(),
        "ElementType" => list(any()),
        "Height" => String.t(),
        "LoadingAnimation" => loading_animation(),
        "RenderingRules" => list(sheet_element_rendering_rule()()),
        "SelectedBorderStyle" => free_form_layout_element_border_style(),
        "Visibility" => list(any()),
        "Width" => String.t(),
        "XAxisLocation" => String.t(),
        "YAxisLocation" => String.t()
      }

  """
  @type free_form_layout_element() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filled_map_conditional_formatting() :: %{
        "ConditionalFormattingOptions" => list(filled_map_conditional_formatting_option()())
      }

  """
  @type filled_map_conditional_formatting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_override_tags() :: %{
        "Analyses" => list(asset_bundle_import_job_analysis_override_tags()()),
        "Dashboards" => list(asset_bundle_import_job_dashboard_override_tags()()),
        "DataSets" => list(asset_bundle_import_job_data_set_override_tags()()),
        "DataSources" => list(asset_bundle_import_job_data_source_override_tags()()),
        "Folders" => list(asset_bundle_import_job_folder_override_tags()()),
        "Themes" => list(asset_bundle_import_job_theme_override_tags()()),
        "VPCConnections" => list(asset_bundle_import_job_vpc_connection_override_tags()())
      }

  """
  @type asset_bundle_import_job_override_tags() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataset_metadata() :: %{
        "CalculatedFields" => list(topic_calculated_field()()),
        "Columns" => list(topic_column()()),
        "DataAggregation" => data_aggregation(),
        "DatasetArn" => String.t(),
        "DatasetDescription" => String.t(),
        "DatasetName" => String.t(),
        "Filters" => list(topic_filter()()),
        "NamedEntities" => list(topic_named_entity()())
      }

  """
  @type dataset_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      word_cloud_aggregated_field_wells() :: %{
        "GroupBy" => list(dimension_field()()),
        "Size" => list(measure_field()())
      }

  """
  @type word_cloud_aggregated_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template_version_summary() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "Status" => list(any()),
        "VersionNumber" => float()
      }

  """
  @type template_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      agg_function() :: %{
        "Aggregation" => list(any()),
        "AggregationFunctionParameters" => map(),
        "Period" => list(any()),
        "PeriodField" => String.t()
      }

  """
  @type agg_function() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_null_symbol_style() :: %{
        "FillColor" => String.t(),
        "StrokeColor" => String.t(),
        "StrokeWidth" => float()
      }

  """
  @type geospatial_null_symbol_style() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_role_custom_permission_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_role_custom_permission_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reference_line_label_configuration() :: %{
        "CustomLabelConfiguration" => reference_line_custom_label_configuration(),
        "FontColor" => String.t(),
        "FontConfiguration" => font_configuration(),
        "HorizontalPosition" => list(any()),
        "ValueLabelConfiguration" => reference_line_value_label_configuration(),
        "VerticalPosition" => list(any())
      }

  """
  @type reference_line_label_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      section_based_layout_canvas_size_options() :: %{
        "PaperCanvasSizeOptions" => section_based_layout_paper_canvas_size_options()
      }

  """
  @type section_based_layout_canvas_size_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_calculated_field() :: %{
        "Aggregation" => list(any()),
        "AllowedAggregations" => list(list(any())()),
        "CalculatedFieldDescription" => String.t(),
        "CalculatedFieldName" => String.t(),
        "CalculatedFieldSynonyms" => list(String.t()()),
        "CellValueSynonyms" => list(cell_value_synonym()()),
        "ColumnDataRole" => list(any()),
        "ComparativeOrder" => comparative_order(),
        "DefaultFormatting" => default_formatting(),
        "DisableIndexing" => boolean(),
        "Expression" => String.t(),
        "IsIncludedInTopic" => boolean(),
        "NeverAggregateInFilter" => boolean(),
        "NonAdditive" => boolean(),
        "NotAllowedAggregations" => list(list(any())()),
        "SemanticType" => semantic_type(),
        "TimeGranularity" => list(any())
      }

  """
  @type topic_calculated_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_path_value() :: %{
        "DataPathType" => data_path_type(),
        "FieldId" => String.t(),
        "FieldValue" => String.t()
      }

  """
  @type data_path_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      succeeded_topic_reviewed_answer() :: %{
        "AnswerId" => String.t()
      }

  """
  @type succeeded_topic_reviewed_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_quick_sight_q_search_configuration_request() :: %{}

  """
  @type describe_quick_sight_q_search_configuration_request() :: %{}

  @typedoc """

  ## Example:

      describe_template_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer(),
        "Template" => template()
      }

  """
  @type describe_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      line_chart_marker_style_settings() :: %{
        "MarkerColor" => String.t(),
        "MarkerShape" => list(any()),
        "MarkerSize" => String.t(),
        "MarkerVisibility" => list(any())
      }

  """
  @type line_chart_marker_style_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      brand_color_palette() :: %{
        "Accent" => palette(),
        "Danger" => palette(),
        "Dimension" => palette(),
        "Info" => palette(),
        "Measure" => palette(),
        "Primary" => palette(),
        "Secondary" => palette(),
        "Success" => palette(),
        "Warning" => palette()
      }

  """
  @type brand_color_palette() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_bundle_export_jobs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_asset_bundle_export_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      decimal_places_configuration() :: %{
        "DecimalPlaces" => float()
      }

  """
  @type decimal_places_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_set_request() :: %{
        optional("ColumnGroups") => list(column_group()()),
        optional("ColumnLevelPermissionRules") => list(column_level_permission_rule()()),
        optional("DataSetUsageConfiguration") => data_set_usage_configuration(),
        optional("DatasetParameters") => list(dataset_parameter()()),
        optional("FieldFolders") => map(),
        optional("LogicalTableMap") => map(),
        optional("PerformanceConfiguration") => performance_configuration(),
        optional("RowLevelPermissionDataSet") => row_level_permission_data_set(),
        optional("RowLevelPermissionTagConfiguration") => row_level_permission_tag_configuration(),
        required("ImportMode") => list(any()),
        required("Name") => String.t(),
        required("PhysicalTableMap") => map()
      }

  """
  @type update_data_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_theme_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_theme_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_brand_request() :: %{}

  """
  @type delete_brand_request() :: %{}

  @typedoc """

  ## Example:

      body_section_content() :: %{
        "Layout" => section_layout_configuration()
      }

  """
  @type body_section_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pivot_table_conditional_formatting_scope() :: %{
        "Role" => list(any())
      }

  """
  @type pivot_table_conditional_formatting_scope() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_account_customization_request() :: %{
        optional("Namespace") => String.t()
      }

  """
  @type delete_account_customization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_group_response() :: %{
        "Group" => group(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type create_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_solid_color() :: %{
        "Color" => String.t(),
        "State" => list(any())
      }

  """
  @type geospatial_solid_color() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_theme_alias_request() :: %{}

  """
  @type describe_theme_alias_request() :: %{}

  @typedoc """

  ## Example:

      k_p_i_comparison_value_conditional_formatting() :: %{
        "Icon" => conditional_formatting_icon(),
        "TextColor" => conditional_formatting_color()
      }

  """
  @type k_p_i_comparison_value_conditional_formatting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      box_plot_sort_configuration() :: %{
        "CategorySort" => list(field_sort_options()()),
        "PaginationConfiguration" => pagination_configuration()
      }

  """
  @type box_plot_sort_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_folder_members_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_folder_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_cloud_formation_override_property_configuration() :: %{
        "Analyses" => list(asset_bundle_export_job_analysis_override_properties()()),
        "Dashboards" => list(asset_bundle_export_job_dashboard_override_properties()()),
        "DataSets" => list(asset_bundle_export_job_data_set_override_properties()()),
        "DataSources" => list(asset_bundle_export_job_data_source_override_properties()()),
        "Folders" => list(asset_bundle_export_job_folder_override_properties()()),
        "RefreshSchedules" => list(asset_bundle_export_job_refresh_schedule_override_properties()()),
        "ResourceIdOverrideConfiguration" => asset_bundle_export_job_resource_id_override_configuration(),
        "Themes" => list(asset_bundle_export_job_theme_override_properties()()),
        "VPCConnections" => list(asset_bundle_export_job_vpc_connection_override_properties()())
      }

  """
  @type asset_bundle_cloud_formation_override_property_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      box_plot_aggregated_field_wells() :: %{
        "GroupBy" => list(dimension_field()()),
        "Values" => list(measure_field()())
      }

  """
  @type box_plot_aggregated_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sheet_image_source() :: %{
        "SheetImageStaticFileSource" => sheet_image_static_file_source()
      }

  """
  @type sheet_image_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      capabilities() :: %{
        "AddOrRunAnomalyDetectionForAnalyses" => list(any()),
        "CreateAndUpdateDashboardEmailReports" => list(any()),
        "CreateAndUpdateDataSources" => list(any()),
        "CreateAndUpdateDatasets" => list(any()),
        "CreateAndUpdateThemes" => list(any()),
        "CreateAndUpdateThresholdAlerts" => list(any()),
        "CreateSPICEDataset" => list(any()),
        "CreateSharedFolders" => list(any()),
        "ExportToCsv" => list(any()),
        "ExportToExcel" => list(any()),
        "RenameSharedFolders" => list(any()),
        "ShareAnalyses" => list(any()),
        "ShareDashboards" => list(any()),
        "ShareDataSources" => list(any()),
        "ShareDatasets" => list(any()),
        "SubscribeDashboardEmailReports" => list(any()),
        "ViewAccountSPICECapacity" => list(any())
      }

  """
  @type capabilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      k_p_i_visual_standard_layout() :: %{
        "Type" => list(any())
      }

  """
  @type k_p_i_visual_standard_layout() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_role_membership_request() :: %{}

  """
  @type create_role_membership_request() :: %{}

  @typedoc """

  ## Example:

      layout_configuration() :: %{
        "FreeFormLayout" => free_form_layout_configuration(),
        "GridLayout" => grid_layout_configuration(),
        "SectionBasedLayout" => section_based_layout_configuration()
      }

  """
  @type layout_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_path_color() :: %{
        "Color" => String.t(),
        "Element" => data_path_value(),
        "TimeGranularity" => list(any())
      }

  """
  @type data_path_color() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_data_set_override_parameters() :: %{
        "DataSetId" => String.t(),
        "Name" => String.t()
      }

  """
  @type asset_bundle_import_job_data_set_override_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_filter() :: %{
        "CategoryFilter" => topic_category_filter(),
        "DateRangeFilter" => topic_date_range_filter(),
        "FilterClass" => list(any()),
        "FilterDescription" => String.t(),
        "FilterName" => String.t(),
        "FilterSynonyms" => list(String.t()()),
        "FilterType" => list(any()),
        "NumericEqualityFilter" => topic_numeric_equality_filter(),
        "NumericRangeFilter" => topic_numeric_range_filter(),
        "OperandFieldName" => String.t(),
        "RelativeDateFilter" => topic_relative_date_filter()
      }

  """
  @type topic_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      redshift_parameters() :: %{
        "ClusterId" => String.t(),
        "Database" => String.t(),
        "Host" => String.t(),
        "IAMParameters" => redshift_iam_parameters(),
        "IdentityCenterConfiguration" => identity_center_configuration(),
        "Port" => integer()
      }

  """
  @type redshift_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      histogram_aggregated_field_wells() :: %{
        "Values" => list(measure_field()())
      }

  """
  @type histogram_aggregated_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      predict_q_a_results_response() :: %{
        "AdditionalResults" => list(q_a_result()()),
        "PrimaryResult" => q_a_result(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type predict_q_a_results_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_folder_resolved_permissions_request() :: %{
        optional("MaxResults") => integer(),
        optional("Namespace") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type describe_folder_resolved_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_public_sharing_settings_response() :: %{
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_public_sharing_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      performance_configuration() :: %{
        "UniqueKeys" => list(unique_key()())
      }

  """
  @type performance_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scatter_plot_field_wells() :: %{
        "ScatterPlotCategoricallyAggregatedFieldWells" => scatter_plot_categorically_aggregated_field_wells(),
        "ScatterPlotUnaggregatedFieldWells" => scatter_plot_unaggregated_field_wells()
      }

  """
  @type scatter_plot_field_wells() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_source_permissions_request() :: %{
        optional("GrantPermissions") => list(resource_permission()()),
        optional("RevokePermissions") => list(resource_permission()())
      }

  """
  @type update_data_source_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic_refresh_details() :: %{
        "RefreshArn" => String.t(),
        "RefreshId" => String.t(),
        "RefreshStatus" => list(any())
      }

  """
  @type topic_refresh_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      anonymous_user_generative_qn_a_embedding_configuration() :: %{
        "InitialTopicId" => String.t()
      }

  """
  @type anonymous_user_generative_qn_a_embedding_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_values_configuration() :: %{
        "CustomValues" => custom_parameter_values(),
        "IncludeNullValue" => boolean()
      }

  """
  @type custom_values_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_quick_sight_q_search_configuration_response() :: %{
        "QSearchStatus" => list(any()),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_quick_sight_q_search_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_sort_configuration() :: %{
        "PaginationConfiguration" => pagination_configuration(),
        "RowSort" => list(field_sort_options()())
      }

  """
  @type table_sort_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_parameters() :: %{
        "ManifestFileLocation" => manifest_file_location(),
        "RoleArn" => String.t()
      }

  """
  @type s3_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_iam_policy_assignments_request() :: %{
        optional("AssignmentStatus") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_iam_policy_assignments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_bundle_import_job_data_source_override_permissions() :: %{
        "DataSourceIds" => list(String.t()()),
        "Permissions" => asset_bundle_resource_permissions()
      }

  """
  @type asset_bundle_import_job_data_source_override_permissions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_new_sheet_configuration() :: %{
        "InteractiveLayoutConfiguration" => default_interactive_layout_configuration(),
        "PaginatedLayoutConfiguration" => default_paginated_layout_configuration(),
        "SheetContentType" => list(any())
      }

  """
  @type default_new_sheet_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_account_customization_response() :: %{
        "AccountCustomization" => account_customization(),
        "Arn" => String.t(),
        "AwsAccountId" => String.t(),
        "Namespace" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type describe_account_customization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_topic_request() :: %{}

  """
  @type delete_topic_request() :: %{}

  @typedoc """

  ## Example:

      default_text_area_control_options() :: %{
        "Delimiter" => String.t(),
        "DisplayOptions" => text_area_control_display_options()
      }

  """
  @type default_text_area_control_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_quick_sight_q_search_configuration_response() :: %{
        "QSearchStatus" => list(any()),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type update_quick_sight_q_search_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_action_filter_operation() :: %{
        "SelectedFieldsConfiguration" => filter_operation_selected_fields_configuration(),
        "TargetVisualsConfiguration" => filter_operation_target_visuals_configuration()
      }

  """
  @type custom_action_filter_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      word_cloud_visual() :: %{
        "Actions" => list(visual_custom_action()()),
        "ChartConfiguration" => word_cloud_chart_configuration(),
        "ColumnHierarchies" => list(column_hierarchy()()),
        "Subtitle" => visual_subtitle_label_options(),
        "Title" => visual_title_label_options(),
        "VisualContentAltText" => String.t(),
        "VisualId" => String.t()
      }

  """
  @type word_cloud_visual() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      format_configuration() :: %{
        "DateTimeFormatConfiguration" => date_time_format_configuration(),
        "NumberFormatConfiguration" => number_format_configuration(),
        "StringFormatConfiguration" => string_format_configuration()
      }

  """
  @type format_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_brand_published_version_request() :: %{
        required("VersionId") => String.t()
      }

  """
  @type update_brand_published_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_dashboard_versions_response() :: %{
        "DashboardVersionSummaryList" => list(dashboard_version_summary()()),
        "NextToken" => String.t(),
        "RequestId" => String.t(),
        "Status" => integer()
      }

  """
  @type list_dashboard_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geospatial_map_configuration() :: %{
        "FieldWells" => geospatial_map_field_wells(),
        "Interactions" => visual_interaction_options(),
        "Legend" => legend_options(),
        "MapStyleOptions" => geospatial_map_style_options(),
        "PointStyleOptions" => geospatial_point_style_options(),
        "Tooltip" => tooltip_options(),
        "VisualPalette" => visual_palette(),
        "WindowOptions" => geospatial_window_options()
      }

  """
  @type geospatial_map_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      section_based_layout_configuration() :: %{
        "BodySections" => list(body_section_configuration()()),
        "CanvasSizeOptions" => section_based_layout_canvas_size_options(),
        "FooterSections" => list(header_footer_section_configuration()()),
        "HeaderSections" => list(header_footer_section_configuration()())
      }

  """
  @type section_based_layout_configuration() :: %{String.t() => any()}

  @type batch_create_topic_reviewed_answer_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type batch_delete_topic_reviewed_answer_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type cancel_ingestion_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type create_account_customization_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type create_account_subscription_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type create_analysis_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type create_brand_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | conflict_exception()

  @type create_custom_permissions_errors() ::
          precondition_not_met_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type create_dashboard_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type create_data_set_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type create_data_source_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | customer_managed_key_unavailable_exception()
          | internal_failure_exception()

  @type create_folder_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type create_folder_membership_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type create_group_errors() ::
          precondition_not_met_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type create_group_membership_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type create_iam_policy_assignment_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | concurrent_updating_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type create_ingestion_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type create_namespace_errors() ::
          precondition_not_met_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type create_refresh_schedule_errors() ::
          precondition_not_met_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type create_role_membership_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type create_template_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type create_template_alias_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | resource_exists_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type create_theme_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type create_theme_alias_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type create_topic_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type create_topic_refresh_schedule_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type create_vpc_connection_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type delete_account_customization_errors() ::
          precondition_not_met_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type delete_account_subscription_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type delete_analysis_errors() ::
          throttling_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type delete_brand_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_brand_assignment_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_custom_permissions_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type delete_dashboard_errors() ::
          throttling_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type delete_data_set_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type delete_data_set_refresh_properties_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type delete_data_source_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type delete_default_q_business_application_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type delete_folder_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type delete_folder_membership_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type delete_group_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type delete_group_membership_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type delete_iam_policy_assignment_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | concurrent_updating_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type delete_identity_propagation_config_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type delete_namespace_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type delete_refresh_schedule_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type delete_role_custom_permission_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type delete_role_membership_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type delete_template_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type delete_template_alias_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type delete_theme_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type delete_theme_alias_errors() ::
          throttling_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type delete_topic_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type delete_topic_refresh_schedule_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type delete_user_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type delete_user_by_principal_id_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type delete_user_custom_permission_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type delete_vpc_connection_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type describe_account_customization_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type describe_account_settings_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type describe_account_subscription_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type describe_analysis_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type describe_analysis_definition_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type describe_analysis_permissions_errors() ::
          throttling_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type describe_asset_bundle_export_job_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()

  @type describe_asset_bundle_import_job_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()

  @type describe_brand_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_brand_assignment_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_brand_published_version_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_custom_permissions_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type describe_dashboard_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type describe_dashboard_definition_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type describe_dashboard_permissions_errors() ::
          throttling_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type describe_dashboard_snapshot_job_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type describe_dashboard_snapshot_job_result_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type describe_dashboards_q_a_configuration_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type describe_data_set_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_data_set_permissions_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_data_set_refresh_properties_errors() ::
          precondition_not_met_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_data_source_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_data_source_permissions_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_default_q_business_application_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_folder_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type describe_folder_permissions_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type describe_folder_resolved_permissions_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type describe_group_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type describe_group_membership_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type describe_iam_policy_assignment_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_ingestion_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_ip_restriction_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_key_registration_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | internal_failure_exception()

  @type describe_namespace_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type describe_q_personalization_configuration_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type describe_quick_sight_q_search_configuration_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type describe_refresh_schedule_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_role_custom_permission_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type describe_template_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type describe_template_alias_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type describe_template_definition_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type describe_template_permissions_errors() ::
          throttling_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type describe_theme_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type describe_theme_alias_errors() ::
          throttling_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type describe_theme_permissions_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type describe_topic_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_topic_permissions_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_topic_refresh_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_topic_refresh_schedule_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type describe_user_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type describe_vpc_connection_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type generate_embed_url_for_anonymous_user_errors() ::
          throttling_exception()
          | access_denied_exception()
          | session_lifetime_in_minutes_invalid_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | unsupported_pricing_plan_exception()
          | internal_failure_exception()

  @type generate_embed_url_for_registered_user_errors() ::
          throttling_exception()
          | access_denied_exception()
          | session_lifetime_in_minutes_invalid_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | unsupported_pricing_plan_exception()
          | quick_sight_user_not_found_exception()
          | internal_failure_exception()

  @type generate_embed_url_for_registered_user_with_identity_errors() ::
          throttling_exception()
          | access_denied_exception()
          | session_lifetime_in_minutes_invalid_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | unsupported_pricing_plan_exception()
          | quick_sight_user_not_found_exception()
          | internal_failure_exception()

  @type get_dashboard_embed_url_errors() ::
          identity_type_not_supported_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | session_lifetime_in_minutes_invalid_exception()
          | invalid_parameter_value_exception()
          | domain_not_whitelisted_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | unsupported_pricing_plan_exception()
          | quick_sight_user_not_found_exception()
          | internal_failure_exception()

  @type get_session_embed_url_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | session_lifetime_in_minutes_invalid_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | quick_sight_user_not_found_exception()
          | internal_failure_exception()

  @type list_analyses_errors() ::
          throttling_exception()
          | invalid_next_token_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type list_asset_bundle_export_jobs_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()

  @type list_asset_bundle_import_jobs_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()

  @type list_brands_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_request_exception()

  @type list_custom_permissions_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type list_dashboard_versions_errors() ::
          throttling_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type list_dashboards_errors() ::
          throttling_exception()
          | invalid_next_token_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type list_data_sets_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | internal_failure_exception()

  @type list_data_sources_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | internal_failure_exception()

  @type list_folder_members_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type list_folders_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type list_folders_for_resource_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type list_group_memberships_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type list_groups_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type list_iam_policy_assignments_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_iam_policy_assignments_for_user_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | concurrent_updating_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_identity_propagation_configs_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_ingestions_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_namespaces_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type list_refresh_schedules_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_role_memberships_errors() ::
          precondition_not_met_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_template_aliases_errors() ::
          throttling_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type list_template_versions_errors() ::
          throttling_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type list_templates_errors() ::
          throttling_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type list_theme_aliases_errors() ::
          throttling_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type list_theme_versions_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type list_themes_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type list_topic_refresh_schedules_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type list_topic_reviewed_answers_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_topics_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | internal_failure_exception()

  @type list_user_groups_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type list_users_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type list_vpc_connections_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type predict_q_a_results_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | internal_failure_exception()

  @type put_data_set_refresh_properties_errors() ::
          precondition_not_met_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type register_user_errors() ::
          precondition_not_met_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type restore_analysis_errors() ::
          precondition_not_met_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type search_analyses_errors() ::
          throttling_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type search_dashboards_errors() ::
          throttling_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type search_data_sets_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type search_data_sources_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type search_folders_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type search_groups_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type search_topics_errors() ::
          throttling_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type start_asset_bundle_export_job_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()

  @type start_asset_bundle_import_job_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()

  @type start_dashboard_snapshot_job_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | unsupported_pricing_plan_exception()
          | internal_failure_exception()

  @type start_dashboard_snapshot_job_schedule_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type tag_resource_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_account_customization_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type update_account_settings_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type update_analysis_errors() ::
          throttling_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type update_analysis_permissions_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type update_application_with_token_exchange_grant_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_brand_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_brand_assignment_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_brand_published_version_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_custom_permissions_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type update_dashboard_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type update_dashboard_links_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type update_dashboard_permissions_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type update_dashboard_published_version_errors() ::
          throttling_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type update_dashboards_q_a_configuration_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type update_data_set_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type update_data_set_permissions_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type update_data_source_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | customer_managed_key_unavailable_exception()
          | internal_failure_exception()

  @type update_data_source_permissions_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type update_default_q_business_application_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type update_folder_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type update_folder_permissions_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type update_group_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type update_iam_policy_assignment_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | concurrent_updating_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_identity_propagation_config_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_ip_restriction_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_key_registration_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | internal_failure_exception()

  @type update_public_sharing_settings_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | unsupported_pricing_plan_exception()
          | internal_failure_exception()

  @type update_q_personalization_configuration_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type update_quick_sight_q_search_configuration_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type update_refresh_schedule_errors() ::
          precondition_not_met_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_role_custom_permission_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type update_s_p_i_c_e_capacity_configuration_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_template_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type update_template_alias_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type update_template_permissions_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type update_theme_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type update_theme_alias_errors() ::
          throttling_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type update_theme_permissions_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type update_topic_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type update_topic_permissions_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  @type update_topic_refresh_schedule_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type update_user_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type update_user_custom_permission_errors() ::
          precondition_not_met_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | resource_unavailable_exception()
          | internal_failure_exception()

  @type update_vpc_connection_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_user_edition_exception()
          | internal_failure_exception()

  def metadata do
    %{
      api_version: "2018-04-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "quicksight",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "QuickSight",
      signature_version: "v4",
      signing_name: "quicksight",
      target_prefix: nil
    }
  end

  @doc """
  Creates new reviewed answers for a Q Topic.
  """
  @spec batch_create_topic_reviewed_answer(
          map(),
          String.t(),
          String.t(),
          batch_create_topic_reviewed_answer_request(),
          list()
        ) ::
          {:ok, batch_create_topic_reviewed_answer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_create_topic_reviewed_answer_errors()}
  def batch_create_topic_reviewed_answer(
        %Client{} = client,
        aws_account_id,
        topic_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}/batch-create-reviewed-answers"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes reviewed answers for Q Topic.
  """
  @spec batch_delete_topic_reviewed_answer(
          map(),
          String.t(),
          String.t(),
          batch_delete_topic_reviewed_answer_request(),
          list()
        ) ::
          {:ok, batch_delete_topic_reviewed_answer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_topic_reviewed_answer_errors()}
  def batch_delete_topic_reviewed_answer(
        %Client{} = client,
        aws_account_id,
        topic_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}/batch-delete-reviewed-answers"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Cancels an ongoing ingestion of data into SPICE.
  """
  @spec cancel_ingestion(
          map(),
          String.t(),
          String.t(),
          String.t(),
          cancel_ingestion_request(),
          list()
        ) ::
          {:ok, cancel_ingestion_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_ingestion_errors()}
  def cancel_ingestion(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        ingestion_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/ingestions/#{AWS.Util.encode_uri(ingestion_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates Amazon QuickSight customizations for the current Amazon Web Services
  Region.

  Currently, you can add a custom default theme by using the
  `CreateAccountCustomization` or `UpdateAccountCustomization`
  API operation. To further customize Amazon QuickSight by removing Amazon
  QuickSight
  sample assets and videos for all new users, see [Customizing Amazon QuickSight](https://docs.aws.amazon.com/quicksight/latest/user/customizing-quicksight.html)
  in the *Amazon QuickSight User Guide.*

  You can create customizations for your Amazon Web Services account or, if you
  specify a namespace, for
  a QuickSight namespace instead. Customizations that apply to a namespace always
  override
  customizations that apply to an Amazon Web Services account. To find out which
  customizations apply, use
  the `DescribeAccountCustomization` API operation.

  Before you use the `CreateAccountCustomization` API operation to add a theme
  as the namespace default, make sure that you first share the theme with the
  namespace.
  If you don't share it with the namespace, the theme isn't visible to your users
  even if you make it the default theme.
  To check if the theme is shared, view the current permissions by using the

  ```

  [DescribeThemePermissions](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeThemePermissions.html)   ```

  API operation.
  To share the theme, grant permissions by using the

  ```

  [UpdateThemePermissions](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_UpdateThemePermissions.html)

  ```

  API operation.
  """
  @spec create_account_customization(
          map(),
          String.t(),
          create_account_customization_request(),
          list()
        ) ::
          {:ok, create_account_customization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_account_customization_errors()}
  def create_account_customization(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/customizations"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Namespace", "namespace"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an Amazon QuickSight account, or subscribes to Amazon QuickSight Q.

  The Amazon Web Services Region for the account is derived from what is
  configured in the
  CLI or SDK.

  Before you use this operation, make sure that you can connect to an existing
  Amazon Web Services account. If you don't have an Amazon Web Services account,
  see [Sign up for Amazon Web
  Services](https://docs.aws.amazon.com/quicksight/latest/user/setting-up-aws-sign-up.html)
  in the *Amazon QuickSight User
  Guide*. The person who signs up for Amazon QuickSight needs to have the
  correct Identity and Access Management (IAM) permissions. For more information,
  see [IAM Policy Examples for Amazon QuickSight](https://docs.aws.amazon.com/quicksight/latest/user/iam-policy-examples.html)
  in the
  *Amazon QuickSight User Guide*.

  If your IAM policy includes both the `Subscribe` and
  `CreateAccountSubscription` actions, make sure that both actions are set
  to `Allow`. If either action is set to `Deny`, the
  `Deny` action prevails and your API call fails.

  You can't pass an existing IAM role to access other Amazon Web Services services
  using this API operation. To pass your existing IAM role to
  Amazon QuickSight, see [Passing IAM roles to Amazon QuickSight](https://docs.aws.amazon.com/quicksight/latest/user/security_iam_service-with-iam.html#security-create-iam-role)
  in the
  *Amazon QuickSight User Guide*.

  You can't set default resource access on the new account from the Amazon
  QuickSight
  API. Instead, add default resource access from the Amazon QuickSight console.
  For more
  information about setting default resource access to Amazon Web Services
  services, see
  [Setting default resource access to Amazon Web Services
  services](https://docs.aws.amazon.com/quicksight/latest/user/scoping-policies-defaults.html)
  in the *Amazon QuickSight
  User Guide*.
  """
  @spec create_account_subscription(
          map(),
          String.t(),
          create_account_subscription_request(),
          list()
        ) ::
          {:ok, create_account_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_account_subscription_errors()}
  def create_account_subscription(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/account/#{AWS.Util.encode_uri(aws_account_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an analysis in Amazon QuickSight.

  Analyses can be created either from a template or from an `AnalysisDefinition`.
  """
  @spec create_analysis(map(), String.t(), String.t(), create_analysis_request(), list()) ::
          {:ok, create_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_analysis_errors()}
  def create_analysis(%Client{} = client, analysis_id, aws_account_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/analyses/#{AWS.Util.encode_uri(analysis_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an Amazon QuickSight brand.
  """
  @spec create_brand(map(), String.t(), String.t(), create_brand_request(), list()) ::
          {:ok, create_brand_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_brand_errors()}
  def create_brand(%Client{} = client, aws_account_id, brand_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/brands/#{AWS.Util.encode_uri(brand_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a custom permissions profile.
  """
  @spec create_custom_permissions(map(), String.t(), create_custom_permissions_request(), list()) ::
          {:ok, create_custom_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_custom_permissions_errors()}
  def create_custom_permissions(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/custom-permissions"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a dashboard from either a template or directly with a
  `DashboardDefinition`.

  To first create a template, see the

  ```

  [CreateTemplate](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CreateTemplate.html)

  ```

  API operation.

  A dashboard is an entity in Amazon QuickSight that identifies Amazon QuickSight
  reports, created
  from analyses. You can share Amazon QuickSight dashboards. With the right
  permissions, you can
  create scheduled email reports from them. If you have the correct permissions,
  you can
  create a dashboard from a template that exists in a different Amazon Web
  Services account.
  """
  @spec create_dashboard(map(), String.t(), String.t(), create_dashboard_request(), list()) ::
          {:ok, create_dashboard_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_dashboard_errors()}
  def create_dashboard(%Client{} = client, aws_account_id, dashboard_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a dataset.

  This operation doesn't support datasets that include uploaded files as a source.
  """
  @spec create_data_set(map(), String.t(), create_data_set_request(), list()) ::
          {:ok, create_data_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_set_errors()}
  def create_data_set(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a data source.
  """
  @spec create_data_source(map(), String.t(), create_data_source_request(), list()) ::
          {:ok, create_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_source_errors()}
  def create_data_source(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sources"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an empty shared folder.
  """
  @spec create_folder(map(), String.t(), String.t(), create_folder_request(), list()) ::
          {:ok, create_folder_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_folder_errors()}
  def create_folder(%Client{} = client, aws_account_id, folder_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders/#{AWS.Util.encode_uri(folder_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds an asset, such as a dashboard, analysis, or dataset into a folder.
  """
  @spec create_folder_membership(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          create_folder_membership_request(),
          list()
        ) ::
          {:ok, create_folder_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_folder_membership_errors()}
  def create_folder_membership(
        %Client{} = client,
        aws_account_id,
        folder_id,
        member_id,
        member_type,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders/#{AWS.Util.encode_uri(folder_id)}/members/#{AWS.Util.encode_uri(member_type)}/#{AWS.Util.encode_uri(member_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Use the `CreateGroup` operation to create a group in Amazon QuickSight.

  You can create up to 10,000 groups in a namespace. If you want to create more
  than 10,000 groups in a namespace, contact Amazon Web Services Support.

  The permissions resource is

  ```
  arn:aws:quicksight::## :group/default/

  ```

  .

  The response is a group object.
  """
  @spec create_group(map(), String.t(), String.t(), create_group_request(), list()) ::
          {:ok, create_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_group_errors()}
  def create_group(%Client{} = client, aws_account_id, namespace, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/groups"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds an Amazon QuickSight user to an Amazon QuickSight group.
  """
  @spec create_group_membership(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          create_group_membership_request(),
          list()
        ) ::
          {:ok, create_group_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_group_membership_errors()}
  def create_group_membership(
        %Client{} = client,
        aws_account_id,
        group_name,
        member_name,
        namespace,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/groups/#{AWS.Util.encode_uri(group_name)}/members/#{AWS.Util.encode_uri(member_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an assignment with one specified IAM policy, identified by its
  Amazon Resource Name (ARN).

  This policy assignment is attached to the specified groups
  or users of Amazon QuickSight. Assignment names are unique per Amazon Web
  Services
  account. To avoid overwriting rules in other namespaces, use assignment names
  that are
  unique.
  """
  @spec create_iam_policy_assignment(
          map(),
          String.t(),
          String.t(),
          create_iam_policy_assignment_request(),
          list()
        ) ::
          {:ok, create_iam_policy_assignment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_iam_policy_assignment_errors()}
  def create_iam_policy_assignment(
        %Client{} = client,
        aws_account_id,
        namespace,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/iam-policy-assignments"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates and starts a new SPICE ingestion for a dataset.

  You can manually refresh datasets in
  an Enterprise edition account 32 times in a 24-hour period. You can manually
  refresh
  datasets in a Standard edition account 8 times in a 24-hour period. Each 24-hour
  period
  is measured starting 24 hours before the current date and time.

  Any ingestions operating on tagged datasets inherit the same tags automatically
  for use in
  access control. For an example, see [How do I create an IAM policy to control access to Amazon EC2 resources using
  tags?](http://aws.amazon.com/premiumsupport/knowledge-center/iam-ec2-resource-tags/)
  in the Amazon Web Services Knowledge Center. Tags are visible on the tagged
  dataset, but not on the ingestion resource.
  """
  @spec create_ingestion(
          map(),
          String.t(),
          String.t(),
          String.t(),
          create_ingestion_request(),
          list()
        ) ::
          {:ok, create_ingestion_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_ingestion_errors()}
  def create_ingestion(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        ingestion_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/ingestions/#{AWS.Util.encode_uri(ingestion_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  (Enterprise edition only) Creates a new namespace for you to use with Amazon
  QuickSight.

  A namespace allows you to isolate the Amazon QuickSight users and groups that
  are registered
  for that namespace. Users that access the namespace can share assets only with
  other
  users or groups in the same namespace. They can't see users and groups in other
  namespaces. You can create a namespace after your Amazon Web Services account is
  subscribed to
  Amazon QuickSight. The namespace must be unique within the Amazon Web Services
  account. By default, there is a
  limit of 100 namespaces per Amazon Web Services account. To increase your limit,
  create a ticket with
  Amazon Web Services Support.
  """
  @spec create_namespace(map(), String.t(), create_namespace_request(), list()) ::
          {:ok, create_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_namespace_errors()}
  def create_namespace(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a refresh schedule for a dataset.

  You can create up to 5 different schedules for a single dataset.
  """
  @spec create_refresh_schedule(
          map(),
          String.t(),
          String.t(),
          create_refresh_schedule_request(),
          list()
        ) ::
          {:ok, create_refresh_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_refresh_schedule_errors()}
  def create_refresh_schedule(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/refresh-schedules"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Use `CreateRoleMembership` to add an existing Amazon QuickSight group to an
  existing role.
  """
  @spec create_role_membership(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          create_role_membership_request(),
          list()
        ) ::
          {:ok, create_role_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_role_membership_errors()}
  def create_role_membership(
        %Client{} = client,
        aws_account_id,
        member_name,
        namespace,
        role,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/roles/#{AWS.Util.encode_uri(role)}/members/#{AWS.Util.encode_uri(member_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a template either from a `TemplateDefinition` or from an existing Amazon
  QuickSight analysis or template.

  You can use the resulting
  template to create additional dashboards, templates, or analyses.

  A *template* is an entity in Amazon QuickSight that encapsulates the metadata
  required to create an analysis and that you can use to create s dashboard. A
  template adds
  a layer of abstraction by using placeholders to replace the dataset associated
  with the
  analysis. You can use templates to create dashboards by replacing dataset
  placeholders
  with datasets that follow the same schema that was used to create the source
  analysis
  and template.
  """
  @spec create_template(map(), String.t(), String.t(), create_template_request(), list()) ::
          {:ok, create_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_template_errors()}
  def create_template(%Client{} = client, aws_account_id, template_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a template alias for a template.
  """
  @spec create_template_alias(
          map(),
          String.t(),
          String.t(),
          String.t(),
          create_template_alias_request(),
          list()
        ) ::
          {:ok, create_template_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_template_alias_errors()}
  def create_template_alias(
        %Client{} = client,
        alias_name,
        aws_account_id,
        template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}/aliases/#{AWS.Util.encode_uri(alias_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a theme.

  A *theme* is set of configuration options for color and layout.
  Themes apply to analyses and dashboards. For more information, see [Using Themes in Amazon
  QuickSight](https://docs.aws.amazon.com/quicksight/latest/user/themes-in-quicksight.html)
  in the *Amazon QuickSight User Guide*.
  """
  @spec create_theme(map(), String.t(), String.t(), create_theme_request(), list()) ::
          {:ok, create_theme_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_theme_errors()}
  def create_theme(%Client{} = client, aws_account_id, theme_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a theme alias for a theme.
  """
  @spec create_theme_alias(
          map(),
          String.t(),
          String.t(),
          String.t(),
          create_theme_alias_request(),
          list()
        ) ::
          {:ok, create_theme_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_theme_alias_errors()}
  def create_theme_alias(
        %Client{} = client,
        alias_name,
        aws_account_id,
        theme_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}/aliases/#{AWS.Util.encode_uri(alias_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new Q topic.
  """
  @spec create_topic(map(), String.t(), create_topic_request(), list()) ::
          {:ok, create_topic_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_topic_errors()}
  def create_topic(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a topic refresh schedule.
  """
  @spec create_topic_refresh_schedule(
          map(),
          String.t(),
          String.t(),
          create_topic_refresh_schedule_request(),
          list()
        ) ::
          {:ok, create_topic_refresh_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_topic_refresh_schedule_errors()}
  def create_topic_refresh_schedule(
        %Client{} = client,
        aws_account_id,
        topic_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}/schedules"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new VPC connection.
  """
  @spec create_vpc_connection(map(), String.t(), create_vpc_connection_request(), list()) ::
          {:ok, create_vpc_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_vpc_connection_errors()}
  def create_vpc_connection(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/vpc-connections"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes all Amazon QuickSight customizations in this Amazon Web Services Region
  for the specified
  Amazon Web Services account and Amazon QuickSight namespace.
  """
  @spec delete_account_customization(
          map(),
          String.t(),
          delete_account_customization_request(),
          list()
        ) ::
          {:ok, delete_account_customization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_account_customization_errors()}
  def delete_account_customization(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/customizations"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Namespace", "namespace"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Use the `DeleteAccountSubscription` operation to delete an Amazon QuickSight
  account.

  This operation will result in an error message if you have configured your
  account termination protection settings to `True`. To change this setting and
  delete your account, call the `UpdateAccountSettings` API and set the value of
  the `TerminationProtectionEnabled` parameter to `False`, then make another call
  to the `DeleteAccountSubscription` API.
  """
  @spec delete_account_subscription(
          map(),
          String.t(),
          delete_account_subscription_request(),
          list()
        ) ::
          {:ok, delete_account_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_account_subscription_errors()}
  def delete_account_subscription(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/account/#{AWS.Util.encode_uri(aws_account_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes an analysis from Amazon QuickSight.

  You can optionally include a recovery window during
  which you can restore the analysis. If you don't specify a recovery window
  value, the
  operation defaults to 30 days. Amazon QuickSight attaches a `DeletionTime` stamp
  to
  the response that specifies the end of the recovery window. At the end of the
  recovery
  window, Amazon QuickSight deletes the analysis permanently.

  At any time before recovery window ends, you can use the `RestoreAnalysis`
  API operation to remove the `DeletionTime` stamp and cancel the deletion of
  the analysis. The analysis remains visible in the API until it's deleted, so you
  can
  describe it but you can't make a template from it.

  An analysis that's scheduled for deletion isn't accessible in the Amazon
  QuickSight console.
  To access it in the console, restore it. Deleting an analysis doesn't delete the
  dashboards that you publish from it.
  """
  @spec delete_analysis(map(), String.t(), String.t(), delete_analysis_request(), list()) ::
          {:ok, delete_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_analysis_errors()}
  def delete_analysis(%Client{} = client, analysis_id, aws_account_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/analyses/#{AWS.Util.encode_uri(analysis_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"ForceDeleteWithoutRecovery", "force-delete-without-recovery"},
        {"RecoveryWindowInDays", "recovery-window-in-days"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes an Amazon QuickSight brand.
  """
  @spec delete_brand(map(), String.t(), String.t(), delete_brand_request(), list()) ::
          {:ok, delete_brand_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_brand_errors()}
  def delete_brand(%Client{} = client, aws_account_id, brand_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/brands/#{AWS.Util.encode_uri(brand_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a brand assignment.
  """
  @spec delete_brand_assignment(map(), String.t(), delete_brand_assignment_request(), list()) ::
          {:ok, delete_brand_assignment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_brand_assignment_errors()}
  def delete_brand_assignment(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/brandassignments"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a custom permissions profile.
  """
  @spec delete_custom_permissions(
          map(),
          String.t(),
          String.t(),
          delete_custom_permissions_request(),
          list()
        ) ::
          {:ok, delete_custom_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_custom_permissions_errors()}
  def delete_custom_permissions(
        %Client{} = client,
        aws_account_id,
        custom_permissions_name,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/custom-permissions/#{AWS.Util.encode_uri(custom_permissions_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a dashboard.
  """
  @spec delete_dashboard(map(), String.t(), String.t(), delete_dashboard_request(), list()) ::
          {:ok, delete_dashboard_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_dashboard_errors()}
  def delete_dashboard(%Client{} = client, aws_account_id, dashboard_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"VersionNumber", "version-number"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a dataset.
  """
  @spec delete_data_set(map(), String.t(), String.t(), delete_data_set_request(), list()) ::
          {:ok, delete_data_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_data_set_errors()}
  def delete_data_set(%Client{} = client, aws_account_id, data_set_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the dataset refresh properties of the dataset.
  """
  @spec delete_data_set_refresh_properties(
          map(),
          String.t(),
          String.t(),
          delete_data_set_refresh_properties_request(),
          list()
        ) ::
          {:ok, delete_data_set_refresh_properties_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_data_set_refresh_properties_errors()}
  def delete_data_set_refresh_properties(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/refresh-properties"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the data source permanently.

  This operation breaks
  all the datasets that reference the deleted data source.
  """
  @spec delete_data_source(map(), String.t(), String.t(), delete_data_source_request(), list()) ::
          {:ok, delete_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_data_source_errors()}
  def delete_data_source(%Client{} = client, aws_account_id, data_source_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sources/#{AWS.Util.encode_uri(data_source_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a linked Amazon Q Business application from an Amazon QuickSight account
  """
  @spec delete_default_q_business_application(
          map(),
          String.t(),
          delete_default_q_business_application_request(),
          list()
        ) ::
          {:ok, delete_default_q_business_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_default_q_business_application_errors()}
  def delete_default_q_business_application(
        %Client{} = client,
        aws_account_id,
        input,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/default-qbusiness-application"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Namespace", "namespace"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes an empty folder.
  """
  @spec delete_folder(map(), String.t(), String.t(), delete_folder_request(), list()) ::
          {:ok, delete_folder_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_folder_errors()}
  def delete_folder(%Client{} = client, aws_account_id, folder_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders/#{AWS.Util.encode_uri(folder_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes an asset, such as a dashboard, analysis, or dataset, from a folder.
  """
  @spec delete_folder_membership(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          delete_folder_membership_request(),
          list()
        ) ::
          {:ok, delete_folder_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_folder_membership_errors()}
  def delete_folder_membership(
        %Client{} = client,
        aws_account_id,
        folder_id,
        member_id,
        member_type,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders/#{AWS.Util.encode_uri(folder_id)}/members/#{AWS.Util.encode_uri(member_type)}/#{AWS.Util.encode_uri(member_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes a user group from Amazon QuickSight.
  """
  @spec delete_group(map(), String.t(), String.t(), String.t(), delete_group_request(), list()) ::
          {:ok, delete_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_group_errors()}
  def delete_group(
        %Client{} = client,
        aws_account_id,
        group_name,
        namespace,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/groups/#{AWS.Util.encode_uri(group_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes a user from a group so that the user is no longer a member of the group.
  """
  @spec delete_group_membership(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          delete_group_membership_request(),
          list()
        ) ::
          {:ok, delete_group_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_group_membership_errors()}
  def delete_group_membership(
        %Client{} = client,
        aws_account_id,
        group_name,
        member_name,
        namespace,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/groups/#{AWS.Util.encode_uri(group_name)}/members/#{AWS.Util.encode_uri(member_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes an existing IAM policy assignment.
  """
  @spec delete_iam_policy_assignment(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_iam_policy_assignment_request(),
          list()
        ) ::
          {:ok, delete_iam_policy_assignment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_iam_policy_assignment_errors()}
  def delete_iam_policy_assignment(
        %Client{} = client,
        assignment_name,
        aws_account_id,
        namespace,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespace/#{AWS.Util.encode_uri(namespace)}/iam-policy-assignments/#{AWS.Util.encode_uri(assignment_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes all access scopes and authorized targets that are associated with a
  service from the Amazon QuickSight IAM Identity Center application.

  This operation is only supported for Amazon QuickSight accounts that use IAM
  Identity Center.
  """
  @spec delete_identity_propagation_config(
          map(),
          String.t(),
          String.t(),
          delete_identity_propagation_config_request(),
          list()
        ) ::
          {:ok, delete_identity_propagation_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_identity_propagation_config_errors()}
  def delete_identity_propagation_config(
        %Client{} = client,
        aws_account_id,
        service,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/identity-propagation-config/#{AWS.Util.encode_uri(service)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a namespace and the users and groups that are associated with the
  namespace.

  This is an asynchronous process. Assets including dashboards, analyses, datasets
  and data sources are not
  deleted. To delete these assets, you use the API operations for the relevant
  asset.
  """
  @spec delete_namespace(map(), String.t(), String.t(), delete_namespace_request(), list()) ::
          {:ok, delete_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_namespace_errors()}
  def delete_namespace(%Client{} = client, aws_account_id, namespace, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a refresh schedule from a dataset.
  """
  @spec delete_refresh_schedule(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_refresh_schedule_request(),
          list()
        ) ::
          {:ok, delete_refresh_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_refresh_schedule_errors()}
  def delete_refresh_schedule(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        schedule_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/refresh-schedules/#{AWS.Util.encode_uri(schedule_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes custom permissions from the role.
  """
  @spec delete_role_custom_permission(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_role_custom_permission_request(),
          list()
        ) ::
          {:ok, delete_role_custom_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_role_custom_permission_errors()}
  def delete_role_custom_permission(
        %Client{} = client,
        aws_account_id,
        namespace,
        role,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/roles/#{AWS.Util.encode_uri(role)}/custom-permission"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes a group from a role.
  """
  @spec delete_role_membership(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          delete_role_membership_request(),
          list()
        ) ::
          {:ok, delete_role_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_role_membership_errors()}
  def delete_role_membership(
        %Client{} = client,
        aws_account_id,
        member_name,
        namespace,
        role,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/roles/#{AWS.Util.encode_uri(role)}/members/#{AWS.Util.encode_uri(member_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a template.
  """
  @spec delete_template(map(), String.t(), String.t(), delete_template_request(), list()) ::
          {:ok, delete_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_template_errors()}
  def delete_template(%Client{} = client, aws_account_id, template_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"VersionNumber", "version-number"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the item that the specified template alias points to.

  If you provide a specific
  alias, you delete the version of the template that the alias points to.
  """
  @spec delete_template_alias(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_template_alias_request(),
          list()
        ) ::
          {:ok, delete_template_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_template_alias_errors()}
  def delete_template_alias(
        %Client{} = client,
        alias_name,
        aws_account_id,
        template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}/aliases/#{AWS.Util.encode_uri(alias_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a theme.
  """
  @spec delete_theme(map(), String.t(), String.t(), delete_theme_request(), list()) ::
          {:ok, delete_theme_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_theme_errors()}
  def delete_theme(%Client{} = client, aws_account_id, theme_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"VersionNumber", "version-number"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the version of the theme that the specified theme alias points to.

  If you provide a specific alias, you delete the version of the theme
  that the alias points to.
  """
  @spec delete_theme_alias(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_theme_alias_request(),
          list()
        ) ::
          {:ok, delete_theme_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_theme_alias_errors()}
  def delete_theme_alias(
        %Client{} = client,
        alias_name,
        aws_account_id,
        theme_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}/aliases/#{AWS.Util.encode_uri(alias_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a topic.
  """
  @spec delete_topic(map(), String.t(), String.t(), delete_topic_request(), list()) ::
          {:ok, delete_topic_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_topic_errors()}
  def delete_topic(%Client{} = client, aws_account_id, topic_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a topic refresh schedule.
  """
  @spec delete_topic_refresh_schedule(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_topic_refresh_schedule_request(),
          list()
        ) ::
          {:ok, delete_topic_refresh_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_topic_refresh_schedule_errors()}
  def delete_topic_refresh_schedule(
        %Client{} = client,
        aws_account_id,
        dataset_id,
        topic_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}/schedules/#{AWS.Util.encode_uri(dataset_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the Amazon QuickSight user that is associated with the identity of the
  IAM user or role that's making the call.

  The IAM user
  isn't deleted as a result of this call.
  """
  @spec delete_user(map(), String.t(), String.t(), String.t(), delete_user_request(), list()) ::
          {:ok, delete_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_errors()}
  def delete_user(%Client{} = client, aws_account_id, namespace, user_name, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/users/#{AWS.Util.encode_uri(user_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a user identified by its principal ID.
  """
  @spec delete_user_by_principal_id(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_user_by_principal_id_request(),
          list()
        ) ::
          {:ok, delete_user_by_principal_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_by_principal_id_errors()}
  def delete_user_by_principal_id(
        %Client{} = client,
        aws_account_id,
        namespace,
        principal_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/user-principals/#{AWS.Util.encode_uri(principal_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a custom permissions profile from a user.
  """
  @spec delete_user_custom_permission(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_user_custom_permission_request(),
          list()
        ) ::
          {:ok, delete_user_custom_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_custom_permission_errors()}
  def delete_user_custom_permission(
        %Client{} = client,
        aws_account_id,
        namespace,
        user_name,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/users/#{AWS.Util.encode_uri(user_name)}/custom-permission"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a VPC connection.
  """
  @spec delete_vpc_connection(
          map(),
          String.t(),
          String.t(),
          delete_vpc_connection_request(),
          list()
        ) ::
          {:ok, delete_vpc_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_vpc_connection_errors()}
  def delete_vpc_connection(
        %Client{} = client,
        aws_account_id,
        vpc_connection_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/vpc-connections/#{AWS.Util.encode_uri(vpc_connection_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Describes the customizations associated with the provided Amazon Web Services
  account and Amazon
  Amazon QuickSight namespace in an Amazon Web Services Region.

  The Amazon QuickSight console evaluates which
  customizations to apply by running this API operation with the `Resolved` flag
  included.

  To determine what customizations display when you run this command, it can help
  to
  visualize the relationship of the entities involved.

    *

  `Amazon Web Services account` - The Amazon Web Services account exists at the
  top of the hierarchy.
  It has the potential to use all of the Amazon Web Services Regions and Amazon
  Web Services Services. When you
  subscribe to Amazon QuickSight, you choose one Amazon Web Services Region to use
  as your home Region.
  That's where your free SPICE capacity is located. You can use Amazon QuickSight
  in any
  supported Amazon Web Services Region.

    *

  `Amazon Web Services Region` - In each Amazon Web Services Region where you sign
  in to Amazon QuickSight
  at least once, Amazon QuickSight acts as a separate instance of the same
  service. If
  you have a user directory, it resides in us-east-1, which is the US East (N.
  Virginia). Generally speaking, these users have access to Amazon QuickSight in
  any
  Amazon Web Services Region, unless they are constrained to a namespace.

  To run the command in a different Amazon Web Services Region, you change your
  Region settings.
  If you're using the CLI, you can use one of the following options:

      *
  Use [command line options](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-options.html).

      *
  Use [named profiles](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html).

      *
  Run `aws configure` to change your default Amazon Web Services Region. Use
  Enter to key the same settings for your keys. For more information, see
  [Configuring the CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html).

    *

  `Namespace` - A QuickSight namespace is a partition that contains
  users and assets (data sources, datasets, dashboards, and so on). To access
  assets that are in a specific namespace, users and groups must also be part of
  the same namespace. People who share a namespace are completely isolated from
  users and assets in other namespaces, even if they are in the same Amazon Web
  Services account
  and Amazon Web Services Region.

    *

  `Applied customizations` - Within an Amazon Web Services Region, a set of
  Amazon QuickSight customizations can apply to an Amazon Web Services account or
  to a namespace.
  Settings that you apply to a namespace override settings that you apply to an
  Amazon Web Services account. All settings are isolated to a single Amazon Web
  Services Region. To apply them in
  other Amazon Web Services Regions, run the `CreateAccountCustomization` command
  in
  each Amazon Web Services Region where you want to apply the same customizations.
  """
  @spec describe_account_customization(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, describe_account_customization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_account_customization_errors()}
  def describe_account_customization(
        %Client{} = client,
        aws_account_id,
        namespace \\ nil,
        resolved \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/customizations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resolved) do
        [{"resolved", resolved} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(namespace) do
        [{"namespace", namespace} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the settings that were used when your Amazon QuickSight subscription
  was first
  created in this Amazon Web Services account.
  """
  @spec describe_account_settings(map(), String.t(), list()) ::
          {:ok, describe_account_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_account_settings_errors()}
  def describe_account_settings(%Client{} = client, aws_account_id, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Use the DescribeAccountSubscription operation to receive a description of an
  Amazon QuickSight account's subscription.

  A successful API call returns an `AccountInfo` object that includes an account's
  name, subscription status, authentication type, edition, and notification email
  address.
  """
  @spec describe_account_subscription(map(), String.t(), list()) ::
          {:ok, describe_account_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_account_subscription_errors()}
  def describe_account_subscription(%Client{} = client, aws_account_id, options \\ []) do
    url_path = "/account/#{AWS.Util.encode_uri(aws_account_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides a summary of the metadata for an analysis.
  """
  @spec describe_analysis(map(), String.t(), String.t(), list()) ::
          {:ok, describe_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_analysis_errors()}
  def describe_analysis(%Client{} = client, analysis_id, aws_account_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/analyses/#{AWS.Util.encode_uri(analysis_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides a detailed description of the definition of an analysis.

  If you do not need to know details about the content of an Analysis, for
  instance if you
  are trying to check the status of a recently created or updated Analysis, use
  the
  [
  `DescribeAnalysis`
  ](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeAnalysis.html)
  instead.
  """
  @spec describe_analysis_definition(map(), String.t(), String.t(), list()) ::
          {:ok, describe_analysis_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_analysis_definition_errors()}
  def describe_analysis_definition(%Client{} = client, analysis_id, aws_account_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/analyses/#{AWS.Util.encode_uri(analysis_id)}/definition"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides the read and write permissions for an analysis.
  """
  @spec describe_analysis_permissions(map(), String.t(), String.t(), list()) ::
          {:ok, describe_analysis_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_analysis_permissions_errors()}
  def describe_analysis_permissions(
        %Client{} = client,
        analysis_id,
        aws_account_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/analyses/#{AWS.Util.encode_uri(analysis_id)}/permissions"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an existing export job.

  Poll job descriptions after a job starts to know the status of the job. When a
  job succeeds, a URL is provided to download the exported assets' data from.
  Download URLs are valid for five minutes after they are generated. You can call
  the `DescribeAssetBundleExportJob` API for a new download URL as needed.

  Job descriptions are available for 14 days after the job starts.
  """
  @spec describe_asset_bundle_export_job(map(), String.t(), String.t(), list()) ::
          {:ok, describe_asset_bundle_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_asset_bundle_export_job_errors()}
  def describe_asset_bundle_export_job(
        %Client{} = client,
        asset_bundle_export_job_id,
        aws_account_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/asset-bundle-export-jobs/#{AWS.Util.encode_uri(asset_bundle_export_job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an existing import job.

  Poll job descriptions after starting a job to know when it has succeeded or
  failed. Job descriptions are available for 14 days after job starts.
  """
  @spec describe_asset_bundle_import_job(map(), String.t(), String.t(), list()) ::
          {:ok, describe_asset_bundle_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_asset_bundle_import_job_errors()}
  def describe_asset_bundle_import_job(
        %Client{} = client,
        asset_bundle_import_job_id,
        aws_account_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/asset-bundle-import-jobs/#{AWS.Util.encode_uri(asset_bundle_import_job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a brand.
  """
  @spec describe_brand(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_brand_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_brand_errors()}
  def describe_brand(
        %Client{} = client,
        aws_account_id,
        brand_id,
        version_id \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/brands/#{AWS.Util.encode_uri(brand_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(version_id) do
        [{"versionId", version_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a brand assignment.
  """
  @spec describe_brand_assignment(map(), String.t(), list()) ::
          {:ok, describe_brand_assignment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_brand_assignment_errors()}
  def describe_brand_assignment(%Client{} = client, aws_account_id, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/brandassignments"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the published version of the brand.
  """
  @spec describe_brand_published_version(map(), String.t(), String.t(), list()) ::
          {:ok, describe_brand_published_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_brand_published_version_errors()}
  def describe_brand_published_version(
        %Client{} = client,
        aws_account_id,
        brand_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/brands/#{AWS.Util.encode_uri(brand_id)}/publishedversion"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a custom permissions profile.
  """
  @spec describe_custom_permissions(map(), String.t(), String.t(), list()) ::
          {:ok, describe_custom_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_custom_permissions_errors()}
  def describe_custom_permissions(
        %Client{} = client,
        aws_account_id,
        custom_permissions_name,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/custom-permissions/#{AWS.Util.encode_uri(custom_permissions_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides a summary for a dashboard.
  """
  @spec describe_dashboard(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, describe_dashboard_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_dashboard_errors()}
  def describe_dashboard(
        %Client{} = client,
        aws_account_id,
        dashboard_id,
        alias_name \\ nil,
        version_number \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(version_number) do
        [{"version-number", version_number} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(alias_name) do
        [{"alias-name", alias_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides a detailed description of the definition of a dashboard.

  If you do not need to know details about the content of a dashboard, for
  instance if you
  are trying to check the status of a recently created or updated dashboard, use
  the
  [
  `DescribeDashboard`
  ](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeDashboard.html)
  instead.
  """
  @spec describe_dashboard_definition(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, describe_dashboard_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_dashboard_definition_errors()}
  def describe_dashboard_definition(
        %Client{} = client,
        aws_account_id,
        dashboard_id,
        alias_name \\ nil,
        version_number \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}/definition"

    headers = []
    query_params = []

    query_params =
      if !is_nil(version_number) do
        [{"version-number", version_number} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(alias_name) do
        [{"alias-name", alias_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes read and write permissions for a dashboard.
  """
  @spec describe_dashboard_permissions(map(), String.t(), String.t(), list()) ::
          {:ok, describe_dashboard_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_dashboard_permissions_errors()}
  def describe_dashboard_permissions(
        %Client{} = client,
        aws_account_id,
        dashboard_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}/permissions"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an existing snapshot job.

  Poll job descriptions after a job starts to know the status of the job. For
  information on available status codes, see `JobStatus`.
  """
  @spec describe_dashboard_snapshot_job(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_dashboard_snapshot_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_dashboard_snapshot_job_errors()}
  def describe_dashboard_snapshot_job(
        %Client{} = client,
        aws_account_id,
        dashboard_id,
        snapshot_job_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}/snapshot-jobs/#{AWS.Util.encode_uri(snapshot_job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the result of an existing snapshot job that has finished running.

  A finished snapshot job will return a `COMPLETED` or `FAILED` status when you
  poll the job with a `DescribeDashboardSnapshotJob` API call.

  If the job has not finished running, this operation returns a message that says
  `Dashboard Snapshot Job with id has not reached a terminal state.`.
  """
  @spec describe_dashboard_snapshot_job_result(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_dashboard_snapshot_job_result_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_dashboard_snapshot_job_result_errors()}
  def describe_dashboard_snapshot_job_result(
        %Client{} = client,
        aws_account_id,
        dashboard_id,
        snapshot_job_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}/snapshot-jobs/#{AWS.Util.encode_uri(snapshot_job_id)}/result"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an existing dashboard QA configuration.
  """
  @spec describe_dashboards_q_a_configuration(map(), String.t(), list()) ::
          {:ok, describe_dashboards_q_a_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_dashboards_q_a_configuration_errors()}
  def describe_dashboards_q_a_configuration(%Client{} = client, aws_account_id, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards-qa-configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a dataset.

  This operation doesn't support datasets that include uploaded files as a source.
  """
  @spec describe_data_set(map(), String.t(), String.t(), list()) ::
          {:ok, describe_data_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_data_set_errors()}
  def describe_data_set(%Client{} = client, aws_account_id, data_set_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the permissions on a dataset.

  The permissions resource is
  `arn:aws:quicksight:region:aws-account-id:dataset/data-set-id`.
  """
  @spec describe_data_set_permissions(map(), String.t(), String.t(), list()) ::
          {:ok, describe_data_set_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_data_set_permissions_errors()}
  def describe_data_set_permissions(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/permissions"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the refresh properties of a dataset.
  """
  @spec describe_data_set_refresh_properties(map(), String.t(), String.t(), list()) ::
          {:ok, describe_data_set_refresh_properties_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_data_set_refresh_properties_errors()}
  def describe_data_set_refresh_properties(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/refresh-properties"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a data source.
  """
  @spec describe_data_source(map(), String.t(), String.t(), list()) ::
          {:ok, describe_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_data_source_errors()}
  def describe_data_source(%Client{} = client, aws_account_id, data_source_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sources/#{AWS.Util.encode_uri(data_source_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the resource permissions for a data source.
  """
  @spec describe_data_source_permissions(map(), String.t(), String.t(), list()) ::
          {:ok, describe_data_source_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_data_source_permissions_errors()}
  def describe_data_source_permissions(
        %Client{} = client,
        aws_account_id,
        data_source_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sources/#{AWS.Util.encode_uri(data_source_id)}/permissions"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a Amazon Q Business application that is linked to an Amazon QuickSight
  account.
  """
  @spec describe_default_q_business_application(map(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_default_q_business_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_default_q_business_application_errors()}
  def describe_default_q_business_application(
        %Client{} = client,
        aws_account_id,
        namespace \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/default-qbusiness-application"
    headers = []
    query_params = []

    query_params =
      if !is_nil(namespace) do
        [{"namespace", namespace} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a folder.
  """
  @spec describe_folder(map(), String.t(), String.t(), list()) ::
          {:ok, describe_folder_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_folder_errors()}
  def describe_folder(%Client{} = client, aws_account_id, folder_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders/#{AWS.Util.encode_uri(folder_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes permissions for a folder.
  """
  @spec describe_folder_permissions(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, describe_folder_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_folder_permissions_errors()}
  def describe_folder_permissions(
        %Client{} = client,
        aws_account_id,
        folder_id,
        max_results \\ nil,
        namespace \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders/#{AWS.Util.encode_uri(folder_id)}/permissions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(namespace) do
        [{"namespace", namespace} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the folder resolved permissions.

  Permissions consists of both folder direct permissions and the inherited
  permissions from the ancestor folders.
  """
  @spec describe_folder_resolved_permissions(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, describe_folder_resolved_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_folder_resolved_permissions_errors()}
  def describe_folder_resolved_permissions(
        %Client{} = client,
        aws_account_id,
        folder_id,
        max_results \\ nil,
        namespace \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders/#{AWS.Util.encode_uri(folder_id)}/resolved-permissions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(namespace) do
        [{"namespace", namespace} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns an Amazon QuickSight group's description and Amazon Resource Name (ARN).
  """
  @spec describe_group(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_group_errors()}
  def describe_group(%Client{} = client, aws_account_id, group_name, namespace, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/groups/#{AWS.Util.encode_uri(group_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Use the `DescribeGroupMembership` operation to determine if a user is a
  member of the specified group.

  If the user exists and is a member of the specified
  group, an associated `GroupMember` object is returned.
  """
  @spec describe_group_membership(map(), String.t(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_group_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_group_membership_errors()}
  def describe_group_membership(
        %Client{} = client,
        aws_account_id,
        group_name,
        member_name,
        namespace,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/groups/#{AWS.Util.encode_uri(group_name)}/members/#{AWS.Util.encode_uri(member_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an existing IAM policy assignment, as specified by the
  assignment name.
  """
  @spec describe_iam_policy_assignment(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_iam_policy_assignment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_iam_policy_assignment_errors()}
  def describe_iam_policy_assignment(
        %Client{} = client,
        assignment_name,
        aws_account_id,
        namespace,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/iam-policy-assignments/#{AWS.Util.encode_uri(assignment_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a SPICE ingestion.
  """
  @spec describe_ingestion(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_ingestion_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_ingestion_errors()}
  def describe_ingestion(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        ingestion_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/ingestions/#{AWS.Util.encode_uri(ingestion_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides a summary and status of IP rules.
  """
  @spec describe_ip_restriction(map(), String.t(), list()) ::
          {:ok, describe_ip_restriction_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_ip_restriction_errors()}
  def describe_ip_restriction(%Client{} = client, aws_account_id, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/ip-restriction"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes all customer managed key registrations in a Amazon QuickSight account.
  """
  @spec describe_key_registration(map(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_key_registration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_key_registration_errors()}
  def describe_key_registration(
        %Client{} = client,
        aws_account_id,
        default_key_only \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/key-registration"
    headers = []
    query_params = []

    query_params =
      if !is_nil(default_key_only) do
        [{"default-key-only", default_key_only} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the current namespace.
  """
  @spec describe_namespace(map(), String.t(), String.t(), list()) ::
          {:ok, describe_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_namespace_errors()}
  def describe_namespace(%Client{} = client, aws_account_id, namespace, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a personalization configuration.
  """
  @spec describe_q_personalization_configuration(map(), String.t(), list()) ::
          {:ok, describe_q_personalization_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_q_personalization_configuration_errors()}
  def describe_q_personalization_configuration(%Client{} = client, aws_account_id, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/q-personalization-configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the state of a Amazon QuickSight Q Search configuration.
  """
  @spec describe_quick_sight_q_search_configuration(map(), String.t(), list()) ::
          {:ok, describe_quick_sight_q_search_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_quick_sight_q_search_configuration_errors()}
  def describe_quick_sight_q_search_configuration(
        %Client{} = client,
        aws_account_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/quicksight-q-search-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides a summary of a refresh schedule.
  """
  @spec describe_refresh_schedule(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_refresh_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_refresh_schedule_errors()}
  def describe_refresh_schedule(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        schedule_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/refresh-schedules/#{AWS.Util.encode_uri(schedule_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes all custom permissions that are mapped to a role.
  """
  @spec describe_role_custom_permission(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_role_custom_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_role_custom_permission_errors()}
  def describe_role_custom_permission(
        %Client{} = client,
        aws_account_id,
        namespace,
        role,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/roles/#{AWS.Util.encode_uri(role)}/custom-permission"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a template's metadata.
  """
  @spec describe_template(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, describe_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_template_errors()}
  def describe_template(
        %Client{} = client,
        aws_account_id,
        template_id,
        alias_name \\ nil,
        version_number \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(version_number) do
        [{"version-number", version_number} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(alias_name) do
        [{"alias-name", alias_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the template alias for a template.
  """
  @spec describe_template_alias(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_template_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_template_alias_errors()}
  def describe_template_alias(
        %Client{} = client,
        alias_name,
        aws_account_id,
        template_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}/aliases/#{AWS.Util.encode_uri(alias_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides a detailed description of the definition of a template.

  If you do not need to know details about the content of a template, for instance
  if you
  are trying to check the status of a recently created or updated template, use
  the
  [
  `DescribeTemplate`
  ](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeTemplate.html)
  instead.
  """
  @spec describe_template_definition(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, describe_template_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_template_definition_errors()}
  def describe_template_definition(
        %Client{} = client,
        aws_account_id,
        template_id,
        alias_name \\ nil,
        version_number \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}/definition"

    headers = []
    query_params = []

    query_params =
      if !is_nil(version_number) do
        [{"version-number", version_number} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(alias_name) do
        [{"alias-name", alias_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes read and write permissions on a template.
  """
  @spec describe_template_permissions(map(), String.t(), String.t(), list()) ::
          {:ok, describe_template_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_template_permissions_errors()}
  def describe_template_permissions(
        %Client{} = client,
        aws_account_id,
        template_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}/permissions"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a theme.
  """
  @spec describe_theme(map(), String.t(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, describe_theme_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_theme_errors()}
  def describe_theme(
        %Client{} = client,
        aws_account_id,
        theme_id,
        alias_name \\ nil,
        version_number \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(version_number) do
        [{"version-number", version_number} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(alias_name) do
        [{"alias-name", alias_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the alias for a theme.
  """
  @spec describe_theme_alias(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_theme_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_theme_alias_errors()}
  def describe_theme_alias(
        %Client{} = client,
        alias_name,
        aws_account_id,
        theme_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}/aliases/#{AWS.Util.encode_uri(alias_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the read and write permissions for a theme.
  """
  @spec describe_theme_permissions(map(), String.t(), String.t(), list()) ::
          {:ok, describe_theme_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_theme_permissions_errors()}
  def describe_theme_permissions(%Client{} = client, aws_account_id, theme_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}/permissions"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a topic.
  """
  @spec describe_topic(map(), String.t(), String.t(), list()) ::
          {:ok, describe_topic_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_topic_errors()}
  def describe_topic(%Client{} = client, aws_account_id, topic_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the permissions of a topic.
  """
  @spec describe_topic_permissions(map(), String.t(), String.t(), list()) ::
          {:ok, describe_topic_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_topic_permissions_errors()}
  def describe_topic_permissions(%Client{} = client, aws_account_id, topic_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}/permissions"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the status of a topic refresh.
  """
  @spec describe_topic_refresh(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_topic_refresh_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_topic_refresh_errors()}
  def describe_topic_refresh(
        %Client{} = client,
        aws_account_id,
        refresh_id,
        topic_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}/refresh/#{AWS.Util.encode_uri(refresh_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Deletes a topic refresh schedule.
  """
  @spec describe_topic_refresh_schedule(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_topic_refresh_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_topic_refresh_schedule_errors()}
  def describe_topic_refresh_schedule(
        %Client{} = client,
        aws_account_id,
        dataset_id,
        topic_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}/schedules/#{AWS.Util.encode_uri(dataset_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a user, given the user name.
  """
  @spec describe_user(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_user_errors()}
  def describe_user(%Client{} = client, aws_account_id, namespace, user_name, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/users/#{AWS.Util.encode_uri(user_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a VPC connection.
  """
  @spec describe_vpc_connection(map(), String.t(), String.t(), list()) ::
          {:ok, describe_vpc_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_vpc_connection_errors()}
  def describe_vpc_connection(
        %Client{} = client,
        aws_account_id,
        vpc_connection_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/vpc-connections/#{AWS.Util.encode_uri(vpc_connection_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Generates an embed URL that you can use to embed an Amazon QuickSight dashboard
  or visual in your website, without having to register any reader users.

  Before you use this action, make sure that you have configured the dashboards
  and permissions.

  The following rules apply to the generated URL:

    *
  It contains a temporary bearer token. It is valid for 5 minutes after it is
  generated. Once redeemed within this period, it cannot be re-used again.

    *
  The URL validity period should not be confused with the actual session lifetime
  that can be customized using the

  ```

  [SessionLifetimeInMinutes](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_GenerateEmbedUrlForAnonymousUser.html#QS-GenerateEmbedUrlForAnonymousUser-request-SessionLifetimeInMinutes)   ```

  parameter. The resulting user session is valid for 15 minutes (minimum) to 10
  hours (maximum). The default session duration is 10 hours.

    *
  You are charged only when the URL is used or there is interaction with Amazon
  QuickSight.

  For more information, see [Embedded
  Analytics](https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics.html)
  in the *Amazon QuickSight User
  Guide*.

  For more information about the high-level steps for embedding and for an
  interactive demo of the ways you can customize embedding, visit the [Amazon QuickSight Developer
  Portal](https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html).
  """
  @spec generate_embed_url_for_anonymous_user(
          map(),
          String.t(),
          generate_embed_url_for_anonymous_user_request(),
          list()
        ) ::
          {:ok, generate_embed_url_for_anonymous_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, generate_embed_url_for_anonymous_user_errors()}
  def generate_embed_url_for_anonymous_user(
        %Client{} = client,
        aws_account_id,
        input,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/embed-url/anonymous-user"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Generates an embed URL that you can use to embed an Amazon QuickSight experience
  in your website.

  This action can be used for any type of user registered in an Amazon QuickSight
  account.
  Before you use this action, make sure that you have configured the relevant
  Amazon QuickSight resource and permissions.

  The following rules apply to the generated URL:

    *
  It contains a temporary bearer token. It is valid for 5 minutes after it is
  generated. Once redeemed within this period, it cannot be re-used again.

    *
  The URL validity period should not be confused with the actual session lifetime
  that can be customized using the

  ```

  [SessionLifetimeInMinutes](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_GenerateEmbedUrlForRegisteredUser.html#QS-GenerateEmbedUrlForRegisteredUser-request-SessionLifetimeInMinutes)   ```

  parameter.

  The resulting user session is valid for 15 minutes (minimum) to 10 hours
  (maximum). The default session duration is 10 hours.

    *
  You are charged only when the URL is used or there is interaction with Amazon
  QuickSight.

  For more information, see [Embedded
  Analytics](https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics.html)
  in the *Amazon QuickSight User
  Guide*.

  For more information about the high-level steps for embedding and for an
  interactive demo of the ways you can customize embedding, visit the [Amazon QuickSight Developer
  Portal](https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html).
  """
  @spec generate_embed_url_for_registered_user(
          map(),
          String.t(),
          generate_embed_url_for_registered_user_request(),
          list()
        ) ::
          {:ok, generate_embed_url_for_registered_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, generate_embed_url_for_registered_user_errors()}
  def generate_embed_url_for_registered_user(
        %Client{} = client,
        aws_account_id,
        input,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/embed-url/registered-user"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Generates an embed URL that you can use to embed an Amazon QuickSight experience
  in your website.

  This action can be used for any type of user that is registered in an Amazon
  QuickSight account that uses IAM Identity Center for authentication. This API
  requires [identity-enhanced IAM Role sessions](https://docs.aws.amazon.com/singlesignon/latest/userguide/trustedidentitypropagation-overview.html#types-identity-enhanced-iam-role-sessions)
  for the authenticated user that the API call is being made for.

  This API uses [trusted identity propagation](https://docs.aws.amazon.com/singlesignon/latest/userguide/trustedidentitypropagation.html)
  to ensure that an end user is authenticated and receives the embed URL that is
  specific to that user. The IAM Identity Center application that the user has
  logged into needs to have [trusted Identity Propagation enabled for Amazon QuickSight](https://docs.aws.amazon.com/singlesignon/latest/userguide/trustedidentitypropagation-using-customermanagedapps-specify-trusted-apps.html)
  with the scope value set to `quicksight:read`. Before you use this action, make
  sure that you have configured the relevant Amazon QuickSight resource and
  permissions.
  """
  @spec generate_embed_url_for_registered_user_with_identity(
          map(),
          String.t(),
          generate_embed_url_for_registered_user_with_identity_request(),
          list()
        ) ::
          {:ok, generate_embed_url_for_registered_user_with_identity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, generate_embed_url_for_registered_user_with_identity_errors()}
  def generate_embed_url_for_registered_user_with_identity(
        %Client{} = client,
        aws_account_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/embed-url/registered-user-with-identity"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Generates a temporary session URL and authorization code(bearer token) that you
  can use to embed an Amazon QuickSight read-only dashboard in your website or
  application.

  Before you use this command, make sure that you have configured the dashboards
  and permissions.

  Currently, you can use `GetDashboardEmbedURL` only from the server, not from the
  user's browser. The following rules apply to the generated URL:

    *
  They must be used together.

    *
  They can be used one time only.

    *
  They are valid for 5 minutes after you run this command.

    *
  You are charged only when the URL is used or there is interaction with Amazon
  QuickSight.

    *
  The resulting user session is valid for 15 minutes (default) up to 10 hours
  (maximum). You can use the optional `SessionLifetimeInMinutes` parameter to
  customize session duration.

  For more information, see [Embedding Analytics Using GetDashboardEmbedUrl](https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics-deprecated.html)
  in the *Amazon QuickSight User
  Guide*.

  For more information about the high-level steps for embedding and for an
  interactive demo of the ways you can customize embedding, visit the [Amazon QuickSight Developer
  Portal](https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html).
  """
  @spec get_dashboard_embed_url(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_dashboard_embed_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_dashboard_embed_url_errors()}
  def get_dashboard_embed_url(
        %Client{} = client,
        aws_account_id,
        dashboard_id,
        additional_dashboard_ids \\ nil,
        identity_type,
        namespace \\ nil,
        reset_disabled \\ nil,
        session_lifetime_in_minutes \\ nil,
        state_persistence_enabled \\ nil,
        undo_redo_disabled \\ nil,
        user_arn \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}/embed-url"

    headers = []
    query_params = []

    query_params =
      if !is_nil(user_arn) do
        [{"user-arn", user_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(undo_redo_disabled) do
        [{"undo-redo-disabled", undo_redo_disabled} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(state_persistence_enabled) do
        [{"state-persistence-enabled", state_persistence_enabled} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(session_lifetime_in_minutes) do
        [{"session-lifetime", session_lifetime_in_minutes} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(reset_disabled) do
        [{"reset-disabled", reset_disabled} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(namespace) do
        [{"namespace", namespace} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(identity_type) do
        [{"creds-type", identity_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(additional_dashboard_ids) do
        [{"additional-dashboard-ids", additional_dashboard_ids} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Generates a session URL and authorization code that you can use to embed the
  Amazon
  Amazon QuickSight console in your web server code.

  Use `GetSessionEmbedUrl` where
  you want to provide an authoring portal that allows users to create data
  sources,
  datasets, analyses, and dashboards. The users who access an embedded Amazon
  QuickSight console
  need belong to the author or admin security cohort. If you want to restrict
  permissions
  to some of these features, add a custom permissions profile to the user with the

  ```

  [UpdateUser](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_UpdateUser.html)   ```

  API operation. Use

  ```

  [RegisterUser](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_RegisterUser.html)

  ```

  API operation to add a new user with a custom permission profile attached. For
  more
  information, see the following sections in the *Amazon QuickSight User
  Guide*:

    *

  [Embedding Analytics](https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics.html)

    *

  [Customizing Access to the Amazon QuickSight Console](https://docs.aws.amazon.com/quicksight/latest/user/customizing-permissions-to-the-quicksight-console.html)
  """
  @spec get_session_embed_url(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_session_embed_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_session_embed_url_errors()}
  def get_session_embed_url(
        %Client{} = client,
        aws_account_id,
        entry_point \\ nil,
        session_lifetime_in_minutes \\ nil,
        user_arn \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/session-embed-url"
    headers = []
    query_params = []

    query_params =
      if !is_nil(user_arn) do
        [{"user-arn", user_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(session_lifetime_in_minutes) do
        [{"session-lifetime", session_lifetime_in_minutes} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(entry_point) do
        [{"entry-point", entry_point} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon QuickSight analyses that exist in the specified Amazon Web Services
  account.
  """
  @spec list_analyses(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_analyses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_analyses_errors()}
  def list_analyses(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/analyses"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all asset bundle export jobs that have been taken place in the last 14
  days.

  Jobs created more than 14 days ago are deleted forever and are not returned. If
  you are using the same job ID for multiple jobs, `ListAssetBundleExportJobs`
  only returns the most recent job that uses the repeated job ID.
  """
  @spec list_asset_bundle_export_jobs(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_asset_bundle_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_asset_bundle_export_jobs_errors()}
  def list_asset_bundle_export_jobs(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/asset-bundle-export-jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all asset bundle import jobs that have taken place in the last 14 days.

  Jobs created more than 14 days ago are deleted forever and are not returned. If
  you are using the same job ID for multiple jobs, `ListAssetBundleImportJobs`
  only returns the most recent job that uses the repeated job ID.
  """
  @spec list_asset_bundle_import_jobs(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_asset_bundle_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_asset_bundle_import_jobs_errors()}
  def list_asset_bundle_import_jobs(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/asset-bundle-import-jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all brands in an Amazon QuickSight account.
  """
  @spec list_brands(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_brands_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_brands_errors()}
  def list_brands(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/brands"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all the custom permissions profiles.
  """
  @spec list_custom_permissions(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_custom_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_custom_permissions_errors()}
  def list_custom_permissions(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/custom-permissions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the versions of the dashboards in the Amazon QuickSight subscription.
  """
  @spec list_dashboard_versions(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_dashboard_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_dashboard_versions_errors()}
  def list_dashboard_versions(
        %Client{} = client,
        aws_account_id,
        dashboard_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}/versions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists dashboards in an Amazon Web Services account.
  """
  @spec list_dashboards(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_dashboards_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_dashboards_errors()}
  def list_dashboards(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all of the datasets belonging to the current Amazon Web Services account
  in an Amazon Web Services Region.

  The permissions resource is
  `arn:aws:quicksight:region:aws-account-id:dataset/*`.
  """
  @spec list_data_sets(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_data_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_data_sets_errors()}
  def list_data_sets(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists data sources in current Amazon Web Services Region that belong to this
  Amazon Web Services account.
  """
  @spec list_data_sources(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_data_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_data_sources_errors()}
  def list_data_sources(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sources"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all assets (`DASHBOARD`, `ANALYSIS`, and `DATASET`) in a folder.
  """
  @spec list_folder_members(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_folder_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_folder_members_errors()}
  def list_folder_members(
        %Client{} = client,
        aws_account_id,
        folder_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders/#{AWS.Util.encode_uri(folder_id)}/members"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all folders in an account.
  """
  @spec list_folders(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_folders_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_folders_errors()}
  def list_folders(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all folders that a resource is a member of.
  """
  @spec list_folders_for_resource(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_folders_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_folders_for_resource_errors()}
  def list_folders_for_resource(
        %Client{} = client,
        aws_account_id,
        resource_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/resource/#{AWS.Util.encode_uri(resource_arn)}/folders"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists member users in a group.
  """
  @spec list_group_memberships(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_group_memberships_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_group_memberships_errors()}
  def list_group_memberships(
        %Client{} = client,
        aws_account_id,
        group_name,
        namespace,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/groups/#{AWS.Util.encode_uri(group_name)}/members"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all user groups in Amazon QuickSight.
  """
  @spec list_groups(map(), String.t(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_groups_errors()}
  def list_groups(
        %Client{} = client,
        aws_account_id,
        namespace,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/groups"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the
  IAM policy assignments in the current Amazon QuickSight
  account.
  """
  @spec list_iam_policy_assignments(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_iam_policy_assignments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_iam_policy_assignments_errors()}
  def list_iam_policy_assignments(
        %Client{} = client,
        aws_account_id,
        namespace,
        assignment_status \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/v2/iam-policy-assignments"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(assignment_status) do
        [{"assignment-status", assignment_status} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all of
  the IAM policy assignments, including the Amazon
  Resource Names
  (ARNs),
  for the IAM policies assigned to the specified user and
  group,
  or groups that the user belongs to.
  """
  @spec list_iam_policy_assignments_for_user(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_iam_policy_assignments_for_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_iam_policy_assignments_for_user_errors()}
  def list_iam_policy_assignments_for_user(
        %Client{} = client,
        aws_account_id,
        namespace,
        user_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/users/#{AWS.Util.encode_uri(user_name)}/iam-policy-assignments"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all services and authorized targets that the Amazon QuickSight IAM
  Identity Center application can access.

  This operation is only supported for Amazon QuickSight accounts that use IAM
  Identity Center.
  """
  @spec list_identity_propagation_configs(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_identity_propagation_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_identity_propagation_configs_errors()}
  def list_identity_propagation_configs(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/identity-propagation-config"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the history of SPICE ingestions for a dataset.
  """
  @spec list_ingestions(map(), String.t(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_ingestions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_ingestions_errors()}
  def list_ingestions(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/ingestions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the namespaces for the specified Amazon Web Services account.

  This operation doesn't list deleted namespaces.
  """
  @spec list_namespaces(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_namespaces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_namespaces_errors()}
  def list_namespaces(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the refresh schedules of a dataset.

  Each dataset can have up to 5 schedules.
  """
  @spec list_refresh_schedules(map(), String.t(), String.t(), list()) ::
          {:ok, list_refresh_schedules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_refresh_schedules_errors()}
  def list_refresh_schedules(%Client{} = client, aws_account_id, data_set_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/refresh-schedules"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all groups that are associated with a role.
  """
  @spec list_role_memberships(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_role_memberships_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_role_memberships_errors()}
  def list_role_memberships(
        %Client{} = client,
        aws_account_id,
        namespace,
        role,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/roles/#{AWS.Util.encode_uri(role)}/members"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags assigned to a resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/resources/#{AWS.Util.encode_uri(resource_arn)}/tags"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the aliases of a template.
  """
  @spec list_template_aliases(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_template_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_template_aliases_errors()}
  def list_template_aliases(
        %Client{} = client,
        aws_account_id,
        template_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}/aliases"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-result", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the versions of the templates in the current Amazon QuickSight
  account.
  """
  @spec list_template_versions(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_template_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_template_versions_errors()}
  def list_template_versions(
        %Client{} = client,
        aws_account_id,
        template_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}/versions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the templates in the current Amazon QuickSight account.
  """
  @spec list_templates(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_templates_errors()}
  def list_templates(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-result", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the aliases of a theme.
  """
  @spec list_theme_aliases(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_theme_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_theme_aliases_errors()}
  def list_theme_aliases(
        %Client{} = client,
        aws_account_id,
        theme_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}/aliases"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-result", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the versions of the themes in the current Amazon Web Services account.
  """
  @spec list_theme_versions(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_theme_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_theme_versions_errors()}
  def list_theme_versions(
        %Client{} = client,
        aws_account_id,
        theme_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}/versions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the themes in the current Amazon Web Services account.
  """
  @spec list_themes(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_themes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_themes_errors()}
  def list_themes(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all of the refresh schedules for a topic.
  """
  @spec list_topic_refresh_schedules(map(), String.t(), String.t(), list()) ::
          {:ok, list_topic_refresh_schedules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_topic_refresh_schedules_errors()}
  def list_topic_refresh_schedules(%Client{} = client, aws_account_id, topic_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}/schedules"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all reviewed answers for a Q Topic.
  """
  @spec list_topic_reviewed_answers(map(), String.t(), String.t(), list()) ::
          {:ok, list_topic_reviewed_answers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_topic_reviewed_answers_errors()}
  def list_topic_reviewed_answers(%Client{} = client, aws_account_id, topic_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}/reviewed-answers"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all of the topics within an account.
  """
  @spec list_topics(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_topics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_topics_errors()}
  def list_topics(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Amazon QuickSight groups that an Amazon QuickSight user is a member
  of.
  """
  @spec list_user_groups(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_user_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_user_groups_errors()}
  def list_user_groups(
        %Client{} = client,
        aws_account_id,
        namespace,
        user_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/users/#{AWS.Util.encode_uri(user_name)}/groups"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all of the Amazon QuickSight users belonging to this account.
  """
  @spec list_users(map(), String.t(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_users_errors()}
  def list_users(
        %Client{} = client,
        aws_account_id,
        namespace,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/users"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all of the VPC connections in the current set Amazon Web Services Region
  of an
  Amazon Web Services account.
  """
  @spec list_vpc_connections(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_vpc_connections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_vpc_connections_errors()}
  def list_vpc_connections(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/vpc-connections"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Predicts existing visuals or generates new visuals to answer a given query.
  """
  @spec predict_q_a_results(map(), String.t(), predict_q_a_results_request(), list()) ::
          {:ok, predict_q_a_results_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, predict_q_a_results_errors()}
  def predict_q_a_results(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/qa/predict"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates or updates the dataset refresh properties for the dataset.
  """
  @spec put_data_set_refresh_properties(
          map(),
          String.t(),
          String.t(),
          put_data_set_refresh_properties_request(),
          list()
        ) ::
          {:ok, put_data_set_refresh_properties_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_data_set_refresh_properties_errors()}
  def put_data_set_refresh_properties(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/refresh-properties"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an Amazon QuickSight user whose identity is associated with the Identity
  and Access Management (IAM) identity or role specified in the request.

  When you register a new user from the Amazon QuickSight API, Amazon QuickSight
  generates a registration URL. The user accesses this registration URL to create
  their account. Amazon QuickSight doesn't send a registration email to users who
  are registered from the Amazon QuickSight API. If you want new users to receive
  a registration email, then add those users in the Amazon QuickSight console. For
  more information on registering a new user in the Amazon QuickSight console, see
  [ Inviting users to access Amazon QuickSight](https://docs.aws.amazon.com/quicksight/latest/user/managing-users.html#inviting-users).
  """
  @spec register_user(map(), String.t(), String.t(), register_user_request(), list()) ::
          {:ok, register_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_user_errors()}
  def register_user(%Client{} = client, aws_account_id, namespace, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/users"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Restores an analysis.
  """
  @spec restore_analysis(map(), String.t(), String.t(), restore_analysis_request(), list()) ::
          {:ok, restore_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_analysis_errors()}
  def restore_analysis(%Client{} = client, analysis_id, aws_account_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/restore/analyses/#{AWS.Util.encode_uri(analysis_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"RestoreToFolders", "restore-to-folders"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Searches for analyses that belong to the user specified in the filter.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.
  """
  @spec search_analyses(map(), String.t(), search_analyses_request(), list()) ::
          {:ok, search_analyses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_analyses_errors()}
  def search_analyses(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/search/analyses"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Searches for dashboards that belong to a user.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.
  """
  @spec search_dashboards(map(), String.t(), search_dashboards_request(), list()) ::
          {:ok, search_dashboards_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_dashboards_errors()}
  def search_dashboards(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/search/dashboards"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Use the `SearchDataSets` operation to search for datasets that belong to an
  account.
  """
  @spec search_data_sets(map(), String.t(), search_data_sets_request(), list()) ::
          {:ok, search_data_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_data_sets_errors()}
  def search_data_sets(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/search/data-sets"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Use the `SearchDataSources` operation to search for data sources that belong to
  an account.
  """
  @spec search_data_sources(map(), String.t(), search_data_sources_request(), list()) ::
          {:ok, search_data_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_data_sources_errors()}
  def search_data_sources(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/search/data-sources"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Searches the subfolders in a folder.
  """
  @spec search_folders(map(), String.t(), search_folders_request(), list()) ::
          {:ok, search_folders_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_folders_errors()}
  def search_folders(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/search/folders"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Use the `SearchGroups` operation to search groups in a specified Amazon
  QuickSight namespace using the supplied filters.
  """
  @spec search_groups(map(), String.t(), String.t(), search_groups_request(), list()) ::
          {:ok, search_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_groups_errors()}
  def search_groups(%Client{} = client, aws_account_id, namespace, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/groups-search"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"MaxResults", "max-results"},
        {"NextToken", "next-token"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Searches for any Q topic that exists in an Amazon QuickSight account.
  """
  @spec search_topics(map(), String.t(), search_topics_request(), list()) ::
          {:ok, search_topics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_topics_errors()}
  def search_topics(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/search/topics"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Starts an Asset Bundle export job.

  An Asset Bundle export job exports specified Amazon QuickSight assets. You can
  also choose to export any asset dependencies in the same job. Export jobs run
  asynchronously and can be polled with a `DescribeAssetBundleExportJob` API call.
  When a job is successfully completed, a download URL that contains the exported
  assets is returned. The URL is valid for 5 minutes and can be refreshed with a
  `DescribeAssetBundleExportJob` API call. Each Amazon QuickSight account can run
  up to 5 export jobs concurrently.

  The API caller must have the necessary permissions in their IAM role to access
  each resource before the resources can be exported.
  """
  @spec start_asset_bundle_export_job(
          map(),
          String.t(),
          start_asset_bundle_export_job_request(),
          list()
        ) ::
          {:ok, start_asset_bundle_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_asset_bundle_export_job_errors()}
  def start_asset_bundle_export_job(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/asset-bundle-export-jobs/export"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Starts an Asset Bundle import job.

  An Asset Bundle import job imports specified Amazon QuickSight assets into an
  Amazon QuickSight account. You can also choose to import a naming prefix and
  specified configuration overrides. The assets that are contained in the bundle
  file that you provide are used to create or update a new or existing asset in
  your Amazon QuickSight account. Each Amazon QuickSight account can run up to 5
  import jobs concurrently.

  The API caller must have the necessary `"create"`, `"describe"`, and `"update"`
  permissions in their IAM role to access each resource type that is contained in
  the bundle file before the resources can be imported.
  """
  @spec start_asset_bundle_import_job(
          map(),
          String.t(),
          start_asset_bundle_import_job_request(),
          list()
        ) ::
          {:ok, start_asset_bundle_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_asset_bundle_import_job_errors()}
  def start_asset_bundle_import_job(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/asset-bundle-import-jobs/import"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Starts an asynchronous job that generates a snapshot of a dashboard's output.

  You can request one or several of the following format configurations in each
  API call.

    *
  1 Paginated PDF

    *
  1 Excel workbook that includes up to 5 table or pivot table visuals

    *
  5 CSVs from table or pivot table visuals

  The status of a submitted job can be polled with the
  `DescribeDashboardSnapshotJob` API. When you call the
  `DescribeDashboardSnapshotJob` API, check the `JobStatus` field in the response.
  Once the job reaches a `COMPLETED` or `FAILED` status, use the
  `DescribeDashboardSnapshotJobResult` API to obtain the URLs for the generated
  files. If the job fails, the `DescribeDashboardSnapshotJobResult` API returns
  detailed information about the error that occurred.

  ## StartDashboardSnapshotJob API throttling

  Amazon QuickSight utilizes API throttling to create a more consistent user
  experience within a time span for customers when they call the
  `StartDashboardSnapshotJob`. By default, 12 jobs can run simlutaneously in one
  Amazon Web Services account and users can submit up 10 API requests per second
  before an account is throttled. If an overwhelming number of API requests are
  made by the same user in a short period of time, Amazon QuickSight throttles the
  API calls to maintin an optimal experience and reliability for all Amazon
  QuickSight users.

  ## Common throttling scenarios

  The following list provides information about the most commin throttling
  scenarios that can occur.

    *

  **A large number of `SnapshotExport` API jobs are running simultaneously on an
  Amazon Web Services account.** When a new `StartDashboardSnapshotJob` is created
  and there are already 12 jobs with the `RUNNING` status, the new job request
  fails and returns a `LimitExceededException` error. Wait for a current job to
  comlpete before you resubmit the new job.

    *

  **A large number of API requests are submitted on an Amazon Web Services
  account.** When a user makes more than 10 API calls to the Amazon QuickSight API
  in one second, a `ThrottlingException` is returned.

  If your use case requires a higher throttling limit, contact your account admin
  or [Amazon Web ServicesSupport](http://aws.amazon.com/contact-us/) to explore
  options to tailor a more optimal expereince for your account.

  ## Best practices to handle throttling

  If your use case projects high levels of API traffic, try to reduce the degree
  of frequency and parallelism of API calls as much as you can to avoid
  throttling. You can also perform a timing test to calculate an estimate for the
  total processing time of your projected load that stays within the throttling
  limits of the Amazon QuickSight APIs. For example, if your projected traffic is
  100 snapshot jobs before 12:00 PM per day, start 12 jobs in parallel and measure
  the amount of time it takes to proccess all 12 jobs. Once you obtain the result,
  multiply the duration by 9, for example `(12 minutes * 9 = 108 minutes)`. Use
  the new result to determine the latest time at which the jobs need to be started
  to meet your target deadline.

  The time that it takes to process a job can be impacted by the following
  factors:

    *
  The dataset type (Direct Query or SPICE).

    *
  The size of the dataset.

    *
  The complexity of the calculated fields that are used in the dashboard.

    *
  The number of visuals that are on a sheet.

    *
  The types of visuals that are on the sheet.

    *
  The number of formats and snapshots that are requested in the job configuration.

    *
  The size of the generated snapshots.
  """
  @spec start_dashboard_snapshot_job(
          map(),
          String.t(),
          String.t(),
          start_dashboard_snapshot_job_request(),
          list()
        ) ::
          {:ok, start_dashboard_snapshot_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_dashboard_snapshot_job_errors()}
  def start_dashboard_snapshot_job(
        %Client{} = client,
        aws_account_id,
        dashboard_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}/snapshot-jobs"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Starts an asynchronous job that runs an existing dashboard schedule and sends
  the dashboard snapshot through email.

  Only one job can run simultaneously in a given schedule. Repeated requests are
  skipped with a `202` HTTP status code.

  For more information, see [Scheduling and sending Amazon QuickSight reports by email](https://docs.aws.amazon.com/quicksight/latest/user/sending-reports.html)
  and [Configuring email report settings for a Amazon QuickSight dashboard](https://docs.aws.amazon.com/quicksight/latest/user/email-reports-from-dashboard.html)
  in the *Amazon QuickSight User Guide*.
  """
  @spec start_dashboard_snapshot_job_schedule(
          map(),
          String.t(),
          String.t(),
          String.t(),
          start_dashboard_snapshot_job_schedule_request(),
          list()
        ) ::
          {:ok, start_dashboard_snapshot_job_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_dashboard_snapshot_job_schedule_errors()}
  def start_dashboard_snapshot_job_schedule(
        %Client{} = client,
        aws_account_id,
        dashboard_id,
        schedule_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}/schedules/#{AWS.Util.encode_uri(schedule_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Assigns one or more tags (key-value pairs) to the specified Amazon QuickSight
  resource.

  Tags can help you organize and categorize your resources. You can also use them
  to
  scope user permissions, by granting a user permission to access or change only
  resources
  with certain tag values. You can use the `TagResource` operation with a
  resource that already has tags. If you specify a new tag key for the resource,
  this tag
  is appended to the list of tags associated with the resource. If you specify a
  tag key
  that is already associated with the resource, the new tag value that you specify
  replaces the previous value for that tag.

  You can associate as many as 50 tags with a resource. Amazon QuickSight supports
  tagging on data
  set, data source, dashboard, template, topic, and user.

  Tagging for Amazon QuickSight works in a similar way to tagging for other Amazon
  Web Services services, except for
  the following:

    *
  Tags are used to track costs for users in Amazon QuickSight. You can't tag other
  resources that Amazon QuickSight costs are based on, such as storage capacoty
  (SPICE), session usage, alert consumption, or reporting units.

    *
  Amazon QuickSight doesn't currently support the tag editor for Resource Groups.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/resources/#{AWS.Util.encode_uri(resource_arn)}/tags"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes a tag or tags from a resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/resources/#{AWS.Util.encode_uri(resource_arn)}/tags"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"TagKeys", "keys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates Amazon QuickSight customizations for the current Amazon Web Services
  Region.

  Currently, the only customization that you can use is a theme.

  You can use customizations for your Amazon Web Services account or, if you
  specify a namespace, for a
  Amazon QuickSight namespace instead. Customizations that apply to a namespace
  override
  customizations that apply to an Amazon Web Services account. To find out which
  customizations apply, use
  the `DescribeAccountCustomization` API operation.
  """
  @spec update_account_customization(
          map(),
          String.t(),
          update_account_customization_request(),
          list()
        ) ::
          {:ok, update_account_customization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_account_customization_errors()}
  def update_account_customization(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/customizations"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Namespace", "namespace"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the Amazon QuickSight settings in your Amazon Web Services account.
  """
  @spec update_account_settings(map(), String.t(), update_account_settings_request(), list()) ::
          {:ok, update_account_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_account_settings_errors()}
  def update_account_settings(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/settings"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an analysis in Amazon QuickSight
  """
  @spec update_analysis(map(), String.t(), String.t(), update_analysis_request(), list()) ::
          {:ok, update_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_analysis_errors()}
  def update_analysis(%Client{} = client, analysis_id, aws_account_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/analyses/#{AWS.Util.encode_uri(analysis_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the read and write permissions for an analysis.
  """
  @spec update_analysis_permissions(
          map(),
          String.t(),
          String.t(),
          update_analysis_permissions_request(),
          list()
        ) ::
          {:ok, update_analysis_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_analysis_permissions_errors()}
  def update_analysis_permissions(
        %Client{} = client,
        analysis_id,
        aws_account_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/analyses/#{AWS.Util.encode_uri(analysis_id)}/permissions"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an Amazon QuickSight application with a token exchange grant.

  This operation only supports Amazon QuickSight applications that are registered
  with IAM Identity Center.
  """
  @spec update_application_with_token_exchange_grant(
          map(),
          String.t(),
          update_application_with_token_exchange_grant_request(),
          list()
        ) ::
          {:ok, update_application_with_token_exchange_grant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_application_with_token_exchange_grant_errors()}
  def update_application_with_token_exchange_grant(
        %Client{} = client,
        aws_account_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/application-with-token-exchange-grant"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Namespace", "namespace"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a brand.
  """
  @spec update_brand(map(), String.t(), String.t(), update_brand_request(), list()) ::
          {:ok, update_brand_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_brand_errors()}
  def update_brand(%Client{} = client, aws_account_id, brand_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/brands/#{AWS.Util.encode_uri(brand_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a brand assignment.
  """
  @spec update_brand_assignment(map(), String.t(), update_brand_assignment_request(), list()) ::
          {:ok, update_brand_assignment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_brand_assignment_errors()}
  def update_brand_assignment(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/brandassignments"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the published version of a brand.
  """
  @spec update_brand_published_version(
          map(),
          String.t(),
          String.t(),
          update_brand_published_version_request(),
          list()
        ) ::
          {:ok, update_brand_published_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_brand_published_version_errors()}
  def update_brand_published_version(
        %Client{} = client,
        aws_account_id,
        brand_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/brands/#{AWS.Util.encode_uri(brand_id)}/publishedversion"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a custom permissions profile.
  """
  @spec update_custom_permissions(
          map(),
          String.t(),
          String.t(),
          update_custom_permissions_request(),
          list()
        ) ::
          {:ok, update_custom_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_custom_permissions_errors()}
  def update_custom_permissions(
        %Client{} = client,
        aws_account_id,
        custom_permissions_name,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/custom-permissions/#{AWS.Util.encode_uri(custom_permissions_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a dashboard in an Amazon Web Services account.

  Updating a Dashboard creates a new dashboard version but does not immediately
  publish
  the new version. You can update the published version of a dashboard by
  using the

  ```

  [UpdateDashboardPublishedVersion](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_UpdateDashboardPublishedVersion.html)

  ```

  API operation.
  """
  @spec update_dashboard(map(), String.t(), String.t(), update_dashboard_request(), list()) ::
          {:ok, update_dashboard_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_dashboard_errors()}
  def update_dashboard(%Client{} = client, aws_account_id, dashboard_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the linked analyses on a dashboard.
  """
  @spec update_dashboard_links(
          map(),
          String.t(),
          String.t(),
          update_dashboard_links_request(),
          list()
        ) ::
          {:ok, update_dashboard_links_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_dashboard_links_errors()}
  def update_dashboard_links(
        %Client{} = client,
        aws_account_id,
        dashboard_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}/linked-entities"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates read and write permissions on a dashboard.
  """
  @spec update_dashboard_permissions(
          map(),
          String.t(),
          String.t(),
          update_dashboard_permissions_request(),
          list()
        ) ::
          {:ok, update_dashboard_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_dashboard_permissions_errors()}
  def update_dashboard_permissions(
        %Client{} = client,
        aws_account_id,
        dashboard_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}/permissions"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the published version of a dashboard.
  """
  @spec update_dashboard_published_version(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_dashboard_published_version_request(),
          list()
        ) ::
          {:ok, update_dashboard_published_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_dashboard_published_version_errors()}
  def update_dashboard_published_version(
        %Client{} = client,
        aws_account_id,
        dashboard_id,
        version_number,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}/versions/#{AWS.Util.encode_uri(version_number)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a Dashboard QA configuration.
  """
  @spec update_dashboards_q_a_configuration(
          map(),
          String.t(),
          update_dashboards_q_a_configuration_request(),
          list()
        ) ::
          {:ok, update_dashboards_q_a_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_dashboards_q_a_configuration_errors()}
  def update_dashboards_q_a_configuration(
        %Client{} = client,
        aws_account_id,
        input,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards-qa-configuration"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a dataset.

  This operation doesn't support datasets that include uploaded files as a source.
  Partial updates are not supported by this operation.
  """
  @spec update_data_set(map(), String.t(), String.t(), update_data_set_request(), list()) ::
          {:ok, update_data_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_data_set_errors()}
  def update_data_set(%Client{} = client, aws_account_id, data_set_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the permissions on a dataset.

  The permissions resource is
  `arn:aws:quicksight:region:aws-account-id:dataset/data-set-id`.
  """
  @spec update_data_set_permissions(
          map(),
          String.t(),
          String.t(),
          update_data_set_permissions_request(),
          list()
        ) ::
          {:ok, update_data_set_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_data_set_permissions_errors()}
  def update_data_set_permissions(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/permissions"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a data source.
  """
  @spec update_data_source(map(), String.t(), String.t(), update_data_source_request(), list()) ::
          {:ok, update_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_data_source_errors()}
  def update_data_source(%Client{} = client, aws_account_id, data_source_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sources/#{AWS.Util.encode_uri(data_source_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the permissions to a data source.
  """
  @spec update_data_source_permissions(
          map(),
          String.t(),
          String.t(),
          update_data_source_permissions_request(),
          list()
        ) ::
          {:ok, update_data_source_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_data_source_permissions_errors()}
  def update_data_source_permissions(
        %Client{} = client,
        aws_account_id,
        data_source_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sources/#{AWS.Util.encode_uri(data_source_id)}/permissions"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a Amazon Q Business application that is linked to a Amazon QuickSight
  account.
  """
  @spec update_default_q_business_application(
          map(),
          String.t(),
          update_default_q_business_application_request(),
          list()
        ) ::
          {:ok, update_default_q_business_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_default_q_business_application_errors()}
  def update_default_q_business_application(
        %Client{} = client,
        aws_account_id,
        input,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/default-qbusiness-application"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Namespace", "namespace"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the name of a folder.
  """
  @spec update_folder(map(), String.t(), String.t(), update_folder_request(), list()) ::
          {:ok, update_folder_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_folder_errors()}
  def update_folder(%Client{} = client, aws_account_id, folder_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders/#{AWS.Util.encode_uri(folder_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates permissions of a folder.
  """
  @spec update_folder_permissions(
          map(),
          String.t(),
          String.t(),
          update_folder_permissions_request(),
          list()
        ) ::
          {:ok, update_folder_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_folder_permissions_errors()}
  def update_folder_permissions(
        %Client{} = client,
        aws_account_id,
        folder_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders/#{AWS.Util.encode_uri(folder_id)}/permissions"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Changes a group description.
  """
  @spec update_group(map(), String.t(), String.t(), String.t(), update_group_request(), list()) ::
          {:ok, update_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_group_errors()}
  def update_group(
        %Client{} = client,
        aws_account_id,
        group_name,
        namespace,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/groups/#{AWS.Util.encode_uri(group_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing IAM policy assignment.

  This operation updates only
  the optional parameter or parameters that are specified in the request. This
  overwrites
  all of the users included in `Identities`.
  """
  @spec update_iam_policy_assignment(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_iam_policy_assignment_request(),
          list()
        ) ::
          {:ok, update_iam_policy_assignment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_iam_policy_assignment_errors()}
  def update_iam_policy_assignment(
        %Client{} = client,
        assignment_name,
        aws_account_id,
        namespace,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/iam-policy-assignments/#{AWS.Util.encode_uri(assignment_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds or updates services and authorized targets to configure what the Amazon
  QuickSight IAM Identity Center application can access.

  This operation is only supported for Amazon QuickSight accounts using IAM
  Identity Center
  """
  @spec update_identity_propagation_config(
          map(),
          String.t(),
          String.t(),
          update_identity_propagation_config_request(),
          list()
        ) ::
          {:ok, update_identity_propagation_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_identity_propagation_config_errors()}
  def update_identity_propagation_config(
        %Client{} = client,
        aws_account_id,
        service,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/identity-propagation-config/#{AWS.Util.encode_uri(service)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the content and status of IP rules.

  Traffic from a source is allowed when the source satisfies either the
  `IpRestrictionRule`, `VpcIdRestrictionRule`, or `VpcEndpointIdRestrictionRule`.
  To use this operation, you must provide the entire map of rules. You can use the
  `DescribeIpRestriction` operation to get the current rule map.
  """
  @spec update_ip_restriction(map(), String.t(), update_ip_restriction_request(), list()) ::
          {:ok, update_ip_restriction_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_ip_restriction_errors()}
  def update_ip_restriction(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/ip-restriction"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a customer managed key in a Amazon QuickSight account.
  """
  @spec update_key_registration(map(), String.t(), update_key_registration_request(), list()) ::
          {:ok, update_key_registration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_key_registration_errors()}
  def update_key_registration(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/key-registration"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Use the `UpdatePublicSharingSettings` operation to turn on or turn off the
  public sharing settings of an Amazon QuickSight dashboard.

  To use this operation, turn on session capacity pricing for your Amazon
  QuickSight
  account.

  Before you can turn on public sharing on your account, make sure to give public
  sharing
  permissions to an administrative user in the Identity and Access Management
  (IAM)
  console. For more information on using IAM with Amazon QuickSight, see
  [Using Amazon QuickSight with IAM](https://docs.aws.amazon.com/quicksight/latest/user/security_iam_service-with-iam.html)
  in the *Amazon QuickSight
  User Guide*.
  """
  @spec update_public_sharing_settings(
          map(),
          String.t(),
          update_public_sharing_settings_request(),
          list()
        ) ::
          {:ok, update_public_sharing_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_public_sharing_settings_errors()}
  def update_public_sharing_settings(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/public-sharing-settings"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a personalization configuration.
  """
  @spec update_q_personalization_configuration(
          map(),
          String.t(),
          update_q_personalization_configuration_request(),
          list()
        ) ::
          {:ok, update_q_personalization_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_q_personalization_configuration_errors()}
  def update_q_personalization_configuration(
        %Client{} = client,
        aws_account_id,
        input,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/q-personalization-configuration"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the state of a Amazon QuickSight Q Search configuration.
  """
  @spec update_quick_sight_q_search_configuration(
          map(),
          String.t(),
          update_quick_sight_q_search_configuration_request(),
          list()
        ) ::
          {:ok, update_quick_sight_q_search_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_quick_sight_q_search_configuration_errors()}
  def update_quick_sight_q_search_configuration(
        %Client{} = client,
        aws_account_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/quicksight-q-search-configuration"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a refresh schedule for a dataset.
  """
  @spec update_refresh_schedule(
          map(),
          String.t(),
          String.t(),
          update_refresh_schedule_request(),
          list()
        ) ::
          {:ok, update_refresh_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_refresh_schedule_errors()}
  def update_refresh_schedule(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/refresh-schedules"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the custom permissions that are associated with a role.
  """
  @spec update_role_custom_permission(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_role_custom_permission_request(),
          list()
        ) ::
          {:ok, update_role_custom_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_role_custom_permission_errors()}
  def update_role_custom_permission(
        %Client{} = client,
        aws_account_id,
        namespace,
        role,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/roles/#{AWS.Util.encode_uri(role)}/custom-permission"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the SPICE capacity configuration for a Amazon QuickSight account.
  """
  @spec update_s_p_i_c_e_capacity_configuration(
          map(),
          String.t(),
          update_s_p_i_c_e_capacity_configuration_request(),
          list()
        ) ::
          {:ok, update_s_p_i_c_e_capacity_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_s_p_i_c_e_capacity_configuration_errors()}
  def update_s_p_i_c_e_capacity_configuration(
        %Client{} = client,
        aws_account_id,
        input,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/spice-capacity-configuration"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a template from an existing Amazon QuickSight analysis or another
  template.
  """
  @spec update_template(map(), String.t(), String.t(), update_template_request(), list()) ::
          {:ok, update_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_template_errors()}
  def update_template(%Client{} = client, aws_account_id, template_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the template alias of a template.
  """
  @spec update_template_alias(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_template_alias_request(),
          list()
        ) ::
          {:ok, update_template_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_template_alias_errors()}
  def update_template_alias(
        %Client{} = client,
        alias_name,
        aws_account_id,
        template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}/aliases/#{AWS.Util.encode_uri(alias_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the resource permissions for a template.
  """
  @spec update_template_permissions(
          map(),
          String.t(),
          String.t(),
          update_template_permissions_request(),
          list()
        ) ::
          {:ok, update_template_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_template_permissions_errors()}
  def update_template_permissions(
        %Client{} = client,
        aws_account_id,
        template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}/permissions"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a theme.
  """
  @spec update_theme(map(), String.t(), String.t(), update_theme_request(), list()) ::
          {:ok, update_theme_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_theme_errors()}
  def update_theme(%Client{} = client, aws_account_id, theme_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an alias of a theme.
  """
  @spec update_theme_alias(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_theme_alias_request(),
          list()
        ) ::
          {:ok, update_theme_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_theme_alias_errors()}
  def update_theme_alias(
        %Client{} = client,
        alias_name,
        aws_account_id,
        theme_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}/aliases/#{AWS.Util.encode_uri(alias_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the resource permissions for a theme.

  Permissions apply to the action to grant or
  revoke permissions on, for example `"quicksight:DescribeTheme"`.

  Theme permissions apply in groupings. Valid groupings include the following for
  the three
  levels of permissions, which are user, owner, or no permissions:

    *
  User

      *

  `"quicksight:DescribeTheme"`

      *

  `"quicksight:DescribeThemeAlias"`

      *

  `"quicksight:ListThemeAliases"`

      *

  `"quicksight:ListThemeVersions"`

    *
  Owner

      *

  `"quicksight:DescribeTheme"`

      *

  `"quicksight:DescribeThemeAlias"`

      *

  `"quicksight:ListThemeAliases"`

      *

  `"quicksight:ListThemeVersions"`

      *

  `"quicksight:DeleteTheme"`

      *

  `"quicksight:UpdateTheme"`

      *

  `"quicksight:CreateThemeAlias"`

      *

  `"quicksight:DeleteThemeAlias"`

      *

  `"quicksight:UpdateThemeAlias"`

      *

  `"quicksight:UpdateThemePermissions"`

      *

  `"quicksight:DescribeThemePermissions"`

    *
  To specify no permissions, omit the permissions list.
  """
  @spec update_theme_permissions(
          map(),
          String.t(),
          String.t(),
          update_theme_permissions_request(),
          list()
        ) ::
          {:ok, update_theme_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_theme_permissions_errors()}
  def update_theme_permissions(%Client{} = client, aws_account_id, theme_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}/permissions"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a topic.
  """
  @spec update_topic(map(), String.t(), String.t(), update_topic_request(), list()) ::
          {:ok, update_topic_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_topic_errors()}
  def update_topic(%Client{} = client, aws_account_id, topic_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the permissions of a topic.
  """
  @spec update_topic_permissions(
          map(),
          String.t(),
          String.t(),
          update_topic_permissions_request(),
          list()
        ) ::
          {:ok, update_topic_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_topic_permissions_errors()}
  def update_topic_permissions(%Client{} = client, aws_account_id, topic_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}/permissions"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a topic refresh schedule.
  """
  @spec update_topic_refresh_schedule(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_topic_refresh_schedule_request(),
          list()
        ) ::
          {:ok, update_topic_refresh_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_topic_refresh_schedule_errors()}
  def update_topic_refresh_schedule(
        %Client{} = client,
        aws_account_id,
        dataset_id,
        topic_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}/schedules/#{AWS.Util.encode_uri(dataset_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an Amazon QuickSight user.
  """
  @spec update_user(map(), String.t(), String.t(), String.t(), update_user_request(), list()) ::
          {:ok, update_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_errors()}
  def update_user(%Client{} = client, aws_account_id, namespace, user_name, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/users/#{AWS.Util.encode_uri(user_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a custom permissions profile for a user.
  """
  @spec update_user_custom_permission(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_user_custom_permission_request(),
          list()
        ) ::
          {:ok, update_user_custom_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_custom_permission_errors()}
  def update_user_custom_permission(
        %Client{} = client,
        aws_account_id,
        namespace,
        user_name,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/users/#{AWS.Util.encode_uri(user_name)}/custom-permission"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a VPC connection.
  """
  @spec update_vpc_connection(
          map(),
          String.t(),
          String.t(),
          update_vpc_connection_request(),
          list()
        ) ::
          {:ok, update_vpc_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_vpc_connection_errors()}
  def update_vpc_connection(
        %Client{} = client,
        aws_account_id,
        vpc_connection_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/vpc-connections/#{AWS.Util.encode_uri(vpc_connection_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
