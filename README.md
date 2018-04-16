# Top Gossip

This Rails project allows users to post anonymous gossip to a public message board. A non-signed-in user can see what the gossip is, but the author remains anonymous; a signed-in user can see both the gossip and the name of the user who posted it.


## Features

  * User sign up, authentication and authorization.
  * Password encryption.
  * MVC architecture with a has_many / belongs_to association between users and posts.
  * Sessions and Cookies allow persistent user login.
  * Page logic displays different navbar links for logged-in users.
  * Only logged-in users can see who authored a post; non-logged-in users only see the post itself - the author is anonymous.
  * Flash messages notify users of successful or unsuccessful sign up and log in attempts.

## Thoughts

This was my most complicated Rails project to date. After what feels like ages working through the Michael Hartl's RoR tutorial, it's great to finally build something of my own. The hardest part was using the Sessions Controller to remember users and to keep them logged in - working through the logic for this (with the help of fellow Odinite IvyMic) helped me to get my head round this.

The front-end theme is from [Start Bootstrap](https://startbootstrap.com/template-overviews/freelancer/).
