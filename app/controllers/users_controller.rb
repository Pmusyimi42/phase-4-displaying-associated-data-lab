class UsersController < ApplicationController
    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user, include:{items:{only: [:id, :name, :description, :price]}}, except: [:created_at, :updated_at]
        else
            render json: {error:"User not found"}, status: :not_found
        end
    end
end
