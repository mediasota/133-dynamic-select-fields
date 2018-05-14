class State < ApplicationRecord
  belongs_to :country

  def self.select_values(country)
    return [] unless country
    country.states.pluck(:name, :id)
  end
end
