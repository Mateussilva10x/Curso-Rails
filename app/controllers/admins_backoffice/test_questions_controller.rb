class AdminsBackoffice::TestQuestionsController < AdminsBackofficeController

  def index
    @questions = Question.where(subject_id: params[:id]).all
    console
    @test = Test.find(params[:test])
  end

  private
  def params_test
    params.require(:test).permit(:subject_id, :id)
  end
end
