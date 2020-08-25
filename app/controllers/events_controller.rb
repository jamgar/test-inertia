class EventsController < ApplicationController
  before_action :authenticate_user!
  def index
    events = EventSerializer.new(Event.all).serializable_hash
    render inertia: 'Events/Index', props: {
      events: events
    }
  end

  def show
    @event = Event.find(params[:id])
    event = EventSerializer.new(@event).serializable_hash
    render inertia: 'Events/Show',
      props: {
        event: event
      }
  end
end
