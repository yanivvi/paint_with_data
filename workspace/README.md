# urls from redash
replace in all html files the dashboard url with the url of the dashboard.
it needs to be a public url with &fullscreen in order to remove all unnecessary redash UI elements.

# python http server
in the terminal run from the `workspace` directory run the following commands:
set up screen:
`screen -S pyhttpserver`
set up http server:
`python3 -m http.server 1234 --bind 0.0.0.0`

the page will be available at `http://<ip of the machine>:1234`/`folder`