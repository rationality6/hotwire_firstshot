class BlogMessagesController < ApplicationController
  before_action :set_blog_message, only: [:show, :edit, :update, :destroy]

  # GET /blog_messages
  # GET /blog_messages.json
  def index
    @blog_messages = BlogMessage.all
  end

  # GET /blog_messages/1
  # GET /blog_messages/1.json
  def show
  end

  # GET /blog_messages/new
  def new
    @blog_message = BlogMessage.new
  end

  # GET /blog_messages/1/edit
  def edit
  end

  # POST /blog_messages
  # POST /blog_messages.json
  def create
    @blog_message = BlogMessage.new(blog_message_params)

    respond_to do |format|
      if @blog_message.save
        format.html { redirect_to @blog_message, notice: 'Blog message was successfully created.' }
        format.json { render :show, status: :created, location: @blog_message }
      else
        format.html { render :new }
        format.json { render json: @blog_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_messages/1
  # PATCH/PUT /blog_messages/1.json
  def update
    respond_to do |format|
      if @blog_message.update(blog_message_params)
        format.html { redirect_to @blog_message, notice: 'Blog message was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_message }
      else
        format.html { render :edit }
        format.json { render json: @blog_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_messages/1
  # DELETE /blog_messages/1.json
  def destroy
    @blog_message.destroy
    respond_to do |format|
      format.html { redirect_to blog_messages_url, notice: 'Blog message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_message
      @blog_message = BlogMessage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_message_params
      params.require(:blog_message).permit(:body, :blog_id)
    end
end
