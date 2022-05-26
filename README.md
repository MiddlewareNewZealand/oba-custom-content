# oba-custom-content
Docker container containing static content that will serve static content via nginx

## Structure
The structure of the routes needs to be preserved in the same way as defined in the routes.json

Important things:
1. The structure has to be preserved
1. All of the paths needs to start with `/ext` - it will be rewrited in the Portal to `[CUSTOM_CONTENT_PATH]/custom`
1. All the pages needs to be behind `custom` endpoint


## Including images
The markdown images links should have whole path to it's resource from the perspective of the external consumer.
E.g. given image in `static/custom/resources/favicon-middleware.png` the link used in the Markdown file has to contain whole path including this custom content server path -> http://localhost:8080/resources/favicon-middleware.png
So in this case the image definition within the markdown file will be `!["Middleware logo"](custom/resources/favicon-middleware.png)`
