function choose()
{
    var c=document.getElementsById('ch');
    var j=document.getElementById('ju');
    var q=document.getElementById('qu');
    c.style.visibility='visible';
    j.style.visibility='hidden';
    q.style.visibility='hidden';
  


}

function judge()
{
    var c=document.getElementById('ch');
    var j=document.getElementById('ju');
    var q=document.getElementById('qu');
    c.style.visibility='hidden';
    j.style.visibility='visible';
    q.style.visibility='hidden';
}

function question()
{
    var c=document.getElementById('ch');
    var j=document.getElementById('ju');
    var q=document.getElementById('qu');
    c.style.visibility='hidden';
    j.style.visibility='hidden';
    q.style.visibility='visible';
}
function disappear()
{
     var c=document.getElementById('ch');
    var j=document.getElementById('ju');
    var q=document.getElementById('qu');
    c.style.visibility='visible';
    j.style.visibility='hidden';
    q.style.visibility='hidden';
}