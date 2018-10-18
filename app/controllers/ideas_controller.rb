class IdeasController < ApplicationController




    def show
      @idea = Idea.find params[:id]
      

    end

    def index
      @ideas = Idea.all

    end

    def update
      @ideas = Idea.find params[:id]
      @ideas.update(idea_params)
      redirect_to ideas_path(@ideas.id)
    end

    def edit
      @ideas = Idea.find params[:id]
    end



    def new
      @ideas = Idea.new

    end

    def create

      @ideas = Idea.new (idea_params)
      @ideas.user_id = @current_user.id

      @ideas.save
        if @ideas.persisted?
        redirect_to ideas_path
      else
        flash[:errors] =
        @ideas.errors.full_messages
        render :new
        end







      end


  def destroy
  @idea = Idea.find params[:id]
  @idea.destroy
  redirect_to( ideas_path )

  end

    private
    def idea_params
      params.require(:idea).permit(:idea_title, :idea_description)
    end

  end
