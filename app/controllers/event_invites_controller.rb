class EventInvitesController < ApplicationController

    def new
        debugger
        redirect_to "/events/#{params[:id]}/edit"
    end
end
