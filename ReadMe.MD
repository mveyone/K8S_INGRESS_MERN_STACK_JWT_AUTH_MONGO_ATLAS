

    Note: this feature is available with react-scripts@2.0.0 and higher.

You can manually configure proxy now. You need to install http-proxy-middleware first.

npm install http-proxy-middleware --save

Then create a file src/setupProxy.js with following content.

const { createProxyMiddleware } = require('http-proxy-middleware');

module.exports = function(app) {
  app.use(
    '/api', // You can pass in an array too eg. ['/api', '/another/path']
    createProxyMiddleware({
      target: process.env.REACT_APP_PROXY_HOST,
      changeOrigin: true,
    })
  );
};

You can add proxy now in the .env file, remember you need the REACT_APP_ prefix for development server to pick up the environment variable.

REACT_APP_PROXY_HOST=http://localhost:4000

"proxy": "http://localhost:4000", i delete this line from package.json of the client app 


---------
 ## i made the dockerfile.dev without arg and env for backend/apiserver 

 1. backend dockerfile adding arg
 docker build -t \
 -f dockerfile.dev \
 
  2. frontend too ok env in docker-compose command + env_file inside docker-comopose.yml  it works for dev

## now let s try with caddy

1 dockerfile including build + caddy frontend
2. dockerfile backend: no need
3. docker-compose : mongo atlas + 
#

## now lets try with nginx 
dockerfile for nginx with react-app
make for build
docker-compose file for production with nginx 
make for docker-compose nginx


3000:80 (react-port: container port) (interne:externe)

when have issues with docker build related to space:

docker volume rm $(docker volume ls -qf dangling=true)

docker system prune