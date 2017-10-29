class NoteController < ApplicationController
  $note = ""
  $id = 0
  def index
  end
  def create
    $note = params[:text]
    heroku_link = "https://second-homework-top.herokuapp.com/notes/"
    Text.create(:text => $note, :number => $id)
    $id += 1
    render plain: heroku_link + $id.to_s
  end
  def read
      render plain: Text.find_by(:number => ($id - 1)).text
      Text.delete_all
  end
end
