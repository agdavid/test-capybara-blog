require 'rails_helper'

describe "Visit a Blog Show page" do 
    before do 
        Blog.destroy_all
        @blog = Blog.create(
          title: "My Created Blog",
          content: "This blog was created in Capybara"
          )
    end

    it "visits a Blog show page" do
        visit blogs_path
        expect(page).to have_content("Blogs")
        expect(page).to have_content("My Created Blog")
        expect(page).to have_content("This blog was created in Capybara")
    
        click_link "Show"
        expect(page).not_to have_content("Blogs")
        expect(page).to have_content("My Created Blog")
        expect(page).to have_content("This blog was created in Capybara")
    end

end