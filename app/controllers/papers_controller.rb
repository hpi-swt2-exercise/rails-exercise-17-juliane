class PapersController < ApplicationController
	def new
		@paper = Paper.new
	end

	def create
		@author = Author.find(params[:author_id])
		@paper = @author.paper.create(paper_params)
		redirect_to author_path(@article)
	end

	private
		def paper_params
			params.require(:paper).permit(:title, :venue, :year)
		end
end
