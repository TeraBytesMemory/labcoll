module.exports = {
  entry: "./frontend/javascripts/application.js",
  output: {
    path: __dirname + "/app/assets/javascripts/",
    filename: "application.js"
  },
  module: {
    loaders: [
      {
        test: /\.jsx?$/,
        exclude: /(node_modules|bower_components)/,
        loader: "babel",
        // 'babel-loader' is also a legal name to reference
        query: { presets: [ "es2015" ] }
      }
    ]
  },
  devtool: (process.env.NODE_ENV === 'develop') ? 'inline-source-map' : '',
  resolve: { extensions: [ "", ".js", ".jsx" ] }
};
