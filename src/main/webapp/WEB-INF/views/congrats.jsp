<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Employee Dashboard</title>

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        body { background-color: #f5f7fa; }

        .card { margin-bottom: 20px; }
    </style>
</head>

<body>

<div class="container">

    <!-- HEADER -->
    <div class="jumbotron text-center">
        <h2>Employee Management Dashboard</h2>
    </div>

    <!-- SUCCESS / ERROR -->
    <c:if test="${not empty message}">
        <div class="alert alert-success">${message}</div>
    </c:if>

    <c:if test="${not empty error}">
        <div class="alert alert-danger">${error}</div>
    </c:if>

    <!-- SEARCH -->
    <div class="card">
        <div class="card-header bg-primary text-white">
            Search Employees
        </div>

        <div class="card-body">
            <input type="text" id="searchInput" class="form-control"
                   placeholder="Search employee...">
        </div>
    </div>

    <!-- TABLE -->
    <div class="card">

        <div class="card-header bg-dark text-white">
            Employee List
        </div>

        <div class="card-body">

            <table class="table table-bordered table-striped">

                <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>EMAIL</th>
                    <th>PASSWORD</th>
                    <th>ROLE</th>
                    <th>ACTION</th>
                </tr>
                </thead>

                <tbody id="employeeTable">

                <c:forEach var="employee" items="${employees}">
                    <tr>
                        <td>${employee.empid}</td>
                        <td>${employee.empname}</td>
                        <td>${employee.empemail}</td>
                        <td>${employee.emppass}</td>
                        <td>${employee.role}</td>

                        <td>
                            <a href="/deleteEmployee/${employee.empid}"
                               class="btn btn-danger btn-sm"
                               onclick="return confirm('Delete employee?')">
                                Delete
                            </a>
                        </td>
                    </tr>
                </c:forEach>

                </tbody>

            </table>

        </div>
    </div>

</div>

<!-- SEARCH SCRIPT -->
<script>
    document.getElementById("searchInput").addEventListener("keyup", function () {

        let filter = this.value.toLowerCase();
        let rows = document.querySelectorAll("#employeeTable tr");

        rows.forEach(row => {
            row.style.display =
                row.textContent.toLowerCase().includes(filter) ? "" : "none";
        });

    });
</script>

</body>
</html>