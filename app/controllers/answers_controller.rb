class AnswersController < ApplicationController



    def create
        @question = Question.find(params[:question_id])
        @answer = @question.answers.create(answers_params)
        @answer.user = current_user
        @answer.save

        redirect_to questions_url
    end


    def destroy
        @question = Question.find(params[:question_id])
        @answer = @question.answers.find(params[:id]).destroy
        redirect_to questions_url
    end

    private
    def answers_params
        params.require(:answer).permit(:content)
    end

end