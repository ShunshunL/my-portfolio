const { environment } = require('@rails/webpacker')
const coffee =  require('./loaders/coffee')
const webpack = require('webpack')
environment.plugins.append('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default']
  })
)
const aliasConfig = {
  'jquery': 'jquery-ui-dist/external/jquery/jquery.js',
  'jquery-ui': 'jquery-ui-dist/jquery-ui.js'
};
environment.config.set('resolve.alias', aliasConfig);
environment.loaders.prepend('coffee', coffee)
module.exports = environment


