Get Satisfaction Example Feedback Widget Implementation
=======================================================

Feedback widgets can be configured at

`http://getsatisfaction.com/YOUR_COMMUNITY/admin/widgets`

Configuration Screen
--------------------
![Widget Configuration Screen] (https://img.skitch.com/20110429-b33ag8hwdsuaeiw1wb6r1y31d9.jpg)

Customize these values as you see fit. If you want to style your widget you can give it URLs to custom stylesheets.
When you're done, click the button that says `Update your code`

This will apply your settings and update the text area below. Copy the contents of the text area and paste them
just before the closing `</body>` tag in the document where you plan to embed the widget.

Example
-------
Visit [the example page][0] and view source to see the embedded widget code. It looks like this:

    <!-- pull in the widget javascript file based on wether we're on a secure connection --> 
    <script charset='utf-8' type='text/javascript'> 
      var is_ssl = ("https:" == document.location.protocol);
      var asset_host = is_ssl ? "https://s3.amazonaws.com/getsatisfaction.com/" : "http://s3.amazonaws.com/getsatisfaction.com/";
      document.write(unescape("%3Cscript src='" + asset_host + "javascripts/feedback-v2.js' type='text/javascript'%3E%3C/script%3E"));
    </script> 
    <!-- configure and initialize the widget --> 
    <script charset='utf-8' type='text/javascript'> 
      var feedback_widget_options = {};
      feedback_widget_options.display = "overlay";
      feedback_widget_options.company = "devcommunity";
      feedback_widget_options.placement = "left";
      feedback_widget_options.color = "#222";
      feedback_widget_options.style = "question";
      feedback_widget_options.limit = "3";
      <!-- Initialize the widget -->
      var feedback_widget = new GSFN.feedback_widget(feedback_widget_options);
    </script>


Support
-------
- For developer support visit the [Get Satisfaction Developer Community][1].
- For general support visit the [Get Satisfaction Community][2].

[0]: http://gs-feedback-widget-example.heroku.com
[1]: http://getsatisfaction.com/devcommunity
[2]: http://getsatisfaction.com/getsatisfaction
