class NotesController < ApplicationController
  # Talking to the DB
    # Create
    # Read
    # Updated
    # Destroy

  before_action :set_id, only: [:show, :update, :edit, :destroy]
  
  # all notes
  def index
    @notes = Note.all
  end

  # show single note
  def show
    # @note = Note.find(params[:id])
  end

  # create a new note in memory
  # new is a HTTP GET request for the form 
  def new
    @note = Note.new
  end

  # Create is a POST request to post to the database
  def create
    @note = Note.new(notes_params)

    if @note.save
      redirect_to notes_path
    else
      render :new
    end
  end

  def edit
    # @note = Note.find(params[:id])
  end

  def update
    # @note = Note.find(params[:id])
    if @note.update(notes_params)
      redirect_to notes_path
    else
      render :edit
    end
  end

  def destroy
    # @note = Note.find(params[:id])
    @note.destroy
    redirect_to notes_path
  end
  

  private

  def notes_params
    params.require(:note).permit(:title, :author, :body, :send_to)
  end

  def set_id
    @note = Note.find(params[:id])
  end

end
