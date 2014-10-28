class CandidateForwarder


  def self.forward_candidates file_path
    JSON.parse(File.read file_path).collect{|h| Hashie::Mash.new(h)}.each do |candidate|
      CandidateMailer.candidate_email(candidate).deliver
    end
  end
end
