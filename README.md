## Bruce - please note

- I did my best to edit the ContentScroller .ss file to change the carousel header color
- I'm not able to find the template which will allow me to control all of the output for the individual channel sections. I found this in ContentCollectionPage line 148 but it looks like it may pull something in the backend. Each channel has their own color so we need to find out where to set the class as I did with other sections.

      <div class="row">
          <% control AnalysisChannels %>
          <% cached ArticleCache.AnalysisKey %>
          $ArticleCache.Analysis
          <% end_cached %>
          <% if Last %>
          <div class="clearfix"></div>
          <% else %>
          <% if MultipleOf(2) %>
          <div class="clearfix visible-sm"></div>
          <% end_if %>
          <% if MultipleOf(3) %>
          <div class="clearfix visible-md visible-lg"></div>
          <% end_if %>
          <% end_if %>
          <% end_control %>
      </div>
-  
