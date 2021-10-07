<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='${pageContext.request.contextPath}/resources/fullcalendar-5.9.0/lib/main.css'
rel='stylesheet' />
<script src='${pageContext.request.contextPath}/resources/fullcalendar-5.9.0/lib/main.js'></script>
<script>
document.addEventListener('DOMContentLoaded', function() {
var calendarEl = document.getElementById('calendar');

var calendar = new FullCalendar.Calendar(calendarEl, {
     dateClick: function() {
    alert('a day has been clicked!');
    }
});
calendar.render();
});
</script>
<style>
#calendar {
width: 95%;
  height: 90%;  
margin:0 auto;
margin-top: 20px;
}
</style>
<title></title>
</head>
<body>
<div id="calendar"></div>
</body>
</html>