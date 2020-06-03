class Api::V1::AnswersController < ApplicationController
    def index 
        @answers = Answer.where(question_id: params[:question_id])
        render json: @answers
    end

    def create 
        @question = Question.find_by(id: params:[:question_id])
        @answer = @question.answers.create(answer_params)
        render json: @answer
    end

    def delete 
        @answer = Answer.find(params[:id])
        if @answer 
            @answer.destroy 
            render json: {message: "Answer successfully destroyed."}
        else 
            render json: [message: "Failed to delete answer."]
        end
    end

    private 
    def answer_params
        params.require(:answer).permit(:content)
    end
end
