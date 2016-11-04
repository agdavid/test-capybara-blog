require 'rails_helper'

describe "Blogs Index" do 
    before do 
        Blog.destroy_all
    end

    describe "visiting Blogs index" do 
        it "shows the index of Blogs" do 
            visit blogs_path
            within 'h1' do 
                expect(page).to have_content('Blogs')
            end
            within 'a' do 
                expect(page).to have_content('New Blog')
            end
        end
    end
end

