<!-- Tab links -->
<div class="container">
    <div class="tab btn-group">
      <button class="tablinks active rounded" onclick="swap(event, 'singin')">Sign In</button>
      <button class="tablinks rounded" onclick="swap(event, 'signup')">Sign Up</button>
    </div>

    <!-- Tab content -->
    <div id="singin" class="tabcontent" <%if(action=="signin"){ %>style="display: block"<%}%>>
        <jsp:include page="Login.jsp" />
    </div>

    <div id="signup" class="tabcontent" <%if(action=="register"){ %>style="display: block"<%}%>>
        <jsp:include page="Register.jsp" />
    </div>
</div>
