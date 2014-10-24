class CandidateForwarder


  def self.forward_candidates file_path
    Hashie::Mash.new(JSON.parse(File.read file_path)).results.collection1.each do |candidate|
      CandidateMailer.candidate_email(candidate).deliver
    end
  end
end
