class GigsController < ApplicationController


def index
	@gigs = Gig.all.order("created_at DESC").page(params[:page]).per(10)

end

def new
	@gig = Gig.new
	
end

def create
	@gig = Gig.new(gig_params)
	@gig.save
	redirect_to @gig
	
end


def show
	@gig = Gig.find(params[:id])
end

def search
	@gigs = Gig.search(params).page(params[:page]).per(10)
	
end


private
	def gig_params
		params.require(:gig).permit(:name, :description, :budget, :location, :open, :category_id, :skill_list)
	end

end