class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    # Encontre o usuário atual
    @user = current_user
  end

  def add_money
    amount = params[:amount].to_f
    if amount.positive?
      current_user.update(balance: current_user.balance + amount)
      flash[:notice] = "Dinheiro adicionado com sucesso!"
    else
      flash[:alert] = "Insira um valor válido para adicionar à sua conta."
    end
    redirect_to user_path(current_user)
  end
end
