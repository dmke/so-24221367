Rails.application.routes.draw do
  root to: 'contents#home'

  put :like,    to: 'contents#like',    path: 'content/:id/like'
  put :dislike, to: 'contents#dislike', path: 'content/:id/dislike'
end
