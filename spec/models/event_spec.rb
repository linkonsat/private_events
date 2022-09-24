# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Event, type: :model do
  it 'Returns future events.' do
    user = create(:user)
    event = create(:event, name: "new event", description: "a cool event.", creator: "bill", event_end_date: DateTime.new(2101, 2, 3.5), event_date: DateTime.new(2001, 2, 3.5))
    future_events = Event.future_events_spotlight
    expect(future_events.first).to eql(event)
  end
  it 'Returns past events.' do
    user = create(:user)
    event = create(:event, name: "new event", description: "a cool event.", creator: "bill", event_end_date: DateTime.new(2002, 2, 3.5), event_date: DateTime.new(2001, 2, 3.5))
    past_events = Event.past_events_spotlight
    expect(past_events.first).to eql(event)
  end
  it 'Returns events with keywords' do 
    user = create(:user)
    event = create(:event, name: "new event", description: "a cool event.", creator: "bill", event_end_date: DateTime.new(2101, 2, 3.5), event_date: DateTime.new(2001, 2, 3.5))
    second_event = create(:event, id: 2, name: "new event", description: "a cooltastic event.", creator: "bill", event_end_date: DateTime.new(2101, 2, 3.5), event_date: DateTime.new(2001, 2, 3.5))
    keyword_event = Event.keyword_events("tas")
    expect(keyword_event.first).to eql(second_event)
  end
end
