class AgenciesController < ApplicationController
  def index
    @agencies = Agency.all
  end

  def show
    @agency = Agency.find(params[:id])
  end

  def new
    @agency = Agency.new
  end

  def create
    @agency = Agency.create(agency_params)
  end

  def update
  end

  def delete
  end

  def agency_params
      params.require(:agency).permit(
        :name,
        :number_of_staff,
        :annual_revenue,
        :hourly_rate,
        :slogan,
        :description,
        :min_project_size,
        :website,
        :phone,
        :behance_profile,
        :facebook_profile,
        :twitter_profile,
        :linkedin_profile,
        :user_id,
        :email
      )
  end
end
