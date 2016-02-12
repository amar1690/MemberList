class MembersController < ApplicationController

    def index
        @members = Member.all
    end 


    def create   
        member = Member.create(member_params)
        
        if member.valid?
            redirect_to "/members"
        else
            flash[:error] = "There was not valid member"
            redirect_to "/members"
        end 
end
private   
    def member_params
		params.require(:member).permit(:name, :avatar)		 
		
	end
end

 
