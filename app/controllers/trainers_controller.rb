class TrainersController < ApplicationController
    def edit
        @trainer = Trainer.find(params[:id])
    end

    def update
        @trainer = Trainer.find(params[:id])
        @trainer.update(trainer_params)
        if @trainer.valid? 
            @trainer.save
            redirect_to trainer_path(@trainer)
        else 
            render :edit
        end
    end
    
    def index
        @trainers = Trainer.all 
    end

    def show 
        @trainer = Trainer.find(params[:id])
    end

    def new
        @trainer = Trainer.new
    end

    def create
        @trainer = Trainer.create(trainer_params)
        if @trainer.valid?
            @trainer.save
            redirect_to trainer_path(@trainer)
        else
            render :new
        end
    end

    private 
    def trainer_params 
        params.require(:trainer).permit(:name, :image, :pokemon_ids => [])
    end
end

