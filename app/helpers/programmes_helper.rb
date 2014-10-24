module ProgrammesHelper
  def programme_path(programme)
    "/programme/#{programme.category}/#{programme.slug}"
  end

  def flickr_album(programme)
    uri = URI(programme.flickr_url)
    set_id = uri.path.split("/").last
    path = CGI.escape(uri.path)

    content_tag :object do
      content_tag :embed, "", type: "application/x-shockwave-flash",
                              src: "https://www.flickr.com/apps/slideshow/show.swf?v=1811922554",
                              allowFullScreen: "true",
                              flashvars: "offsite=true&lang=en-us&page_show_url=#{path}show%2F&page_show_back_url=#{path}&set_id=#{set_id}&jump_to=",
                              width: "100%", height:"500"
    end
  end
end
