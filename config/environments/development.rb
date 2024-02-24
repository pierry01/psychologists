require "active_support/core_ext/integer/time"

Rails.application.configure do
  config.eager_load = false
  config.server_timing = true
  config.enable_reloading = true
  config.consider_all_requests_local = true

  if Rails.root.join("tmp/caching-dev.txt").exist?
    config.action_controller.perform_caching = true
    config.action_controller.enable_fragment_cache_logging = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      "Cache-Control" => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
  end

  config.active_storage.service = :local
  config.active_support.deprecation = :log
  config.action_mailer.perform_caching = false
  config.active_job.verbose_enqueue_logs = true
  config.active_record.verbose_query_logs = true
  config.active_record.migration_error = :page_load
  config.action_mailer.raise_delivery_errors = false
  config.active_support.disallowed_deprecation = :raise
  config.active_support.disallowed_deprecation_warnings = []
  config.action_controller.raise_on_missing_callback_actions = true
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
end
