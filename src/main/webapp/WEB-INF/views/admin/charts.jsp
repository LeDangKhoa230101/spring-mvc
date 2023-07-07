<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">

  google.charts.load('current', {'packages':['corechart']});

  google.charts.setOnLoadCallback(drawChart);
  function drawChart() {

    var data = new google.visualization.DataTable();
    data.addColumn('string', 'Topping');
    data.addColumn('number', 'Slices');
    data.addRows([
    	['Đồng hồ nam', 22323],
    	['Đồng hồ nữ', 32323],
    	['Đồng hồ chống nước', 222334],
    	['Đồng hồ thể thao', 454545],
    	['Đồng hồ thông minh', 222334],
    	['Phụ kiện đồng hồ', 454545],
    ]);

    var options = {'title':'Doanh thu theo danh mục trong tháng 12',
                   'width':580,
                   'height':500};

    var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
    chart.draw(data, options);
  }
  
  google.charts.load('current', {packages: ['corechart', 'bar']});
  google.charts.setOnLoadCallback(drawBasic);

function drawBasic() {

    var data = google.visualization.arrayToDataTable([
      ['Year', 'Revenue: $',],
      ['2019', 120000],
      ['2020', 122304],
      ['2021', 43822],
      ['2022', 76322],
      ['2023', 22932]
    ]);

    var options = {
      title: 'Doanh thu theo năm', 'width':580, 'height':500,
      hAxis: {
        title: 'Revenue',
        minValue: 0
      },
      vAxis: {
        title: 'Year'
      }
    };

    var chart = new google.visualization.BarChart(document.getElementById('chart_div-column'));

    chart.draw(data, options);
  }
</script>

<div class="container chart-container">
	<div class="row">
		<div class="col-6">
			<div id="chart_div-column"></div>
		</div>
		<div class="col-6">
			<div id="chart_div"></div>
		</div>
	</div>
</div>