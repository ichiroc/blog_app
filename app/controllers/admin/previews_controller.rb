class Admin::PreviewsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @body = params[:body]
  end
end
