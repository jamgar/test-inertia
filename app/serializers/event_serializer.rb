class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :start_date
end
