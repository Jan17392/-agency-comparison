class AgenciesController < ApplicationController
  def index
      @filterrific = initialize_filterrific(
        Agency,
        params[:filterrific]
      ) or return
      @agencies = @filterrific.find.page(params[:page])

      respond_to do |format|
        format.html
        format.js
      end
  end

  def show
    @agency = Agency.where(name: params[:name]).first
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
