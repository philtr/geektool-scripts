set taskList to ""

tell application "Things3"
  repeat with toDo in to dos of list "Today"
    set toDoName to name of toDo
    if status of toDo is completed
      set indicator to "☑︎ "
    else if status of toDo is canceled
      set indicator to "☒ "
    else
      set indicator to "☐ "
    end if

    set taskList to taskList & indicator & todoName & return
  end repeat
end tell

return taskList
