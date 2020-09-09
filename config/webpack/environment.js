const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environemnt.plugins.append('Provide',
    new webpack.ProviderPlugin({
        s: 'jquery',
        jQuery: 'jquery'
        Popper: ['popper.js', 'default']
    })
    )

module.exports = environment
