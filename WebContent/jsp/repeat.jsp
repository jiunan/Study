<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../common/vendor/bootstrap/css/bootstrap.min.css">
	
	<script src="../common/vendor/angular/angular.min.js"></script>
	<script>
	function repeatCtrl($scope){
		$scope.friends = [{name:'anjiun', age:'35'},{name:'seojeayoung',age:'37'}];
	} 
	</script>
	<title>AngularJS Repeat TEST</title>
</head>
<body>
	<center>
	<table>
		<tr>
			<td>
				REPEAT TEST {{1+2}}
				<div ng-controller="repeatCtrl">
					<ul>I have {{friends.length}} friends. They are : 
						<li ng-repeat="friend in friends">
						[{{$index+1}}] <font color="blue"><b>{{friend.name}}</b></font> is <font color="blue"><b>{{friend.age}}</b></font> years old.
						</li>
					</ul>
					<tt ng-repeat="friend in friends">$friends.name = {{friend.name}}, $friends.age = {{friend.age}}<br/></tt>
				</div>
			</td>
		</tr>
	</table>
	</center>
</body>
</html>