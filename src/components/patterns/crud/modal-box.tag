<modal-box>
    <div class="modal fade {opts.id}" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel">{opts.title}</h4>

                <div class="title_right">
                 <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                   <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                   </div>
                 </div>
                </div>

                </div>
                <div class="modal-body">
                    <table-results id={opts.data} action={opts.action} pagination={opts.pagination}/>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-dismiss="modal">Regresar</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Elegir</button>
                </div>
            </div>
        </div>
    </div>
</modal-box>
<search-box>
  <div class="col-sm-3">
    <div class="input-group">
        <input type="text" class="form-control" placeholder={opts.placeholder}>
        <span class="input-group-btn">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".{opts.link}">
             <i class="fa fa-search"></i>
            </button>
        </span>
    </div>
  <div>
</search-box>