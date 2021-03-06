require 'insightly/dsl'

module Insightly
  module DSL::TeamMembers
    # DELETE /v2.1/TeamMembers/{id}
    # @param [String, Fixnum] id A TeamMember's ID
    def delete_team_member(id)
      request(:delete, "TeamMembers/#{id}")
    end

    # GET /v2.1/TeamMembers/{id}
    # @return [Insightly::Resources::TeamMember]
    # @param [String, Fixnum] id A TeamMember's ID
    def get_team_member(id)
      Resources::TeamMember.parse(request(:get, "TeamMembers/#{id}"))
    end

    # GET /v2.1/TeamMembers?teamid={teamid}
    # @param [Hash] options
    # @option options :teamid [String]
    # @return [<Insightly::Resources::TeamMember>, nil]
    def get_team_members(options = {})
      Resources::TeamMember.parse(request(:get, 'TeamMembers', options))
    end

    # POST /v2.1/TeamMembers

    # PUT /v2.1/TeamMembers
  end
end
