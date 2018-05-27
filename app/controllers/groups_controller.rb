# frozen_string_literal: true

class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @groups = Group.where(owner_id: current_user.id) # TODO: tu trzeba bedzie dorzucic cos w stylu where owner_id = 1
  end

  def show
    @group = Group.find(params[:id])

  end

  def new; end

  def create
    if current_user == nil
      show
      return
    end

    @group = Group.new(groups_params.merge(owner_id: current_user.id))

    if @group.save
      @group.users << current_user
      redirect_to action: "index"
    else
      show
    end
  end

  def add_user
    @group = Group.find(params[:group_id])
    @founded_user = User.find_by(display_name: params["name"])

    if @founded_user != nil
      @group.users << @founded_user

    end
    redirect_to group_path(@group.id)

  end

  private

  def groups_params
    params.require(:group).permit(:name)
  end
end
