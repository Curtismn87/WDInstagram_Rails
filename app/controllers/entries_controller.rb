class EntriesController < ApplicationController

  def new
    @entry = Entry.new
  end
  def create
    @entry = Entry.new( params[:entry] )
      @entry.update( date_taken: Time.now.strftime("%B %d, %Y") )
      if @entry.save
        redirect_to("/entries/#{@entry.id}")
      else
        redirect_to("/entries/new")
      end
  end
  def edit
    @entry = Entry.find( params[:id] )
  end
  def update
    @entry = Entry.find( params[:id] )
    @entry.update( params[:entry] )
    redirect_to("/entries/#{@entry.id}")
  end
  def show
    @entry = Entry.find( params[:id] )
  end
  def destroy
    delete "/entries/:id" do
      @entry = Entry.find( params[:id] )
      @entry.destroy
      redirect_to ("/")
    end
  end
  def index
  @entries = Entry.all.order(:id).reverse
  end

end
