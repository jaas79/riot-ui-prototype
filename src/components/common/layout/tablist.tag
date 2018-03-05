<tablist>
              <div class="x_panel">
                  <div class="x_content">
                    <div class="" role="tabpanel" data-example-id="togglable-tabs">
                      <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                        <li role="presentation" class={id.clas} each={id, index in ids}>
                          <a href="#{id.id}" id="{id.id}-tab" role="tab" data-toggle="tab" aria-expanded="false" index={id.index} onclick={changeclass} >
                            {id.label}
                          </a>
                        </li>
                      </ul>
                      <div id={tabcontainerid} class="tab-content">
                        <yield/>
                      </div>
                    </div>
                  </div>
              </div>
              <script>
                 this.tabcontainerid ='myTabContent_'.concat(opts.id)
                 this.changeclass = function(e){
                         var i = e.currentTarget.attributes["index"].value;
                         var idtab = e.currentTarget.attributes["href"].value.split('#')[1];
                         document.getElementById(idtab).className="tab-pane fade active in";
                     }

                 this.on('mount', function() {
                 var innerchildren = document.getElementById(this.tabcontainerid).children;
                 this.ids=[];
                 for (var j = 0; j < innerchildren.length; j++) {
                       this.idd=document.getElementById(this.tabcontainerid).children[j].attributes['id'].value;
                       this.label=document.getElementById(this.tabcontainerid).children[j].attributes['label'].value;
                       
                       var klass = "active";
                       document.getElementById(this.idd).className="tab-pane fade active in";
                       if (j>=1) {
                          klass= ""
                          document.getElementById(this.idd).className="tab-pane";
                       }
                       this.ids.push({
                         id: this.idd,
                         label: this.label,
                         index: j+1,
                         clas:klass
                       });
                 }  
                 this.update();
                 })
              </script>
</tablist>

<tabitem>
    <div role="tabpanel" class={opts.class} id={opts.id} aria-labelledby="profile-tab">
              <yield/>
    </div>
</tabitem>