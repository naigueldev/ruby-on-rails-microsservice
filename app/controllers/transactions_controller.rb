class TransactionsController < ApplicationController
  def import
    Imports::Files.validate(transaction_params[:file])
    
    Transactions::Import.new(transaction_params[:file]).execute
    
    render json: { message: 'File uploaded successfully' }, status: 200
  rescue StandardError => e
    render json: { message: 'Arquivo inválido' }, status: 400
  end

  def list
    transactions = Transactions::List.execute
    render json: transactions
  end

  private

  def transaction_params
    params.require(:transaction).permit(:file)
  end
end
