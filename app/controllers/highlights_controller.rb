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

    def edit
      @highlight = Highlight.find(params[:id])
    end

    def update
      @highlight = Highlight.find(params[:id])

      respond_to do |format|
        if @highlight.update(params.require(:highlight).permit(:title, :subtitle, :body))
          format.html { redirect_to highlights_path, notice: 'Portfolio item was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end

    def show
      @highlight = Highlight.find(params[:id])
    end

    def destroy
      @highlight = Highlight.find(params[:id])

      @highlight.destroy

      respond_to do |format|
        format.html { redirect_to highlights_url, notice: 'Portfolio item was successfully destroyed.' }
      end

    end

end