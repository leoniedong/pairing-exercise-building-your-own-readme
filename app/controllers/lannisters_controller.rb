class LannistersController < ApplicationController
    def index
        @lannisters = Lannister.all
    end
    
    def show
        @lannister = Lannister.find(params[:id])
    end

    def new
        @lannister = Lannister.new
    end

    def create
        # byebug
        params[:lannister][:first_name] = params[:lannister][:first_name].capitalize
        @lannister = Lannister.create(l_params)
        if @lannister.valid?
            redirect_to lannister_path(@lannister)
        else
            flash[:error] = @lannister.errors.full_messages
            render :new
        end
    end

    def edit
        @lannister = Lannister.find(params[:id])

    end

    def update
        @lannister = Lannister.find(params[:id])
        @lannister.update(l_params)
        if @lannister.valid?
            redirect_to lannister_path(@lannister)
        else
            flash[:error]
            render :edit
        end
    end

    def destroy
        Lannister.find(params[:id]).destroy
        redirect_to lannisters_path
    end

    private
    def l_params
        params.require(:lannister).permit!
    end
end