<div class="container container-fluid">
    <form method="post" action="Account.jsp" name="signin">
        <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email"  class="form-control" id="exampleInputEmail1" name="username" aria-describedby="emailHelp" placeholder="Enter email">
<!--            </form>
        <form>-->
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Password</label>
          <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="Password">
        </div>
        <div class="form-check">
          <input type="checkbox" class="form-check-input" id="exampleCheck1">
          <label class="form-check-label" for="exampleCheck1">Check me out</label>
        </div>
        <button type="submit" class="btn btn-primary btn-lg btn-block" name="login">Submit</button>
    </form>
</div>
