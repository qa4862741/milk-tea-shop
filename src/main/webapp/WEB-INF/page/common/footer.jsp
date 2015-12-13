
<!-- Placed js at the end of the document so the pages load faster -->

<!--Core js-->
<script src="<c:url value="/resources/js/jquery.js"/>"></script>
<script src="<c:url value="/resources/bs3/js/bootstrap.min.js"/>"></script>
<script class="include" type="text/javascript" src="<c:url value="/resources/js/jquery.dcjqaccordion.2.7.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.scrollTo.min.js"/>"></script>
<script src="<c:url value="/resources/js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.nicescroll.js"/>"></script>
<!--Easy Pie Chart-->
<script src="<c:url value="/resources/js/easypiechart/jquery.easypiechart.js"/>"></script>
<!--Sparkline Chart-->
<script src="<c:url value="/resources/js/sparkline/jquery.sparkline.js"/>"></script>


<!--dynamic table-->
<script type="text/javascript" language="javascript" src="<c:url value="/resources/js/advanced-datatable/js/jquery.dataTables.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/data-tables/DT_bootstrap.js"/>"></script>
<!--common script init for all pages-->
<script src="<c:url value="/resources/js/scripts.js"/>"></script>

<!--dynamic table initialization -->
<script src="<c:url value="/resources/js/dynamic_table_init.js"/>"></script>

<script type="text/javascript">
    $('.managers').each(function(){
    	$(this).click(function(){
    		$(this).addClass('active');
    	});
    });
    
    $('#'+activeId).parent().addClass('active');
    $('#'+activeId).parent().parent().parent().find('.managers').addClass('active'); 
</script>