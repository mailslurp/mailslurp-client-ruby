=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository

The version of the OpenAPI document: 6.5.2
Contact: contact@mailslurp.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

# Common files
require 'mailslurp_client/api_client'
require 'mailslurp_client/api_error'
require 'mailslurp_client/version'
require 'mailslurp_client/configuration'

# Models
require 'mailslurp_client/models/abstract_webhook_payload'
require 'mailslurp_client/models/account_bounce_block_dto'
require 'mailslurp_client/models/alias_dto'
require 'mailslurp_client/models/alias_projection'
require 'mailslurp_client/models/attachment_entity'
require 'mailslurp_client/models/attachment_meta_data'
require 'mailslurp_client/models/attachment_projection'
require 'mailslurp_client/models/basic_auth_options'
require 'mailslurp_client/models/bounce_projection'
require 'mailslurp_client/models/bounce_recipient_projection'
require 'mailslurp_client/models/bounced_email_dto'
require 'mailslurp_client/models/bounced_recipient_dto'
require 'mailslurp_client/models/bulk_send_email_options'
require 'mailslurp_client/models/can_send_email_results'
require 'mailslurp_client/models/check_email_body_feature_support_results'
require 'mailslurp_client/models/check_email_body_results'
require 'mailslurp_client/models/check_email_client_support_options'
require 'mailslurp_client/models/check_email_client_support_results'
require 'mailslurp_client/models/check_email_features_client_support_options'
require 'mailslurp_client/models/check_email_features_client_support_results'
require 'mailslurp_client/models/complaint'
require 'mailslurp_client/models/condition_option'
require 'mailslurp_client/models/connector_dto'
require 'mailslurp_client/models/connector_imap_connection_dto'
require 'mailslurp_client/models/connector_projection'
require 'mailslurp_client/models/connector_smtp_connection_dto'
require 'mailslurp_client/models/connector_sync_event_dto'
require 'mailslurp_client/models/connector_sync_event_projection'
require 'mailslurp_client/models/connector_sync_request_result'
require 'mailslurp_client/models/connector_sync_request_result_exception'
require 'mailslurp_client/models/connector_sync_request_result_exception_cause'
require 'mailslurp_client/models/connector_sync_request_result_exception_cause_stack_trace'
require 'mailslurp_client/models/connector_sync_result'
require 'mailslurp_client/models/contact_dto'
require 'mailslurp_client/models/contact_projection'
require 'mailslurp_client/models/content_match_options'
require 'mailslurp_client/models/count_dto'
require 'mailslurp_client/models/create_alias_options'
require 'mailslurp_client/models/create_connector_imap_connection_options'
require 'mailslurp_client/models/create_connector_options'
require 'mailslurp_client/models/create_connector_smtp_connection_options'
require 'mailslurp_client/models/create_contact_options'
require 'mailslurp_client/models/create_domain_options'
require 'mailslurp_client/models/create_emergency_address_options'
require 'mailslurp_client/models/create_group_options'
require 'mailslurp_client/models/create_inbox_dto'
require 'mailslurp_client/models/create_inbox_forwarder_options'
require 'mailslurp_client/models/create_inbox_replier_options'
require 'mailslurp_client/models/create_inbox_ruleset_options'
require 'mailslurp_client/models/create_template_options'
require 'mailslurp_client/models/create_tracking_pixel_options'
require 'mailslurp_client/models/create_webhook_options'
require 'mailslurp_client/models/dns_lookup_options'
require 'mailslurp_client/models/dns_lookup_result'
require 'mailslurp_client/models/dns_lookup_results'
require 'mailslurp_client/models/dns_lookups_options'
require 'mailslurp_client/models/delivery_status_dto'
require 'mailslurp_client/models/describe_domain_options'
require 'mailslurp_client/models/describe_mail_server_domain_result'
require 'mailslurp_client/models/domain_dto'
require 'mailslurp_client/models/domain_group'
require 'mailslurp_client/models/domain_groups_dto'
require 'mailslurp_client/models/domain_information'
require 'mailslurp_client/models/domain_issues_dto'
require 'mailslurp_client/models/domain_name_record'
require 'mailslurp_client/models/domain_preview'
require 'mailslurp_client/models/download_attachment_dto'
require 'mailslurp_client/models/email'
require 'mailslurp_client/models/email_analysis'
require 'mailslurp_client/models/email_available_result'
require 'mailslurp_client/models/email_content_match_result'
require 'mailslurp_client/models/email_content_part_result'
require 'mailslurp_client/models/email_feature_category_name'
require 'mailslurp_client/models/email_feature_family_name'
require 'mailslurp_client/models/email_feature_family_statistics'
require 'mailslurp_client/models/email_feature_names'
require 'mailslurp_client/models/email_feature_overview'
require 'mailslurp_client/models/email_feature_platform_name'
require 'mailslurp_client/models/email_feature_platform_statistics'
require 'mailslurp_client/models/email_feature_support_flags'
require 'mailslurp_client/models/email_feature_support_result'
require 'mailslurp_client/models/email_feature_support_status_percentage'
require 'mailslurp_client/models/email_feature_version_statistics'
require 'mailslurp_client/models/email_html_dto'
require 'mailslurp_client/models/email_links_result'
require 'mailslurp_client/models/email_preview'
require 'mailslurp_client/models/email_preview_urls'
require 'mailslurp_client/models/email_projection'
require 'mailslurp_client/models/email_recipients'
require 'mailslurp_client/models/email_screenshot_result'
require 'mailslurp_client/models/email_text_lines_result'
require 'mailslurp_client/models/email_validation_request_dto'
require 'mailslurp_client/models/email_verification_result'
require 'mailslurp_client/models/emergency_address'
require 'mailslurp_client/models/emergency_address_dto'
require 'mailslurp_client/models/empty_response_dto'
require 'mailslurp_client/models/expiration_defaults'
require 'mailslurp_client/models/expired_inbox_dto'
require 'mailslurp_client/models/expired_inbox_record_projection'
require 'mailslurp_client/models/export_link'
require 'mailslurp_client/models/export_options'
require 'mailslurp_client/models/fake_email_dto'
require 'mailslurp_client/models/fake_email_preview'
require 'mailslurp_client/models/fake_email_result'
require 'mailslurp_client/models/filter_bounced_recipients_options'
require 'mailslurp_client/models/filter_bounced_recipients_result'
require 'mailslurp_client/models/flush_expired_inboxes_result'
require 'mailslurp_client/models/forward_email_options'
require 'mailslurp_client/models/generate_bimi_record_options'
require 'mailslurp_client/models/generate_bimi_record_results'
require 'mailslurp_client/models/generate_dmarc_record_options'
require 'mailslurp_client/models/generate_dmarc_record_results'
require 'mailslurp_client/models/generate_mta_sts_record_options'
require 'mailslurp_client/models/generate_mta_sts_record_results'
require 'mailslurp_client/models/generate_tls_reporting_record_options'
require 'mailslurp_client/models/generate_tls_reporting_record_results'
require 'mailslurp_client/models/get_email_screenshot_options'
require 'mailslurp_client/models/gravatar_url'
require 'mailslurp_client/models/group_contacts_dto'
require 'mailslurp_client/models/group_dto'
require 'mailslurp_client/models/group_projection'
require 'mailslurp_client/models/html_validation_result'
require 'mailslurp_client/models/ip_address_result'
require 'mailslurp_client/models/image_issue'
require 'mailslurp_client/models/imap_access_details'
require 'mailslurp_client/models/imap_email_projection'
require 'mailslurp_client/models/imap_flag_operation_options'
require 'mailslurp_client/models/imap_mailbox_status'
require 'mailslurp_client/models/imap_server_fetch_item'
require 'mailslurp_client/models/imap_server_fetch_result'
require 'mailslurp_client/models/imap_server_get_result'
require 'mailslurp_client/models/imap_server_list_options'
require 'mailslurp_client/models/imap_server_list_result'
require 'mailslurp_client/models/imap_server_mailbox_result'
require 'mailslurp_client/models/imap_server_search_options'
require 'mailslurp_client/models/imap_server_search_result'
require 'mailslurp_client/models/imap_server_status_options'
require 'mailslurp_client/models/imap_server_status_result'
require 'mailslurp_client/models/imap_smtp_access_details'
require 'mailslurp_client/models/imap_smtp_access_servers'
require 'mailslurp_client/models/imap_update_flags_options'
require 'mailslurp_client/models/inbox_by_email_address_result'
require 'mailslurp_client/models/inbox_by_name_result'
require 'mailslurp_client/models/inbox_dto'
require 'mailslurp_client/models/inbox_exists_dto'
require 'mailslurp_client/models/inbox_forwarder_dto'
require 'mailslurp_client/models/inbox_forwarder_event_dto'
require 'mailslurp_client/models/inbox_forwarder_event_projection'
require 'mailslurp_client/models/inbox_forwarder_test_options'
require 'mailslurp_client/models/inbox_forwarder_test_result'
require 'mailslurp_client/models/inbox_id_item'
require 'mailslurp_client/models/inbox_ids_result'
require 'mailslurp_client/models/inbox_preview'
require 'mailslurp_client/models/inbox_replier_dto'
require 'mailslurp_client/models/inbox_replier_event_projection'
require 'mailslurp_client/models/inbox_ruleset_dto'
require 'mailslurp_client/models/inbox_ruleset_test_options'
require 'mailslurp_client/models/inbox_ruleset_test_result'
require 'mailslurp_client/models/inline_object'
require 'mailslurp_client/models/json_schema_dto'
require 'mailslurp_client/models/link_issue'
require 'mailslurp_client/models/list_unsubscribe_recipient_projection'
require 'mailslurp_client/models/lookup_bimi_domain_options'
require 'mailslurp_client/models/lookup_bimi_domain_results'
require 'mailslurp_client/models/lookup_dmarc_domain_options'
require 'mailslurp_client/models/lookup_dmarc_domain_results'
require 'mailslurp_client/models/lookup_mta_sts_domain_options'
require 'mailslurp_client/models/lookup_mta_sts_domain_results'
require 'mailslurp_client/models/lookup_tls_reporting_domain_options'
require 'mailslurp_client/models/lookup_tls_reporting_domain_results'
require 'mailslurp_client/models/match_option'
require 'mailslurp_client/models/match_options'
require 'mailslurp_client/models/missed_email_dto'
require 'mailslurp_client/models/missed_email_projection'
require 'mailslurp_client/models/name_server_record'
require 'mailslurp_client/models/new_fake_email_address_result'
require 'mailslurp_client/models/organization_inbox_projection'
require 'mailslurp_client/models/page_alias'
require 'mailslurp_client/models/page_attachment_entity'
require 'mailslurp_client/models/page_bounced_email'
require 'mailslurp_client/models/page_bounced_recipients'
require 'mailslurp_client/models/page_complaint'
require 'mailslurp_client/models/page_connector'
require 'mailslurp_client/models/page_connector_sync_events'
require 'mailslurp_client/models/page_contact_projection'
require 'mailslurp_client/models/page_delivery_status'
require 'mailslurp_client/models/page_email_preview'
require 'mailslurp_client/models/page_email_projection'
require 'mailslurp_client/models/page_email_validation_request'
require 'mailslurp_client/models/page_expired_inbox_record_projection'
require 'mailslurp_client/models/page_group_projection'
require 'mailslurp_client/models/page_inbox_forwarder_dto'
require 'mailslurp_client/models/page_inbox_forwarder_events'
require 'mailslurp_client/models/page_inbox_projection'
require 'mailslurp_client/models/page_inbox_replier_dto'
require 'mailslurp_client/models/page_inbox_replier_events'
require 'mailslurp_client/models/page_inbox_ruleset_dto'
require 'mailslurp_client/models/page_list_unsubscribe_recipients'
require 'mailslurp_client/models/page_missed_email_projection'
require 'mailslurp_client/models/page_organization_inbox_projection'
require 'mailslurp_client/models/page_phone_number_projection'
require 'mailslurp_client/models/page_scheduled_jobs'
require 'mailslurp_client/models/page_sent_email_projection'
require 'mailslurp_client/models/page_sent_email_with_queue_projection'
require 'mailslurp_client/models/page_sms_projection'
require 'mailslurp_client/models/page_template_projection'
require 'mailslurp_client/models/page_thread_projection'
require 'mailslurp_client/models/page_tracking_pixel_projection'
require 'mailslurp_client/models/page_unknown_missed_email_projection'
require 'mailslurp_client/models/page_webhook_projection'
require 'mailslurp_client/models/page_webhook_result'
require 'mailslurp_client/models/pageable_object'
require 'mailslurp_client/models/phone_number_dto'
require 'mailslurp_client/models/phone_number_projection'
require 'mailslurp_client/models/phone_plan_dto'
require 'mailslurp_client/models/raw_email_json'
require 'mailslurp_client/models/recipient'
require 'mailslurp_client/models/reply_for_sms'
require 'mailslurp_client/models/reply_to_alias_email_options'
require 'mailslurp_client/models/reply_to_email_options'
require 'mailslurp_client/models/scheduled_job'
require 'mailslurp_client/models/scheduled_job_dto'
require 'mailslurp_client/models/search_emails_options'
require 'mailslurp_client/models/search_inboxes_options'
require 'mailslurp_client/models/send_email_body_part'
require 'mailslurp_client/models/send_email_options'
require 'mailslurp_client/models/send_smtp_envelope_options'
require 'mailslurp_client/models/send_with_queue_result'
require 'mailslurp_client/models/sender'
require 'mailslurp_client/models/sent_email_dto'
require 'mailslurp_client/models/sent_email_projection'
require 'mailslurp_client/models/sent_sms_dto'
require 'mailslurp_client/models/server_endpoints'
require 'mailslurp_client/models/set_inbox_favourited_options'
require 'mailslurp_client/models/simple_send_email_options'
require 'mailslurp_client/models/sms_dto'
require 'mailslurp_client/models/sms_match_option'
require 'mailslurp_client/models/sms_preview'
require 'mailslurp_client/models/sms_projection'
require 'mailslurp_client/models/sms_reply_options'
require 'mailslurp_client/models/smtp_access_details'
require 'mailslurp_client/models/sort_object'
require 'mailslurp_client/models/spelling_issue'
require 'mailslurp_client/models/template_dto'
require 'mailslurp_client/models/template_preview'
require 'mailslurp_client/models/template_projection'
require 'mailslurp_client/models/template_variable'
require 'mailslurp_client/models/test_inbox_ruleset_receiving_options'
require 'mailslurp_client/models/test_inbox_ruleset_receiving_result'
require 'mailslurp_client/models/test_inbox_ruleset_sending_options'
require 'mailslurp_client/models/test_inbox_ruleset_sending_result'
require 'mailslurp_client/models/test_new_inbox_forwarder_options'
require 'mailslurp_client/models/test_new_inbox_ruleset_options'
require 'mailslurp_client/models/test_phone_number_options'
require 'mailslurp_client/models/thread_projection'
require 'mailslurp_client/models/tracking_pixel_dto'
require 'mailslurp_client/models/tracking_pixel_projection'
require 'mailslurp_client/models/unknown_missed_email_projection'
require 'mailslurp_client/models/unread_count'
require 'mailslurp_client/models/unseen_error_count_dto'
require 'mailslurp_client/models/update_alias_options'
require 'mailslurp_client/models/update_domain_options'
require 'mailslurp_client/models/update_group_contacts'
require 'mailslurp_client/models/update_imap_access_options'
require 'mailslurp_client/models/update_inbox_options'
require 'mailslurp_client/models/update_inbox_replier_options'
require 'mailslurp_client/models/update_smtp_access_options'
require 'mailslurp_client/models/upload_attachment_options'
require 'mailslurp_client/models/user_info_dto'
require 'mailslurp_client/models/validate_email_address_list_options'
require 'mailslurp_client/models/validate_email_address_list_result'
require 'mailslurp_client/models/validation_dto'
require 'mailslurp_client/models/validation_message'
require 'mailslurp_client/models/verify_email_address_options'
require 'mailslurp_client/models/verify_webhook_signature_options'
require 'mailslurp_client/models/verify_webhook_signature_results'
require 'mailslurp_client/models/wait_for_conditions'
require 'mailslurp_client/models/wait_for_single_sms_options'
require 'mailslurp_client/models/wait_for_sms_conditions'
require 'mailslurp_client/models/webhook_bounce_payload'
require 'mailslurp_client/models/webhook_bounce_recipient_payload'
require 'mailslurp_client/models/webhook_delivery_status_payload'
require 'mailslurp_client/models/webhook_dto'
require 'mailslurp_client/models/webhook_email_opened_payload'
require 'mailslurp_client/models/webhook_email_read_payload'
require 'mailslurp_client/models/webhook_header_name_value'
require 'mailslurp_client/models/webhook_headers'
require 'mailslurp_client/models/webhook_new_attachment_payload'
require 'mailslurp_client/models/webhook_new_contact_payload'
require 'mailslurp_client/models/webhook_new_email_payload'
require 'mailslurp_client/models/webhook_new_sms_payload'
require 'mailslurp_client/models/webhook_projection'
require 'mailslurp_client/models/webhook_redrive_all_result'
require 'mailslurp_client/models/webhook_redrive_result'
require 'mailslurp_client/models/webhook_result_dto'
require 'mailslurp_client/models/webhook_test_request'
require 'mailslurp_client/models/webhook_test_response'
require 'mailslurp_client/models/webhook_test_result'

