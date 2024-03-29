# frozen_string_literal: true

class EventsController < ApplicationController
  def index
    @events = Event.all
    @past_events = Event.past_events_spotlight
    @future_events = Event.future_events_spotlight
  end

  def new
    @event = Event.new
    @event_id = if Event.all.empty?
                  1
                else
                  Event.last.id + 1
                end
    @event.build_event_option
    @event.event_tags.build
  end

  def show
    @event = Event.where('id = ?', params[:id])
  end

  def create
    @event = Event.new(event_params)
    @event.save!
    redirect_to @event
  end

  def all_events
    @event = Event.all
  end

  def event_actions
    @event = Event.find(params[:format])
    @event_invite = EventInvite.new
    @current_user = User.find(current_user.id)
    @reward_id = @current_user.reward.id
    @promo_codes = @current_user.reward.promo_codes
    puts @promo_codes
    code = PromoCode.generate_promo_code
    response.headers['code'] = code.as_json
  end

  def attended_events
    @attended_events = EventAttendee.where('id = ?', current_user[:id])
  end

  def edit
    @event = Event.find(params[:id])
    @event_invite = EventInvite.new
  end

  def update
    @event = Event.find(params[:id])
    EmailWorkerJob.perform_async(params[:id]) if @event.update(event_params)
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to root_path, status: :see_other
  end

  def created_events
    @created_events = Event.where('user_id =?', current_user[:id])
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :creator, :event_date, :event_end_date, :user_id,
                                  event_option_attributes: %i[maximum_guests private reoccuring event_id],
                                  event_tags_attributes: [:name])
  end
end
