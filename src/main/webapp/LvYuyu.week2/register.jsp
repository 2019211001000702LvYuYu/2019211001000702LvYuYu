<html>
<head>
    <title>register</title>
</head>
<body>
<form>
    NEW USER REGISTRATION<br/>
    <label for="Username">USERNAME</label><br/>
    <input type="text" name="Username" id="Username" placeholder="Please input username" required autofocus><br/>

    <label for="Password">PASSWORD</label><br/>
    <input type="password" name="Password" id="Password" placeholder="Please input password" required autofocus minlength="8"><br/>

    <label for="Email">EMAIL</label><br/>
    <input type="email" name="Email" id="Email" placeholder="Please input Email" required autofocus><br/>


    <input type="radio" name="sex" value="Male" checked/>Male

    <input type="radio" name="sex" value="Female" checked/>Female<br/>

    <label for="BirthDate">BIRTHDATE</label><br/>
    <input type="date" name="BirthDate" id="BirthDate" placeholder="Day of Birth (yyyy-mm-dd)" ><br/>

    <input type="submit" value="Register"/><br/>

</form>
</body>
