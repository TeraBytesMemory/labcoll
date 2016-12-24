module ApplicationHelper

  def page_title
    title = "LabCollection"
    title = @page_title + " | " + title if @page_title
    title
  end

  def load_sidebar_content
    ResearchBranch.all
  end
end
