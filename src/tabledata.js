module.exports = {
  files: [
    { path: require('json-loader!./tabledata/clientespedidos.json') },
    { path: require('json-loader!./tabledata/clientesmtto.json') },
    { path: require('json-loader!./tabledata/imss.json') }
  ]
}
