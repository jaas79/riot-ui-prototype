var screensDir = 'testing/screenshoots/CasperTest/ClienteTest/create/'
var screensCaptureDir = 'testing/captures/CasperTest/ClienteTest/create/'
var stepCounter = 0
var stepCaptureCounter = 0
var spannames=[]
var spanname='' 

casper.test.begin('Creates a Model for ClienteTest (Principal Scenario)', 11, function (test) {
  
  // Trigger. El Operador solicita la página [Crear ClienteTest].
  casper.start('http://localhost:1337/#!/clientetest-add/', function () {
  	this.echo("Trigger. El Operador solicita la página [Crear ClienteTest].")
    this.viewport(1280, 850)
  })


  // Step 01. El Sistema muestra la página [Crear ClienteTest].
  casper.then(function () {
  	this.echo("Step 01. El Sistema muestra la página [Crear ClienteTest].")
    test.assertSelectorHasText('#clientetest-add', 'Agregar ClienteTest')
  })
  
  casper.then(function () {
      test.assertSelectorHasText('input#Direccion', '')
  })
  casper.then(function () {
      test.assertSelectorHasText('input#Domicilio', '')
  })
  casper.then(function () {
      test.assertSelectorHasText('input#Calle', '')
  })
  casper.then(function () {
      test.assertSelectorHasText('input#CodigoPostal', '')
  })


 // Step02. El Operador captura información en la forma [Crear ClienteTest].
 casper.then(function () {
 	this.echo("Step02. El Operador captura información en la forma [Crear ClienteTest].")
    this.fill('formbox form', {
      'Direccion' : 'ClienteTest X Value' ,
      'Domicilio' : 'ClienteTest X Value' ,
      'Calle' : 'ClienteTest X Value' ,
      'CodigoPostal' : 'ClienteTest X Value' ,
      
    }, false)
  })
 
 casper.then(function () {
 test.assertSelectorHasText('input#Direccion', 'ClienteTest X Value')
 })
 
 casper.then(function () {
 test.assertSelectorHasText('input#Domicilio', 'ClienteTest X Value')
 })
 
 casper.then(function () {
 test.assertSelectorHasText('input#Calle', 'ClienteTest X Value')
 })
 
 casper.then(function () {
 test.assertSelectorHasText('input#CodigoPostal', 'ClienteTest X Value')
 })
  
  
  // Step03. El Sistema determina que los datos de la forma [Crear ClienteTest] están completos.
  casper.then(function () {
  	this.echo("Step03. El Sistema determina que los datos de la forma [Crear ClienteTest] están completos.")
      spanname = this.evaluate(function() {
      		       var names = $('span#Direccion2').text()
      		       return names
      		       });
      		  
      spannames.push(spanname);
      
      spanname = this.evaluate(function() {
      		       var names = $('span#Domicilio2').text()
      		       return names
      		       });
      		  
      spannames.push(spanname);
      
      spanname = this.evaluate(function() {
      		       var names = $('span#Calle2').text()
      		       return names
      		       });
      		  
      spannames.push(spanname);
      
      spanname = this.evaluate(function() {
      		       var names = $('span#CodigoPostal2').text()
      		       return names
      		       });
      		  
      spannames.push(spanname);
      
       //this.echo(spannames.join().replace(/,/g, ''));
       //this.echo(spannames.join().replace(/,/g, '').length);
       //test.assert(spannames.join().replace(/,/g, '')=='')
       test.assert(spannames.join().indexOf('Campo requerido') === -1)
   })
    
  
  // Step04. El Sistema determina que los datos de la forma [Crear ClienteTest] son válidos.
  casper.then(function () { 
     this.echo("Step04. El Sistema determina que los datos de la forma [Crear ClienteTest] son válidos.")
     //this.echo(spannames.join().replace(/,/g, '')!='')
     //this.echo(spannames.join().indexOf('Campo requerido') !== -1) 
     test.assert(!(spannames.join().replace(/,/g, '')!='' && spannames.join().indexOf('Campo requerido') === -1))  
   })
    
  
  // Step05. El Operador elige el comando [Guardar].
  casper.then(function () {
  	this.echo("Step05. El Operador elige el comando [Guardar].")
    casper.click('a.btn')
  })


  // Step06. El Sistema crea un nuevo registro en la entidad [ClienteTest].
  casper.then(function () {
  	this.echo("Step06. El Sistema crea un nuevo registro en la entidad [ClienteTest].")
    test.assertSelectorHasText('#clientetest-admin', 'Administrar ClienteTest')
  })
  
  // Step07. Fin del Caso de Uso.
  casper.run(function () {
  	this.echo("Step07. Fin del Caso de Uso.")
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
