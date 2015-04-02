class Api::V1::CharactersController < ApplicationController
  # before_filter :restrict_access
  
  def index 
    @characters = Character.all
  end

  def new 

  end 

  def show
    @character = Character.find(params[:id])
  end

  def create
    @character = Character.new(:first_name => params[:first_name], :last_name => params[:last_name], :house => params[:house], :birth_year => params[:birth_year], :death_year => params[:death_year], :born => params[:born], :bio => params[:bio])
    if @character.save 
    else
      render json: { errors: @character.errors.full_messages }, status: 422
    end
    render 'show'
  end

  private

  # did the user submit an email and api key that match? 
  # if no = access denied

  # match = truthy && goes on
  # no match = falsey (can't do that)

  # with a find_by method you use a comma to signify and

  def restrict_access
    authenticate_or_request_with_http_token do |api_key, options|
      User.find_by(api_key: api_key, email: request.headers["X-USER-Email"])
    end
  end

end
