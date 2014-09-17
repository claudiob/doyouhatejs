class AnswersController < ActionController::Base
  protect_from_forgery with: :exception

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)

    if @answer.save
      redirect_to answers_path, notice: 'Answer was successfully created.'
    else
      render :new
    end
  end

  def index
    @answers = Answer.group(:yes_or_no).count
  end

private

  def answer_params
    params.require(:answer).permit(:yes_or_no)
  end
end
