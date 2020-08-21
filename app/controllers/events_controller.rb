class EventsController < ApplicationController
  def index
    @events = Event.all
    render inertia: 'Events/Index', props: {
      events: {
        title: "This is cool title"
      }
    }
  end
  def show
    event = Event.find(params[:id])

    render inertia: 'Event/Show',
      props: {
        event: event.as_json(
          only: [ :id, :title, :start_date, :description ]
        )
      }
  end
end
