<h1>Grammar Practice</h1>
<h2>Choose the best way to complete the sentences bellow.</h2>
<div>
<script>
function Grammar1()
{
 if (document.form1.myList1.options[document.form1.myList1.options.selectedIndex].value == "There") {
        var mylist1 = document.getElementById("myList1");
document.getElementById("word1").value=mylist1.options[mylist1.selectedIndex].text;
document.form1.style.backgroundColor = 'green';
//document.form1.style.visibility ="hidden";
}     
else
{
document.form1.style.backgroundColor = 'red';
}


}



function Grammar2()
{
 if (document.form2.myList2.options[document.form2.myList2.options.selectedIndex].value == "Which") {
        var mylist2 = document.getElementById("myList2");
document.getElementById("word2").value=mylist2.options[mylist2.selectedIndex].text;
document.form2.style.backgroundColor = 'green';
        }
else
{
document.form2.style.backgroundColor = 'red';
//alert('Try again...');
}

}

</script>
<div>
<form name="form1">
1. <input type="text" id="word1" size="20"> is your new car. <br><br>
&nbsp;&nbsp;&nbsp;
<select id="myList1" onchange="Grammar1(document.form1.myList1.options[document.form1.myList1.options.selectedIndex].value)" style="-moz-user-input: enabled; background-color: rgb(255, 255, 255); font-family: cursive; outline-color: rosybrown; text-align: center; border-radius: 5px 5px 5px; color: black;">
  <option>Their</option>
  <option>There</option>  
  <option>They're</option>
  <option>Hare</option>
  <option>None of the above</option>
</select>
</form>
<br><br>

<form name="form2">
2. <input type="text" id="word2" size="20"> sandwich is yours? <br><br>
&nbsp;&nbsp;&nbsp;
<select id="myList2" onchange="Grammar2(document.form2.myList2.options[document.form2.myList2.options.selectedIndex].value)" style="-moz-user-input: enabled; background-color: rgb(255, 255, 255); font-family: cursive; outline-color: rosybrown; text-align: center; border-radius: 5px 5px 5px; color: black;">
  <option>Witch</option>
  <option>Which</option>  
  <option>Wich</option>
  </select>
</form>
</div>

<!-- Hosting24 Analytics Code -->
<script type="text/javascript" src="http://stats.hosting24.com/count.php"></script>
<!-- End Of Analytics Code -->
</div>
%rebase templates/layout.tpl title='HILT Institute Home Page', addstyles=['grammer'], scripts=None
