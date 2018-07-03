# frozen_string_literal: true

require 'test_helper'

class ActiveRecordControllerTest < ActionDispatch::IntegrationTest
  test 'should get migration' do
    get active_record_migration_url
    assert_response :success
  end
end
