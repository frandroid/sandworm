require 'spec_helper'     

describe "Static pages" do
   
   subject { page }
   
   describe "Home page" do
      
      before { visit root_path }
   
      it { should have_selector('h1', :text => 'Great Worm') }
      it { should have_selector('title', :text => "Great Worm Express Distro") }
      it { should_not have_selector('title', :text => 'Home') }
   end
 
   describe "Help page" do
      it "should have the content 'Help'" do
         visit help_path
         page.should have_content('Help')
      end
   end
 
   describe "About page" do
   
      before { visit about_path }
      
      it "should have the content 'About Great Worm'" do
         page.should have_content('About Great Worm')
      end

      it "should have the title 'About'" do
         page.should have_selector('title',
                          :text => "About | Great Worm Express Distro")
      end

   end
   
   describe "Order page" do
 
      it "should have the content 'How to Order'" do
         visit order_path
         page.should have_content('How to Order')
      end
   end 
   
   describe "Contact page" do

      before { visit contact_path }
      
      it "should have the h1 'Contact'" do
         page.should have_selector('h1', text: 'Contact')
      end
      
      it "should have title 'Contact'" do
         page.should have_selector('title', text: 'Contact | Great Worm Express Distro')
      end
   end
   
   
   
end