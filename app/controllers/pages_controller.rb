class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
    @skills = Skill.all
    @page_title = "About • Isaac Johnsen's Homepage"
  end

  def contact
    @page_title = "Contact • Isaac Johnsen's Homepage"
  end
  
  def news
    @tweets = SocialTool.twitter_search
    @page_title = "News • Isaac Johnsen's Homepage"
  end
end
