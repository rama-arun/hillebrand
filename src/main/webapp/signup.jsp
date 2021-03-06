<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">

<head>
    <title>Login Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" th:href="@{/css/bulma.css}" href="../../css/bulma.css"/>
    <link href="../../../resources/images/favicon.ico" rel="icon"
    	type="image/x-icon" th:href="@{/resources/images/favicon.ico}">
</head>

<body>

<section class="section">
     <img src="/resources/images/money.jpg"/>
    <div class="container">
        <div class="columns is-mobile">
            <div class="column is-half is-offset-one-quarter">
                <h1 class="title">Signup</h1>

                <div th:if="${param.error}" class="notification is-danger">
                    Invalid username and password.
                </div>
                <div th:if="${param.logout}" class="notification is-success">
                    You have been logged out.
                </div>

                <form name="f" th:action="@{/signup}" method="post" th:object="${signupinfo}">
                    <label class="label">Username</label>
                    <p class="control">
                        <input class="input" type="text" placeholder="username" name="username"/>
                    </p>

                    <label class="label">Password</label>
                    <p class="control">
                        <input class="input" type="password" placeholder="password" name="password"/>
                    </p>

                    <p class="control">
                        <button type="submit" class="button is-primary">Create Account</button>
                    </p>
                </form>
                Already have an account? <a href="/login">Login</a>
            </div>
        </div>
    </div>
</section>

<footer class="footer">
    <div class="container">
        <div class="content has-text-centered">
            <p>
                Spring Security MongoDB Example.
            </p>
        </div>
    </div>
</footer>

</body>
</html>