class ProgrammeSpeaker < ActiveRecord::Base
  belongs_to :programme
  belongs_to :speaker
end
