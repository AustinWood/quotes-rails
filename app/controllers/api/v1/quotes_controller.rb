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
    if quote_params["said_by"] != nil
      @quotes = Quote.find_by_said_by(quote_params["said_by"])
    else
      @quotes = Quote.all
    end

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
    params.require(:quote).permit(:said_by)
  end
end
