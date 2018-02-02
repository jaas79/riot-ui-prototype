<submit-button>
  <button onclick={ goToRef } class={ btnType() }>
    <i class={ btnIcon() }></i>
    { btnLabel() }
  </button>

	<script>
		this.goToRef = function(){
			toRef(opts.to);
		};

    var buttons = [
      { type: "create", button: { label: "Guardar", class: "btn btn-primary", icon: "fa fa-save" } },
      { type: "update", button: { label: "Guardar", class: "btn btn-primary", icon: "fa fa-save" } },
      { type: "delete", button: { label: "Eliminar", class: "btn btn-danger", icon: "fa fa-trash" } },
      { type: "default", button: { label: "...", class: "btn btn-default", icon: "fa fa-asterisk" } }
    ];

    this.btnLabel = function() {
      switch (opts.action) {
        case 'create':
          return buttons[0].button.label;
          break;
        case 'update':
          return buttons[1].button.label;
          break;
        case 'delete':
          return buttons[2].button.label;
          break;
        default:
          return opts.caption;
      }
    }

    this.btnType = function() {
      switch (opts.action) {
        case 'create':
          return buttons[0].button.class;
          break;
        case 'update':
          return buttons[1].button.class;
          break;
        case 'delete':
          return buttons[2].button.class;
          break;
        default:
          return buttons[3].button.class;
      }
    }

    this.btnIcon = function() {
      switch (opts.action) {
        case 'create':
          return buttons[0].button.icon;
          break;
        case 'update':
          return buttons[1].button.icon;
          break;
        case 'delete':
          return buttons[2].button.icon;
          break;
        default:
          return buttons[3].button.icon;
      }
    }
	</script>
</submit-button>
