<form-wizard>
   <div class="col-md-12 col-sm-12 col-xs-12">
      <div class="x_panel">
          <h2 class="page-header">{opts.title}</h2>
          <div class="x_content">
              <div id="wizard" class="form_wizard wizard_horizontal">
                    <ul class="wizard_steps" id="ulid{stepcontainerid}">
                    <li each={ids} id={id} >
                      <a href={opts.path} onclick={this.tostep} class={clas} isdone="0">
                      <span class="step_no">{step}</span>
                      <span class="step_descr">
                        {title}<br />
                       <!--<small>Paso {id.split("-")[1]} description</small></span>-->
                      </a>
                    </li>
                    </ul>
                    <label>{idX}</label>
                    <div id={stepcontainerid} class="stepContainer">
                       <yield/>
                    </div>
                    <div class="ln_solid"></div>
                    <div>
                          <a href={opts.path} class="buttonPrevious btn btn-primary" onclick={prev}> {opts.prevbutton}</a>
                          <a href={opts.path} class="buttonNext btn btn-success"     onclick={next}> {opts.nextbutton}</a>
                          <a href={opts.return} class="buttonFinish btn btn-default" >  {opts.donebutton}</a>
                    </div>
             </div>
          </div>
      </div>
   </div>
   
     
   <script>

     this.tostep= function(e){
       this.goToRef2(e.item.id)
     }

     
     this.goToRef2 = function(idto){
         var innerchildren = document.getElementById(this.stepcontainerid).children;
         for (var i = 0; i < innerchildren.length; i++) {
               document.getElementById(this.stepcontainerid).children[i].style.display="none";
               document.getElementById('ulid'+this.stepcontainerid).children[i].children[0].className="selected"
         }
            document.getElementById(this.stepcontainerid).children[idto].style.display="block";
            document.getElementById('ulid'+this.stepcontainerid).children[idto].children[0].className="done"
     }

     this.prev = function(){
         var fid = this.stepcontainerid
         var fids= this.ids
         if (this.i>0) 
         {
           this.i--
         }
         this.goToRef2(fids[this.i].id)
     }

     this.next = function(){
         var fid = this.stepcontainerid
         var fids= this.ids
         if (this.i<fids.length-1) 
         {
           this.i++
         }
         this.goToRef2(fids[this.i].id) 
     }
       
     this.return=function(){
        this.i=0;
        var innerchildren = document.getElementById(this.stepcontainerid).children;
        for (var j = 1; j < innerchildren.length; j++) {
           document.getElementById('ulid'+this.stepcontainerid).children[j].children[0].className="selected"
        }
        toRef(opts.return) 
        this.goToRef2(0);
     }
      
     this.stepcontainerid='stepContainer_'.concat(opts.id)
    
     this.on('mount', function() {
       this.i=0;
       var innerchildren = document.getElementById(this.stepcontainerid).children;
       this.ids=[];
       for (var j = 0; j < innerchildren.length; j++) {
           this.idd=document.getElementById(this.stepcontainerid).children[j].attributes['id'].value;
           this.ids.push({
             step:j+1,
             id: this.idd,
             title:document.getElementById(this.stepcontainerid).children[j].attributes['title'].value,
             clas: 'selected'
           });
           if (j>0)
            document.getElementById(this.stepcontainerid).children[j].style.display = 'none'
       }
       this.update();
       document.getElementById('ulid'+this.stepcontainerid).children[0].children[0].className="done"  
    });

   </script>
</form-wizard>