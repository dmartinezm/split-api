class GroupsController < ApplicationController

    def index
        groups = Group.all
        render json: groups
    end

    def show
        group = Group.find(params[:id])
        render json: group
    end

    def create
        group = Group.create(group_params)
        render json: group
    end

    def update
        group = Group.find(params[:id])
        group.update(group_name)
        render json: group
    end

    private

    def group_params
        params.permit(:user_id, :name)
    end

    def group_name
        params.permit(:name)

    end
end
