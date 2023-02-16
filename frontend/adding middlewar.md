

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
