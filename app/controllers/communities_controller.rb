class CommunitiesController <  ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    before_action :set_community, only: [:show]

    def index
        @communities =Community.all
    end

    def new
        @community =Community.new
    end

    def create
        @community =Community.new(community_params)
        @community.user_id =current_user.id
        if @community.save
          redirect_to @community
        else
          render :new
        end

    end

    def show
       # @community = Community.find(params[:id])
       @posts = @community.posts
      
    end

    private
    def set_community
      @community = Community.find(params[:id])
    end
    def community_params
        params.require(:community).permit(:name, :url,:rules)
      end
end
