class QuestionsController < ApplicationController
    def index
    	    @questions = Question.all
    end

    def create
      # @user =  User.find(params[:id])
          @question = Question.new(params.require(:questions).permit(:title, :body))
          
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

end
