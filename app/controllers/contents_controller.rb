class ContentsController < ApplicationController

  def home
    if request.xhr?
      render json: { count: rand(100...1000) }
    else
      render :home
    end
  end

end
