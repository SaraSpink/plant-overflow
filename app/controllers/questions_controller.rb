class QuestionsController < ApplicationController
  before_action :authorize, only: [:index]
  def index
  end

end
