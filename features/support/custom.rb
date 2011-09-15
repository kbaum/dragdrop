require 'action_controller/record_identifier'

World ActionController::RecordIdentifier

Capybara.javascript_driver = ENV['WEB_TEST_JS_DRIVER'].try(:to_sym) || :webkit
