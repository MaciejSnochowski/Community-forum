class CommunitiesController <  ApplicationController
    before_action :authenticate_user!, except: [:index, :show]

    def index
        @communities =Community.all
    end

    def new
        @community =Community.new
    end

    def creat

    end

    def show

    end
end