# APIs
require 'mailslurp_client/api/alias_controller_api'
require 'mailslurp_client/api/attachment_controller_api'
require 'mailslurp_client/api/bounce_controller_api'
require 'mailslurp_client/api/bulk_actions_controller_api'
require 'mailslurp_client/api/common_actions_controller_api'
require 'mailslurp_client/api/connector_controller_api'
require 'mailslurp_client/api/contact_controller_api'
require 'mailslurp_client/api/domain_controller_api'
require 'mailslurp_client/api/email_controller_api'
require 'mailslurp_client/api/email_verification_controller_api'
require 'mailslurp_client/api/expired_controller_api'
require 'mailslurp_client/api/export_controller_api'
require 'mailslurp_client/api/form_controller_api'
require 'mailslurp_client/api/group_controller_api'
require 'mailslurp_client/api/imap_controller_api'
require 'mailslurp_client/api/inbox_controller_api'
require 'mailslurp_client/api/inbox_forwarder_controller_api'
require 'mailslurp_client/api/inbox_replier_controller_api'
require 'mailslurp_client/api/inbox_ruleset_controller_api'
require 'mailslurp_client/api/mail_server_controller_api'
require 'mailslurp_client/api/missed_email_controller_api'
require 'mailslurp_client/api/phone_controller_api'
require 'mailslurp_client/api/sent_emails_controller_api'
require 'mailslurp_client/api/sms_controller_api'
require 'mailslurp_client/api/template_controller_api'
require 'mailslurp_client/api/tools_controller_api'
require 'mailslurp_client/api/tracking_controller_api'
require 'mailslurp_client/api/user_controller_api'
require 'mailslurp_client/api/wait_for_controller_api'
require 'mailslurp_client/api/webhook_controller_api'

module MailSlurpClient
  class << self
    # Customize default settings for the SDK using block.
    #   MailSlurpClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
