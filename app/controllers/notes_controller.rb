class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def create
    Note.create(title: params[:title])
    render_partial
  end

  def show

  end

  def update
  end

  def destroy
    note = Note.find(params[:id])
    note.destroy
    render_partial
  end

  private
    def render_partial
      render :partial => 'partials/notes', :locals => {:notes => Note.all}
    end
end
