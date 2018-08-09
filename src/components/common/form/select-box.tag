<select-box>
	<label if={ opts.required == 'true'} >{ opts.placeholder}<font color="red"> *</font></label>
    <label if={ opts.required == 'false' || ( ! opts.required && opts.placeholder ) } >{ opts.placeholder }</label>

	
	<div id={ opts.id }>
		<yield/>
		<option-box each={d , i in rows } id={i} label={d.data[fieldindex]}/>
	</div>
	<br/>
	
    <script>
	  if (this.opts.data!=null) {
      this.headers    = JSON.parse(localStorage.getItem('header_'+ this.opts.data));
      this.rows       = JSON.parse(localStorage.getItem('rows_'+ this.opts.data));
      for (var i=0; i < this.rows.length; i++)
      {
		var j=Number(this.opts.fieldindex);
		this.fieldindex=j;
		  console.log(j);
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
    </script>

</select-box>
 
