require 'rails_helper'

RSpec.describe EventAttendee, type: :model do
  it "Does not allow multiple signups from the same user" do 
    user = create(:user)
    event = create(:event)
    new_attendee = EventAttendee.create!(:id => 1, :attendee_id => user.id, :event_id => event.id, :created_at => Time.now, :updated_at => Time.now)
    confirm_attendee = new_attendee.save
    expect(confirm_attendee).to eql(false)
  end
end
