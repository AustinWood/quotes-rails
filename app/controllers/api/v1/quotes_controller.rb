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

  # TODO: Refactor
  def index
    puts "😊 INDEX"
    @quotes = []

    said_by_or_heard_by = quote_params["said_by_or_heard_by"]
    said_by = quote_params["said_by"]
    heard_by = quote_params["heard_by"]

    if said_by_or_heard_by
      said_by_quotes = Quote.where(said_by: said_by_or_heard_by)
      heard_by_quotes = []
      Quote.all.each do |quote|
        hearers = quote.hearings.map do |hearing|
          hearing.user_id
        end
        if hearers.include?(said_by_or_heard_by.to_i)
          heard_by_quotes << quote
        end
      end
      @quotes = said_by_quotes + heard_by_quotes

    elsif said_by && heard_by
      temp_quotes = Quote.where(said_by: said_by)
      @quotes = []
      temp_quotes.each do |quote|
        hearers = quote.hearings.map do |hearing|
          hearing.user_id
        end
        if hearers.include?(heard_by.to_i)
          @quotes << quote
        end
      end

    elsif said_by
      @quotes = Quote.where(said_by: said_by)

    elsif heard_by
      @quotes = []
      Quote.all.each do |quote|
        hearers = quote.hearings.map do |hearing|
          hearing.user_id
        end
        if hearers.include?(heard_by.to_i)
          @quotes << quote
        end
      end
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
    params.require(:quote).permit(:said_by, :heard_by, :said_by_or_heard_by)
  end
end
