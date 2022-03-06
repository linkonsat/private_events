# frozen_string_literal: true

require 'test_helper'

class EventAttendeesControllerTest < ActionDispatch::IntegrationTest
  test 'should get sign_up' do
    get event_attendees_sign_up_url
    assert_response :success
  end
end
