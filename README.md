asana_dog
=========

Reads in underdog.io candidates json and forwards to an email address.  We use to forward to our asana candidates project but this could be used to forward the candidates to any project management tool or inbox.

##Usage

Clone the project locally and run a script that points to your json dump.  You'll need to set some SMTP related environment variables.

```bash
SMTP_ADDRESS=smtp.yourmail.com \
SMTP_USERNAME=someusername@yourserver.com \
SMTP_PASSWORD=supersecretpassword \
FROM_ADDRESS=thefromaddress \
TO_ADDRESS="x+12345678@mail.asana.com" \
./bin/forward ./tmp/candidates.json
```

You may have to edit the application.rb to configure your smtp server.
