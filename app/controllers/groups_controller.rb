# frozen_string_literal: true

class GroupsController < ApplicationController
  def index
    @groups = Group.where(owner_id: current_user.id) # TODO: tu trzeba bedzie dorzucic cos w stylu where owner_id = 1
  end

  def show
    
  end

  def new; end

  def create
    if current_user == nil
      show
      return
    end

    @group = Group.new(groups_params.merge(owner_id: current_user.id))

    if @group.save
      redirect_to action: "index"
    else
      show
    end
  end

  def add_user
    # potrzebna relacja do userow
  end

  private

  def groups_params
    params.require(:group).permit(:name)
  end
end
