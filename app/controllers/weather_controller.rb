class WeatherController < ApplicationController
  def index
    # client = OpenWeather::Client.new(
    #   api_key: Rails.application.credentials.dig(:openweather, :api_key)
    # )
    client = OpenWeather::Client.new(api_key: ENV["OPENWEATHER_API_KEY"])
    if params[:city].present?
      city = params[:city]

      begin
        @data = client.current_weather(city: city, units: 'metric')
        # Rails.logger.debug "Data: #{@data.inspect}"
      rescue StandardError => e
        Rails.logger.error "Weather API Error: #{e.message}"
        flash[:alert] = "Sorry, we couldn't retrieve the weather for that city."
      end
      # Rails.logger.debug "Params: #{params.to_unsafe_h}"
    end
  end

    
end
