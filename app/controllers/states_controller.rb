class StatesController < ApplicationController
  def index
    country = Country.includes(:states).find(params[:country_id])
    render json: country.states.select(:name, :id).map { |s| { id: s.id, name: s.name } }
  end
end