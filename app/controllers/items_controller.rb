class ItemsController < ApplicationController
    def index
        items = Item.all
        render json: items, include: {user:{only: [:id, :username, :city]}}, except: [:created_at, :updated_at, :user_id]
    end
end
