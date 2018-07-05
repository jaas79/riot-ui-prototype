var screensDir = 'testing/screenshoots/CasperTest/ClienteTest/create/'
var screensCaptureDir = 'testing/captures/CasperTest/ClienteTest/create/'
var stepCounter = 0
var stepCaptureCounter = 0

casper.test.begin('Creates a Model for ClienteTest (Principal Scenario)', 5, function (test) {
  // trigger: Administrator chooses Add ClienteTest Page
  casper.start('http://localhost:1337/#!/clientetest-add/', function () {
    this.viewport(1280, 850)
  })

  // Step 01. System shows ClienteTest and Empty Fields
  casper.then(function () {
    test.assertSelectorHasText('#clientetest-add', 'Agregar ClienteTest')
  })
  
  
  casper.then(function () {
      test.assertSelectorHasText('input#numero-clientetest', '')
  })
  casper.then(function () {
      test.assertSelectorHasText('input#nombre-clientetest', '')
  })
  casper.then(function () {
      test.assertSelectorHasText('input#direccion-clientetest', '')
  })

  // Step02. Administrator enters ClienteTest
  casper.then(function () {
    this.fill('formbox form', {
      'Numero' : 'ClienteTest X Value' ,
      'Nombre' : 'ClienteTest X Value' ,
      'Direccion' : 'ClienteTest X Value' ,
      
    }, false)
  })

  // Step03. Administrator chooses ClienteTest 
  casper.then(function () {
    casper.click('a.btn')
  })

  // Step04. System validates ClienteTest 

  // Step05. System creates ClienteTest 

  // Post-condition
  casper.then(function () {
    test.assertSelectorHasText('#clientetest-admin', 'Administrar ClienteTest')
  })
  
  // End of Use Case
  casper.run(function () {
    test.done()
  })
})

var stepScreenshot = function () {
  var str = String(++stepCounter)
  while (str.length < 2) {
    str = '0' + str
  }
  var filename = screensDir + 'step-' + str + '.png'
  //casper.capture(filename)
  this.captureSelector(filename, 'div#contentid')
  this.echo('Saved screenshot of ' + (this.getCurrentUrl()) + ' to ' + name)
}

var stepCapture = function () {
  var str = String(++stepCaptureCounter)
  while (str.length < 5) {
    str = '0' + str
  }
  casper.capture(screensCaptureDir + 'step-complete-' + str + '.png', {
    top: 0,
    left: 0,
    width: 1280,
    height: 900
  })
}

casper.on('step.complete', stepScreenshot)
casper.on('step.start', stepCapture)
casper.on('step.complete', stepCapture)
