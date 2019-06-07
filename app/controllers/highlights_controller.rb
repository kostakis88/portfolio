class HighlightsController < ApplicationController
    def index
        @highlights = Highlight.all
    end

    def new
        @highlight = Highlight.new
    end

    def create
        @highlight = Highlight.new(params.require(:highlight).permit(:title, :subtitle, :body))
    
        respond_to do |format|
          if @highlight.save
            format.html { redirect_to highlights_path, notice: 'Highlight was successfully created.' }
          else
            format.html { render :new }
          end
        end
    end
end