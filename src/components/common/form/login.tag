
<login>
<page title="Login">
      <div class="login_wrapper">
          <section class="login_content">
            <form>
              <h1>{parent.parent.opts.options.params.title}</h1>
              <div>
                <input type="text" class="form-control" placeholder={parent.parent.opts.options.params.username} required="" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder={parent.parent.opts.options.params.password} required="" />
              </div>
              <div>
                <a class="btn btn-primary submit" href={parent.parent.opts.options.params.link}>
                  <span>Log in</span>
                  <i class="fa fa-sign-in"></i>
                </a>
                <a class="reset_pass" href="#">¿Olvidaste tu contraseña?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <!-- <p class="change_link">New to site?
                  <a href="#signup" class="to_register"> Create Account </a>
                </p> -->

                <div class="clearfix"></div>
                <br />
              </div>
            </form>
          </section>
      </div>
  </page>
</login>
