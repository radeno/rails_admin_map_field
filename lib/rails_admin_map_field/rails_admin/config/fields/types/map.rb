module RailsAdmin::Config::Fields::Types
  class Map < RailsAdmin::Config::Fields::Base
    RailsAdmin::Config::Fields::Types::register(:map, self)

    # THe name of the corresponding longitude field to match the latitude field
    # in this object.
    register_instance_option(:longitude_field) do
      "lng"
    end

    register_instance_option(:latitude_field) do
      "lnt"
    end

    register_instance_option(:street_field) do
      "street"
    end

    register_instance_option(:house_field) do
      "house"
    end

    register_instance_option(:city_field) do
      "city"
    end

    register_instance_option(:state_field) do
      "state"
    end

    register_instance_option(:partial) do
      :form_map
    end

    # Google Maps API Key - optional
    register_instance_option(:google_api_key) do
      nil
    end

    # Latitude value to display in the map if the latitude attribute is nil
    # (Otherwise the location defaults to (0,0) which is in the Gulf of Guinea
    register_instance_option(:default_latitude) do
      55.7534
    end

    # Longitude value to display if the longitude attribute is nil
    register_instance_option(:default_longitude) do
      37.622
    end

    # Default zoom level of the map
    register_instance_option(:default_zoom_level) do
      8
    end

    def dom_name
      "#{bindings[:form].object_name.gsub(/\]\[|[^-a-zA-Z0-9:.]/, "_").sub(/_$/, "")}#{@name}_#{longitude_field}"
    end

    def latitude_dom_name
      "#{bindings[:form].object_name.gsub(/\]\[|[^-a-zA-Z0-9:.]/, "_").sub(/_$/, "")}_#{latitude_field}"
    end

    def longitude_dom_name
      "#{bindings[:form].object_name.gsub(/\]\[|[^-a-zA-Z0-9:.]/, "_").sub(/_$/, "")}_#{longitude_field}"
    end

    def street_dom_name
      "#{bindings[:form].object_name.gsub(/\]\[|[^-a-zA-Z0-9:.]/, "_").sub(/_$/, "")}_#{street_field}"
    end

    def house_dom_name
      "#{bindings[:form].object_name.gsub(/\]\[|[^-a-zA-Z0-9:.]/, "_").sub(/_$/, "")}_#{house_field}"
    end

    def city_dom_name
      "#{bindings[:form].object_name.gsub(/\]\[|[^-a-zA-Z0-9:.]/, "_").sub(/_$/, "")}_#{city_field}"
    end

    def state_dom_name
      "#{bindings[:form].object_name.gsub(/\]\[|[^-a-zA-Z0-9:.]/, "_").sub(/_$/, "")}_#{state_field}"
    end
  end
end
