#Work with ajax. Respond json.
class GeoController < ApplicationController
#Show all user with last lat and log
def index
  @geopoints = User.all
  render json: @geopoints
end
#Show one user with his history
def show
  if user_id_params
    @geopoints = Geopoint.all.where(user_id: @user_id)
    render json: @geopoints
  else
     #not found
     render json: "empty_error", status: 423
  end
end
#Create new geopoint for user
def create
  if geo_params
      point = @user.geopoints.build
      point[:lat] = @geopoint[:lat]
      point[:lon] = @geopoint[:lon]
      if point.save
        #geopoint saved successfuly
        render json: "ok", status: 200
      else
        #validate error
        render json: "validate_error", status: 422
      end
    else
      #NotFound user
      render json: "empty_error", status: 423
    end
end

private
  #Find user by login
  def geo_params
    @geopoint = params[:geopoint]
    @user = User.find_by(login: @geopoint[:login])
    @user
  end
  #Find user by id
  def user_id_params
    @user_id = User.find_by(id: params[:user_id])
    @user_id
  end
end