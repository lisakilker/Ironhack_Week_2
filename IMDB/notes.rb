<h1>Todo List</h1>

<ul>
  <% @tasks.each do |task| %>
    <li>
      <%= task.print %>
      <form action="/remove_task/<%= task.id %>" method="post">
        <input type="submit" name="remove_task" value="X">
      </form>
    </li>
  <% end %>
</ul>

<a href="/tasks/new">Create new task</a>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Movies</title>
    <link rel="stylesheet" type="text/css" href="style.css">
  </head>
<body>
 <!--    <h1>MOVIE FUN!</h1>
      <form>Enter word that describes a move you want to see:<br>
        (For example: funny, scary)<br>
        <input type="text" name="movietitle">
        <a href="/">Submit</a><br>
      </form>
      <h2><%= @movie %></h2>
        <%= end %>
        <%= @movie.first(9).each do |movies| %>
        <%= end %> -->
    <!--   <img src="[...]" onClick="alert('Yay!')"/>
      <img src="[...]" onClick="alert('Nay!')"/> -->
</body>
</html>
