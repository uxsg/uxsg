module SpeakersHelper
  def twitter_link(speaker)
    link_to speaker.twitter_link, "//twitter.com/#{speaker.twitter_link}", target: "_blank"
  end
end
