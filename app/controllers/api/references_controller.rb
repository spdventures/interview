module Api
  class ReferencesController < ApplicationController

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

    # curl -d "candidate[first_name]=FirstName" -d "candidate[last_name]=LastName" -d "candidate[occupation]=job" -d "recruiter_id=4" -X POST http://localhost:3000/api/candidates
    def create
      if params[:candidate_id].nil?
        json_response({}, 'error', "You should pass a 'candidate_id' param to create a reference")  
      else
        @candidate = Candidate.find_by(id: params[:candidate_id])
        
        if (!@candidate)
          json_response(@candidate, 'error', "Record 'candidate' with id = #{params[:id]} doesn't exist")
        else
          @reference = @candidate.references.build(reference_params)

          if !@reference
            json_response({}, 'error', "Couldn't create record 'reference' with id = #{params[:id]}")
          else
            if !@reference.save
              json_response({}, 'error', "Can't save record with params = #{candidate_params}")
            else
              json_response({})
            end
          end
        end
      end
    end

    def update
      @reference = Reference.find_by(:id => params[:id])

      if !@reference
        json_response(@candidate, 'error', "Record with id = #{params[:id]} doesn't exist")
      else
        if !@reference.update(reference_params)
          json_response({}, 'error', "Can't update record with params = #{reference_params}, id = #{params[:id]}")
        end

        json_response({})
      end
    end

    def destroy
      @reference = Reference.find_by(:id => params[:id])

      if !@reference
        json_response(@reference, 'error', "Record 'candidate' with id = #{params[:id]} doesn't exist")
      else
        @reference.destroy
        json_response(@reference)
      end
    end
    

    # Never trust parameters from the scary internet, only allow the white list through.
    def reference_params
      params.require(:reference).permit(:content, :company)
    end
  end

end
