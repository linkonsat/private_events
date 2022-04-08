class EventTag < ApplicationRecord
  belongs_to :event
  validate :has_hash
  def has_hash
    valid_tags = []
    split_tags = self[:name].split(" ")
    split_tags.each do |string|
    if(!string.start_with?("#"))
      errors.add :invalid_characters, "One of your hashtags does not start with #.Please make sure it starts with #."
    end
    end
  end
end
