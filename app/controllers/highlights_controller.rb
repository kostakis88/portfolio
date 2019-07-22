class HighlightsController < ApplicationController
    before_action :set_highlight, only: [:edit, :update, :show, :destroy] 
    access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all
    layout "highlight"

    def index
        @highlights = Highlight.by_position
    end

    def sort
      params[:order].each do |key, value|
        Highlight.find(value[:id]).update(position: value[:position])
      end
      render nothing: true
    end

    def new
        @highlight = Highlight.new
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
    end

    def update
      respond_to do |format|
        if @highlight.update(highlight_params)
          format.html { redirect_to highlights_path, notice: 'Portfolio item was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end

    def show
    end

    def destroy
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
                                        :main_image,
                                        :thumb_image, 
                                        technologies_attributes: [:id, :name, :_destroy])
    end

    def set_highlight
      @highlight = Highlight.find(params[:id])
    end

end