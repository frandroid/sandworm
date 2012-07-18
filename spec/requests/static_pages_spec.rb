require 'spec_helper'     

describe "Static pages" do

   describe "Home page" do
 
      it "should have the content 'Great Worm'" do
         visit '/static_pages/home'
         page.should have_selector('h1', :text => 'Great Worm')
      end
    
      it "should have the base title" do
         visit '/static_pages/home'
         page.should have_selector('title',
                          :text => "Great Worm Express Distro")
      end  
      
      it "should not have a custom page title" do
         visit '/static_pages/home'
         page.should_not have_selector('title', :text => 'Home')
      end
   end
 
   describe "Help page" do
 
      it "should have the content 'Help'" do
         visit '/static_pages/help'
         page.should have_content('Help')
      end
   end
 
   describe "About page" do
 
      it "should have the content 'About Great Worm'" do
         visit '/static_pages/about'
         page.should have_content('About Great Worm')
      end

      it "should have the title 'About'" do
        visit '/static_pages/about'
        page.should have_selector('title',
                          :text => "About | Great Worm Express Distro")
      end

   end
   
   describe "Order page" do
 
      it "should have the content 'How to Order'" do
         visit '/static_pages/order'
         page.should have_content('How to Order')
      end
   end
   
   
end