class CoffeeChatsController < ApplicationController
  before_action :set_coffee_chat, only: %i[show edit update destroy]

  def index
    @q = CoffeeChat.ransack(params[:q])
    @coffee_chats = @q.result(distinct: true).page(params[:page]).per(10)
  end

  def show; end

  def new
    @coffee_chat = CoffeeChat.new
  end

  def edit; end

  def create
    @coffee_chat = CoffeeChat.new(coffee_chat_params)

    if @coffee_chat.save
      redirect_to @coffee_chat, notice: "Coffee chat was successfully created."
    else
      render :new
    end
  end

  def update
    if @coffee_chat.update(coffee_chat_params)
      redirect_to @coffee_chat, notice: "Coffee chat was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @coffee_chat.destroy
    redirect_to coffee_chats_url,
                notice: "Coffee chat was successfully destroyed."
  end

  private

  def set_coffee_chat
    @coffee_chat = CoffeeChat.find(params[:id])
  end

  def coffee_chat_params
    params.require(:coffee_chat).permit(:company_name, :consultant_name,
                                        :office, :title, :date, :time, :purpose, :location)
  end
end
