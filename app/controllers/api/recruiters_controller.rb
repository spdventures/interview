module Api
  class RecruitersController < ApplicationController

    def index
      json_response(Recruiter.all)
    end

    def show
      @recruiter = Recruiter.find_by(:id => params[:id])

      if !@recruiter.nil?
        json_response(@recruiter)
      else
        json_response(@recruiter, 'error', "Record with id = #{params[:id]} doesn't exist")
      end
    end

    def create
      @recruiter = Recruiter.new(recruiter_params)

      if !@recruiter.save
        json_response({}, 'error', "Can't save record with params = #{candidate_params}")
      else
        json_response({})
      end
    end
    
    def add
      @recruiter = Recruiter.find_by(:id => params[:id])
      @candidate = Candidate.find_by(:id => params[:id])

      @recruiter.candidates << @candidate
      
    end

    def update
      if params["recruiter"].nil?
        json_response({})
      else
        @recruiter = Recruiter.find_by(:id => params[:id])

        if !@recruiter
          json_response(@recruiter, 'error', "Record with id = #{params[:id]} doesn't exist")
        else
          if !@recruiter.update(recruiter_params)
            json_response({}, 'error', "Can't update record with params = #{recruiter_params}, id = #{params[:id]}")
          end

          json_response({})
        end
      end
        
    end

    def destroy
      @recruiter = Recruiter.find_by(:id => params[:id])
      
      if !@recruiter
        json_response(@recruiter, 'error', "Record with id = #{params[:id]} doesn't exist")
      else
        @recruiter.destroy
        json_response({})
      end
    end

    private
    def recruiter_params
      params.require(:recruiter).permit(:first_name, :last_name, :company)
    end
  end
end
