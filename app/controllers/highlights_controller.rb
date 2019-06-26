class HighlightsController < ApplicationController
    def index
        @highlights = Highlight.all
    end

    def new
        @highlight = Highlight.new
        3.times { @highlight.technologies.build }
    end

    def create
        @highlight = Highlight.new(highlight_params)
    
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
        if @highlight.update(highlight_params)
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

    private

    def highlight_params
      params.require(:highlight).permit(:title,
                                        :subtitle, 
                                        :body, 
                                        technologies_attributes: [:name])
    end

end