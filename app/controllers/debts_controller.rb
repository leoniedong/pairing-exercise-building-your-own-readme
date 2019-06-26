class DebtsController < ApplicationController
    def index
        @debts = Debt.all
    end
    
    def show
        @debt = Debt.find(params[:id])
    end

    def new
        @debt = Debt.new
        @lannisters = Lannister.all
        render :new
    end

    def create
        @debt = Debt.new(debt_params)
        if @debt.valid?
            @debt.save
            redirect_to debt_path(@debt)
        else
            flash[:error] = @debt.errors.full_messages
            render :new
        end
    end

    def edit
        @debt = Debt.find(params[:id])
    end

    def update
        @debt = Debt.find(params[:id])
        @debt.update(debt_params)
        if @debt.valid?
            redirect_to debt_path(@debt)
        else
            flash[:error] = @debt.errors.full_messages
            render :edit
        end
    end

    def delete
        @debt = Debt.find(params[:id])
        @debt.delete
        render :index
    end

    private
    def debt_params
        params.require(:debt).permit!
    end
end