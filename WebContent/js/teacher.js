function choose()
{
    var c=document.getElementsById('ch');
    var j=document.getElementById('ju');
    var q=document.getElementById('qu');
    c.style.visibility='visible';
    j.style.visibility='hidden';
    q.style.visibility='hidden';
  


}

function multichoose()
{
	 var c=document.getElementById('ch');
	    var j=document.getElementById('ju');
	    var q=document.getElementById('qu');
	    var m=document.getElementById('mc');
	    m.style.visibility='visible';
	    c.style.visibility='hidden';
	    j.style.visibility='hidden';
	    q.style.visibility='hidden';
	   
}

function judge()
{
    var c=document.getElementById('ch');
    var j=document.getElementById('ju');
    var q=document.getElementById('qu');
    var m=document.getElementById('mc');
    c.style.visibility='hidden';
    j.style.visibility='visible';
    q.style.visibility='hidden';
    m.style.visibility='hidden';
}

function question()
{
    var c=document.getElementById('ch');
    var j=document.getElementById('ju');
    var q=document.getElementById('qu');
    var m=document.getElementById('mc');
    c.style.visibility='hidden';
    j.style.visibility='hidden';
    q.style.visibility='visible';
    m.style.visibility='hidden';
}
function disappear()
{
    var c=document.getElementById('ch');
    var j=document.getElementById('ju');
    var q=document.getElementById('qu');
    var m=document.getElementById('mc');
    c.style.visibility='visible';
    j.style.visibility='hidden';
    q.style.visibility='hidden';
    m.style.visibility='hidden';
}