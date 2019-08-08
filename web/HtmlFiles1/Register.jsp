<div class="container container-fluid rounded border">
    <form class="needs-validation" novalidate>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="firstName">First name</label>
                <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                <div class="invalid-feedback">
                    Valid first name is required.
                </div>
            </div>
            <div class="col-md-6 mb-3">
                <label for="lastName">Last name</label>
                <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                <div class="invalid-feedback">
                    Valid last name is required.
                </div>
            </div>
        </div>

        <div class="mb-3">
            <label for="username">Username</label>
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text">@</span>
                </div>
                <input type="text" class="form-control" id="username" placeholder="Username" required>
                <div class="invalid-feedback" style="width: 100%;">
                    Your username is required.
                </div>
            </div>
        </div>

        <div class="mb-3">
            <label for="email">Email</label>
            <input type="email" class="form-control" id="email" placeholder="you@example.com">
            <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
            </div>
        </div>
        
        <div class="mb-3">
            <label for="password">Password</label>
            <input type="password" class="form-control" id="password" placeholder="Enter Password">
            <div class="invalid-feedback">
                Please enter a strong password.
            </div>
        </div>
        
        <div class="mb-3">
            <label for="cpassword">Confirm Password</label>
            <input type="password" class="form-control" id="cpassword" placeholder="Confirm your Password">
            <div class="invalid-feedback">
                Passwords didn't matched.
            </div>
        </div>

        <hr class="mb-4">
        
        <div class="mb-3">
            <label for="address">Address</label>
            <input type="text" class="form-control" id="address" placeholder="1234 Main St" required>
            <div class="invalid-feedback">
                Please enter your shipping address.
            </div>
        </div>

        

        <div class="d-block my-3 mb-3">
        <label for='gender'>Gender</label>
            <div class="custom-control custom-radio">
                <input id="credit" name="gender" type="radio" class="custom-control-input" checked required>
                <label class="custom-control-label" for="male">Male</label>
            </div>
            <div class="custom-control custom-radio">
                <input id="debit" name="gender" type="radio" class="custom-control-input" required>
                <label class="custom-control-label" for="female">Female</label>
            </div>
            <div class="custom-control custom-radio">
                <input id="paypal" name="gender" type="radio" class="custom-control-input" required>
                <label class="custom-control-label" for="other">Other</label>
            </div>
        </div>
       
        <hr class="mb-4">
        <button class="btn btn-primary btn-lg btn-block" type="submit">Register</button>
    </form>
</div>