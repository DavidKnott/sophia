class AnswersController < ApplicationController

  def index
    @answers = Answer.all
  end

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @user = User.find(session[:user])
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answer.question = @question
    @answer.author = @user 
    if @answer.save
      flash[:success] = "Thanks for answering that question!"
      redirect_to question_answers_path(@question)
    end
  end


  private

  def answer_params
    params.require(:answer).permit(:answer)
  end

end