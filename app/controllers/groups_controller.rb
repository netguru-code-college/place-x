class GroupsController < ApplicationController
    def index
        render "show"
    end
    
    def show
        @groups = Group.all # tu trzeba bedzie dorzucic cos w stylu where owner_id = 1
    end

    def new 
    end

    def create
        @group = Group.new(groups_params)
        
        if (@group.save)
            redirect_to @group
        else
            render "show"
        end
    end

    def add_user

    end

    private
    def groups_params
        params.require(:group).permit(:owner_id, :name)
    end

end
