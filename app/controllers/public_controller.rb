class PublicController <  ApplicationController
    def index
        @communities =Community.all
    end
end
