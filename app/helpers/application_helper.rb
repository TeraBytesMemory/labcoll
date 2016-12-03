module ApplicationHelper
  def load_sidebar_content
    ResearchBranch.all
  end
end
