textArea = document.getElementById 'ribbitText'
count = document.getElementById 'charCount'
button = document.getElementById 'ribbitBtn'

countCharts = (e) ->
  len = textArea.value.length
  count.innerHTML = len
  if len > 140
    count.className = 'limit'
    button.setAttribute 'disabled', 'disabled'
  else
    count.className = ""
    button.removeAttribute 'disabled'

textArea.addEventListener "keyup", countCharts, false
textArea.addEventListener "keydown", countCharts, false