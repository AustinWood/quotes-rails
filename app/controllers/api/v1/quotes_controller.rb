class Api::V1::QuotesController < ApplicationController
  # def show
  #   @quote = Quote.find(params[:id])
  #   render :show
  # end

  # def new
  #   @quote = Quote.new
  #   render :new
  # end

  # def create
  #   @quote = Quote.new(quote_params)
  #   @quote.user_id = current_user.id
  #
  #   if @quote.save
  #     redirect_to v1_posts_url
  #   else
  #     flash.now[:errors] = @quote.errors.full_messages
  #   end
  # end

  def index
    @quotes = nil

# scotty is 20
    if quote_params["said_by"] != nil
      speaker_id = quote_params["said_by"]
      @quotes = Quote.where(said_by: speaker_id)
    else
      @quotes = Quote.all
    end

    @quotes
  end

  # def edit
  #   @quote = Quote.find(params[:id])
  #   render :edit
  # end

  # def update
  #   @quote = Quote.find(params[:id])
  #   if @quote.update_attributes(quote_params)
  #     redirect_to v1_posts_url
  #   else
  #     flash.now[:errors] = @quote.errors.full_messages
  #     render :edit
  #   end
  # end

  # def destroy
  #   @quote = Quote.find(params[:id])
  #   if @quote
  #     @quote.destroy
  #     redirect_to v1_posts_url
  #   else
  #     flash.now[:errors] = @quote.errors.full_messages
  #   end
  # end

  private
  def quote_params
    params.require(:quote).permit(:said_by, :heard_by)
  end
end
