<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Authentication</title>

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

    <style>
        body {
            background-color: #f5f7fa;
        }

        .auth-container {
            max-width: 450px;
            margin: 80px auto;
        }

        .hidden {
            display: none;
        }

        .card {
            border-radius: 10px;
        }
    </style>

    <script>
        function showForm(type) {
            document.getElementById("loginForm").classList.add("hidden");
            document.getElementById("registerForm").classList.add("hidden");

            document.getElementById(type).classList.remove("hidden");
        }
    </script>
</head>

<body>

<div class="container auth-container">

    <!-- ================= LOGIN ================= -->
    <div class="card" id="loginForm">

        <div class="card-header bg-primary text-white text-center">
            Login
        </div>

        <div class="card-body">

            <form action="/doLogin" method="post">

                <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="email" class="form-control" required>
                </div>

                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="pswd" class="form-control" required>
                </div>

                <button type="submit" class="btn btn-primary btn-block">
                    Login
                </button>

            </form>

            <hr>

            <button class="btn btn-link btn-block"
                    onclick="showForm('registerForm')">
                Create new account
            </button>

        </div>
    </div>

    <!-- ================= REGISTER ================= -->
    <div class="card hidden" id="registerForm">

        <div class="card-header bg-success text-white text-center">
            Register
        </div>

        <div class="card-body">

            <form action="/doRegistration" method="post">

                <div class="form-group">
                    <label>Name</label>
                    <input type="text" name="empname" class="form-control" required>
                </div>

                <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="empemail" class="form-control" required>
                </div>

                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="emppass" class="form-control" required>
                </div>

                <div class="form-group">
                    <label>Role</label>
                    <input type="text" name="role" class="form-control" required>
                </div>

                <button type="submit" class="btn btn-success btn-block">
                    Register
                </button>

            </form>

            <hr>

            <button class="btn btn-link btn-block"
                    onclick="showForm('loginForm')">
                Back to Login
            </button>

        </div>
    </div>

</div>

</body>
</html>