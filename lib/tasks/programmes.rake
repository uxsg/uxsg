namespace :programmes do
  task migrate: :environment do
    Programme.all.each do |programme|
      begin
        programme.programme_speakers.create(speaker_id: programme.speaker_id)
      rescue
      end
    end
  end
end
