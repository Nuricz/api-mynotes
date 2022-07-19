class NotesController < ApplicationController
    def index
        @notes = Note.all

        render json: @notes
    end

    def create
        @note = Note.create(name: params[:name], description: params[:description])

        render json: @note
    end

    def update
        @note = Note.find(params[:id])
        @note.update(name: params[:name], description: params[:description])

        render json: "#{@note.name} ha sido actualizada!"
    end

    def destroy
        @note = Note.find(params[:id])
        @note.destroy

        render json: "#{@note.name} ha sido eliminada!"
    end
end
