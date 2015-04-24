class AnswersController < ApplicationController
	def create
		@question = Question.find(params[:id])
		@answer = @question.answers.new(params.require(:answer).permit(:title, :body))
		@answer.save
		 redirect_to question_path(@question)
 	 end


end
