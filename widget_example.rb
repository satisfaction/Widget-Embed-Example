class WidgetExample < Sinatra::Base

  enable :inline_templates

  get '/' do
    haml :index
  end

end

__END__

@@ index
!!! 5
%html
  %head
  %title Get Satisfaction Feedback Widget Example
  %link{:rel => 'stylesheet', :type => 'text/css', :href => 'http://getsatisfaction.com/sites/all/themes/getsatisfaction/css/screen.css', :media => 'all'}

  %body
    %header#masthead
      %div
        %h1#logo
          %a{:href => "http://getsatisfaction.com" } 
            %img{:src => "http://getsatisfaction.com/sites/default/files/logo.png", :alt => "Get Satisfaction",  :width => "222", :height => "52"} 
      
    #wrap-outer
      #wrap-inner.clearfix 

        %section#content
          #node-20.node.clear-block

            .content
              %div
                %img{:width => "405", :height => "285", :class => "right", :alt => "Feedback Tab Widget", :src => "http://getsatisfaction.com/sites/all/themes/getsatisfaction/images/feedbackWidget.png"}
                %div
                  %h2 Feedback Tab
    
                  %p Collect and prioritize product-specific customer feedback by adding a feedback tab to any (or every) page of your site.

                  %h4 Features:
                  %ul
                    %li Customizable tab opens into a feedback collection widget when clicked
                    %li Widget fades away when not active
                    %li Each piece of customer feedback becomes a fully actionable topic
                    %li Allows customers to join in and cast their vote to prioritize the collection of ideas, questions, problems, or praise
                    %li Option for customers to post private feedback (which is then sent directly to you via email)
                    %li Includes latent collection of relevant data, including user browser and OS

    %footer#pg-footer

    / pull in the widget javascript file based on wether we're on a secure connection
    %script{:type => 'text/javascript', :charset => 'utf-8'}
      var is_ssl = ("https:" == document.location.protocol);
      var asset_host = is_ssl ? "https://s3.amazonaws.com/getsatisfaction.com/" : "http://s3.amazonaws.com/getsatisfaction.com/";
      document.write(unescape("%3Cscript src='" + asset_host + "javascripts/feedback-v2.js' type='text/javascript'%3E%3C/script%3E"));

    / configure and initialize the widget
    %script{:type => 'text/javascript', :charset => 'utf-8'}
      var feedback_widget_options = {};

      feedback_widget_options.display = "overlay";  
      feedback_widget_options.company = "devcommunity";
      feedback_widget_options.placement = "left";
      feedback_widget_options.color = "#222";
      feedback_widget_options.style = "question";
  
      feedback_widget_options.limit = "3";
  
      / Initialize the widget
      var feedback_widget = new GSFN.feedback_widget(feedback_widget_options);
      
    
