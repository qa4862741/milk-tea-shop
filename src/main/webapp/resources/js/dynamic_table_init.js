function fnFormatDetails(oTable, nTr) {
	var aData = oTable.fnGetData(nTr);
	var sOut = '<table style="padding-left:150px;">';
	sOut += '<tr>'
    sOut += '<th width="45px"></th>'
	sOut += '<th width="100px">奶茶名称</th>'
	sOut += '<th width="100px">单位</th>'
	sOut += '<th width="100px">单价</th>'
	sOut += '<th width="100px">数量</th>'
	sOut += '<th>口味</th>'
	sOut += '<th>加料</th>'
	sOut += '</tr>';

	$.ajax({
		type : "GET",
		url : basePath + '/order/getOrderItemsByOrderId?orderId=' + aData[1],
		async : false,
		success : function(returnValue) {
			for (var i = 0; i < returnValue.length; i++) {
				var orderItem = returnValue[i];
				var orderItemTr = '<tr>';
				    orderItemTr+=  '<td width="45px"></td>';
				    orderItemTr+=  '<td width="100px">'+orderItem.goodsName+'</td>';
				    orderItemTr+=  '<td width="100px">'+orderItem.unit+'</td>';
				    orderItemTr+=  '<td width="100px">'+'￥'+orderItem.unitPrice+'</td>';
				    orderItemTr+=  '<td width="100px">'+orderItem.count+'</td>';
				    orderItemTr+=  '<td>'+orderItem.taste+'</td>';
				    orderItemTr+=  '<td>'+orderItem.addition+'</td>';
				    orderItemTr+= '</tr>';
			    sOut += orderItemTr;
			}
		}
	});

	sOut += '</table>';
	return sOut;
}

$(document).ready(
		function() {

			$('#dynamic-table').dataTable({
				"aaSorting" : [ [ 4, "desc" ] ]
			});

			/*
			 * Insert a 'details' column to the table
			 */
			var nCloneTh = document.createElement('th');
			var nCloneTd = document.createElement('td');
			nCloneTd.innerHTML = '<img src=' + basePath
					+ '/resources/images/details_open.png>';
			nCloneTd.className = "center";

			$('#hidden-table-info thead tr').each(function() {
				this.insertBefore(nCloneTh, this.childNodes[0]);
			});

			$('#hidden-table-info tbody tr').each(
					function() {
						this.insertBefore(nCloneTd.cloneNode(true),
								this.childNodes[0]);
					});

			/*
			 * Initialse DataTables, with no sorting on the 'details' column
			 */
			var oTable = $('#hidden-table-info').dataTable({
				"aoColumnDefs" : [ {
					"bSortable" : false,
					"aTargets" : [ 0 ]
				} ],
				"aaSorting" : [ [ 1, 'asc' ] ]
			});

			/*
			 * Add event listener for opening and closing details Note that the
			 * indicator for showing which row is open is not controlled by
			 * DataTables, rather it is done here
			 */
			$(document).on(
					'click',
					'#hidden-table-info tbody td img',
					function() {
						var nTr = $(this).parents('tr')[0];
						if (oTable.fnIsOpen(nTr)) {
							/* This row is already open - close it */
							this.src = basePath
									+ "/resources/images/details_open.png";
							oTable.fnClose(nTr);
						} else {
							/* Open this row */
							this.src = basePath
									+ "/resources/images/details_close.png";
							oTable.fnOpen(nTr, fnFormatDetails(oTable, nTr),
									'details');
						}
					});
		});