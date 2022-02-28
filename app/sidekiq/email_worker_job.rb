class EmailWorkerJob
  include Sidekiq::Job

  def perform(event_id)
    # Do something
    #debugger
    event = Event.find(event_id)
  end
end
