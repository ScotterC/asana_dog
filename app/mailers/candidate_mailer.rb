class CandidateMailer < ActionMailer::Base


  default from: env_var('FROM_ADDRESS'), to: env_var('TO_ADDRESS')


  def candidate_email candidate
    @candidate = candidate
    mail subject: candidate.name
  end



end
