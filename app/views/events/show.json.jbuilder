json.event do
  json.id @event.id
  json.date @event.date
  json.city @event.city
  json.state @event.state
  json.status @event.status
  json.created_at @event.created_at
  json.updated_at @event.updated_at

  json.details @event.details do |detail|
    json.id detail.id
    json.dos_contact detail.dos_contact
    json.parking detail.parking
    json.load_in detail.load_in
    json.load_in_location detail.load_in_location
    json.door_time detail.door_time
    json.set_time detail.set_time
    json.backline detail.backline
    json.hospitality detail.hospitality
    json.green_room detail.green_room
    json.showers detail.showers
    json.laundry detail.laundry
    json.wifi detail.wifi
    json.misc detail.misc
    json.event_id detail.event_id
    json.created_at detail.created_at
    json.updated_at detail.updated_at
  end
end
