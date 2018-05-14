class Country < ApplicationRecord
  has_many :states

  def self.select_values
    Country.all.map { |country| [country.name, country.id, { data: { url: data_url(country) }}] }
  end

  private

  def self.data_url(country)
    # /countries/1234/states.json
    Rails.application.routes.url_helpers.country_states_path(country, format: :json)
  end
end
