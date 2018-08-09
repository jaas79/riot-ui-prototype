<select-auto>
	<label if={ opts.required == 'true'}   for={opts.type}>{ opts.placeholder }<font color="red"> *</font></label>
    <label if={ opts.required == 'false' || ( ! opts.required && opts.label ) } for={opts.type}>{ opts.placeholder }</label>
	<input id={ "auto-" + opts.id  } class="form-control">
	
	
	
	<div id={ "opts-" + opts.id } style="display: none;">
	    <yield/>
		<option each={d , i in rows }  id={i} label={d.data[fieldindex]}/>
	</div>
	
	<script>
      this.on('before-mount', function(){
        if (this.opts.data!=null) {
        this.headers    = JSON.parse(localStorage.getItem('header_'+ this.opts.data));
        this.rows       = JSON.parse(localStorage.getItem('rows_'+ this.opts.data));
         for (var i=0; i < this.rows.length; i++)
         {
		  var j=Number(this.opts.fieldindex);
		  this.fieldindex=j;
          if (this.headers[j].type!=null) {
           if (this.headers[j].type=='currency') {
              if (this.headers[j].precision!=null)  {
                 this.rows[i].data[j]= '$'+ (Number(this.rows[i].data[j])).toLocaleString('en-US', { style: 'decimal', maximumFractionDigits : this.headers[j].precision, minimumFractionDigits : this.headers[j].precision })
              }
              else
              {
                 this.rows[i].data[j]= '$'+ (Number(this.rows[i].data[j])).toLocaleString('en-US', { style: 'decimal', maximumFractionDigits : localStorage.getItem('precision'), minimumFractionDigits : localStorage.getItem('precision') })
              }
           }
           else
           {
             this.rows[i].data[j]= this.rows[i].data[j]
           }
          }
          else{
           this.rows[i].data[j]= this.rows[i].data[j]
          }
        }
	   }
	  });
		
	  this.on('mount', function(){
        function setAutocomplete(){
				var id = "#auto-" + opts.id;
				var divId = "#opts-" + opts.id
				
				var optionsAvailable = [];
				
				$( divId ).children("option").each(function(){
					var option = $( this ).attr("label");
					optionsAvailable.push(option);
				});
				
				$( id ).autocomplete({
					source: optionsAvailable
				});
		}
			
		var inputAutocomplete = document.getElementById( "auto-" + opts.id );
		inputAutocomplete.addEventListener("mouseover", setAutocomplete);
			
	  });
	</script>
</select-auto>
