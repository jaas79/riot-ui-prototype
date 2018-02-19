
<login>
<div class="right_col" role="main" id="contentid">
      <div class="clearfix"></div>
      
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form>
              <h1>{opts.options.params.title}</h1>
              <div>
                <input type="text" class="form-control" placeholder={opts.options.params.username} required="" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder={opts.options.params.password} required="" />
              </div>
              <div>
                <a class="btn btn-default submit" href={opts.options.params.link}>Log in</a>
                <a class="reset_pass" href="#">Lost your password?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">New to site?
                  <a href="#signup" class="to_register"> Create Account </a>
                </p>

                <div class="clearfix"></div>
                <br />
              </div>
            </form>
          </section>
        </div>
      </div>
      <yield/>
  </div>
</login>
