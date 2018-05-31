module Api
  class CandidatesController < ApplicationController

    def index
      json_response(Candidate.all)
    end

    def show
      @candidate = Candidate.find_by(:id => params[:id])

      if !@candidate.nil?
        json_response(@candidate)
      else
        json_response(@candidate, 'error', "Record with id = #{params[:id]} doesn't exist")
      end
    end

    def create
      if params[:recruiter_id].nil?
        json_response({}, 'error', "You should pass a 'recruiter_id' param to create a candidate")
      else
        @recruiter = Recruiter.find_by(id: params[:recruiter_id])
        
        if (!@recruiter)
          json_response(@recruiter, 'error', "Record 'recruiter' with id = #{params[:id]} doesn't exist")
        else
          @candidate = @recruiter.candidates.build(candidate_params)
  
          if !@candidate
            json_response({}, 'error', "Couldn't create record 'candidate' with id = #{params[:id]}")
          else
            if !@candidate.save
              json_response({}, 'error', "Can't create record with params = #{candidate_params}")
            else
              json_response({})
            end
          end
        end
      end
    end

    def update
      @candidate = Candidate.find_by(:id => params[:id])

      if !@candidate
        json_response(@candidate, 'error', "Record with id = #{params[:id]} doesn't exist")
      else
        if !@candidate.update(candidate_params)
          json_response({}, 'error', "Can't update record with params = #{candidate_params}, id = #{params[:id]}")
        end

        json_response({})
      end
    end

    def destroy
      @candidate = Candidate.find_by(:id => params[:id])

      if !@candidate
        json_response(@candidate, 'error', "Record 'candidate' with id = #{params[:id]} doesn't exist")
      else
        @candidate.destroy
        json_response(@candidate)
      end
    end

    private
    def candidate_params
      params.require(:candidate).permit(:first_name, :last_name, :occupation)
    end
  end
end
