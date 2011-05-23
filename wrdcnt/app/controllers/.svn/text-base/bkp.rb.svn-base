<%  client = TwitterOAuth::Client.new %>
<% result = client.search(params["message"]) %>

<p> got <%= result.length %> results from search
<table border=1 >

<% result.keys.each do|k| %>
<tr><td> <% k %> </td><td><% result[k] %></td></tr>
<% end %>
<hr>
<table border=1 >
<% result["results"].each do|kk| %>
<tr> 
<% kk.each do |kk1| %> 
<td><%= kk1 %></td>
<% end %>
</tr>
<% end %>
