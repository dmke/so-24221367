class ContentsController < ApplicationController

  def home
    # this is our "database"
  end

  def like
    update_vote(true)
  end

  def dislike
    update_vote(false)
  end

private

  def update_vote(value)
    id = params[:id]
    cookies["vote-#{id}"] = value

    if request.xhr?
      render json: { count: Time.current.to_i, id: id }
    else
      redirect_to :root
    end
  end

end
