class HelloController < ApplicationController
  skip_before_action :verify_authenticity_token

  def home
    @comment = Comment.new
  end
end
