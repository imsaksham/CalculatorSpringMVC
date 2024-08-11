<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
</head>
<style>
    body {
        background-color: slategrey;
    }
    h1 {
      color: thistle;
      text-align: center;
      font-size: 44px;
    }
    #calculator {
      width: 270px;
      height: 500px;
      margin: auto;
      box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
      height: 350px;
      margin-top: 60px;
      padding: 40px;
      background-color: rgb(222, 184, 135);
    }
    #display {
      width: 240px;
      margin: auto;
      height: 60px;
      box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
      border-radius: 7px;
      font-size: 22px;
      font-weight: bold;
      display: grid;
      justify-content: right;
      align-items: center;
      padding: 0px 10px;
      border: none;
      outline: none;
      text-align: right;
      pointer-events: none;
    }
    #keyboard {
      width: 260px;
      margin: auto;
      margin-top: 15px;
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      grid-template-rows: repeat(4, 60px);
      gap: 7px;
    }
    #keyboard > div {
      box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
      font-size: 20px;
      font-weight: bold;
      border-radius: 5px;
      display: grid;
      justify-content: center;
      align-items: center;
    }
    #keyboard > div:hover {
      background-color: teal;
      color: white;
      cursor: pointer;
    }
    .black {
      background-color: black;
      color: white;
    }
    .red {
      background-color: red;
      color: white;
    }
  </style>
  <body>
    <h1>Calculator</h1>
    <div id="calculator">
      <input id="display" type="text" autofocus />
      <div id="keyboard">
        <div>1</div>
        <div>2</div>
        <div>3</div>
        <div class="black">+</div>
        <div>4</div>
        <div>5</div>
        <div>6</div>
        <div class="black">-</div>
        <div>7</div>
        <div>8</div>
        <div>9</div>
        <div class="black">*</div>
        <div class="red">C</div>
        <div>0</div>
        <div class="black">=</div>
        <div class="black">/</div>
      </div>
    </div>
  </body>
  <script>
    let keys = document.querySelectorAll("#keyboard>div");
    let output = "";
    for (let i = 0; i < keys.length; i++) {
      keys[i].addEventListener("click", myCalculator);
    }
    function myCalculator(event) {
      let x = event.target.innerText;
      if (x == "C") {
        output = "";
        document.getElementById("display").value = "";
      } 
      else if ((output.length == 0 && x == "*") || (output.length == 0 && x == "/")) {
        document.getElementById("display").value = "";
        output = "";
      } 
      else if (x == "=") {
        let cal = eval(output);
        if (cal == undefined) {
          document.getElementById("display").value = "";
        } 
        else {
          let ans = (document.getElementById("display").value = cal);
          output = ans;
        }
      } 
      else {
        output += x;
        document.getElementById("display").value = output;
      }
    }
  </script>
</html>