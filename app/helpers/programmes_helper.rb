module ProgrammesHelper
  def programme_path(programme)
    "/programme/#{programme.category}/#{programme.slug}"
  end
end
