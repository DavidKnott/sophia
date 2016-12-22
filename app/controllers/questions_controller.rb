class QuestionsController < ApplicationController
  before_action :require_login, except: [:index, :show]

  def require_login
    redirect_to login_path unless current_user
  end

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = User.find(session[:user]).questions.new(question_params)
    if @question.save
      flash[:success] = "Thanks for asking!"
      redirect_to question_path(@question)
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  private

  def question_params
    params.require(:question).permit(:content)
  end

end