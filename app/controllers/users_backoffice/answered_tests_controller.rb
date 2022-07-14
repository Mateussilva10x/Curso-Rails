class UsersBackoffice::AnsweredTestsController < UsersBackofficeController
  before_action :set_test, only: [:make] 
  def index
    @tests = Test.all.includes(:subject).includes(:questions)
  end

  private
  def set_test
    @test = Test.find(params[:id])
  end
end
