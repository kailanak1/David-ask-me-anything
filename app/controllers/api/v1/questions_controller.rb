class Api::V1::QuestionsController < ApplicationController

    skip_before_action :authorized, only: [:index, :create, :show]

    def index 
        @questions = Question.all 
        render json: @questions 
    end

    def create 
        @question = Question.new(question_params)
        if @question.save 
            render json: @question 
        else 
            render json: {errors: {message: "Failed to create question."}}
        end
    end

    def show 
        @question = Question.find_by(id: params[:id])
    end

    def destroy 
        @question = Question.find(params[:id])
        if @question.destroy 
            render status: 204 
        else 
            render json: {message: "Failed to delete question."}
        end
    end

    private 
    def question_params
        params.require(:question).permit(:title, :context, :coin, :points)
    end
end
