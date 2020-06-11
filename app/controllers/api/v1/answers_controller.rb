class Api::V1::AnswersController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def index 
        @answers = Answer.all
        render json: @answers
    end

    def create 
        @answer = Answer.create(answer_params)
        render json: @answer
    end

    def destroy 
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
        params.require(:answer).permit(:content, :question_id)
    end
end
