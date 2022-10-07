class AccountsController < ApplicationController


  def new
   
        @user = User.find(params[:user_id])
        @account = Account.new
  end

	 def create
    
    @user = User.find(params[:account][:user_id])

   
    @user.build_account(account_no: (params[:account][:account_no])).save


 
    redirect_to  user_path(@user)
  end

  def show
     @account = User.find(params[:user_id]).account
   end

   def edit
     @account = User.find(params[:user_id])


   end

   def update
    

    @account = Account.find(params[:account_id])
    @account.update(account_no:params[:user][:account_no])
    redirect_to  root_path



   
  end



  private
    def account_params
      params.require(:account).permit(:user_id, :account_no)
    end
end
