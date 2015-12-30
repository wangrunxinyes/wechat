<?php

/**
 *
 */
class wrx_view_chart {

	function __construct() {
		# code...
	}

	function show() {
		echo '
		<div class="portlet box purple">
<div class="portlet-title">
	<div class="caption"> <i class="fa fa-gift"></i>
		Graph5
	</div>
	<div class="tools">
		<a title="" data-original-title="" href="#portlet-config" data-toggle="modal" class="config"></a>
		<a title="" data-original-title="" href="javascript:;" class="reload"></a>
	</div>
</div>
<div class="portlet-body">
	<h4>
		Semi-transparent, black-colored label background placed at pie edge.
	</h4>
	<div style="padding: 0px; position: relative;" id="pie_chart_5" class="chart">
		<canvas height="300" width="410" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 410px; height: 300px;" class="flot-base"></canvas>
		<canvas height="300" width="410" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 410px; height: 300px;" class="flot-overlay"></canvas>
		<div class="pieLabelBackground" style="position: absolute; width: 41px; height: 34px; top: 28px; left: 225.5px; background-color: rgb(0, 0, 0); opacity: 0.5;"></div>
		<span class="pieLabel" id="pieLabel0" style="position: absolute; top: 28px; left: 225.5px;">
			<div style="font-size:8pt;text-align:center;padding:2px;color:white;">
				Series1
				<br>12%</div>
		</span>
		<div class="pieLabelBackground" style="position: absolute; width: 41px; height: 34px; top: 105px; left: 293.5px; background-color: rgb(0, 0, 0); opacity: 0.5;"></div>
		<span class="pieLabel" id="pieLabel1" style="position: absolute; top: 105px; left: 293.5px;">
			<div style="font-size:8pt;text-align:center;padding:2px;color:white;">
				Series2
				<br>18%</div>
		</span>
		<div class="pieLabelBackground" style="position: absolute; width: 41px; height: 34px; top: 178px; left: 287.5px; background-color: rgb(0, 0, 0); opacity: 0.5;"></div>
		<span class="pieLabel" id="pieLabel2" style="position: absolute; top: 178px; left: 287.5px;">
			<div style="font-size:8pt;text-align:center;padding:2px;color:white;">
				Series3
				<br>3%</div>
		</span>
		<div class="pieLabelBackground" style="position: absolute; width: 41px; height: 34px; top: 238px; left: 225.5px; background-color: rgb(0, 0, 0); opacity: 0.5;"></div>
		<span class="pieLabel" id="pieLabel3" style="position: absolute; top: 238px; left: 225.5px;">
			<div style="font-size:8pt;text-align:center;padding:2px;color:white;">
				Series4
				<br>22%</div>
		</span>
		<div class="pieLabelBackground" style="position: absolute; width: 41px; height: 34px; top: 233px; left: 133.5px; background-color: rgb(0, 0, 0); opacity: 0.5;"></div>
		<span class="pieLabel" id="pieLabel4" style="position: absolute; top: 233px; left: 133.5px;">
			<div style="font-size:8pt;text-align:center;padding:2px;color:white;">
				Series5
				<br>5%</div>
		</span>
		<div class="pieLabelBackground" style="position: absolute; width: 41px; height: 34px; top: 179px; left: 81.5px; background-color: rgb(0, 0, 0); opacity: 0.5;"></div>
		<span class="pieLabel" id="pieLabel5" style="position: absolute; top: 179px; left: 81.5px;">
			<div style="font-size:8pt;text-align:center;padding:2px;color:white;">
				Series6
				<br>17%</div>
		</span>
		<div class="pieLabelBackground" style="position: absolute; width: 41px; height: 34px; top: 80px; left: 85.5px; background-color: rgb(0, 0, 0); opacity: 0.5;"></div>
		<span class="pieLabel" id="pieLabel6" style="position: absolute; top: 80px; left: 85.5px;">
			<div style="font-size:8pt;text-align:center;padding:2px;color:white;">
				Series7
				<br>12%</div>
		</span>
		<div class="pieLabelBackground" style="position: absolute; width: 41px; height: 34px; top: 27px; left: 146.5px; background-color: rgb(0, 0, 0); opacity: 0.5;"></div>
		<span class="pieLabel" id="pieLabel7" style="position: absolute; top: 27px; left: 146.5px;">
			<div style="font-size:8pt;text-align:center;padding:2px;color:white;">
				Series8
				<br>11%</div>
		</span>
	</div>
</div>
</div>
';
	}
}

?>