require 'rails_helper'

RSpec.describe Event, type: :model do
  it "Returns future events." do 
    user = create(:user)
    event = create(:event, :event_end_date => DateTime.new(2101,2,3.5))
    future_events = Event.future_events_spotlight
    expect(future_events.first).to eql(event)
  end
  it "Returns past events." do 
    user = create(:user)
    event = create(:event, :event_end_date => DateTime.new(2000,2,3.5))
    past_events = Event.past_events_spotlight
    expect(past_events.first).to eql(event)
end
end
