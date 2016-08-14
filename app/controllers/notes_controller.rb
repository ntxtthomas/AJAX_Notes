class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def create
    Note.create(title: params[:title])
    render_partial
  end


  def update
    note = Note.find(params[:id])
    note.update(content: params[:content])
    note.save
    render_partial
  end

  def destroy
    Note.find(params[:id]).destroy
    render_partial
  end

  private
    def render_partial
      render :partial => 'partials/notes', :locals => {:notes => Note.all}
    end
end
