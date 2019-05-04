class HomeController < ApplicationController
  before_action :run_test, only: :index
  
  def index
    @algorithms = Algorithm.ordered
  end

  private

  def run_test
    return if params[:algorithm].nil?

    algorithm = Algorithm.find(params[:algorithm])
    Test::Run.new.call(algorithm, params[:sort_by])
  end
end
