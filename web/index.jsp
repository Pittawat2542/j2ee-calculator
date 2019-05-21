<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <title>Calculator</title>
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>
        
        <div class="container mt-3">
            <h1>Calculator</h1>

            <form action="CalculateServlet" method="POST">
                <div class="row">
                    <div class="col">
                        <div class="form-group">
                            <label for="firstNumber">First Number</label>
                            <input type="numeric" class="form-control" id="firstNumber" name="firstNumber" placeholder="Enter first input" required>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group">
                            <label for="operation">Operator</label>
                            <select class="form-control" id="operation" name="operation" required>
                                <option value="add">+</option>
                                <option value="subtract">-</option>
                                <option value="multiply">*</option>
                                <option value="divide">/</option>
                            </select>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group">
                            <label for="secondNumber">Second Number</label>
                            <input type="numeric" class="form-control" id="secondNumber" name="secondNumber" placeholder="Enter second input" required>
                        </div>
                    </div>
                    <div class="col">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </form>

            <% if (request.getAttribute("result") != null) { %>
            <div class="alert alert-success" role="alert">
                <strong>Result: </strong>${requestScope.result}
            </div>
            <% }%>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>