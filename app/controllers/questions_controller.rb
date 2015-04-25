class QuestionsController < ApplicationController
    def index
    	    @questions = Question.all
    end

    def create
          # @user =  User.find(params[:id])
          @question = Question.new(params.require(:question).permit(:title, :body))
          if @question.save
          redirect_to questions_path(@question)
        end
    end

    def show
    	@question = Question.find(params[:id])
      @answer = Answer.new

    end

    def new
      @question = Question.new
    end

    def edit
        @question = Question.find(params[:id])
    end

    def update
      @question = Question.find(params[:id])
      if @question.update_attributes(params.require(:question).permit(:title, :body))
        redirect_to questions_path
      else
        render :edit
      end
    end

    def destroy
        @question = Question.find(params[:id])
        @question.destroy
        redirect_to questions_path
    end

    

   
end




