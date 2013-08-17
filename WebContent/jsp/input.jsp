<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../common/vendor/bootstrap/css/bootstrap.min.css">
	
	<script src="../common/vendor/angular/angular.min.js"></script>
	<script>
	function textCtrl($scope){
		$scope.user = {	name:'guest', age:'0' };
	}
	
	function checkboxCtrl($scope){
		$scope.value1 = true;
		$scope.value2 = 'YES';
	}
	
	function emailCtrl($scope){
		$scope.text = 'test.test@test.com';
	}
	
	function numberCtrl($scope){
		$scope.num1 = 10;
	}
	
	function radioCtrl($scope){
		$scope.v_color = "";
	}
	
	function urlCtrl($scope){
		$scope.v_url = "http://google.co.kr";
	}
	
	function ngbindCtrl($scope){
		$scope.v_txt = "";
	}
	
	function selectCtrl($scope){
		$scope.test = "";
	}
	</script>
	<title>AngularJS Input TEST</title>
</head>
<body>

<center>
<form name="frm">
	<table border="1" width="500px">
		<tr>
			<td>
			<div ng-controller="textCtrl">
				<p><font color="red"><b>INPUT [text] TEST 입니다. {{1+0}}</b></font></p>
				<p>
					이름 : <input type="text" name="userNm" ng-model="user.name" placeholder="이름을 입력해 주세요." required></input> 
					<span class="error" ng-show="frm.userNm.$error.required">Required!</span>
				</p>
				
				<p>
					나이 : <input type="text" name="userAge" ng-model="user.age" ng-minlength="1" ng-maxlength="3" placeholder="나이를 입력해 주세요."></input>
					<span class="error" ng-show="frm.userAge.$error.minlength">Too Short!</span>
					<span class="error" ng-show="frm.userAge.$error.maxlength">Too Long!</span> 
				</p>
				<br/>
				<tt>$.scope.user = <font color="blue"><b>{{user}}</b></font></tt><br/>
				<tt>입력된 이름은 <font color="blue"><b>{{user.name}}</b></font>  입니다.</tt><br/>
				<tt>입력된 나이는 <font color="blue"><b>{{user.age}}</b></font>  입니다.</tt><br/>
				<tt>frm.userNm.$valid = <font color="blue"><b>{{frm.userNm.$valid}}</b></font></tt><br/>
				<tt>frm.userNm.$error = <font color="blue"><b>{{frm.userNm.$error}}</b></font></tt><br/>
				<tt>frm.userAge.$valid = <font color="blue"><b>{{frm.userAge.$valid}}</b></font></tt><br/>
				<tt>frm.userAge.$error = <font color="blue"><b>{{frm.userAge.$error}}</b></font></tt><br/>
			</div>
			</td>
		</tr>
	</table>
</form>
</center>

<p height="20px">&nbsp;</p>

<center>
<form name="frm2">
	<table border="1" width="500px">
		<tr>
			<td>
			<div ng ng-controller="checkboxCtrl">
				<p><font color="red"><b>INPUT [chekbox] Test 입니다. {{1+1}}</b></font></p>
				<p>Value1 : <input type="checkbox" ng-model="value1"></p>
				<p>Value2 : <input type="checkbox" ng-model="value2" ng-true-value="YES" ng-false-value="NO"></p>
				<br/>
				<tt>value1 = {{value1}}</tt><br/>
				<tt>value2 = {{value2}}</tt>
			</div>
			</td>
		</tr>
	</table>
</form>
</center>

<p height="20px">&nbsp;</p>

<center>
<form name="frm3">
	<table border="1" width="500px">
		<tr>
			<td>
			<div ng-controller="emailCtrl">
				<p><font color="red"><b>INPUT [email] Test 입니다. {{1+2}}</b></font></p>
				<p>
					Email: <input type="email" name="email1" ng-model="text" placeholder="이메일을 입력해 주세요." required>
					<span class="error" ng-show="frm3.email1.$error.required">Required!</span><br/>
					<span class="error" ng-show="frm3.email1.$error.email">Not valid email!</span>
				</p>
				<br/>
				<tt>입력된 이메일은 <font color="blue"><b>{{text}}</b></font> 입니다.</tt><br/>
				<tt>frm3.email1.$valid = {{frm3.email1.$valid}}</tt><br/>
				<tt>frm3.email1.$error = {{frm3.email1.$error}}</tt><br/>
				<tt>frm3.$valid = false</tt><br/>
				<tt>frm3.$error.required = {{!!frm3.$error.required}}</tt><br/>
				<tt>frm3.$error.email = {{!!frm3.$error.email}}</tt><br/>
				<br/>
			</div>
			</td>
		</tr>
	</table>
