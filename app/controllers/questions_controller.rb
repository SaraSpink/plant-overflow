class QuestionsController < ApplicationController
  before_action :authorize_admin, only: [:index]
  def index
  end

end
