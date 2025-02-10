function startTime() {
  var today = new Date();
  var h = today.getHours();
  var m = today.getMinutes();
  var s = today.getSeconds();
  m = checkTime(m);
  s = checkTime(s);
  var am_pm = h >= 12 ? "PM" : "AM";
  h = h % 12;
  h = h ? h : 12;
  document.getElementById("time").innerHTML =
    "Time : " + h + ":" + m + ":" + s + " " + am_pm;
  var t = setTimeout(startTime, 500);
}

function checkTime(i) {
  if (i < 10) {
    i = "0" + i;
  }
  return i;
}
function liveDate() {
  var month = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];
  var day = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
  ];
  var today = new Date();
  var dayOfWeek = day[today.getDay()];
  var dayOfMonth = today.getDate();
  var monthName = month[today.getMonth()];
  var year = today.getFullYear();
  document.getElementById("date").innerHTML =
    "Date : " + dayOfWeek + ", " + monthName + " " + dayOfMonth + ", " + year;
  var t = setTimeout(liveDate, 500);
}