</form>
</center>

<p height="20px">&nbsp;</p>

<center>
<form name="frm4">
	<table border="1" width="500px">
		<tr>
			<td>
			<div ng-controller="numberCtrl">
				<p><font color="red"><b>INPUT [number] Test 입니다. {{1+3}}</b></font></p>
				<p>
					Number: <input type="number" name="number1" ng-model="num1" min="0" max="99" placeholder="숫자를 입력해 주세요." required>
					<span class="error" ng-show="frm4.number1.$error.required">Required!</span><br/>
				</p>
				<br/>
				<tt>입력된 숫자는 <font color="blue"><b>{{num1}}</b></font> 입니다.</tt><br/>
				<tt>frm4.number1.$valid = {{frm4.number1.$valid}}</tt><br/>
				<tt>frm4.number1.$error = {{frm4.number1.$error}}</tt><br/>
				<tt>frm4.$valid = false</tt><br/>
				<tt>frm4.$error.required = {{!!frm4.$error.required}}</tt><br/>
				<tt>frm4.$error.number = {{!!frm4.$error.number}}</tt><br/>
				<br/>
			</div>
			</td>
		</tr>
	</table>
</form>
</center>

<p height="20px">&nbsp;</p>

<center>
<form name="frm5">
	<table border="1" width="500px">
		<tr>
			<td>
			<div ng-controller="radioCtrl">
				<p><font color="red"><b>INPUT [radio] Test 입니다. {{1+4}}</b></font></p>
				<p>
					<input type="radio" ng-model="v_color" value="red"> RED <br/>
					<input type="radio" ng-model="v_color" value="green"> GREEN <br/>
					<input type="radio" ng-model="v_color" value="blue"> BLUE <br/>
				</p>
				<br/>
				<tt>COLOR = <font color="{{v_color}}"><b>{{v_color}}</b></font></tt><br/>
				<br/>
			</div>
			</td>
		</tr>
	</table>
</form>
</center>

<p height="20px">&nbsp;</p>

<center>
<form name="frm6">
	<table border="1" width="500px">
		<tr>
			<td>
			<div ng-controller="urlCtrl">
				<p><font color="red"><b>INPUT [url] Test 입니다. {{1+5}}</b></font></p>
				<p>
					URL: <input type="url" name="url1" ng-model="v_url" placeholder="URL을 입력해 주세요." required>
					<span class="error" ng-show="frm6.url1.$error.required">Required!</span><br/>
					<span class="error" ng-show="frm6.url1.$error.url">Not valid URL!</span><br/>
				</p>
				<br/>
				<tt>입력된 URL은 <font color="blue"><b>{{v_url}}</b></font> 입니다.</tt><br/>
				<tt>frm6.url1.$valid = {{frm6.url1.$valid}}</tt><br/>
				<tt>frm6.url1.$error = {{frm6.url1.$error}}</tt><br/>
				<tt>frm6.$valid = false</tt><br/>
				<tt>frm6.$error.required = {{!!frm6.$error.required}}</tt><br/>
				<tt>frm6.$error.number = {{!!frm6.$error.number}}</tt><br/>
				<br/>
			</div>
			</td>
		</tr>
	</table>
</form>
</center>


<p height="20px">&nbsp;</p>

<center>
<form name="frm7">
	<table border="1" width="500px">
		<tr>
			<td>
			<div ng-controller="ngbindCtrl">
				<p><font color="red"><b>ngBind Test 입니다. {{1+6}}</b></font></p>
				<p>
					Enter Text: <input type="text" name="txt" ng-model="v_txt" placeholder="텍스트를 입력해 주세요.">
				</p>
				<br/>
				<tt>TEXT : <font color="blue"><b><span ng-bind="v_txt"></span></b></font> 입니다.</tt><br/>
				<br/>
			</div>
			</td>
		</tr>
	</table>
</form>
</center>

<p height="20px">&nbsp;</p>

<center>
<form name="frm8">
	<table border="1" width="500px">
		<tr>
			<td>
			<div ng-controller="selectCtrl">
				<p><font color="red"><b>Select Test 입니다. {{1+7}}</b></font></p>
				<p>
					<select name="sel">
						<option value=""></option>
					</select>
				</p>
			</div>
			</td>
		</tr>
	</table>
</form>
</center>
</body>
</html>