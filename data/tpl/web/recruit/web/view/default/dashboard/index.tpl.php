<?php defined('IN_IA') or exit('Access Denied');?><?php  include wl_template('common/header');?>
<div class="row">
    <div class="col-md-2">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <span class="label label-success pull-right">月</span>
                <h5>会员</h5>
            </div>
            <div class="ibox-content">
                <h1 class="no-margins"><?php  echo number_format($newfans)?></h1>
                <div class="stat-percent font-bold text-success"><?php  if($allfans>0) { ?><?php  echo number_format(($newfans/$allfans)*100,2)?><?php  } else { ?>100.00<?php  } ?>% <i class="fa fa-level-up"></i>
                </div>
                <small>新增会员</small>
            </div>
        </div>
    </div>
    <div class="col-md-2">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <span class="label label-danger pull-right">月</span>
                <h5>车主</h5>
            </div>
            <div class="ibox-content">
                <h1 class="no-margins"><?php  echo number_format($newowner)?></h1>
                <div class="stat-percent font-bold text-danger"><?php  if($allowner>0) { ?><?php  echo number_format(($newowner/$allowner)*100, 2)?><?php  } else { ?>100.00<?php  } ?>% <i class="fa fa-level-up"></i>
                </div>
                <small>新增车主</small>
            </div>
        </div>
    </div>

    <div class="col-md-4">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <span class="label label-primary pull-right">今天</span>
                <h5>访问人次</h5>
            </div>
            <div class="ibox-content">

                <div class="row">
                    <div class="col-md-6">
                        <h1 class="no-margins"><?php  echo number_format($todaypuv['pv'])?></h1>
                        <div class="font-bold text-navy"><i class="fa fa-level-up"></i> <small>浏览量 / PV</small>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h1 class="no-margins"><?php  echo number_format($todaypuv['uv'])?></h1>
                        <div class="font-bold text-navy"><i class="fa fa-level-up"></i> <small>独立访客 / UV</small>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>用户统计分析</h5>
                <div class="ibox-tools">
                    <span class="label label-info"><?php  echo date('Y.m.d',$today - 86400)?> 更新</span>
                </div>
            </div>
            <div class="ibox-content">
                <div class="row">
                    <div class="col-xs-4">
                        <small class="stats-label">浏览量 / PV</small>
                        <h4><?php  echo number_format($yestodaypuv['pv'])?></h4>
                    </div>
                    <div class="col-xs-4">
                        <small class="stats-label">独立访客 / UV</small>
                        <h4><?php  echo number_format($yestodaypuv['uv'])?></h4>
                    </div>
                    <div class="col-xs-4">
                        <small class="stats-label">新访客 / %</small>
                        <h4><?php  if(empty($yestodaypuv['uv'])) { ?>0%<?php  } else { ?><?php  echo number_format(($yes_newfans/$yestodaypuv['uv'])*100, 2)?>%<?php  } ?></h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-content">
                <div>
                    <span class="pull-right text-right">
                    <small>
                    	<!--<div data-toggle="buttons" class="btn-group">
                            <label class="btn btn-sm btn-white">
                                <input type="radio" id="option1" name="options">天</label>
                            <label class="btn btn-sm btn-white active">
                                <input type="radio" id="option2" name="options">周</label>
                            <label class="btn btn-sm btn-white">
                                <input type="radio" id="option3" name="options">月</label>
                        </div>-->
                    </small>
                    <br>
                        扫描总计： <?php  echo number_format($allnumber)?>
                    </span>
                    <h3 class="font-bold no-margins">挪车卡扫描统计</h3>
                </div>
                <div class="m-t-sm">
                    <div class="row">
                        <div class="col-md-8">
                            <div>
                                <canvas id="lineChart" height="160" width="463" style="width: 463px; height: 160px;"></canvas>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <ul class="stat-list m-t-lg">
                                <li>
                                    <h2 class="no-margins"><?php  echo number_format($allnum)?></h2>
                                    <small>今日总扫描次数</small>
                                    <div class="progress progress-mini">
                                        <div class="progress-bar" style="width: 100%;"></div>
                                    </div>
                                </li>
                                <li>
                                    <h2 class="no-margins "><?php  echo number_format($scannum)?></h2>
                                    <small>普通扫描次数</small>
                                    <div class="progress progress-mini">
                                        <div class="progress-bar progress-bar-info" style="width: <?php  echo ($scannum/$allnum)*100?>%;"></div>
                                    </div>
                                </li>
                                <li>
                                    <h2 class="no-margins"><?php  echo number_format($follownum)?></h2>
                                    <small>关注扫描人数</small>
                                    <div class="progress progress-mini">
                                        <div class="progress-bar progress-bar-danger" style="width: <?php  echo ($follownum/$allnum)*100?>%;"></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>

                <div class="m-t-md">
                    <small class="pull-right">
                    <i class="fa fa-clock-o"> </i>
                    <?php  echo date('Y-m-d H:i:s', time());?>更新
                </small>
                    <small>
                    <strong>说明：</strong> 以上统计包含了，最近一周挪车卡扫描情况
                </small>
                </div>

            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>挪车卡扫描记录</h5>
                <div class="ibox-tools">
                    <a href="<?php  echo web_url('card/qr/display')?>" class="close-link">查看更多 <i class="fa fa-angle-double-right"></i></a>
                </div>
            </div>
            <div class="ibox-content">
                <div class="table-responsive">
                    <table class="table table-hover">
						<thead>
							<tr>
								<th style="width:100px;">会员<i></i></th>
								<th style="width:80px;">场景名称<i></i></th>
								<th style="width:150px;">挪车卡号<i></i></th>
								<th style="width:100px;">场景ID/场景值<i></i></th>
								<th style="width:110px;">关注扫描<i></i></th>
								<th style="width:150px;">扫描时间<i></i></th>
								<th style="width:80px;">操作</th>
							</tr>
						</thead>
						<tbody>
							<?php  if(is_array($list)) { foreach($list as $row) { ?>
							<tr>
								<td>
									<a href="<?php  echo web_url('member/member/detail',array('id' => $row['id']))?>" title="<?php  echo $row['openid'];?>">
										<?php  if($nickname[$row['openid']]['nickname']) { ?>
											<?php  echo $nickname[$row['openid']]['nickname'];?>
										<?php  } else { ?>
											<?php  echo cutstr($row['openid'], 15)?>
										<?php  } ?>
									</a>
								</td>
								<td><?php  echo $row['name'];?></td>
								<td><?php  echo $row['cardsn'];?></td>
								<td>
									<?php  if(!empty($row['qrcid'])) { ?>
										<?php  echo $row['qrcid'];?>
									<?php  } else { ?>
										<?php  echo $row['scene_str'];?>
									<?php  } ?>
								</td>
								<td><?php  echo $row['type'];?></td>
								<td style="font-size:12px; color:#666;">
								<?php  echo date('Y-m-d H:i:s', $row['createtime']);?>
								</td>
								<td>
								<a href="<?php  echo web_url('card/qr/delsata', array('id'=>$row['id']));?>" onclick="javascript:return confirm('您确定要删除吗？')">删除</a>
								</td>
							</tr>
							<?php  } } ?>
						</tbody>
					</table>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
	$(document).ready(function() {
		require(['chart'], function(c){
			var label = <?php  echo json_encode($day)?>;
			var allsnum = <?php  echo json_encode($allsnum)?>;
			var type1 = <?php  echo json_encode($type1)?>;
			var type2 = <?php  echo json_encode($type2)?>;
	        var lineData = {
	            labels: label,
	            datasets: [{
	                label: "示例数据",
		            fillColor: "rgba(220,220,220,0.5)",
		            strokeColor: "rgba(220,220,220,1)",
		            pointColor: "rgba(220,220,220,1)",
		            pointStrokeColor: "#fff",
		            pointHighlightFill: "#fff",
		            pointHighlightStroke: "rgba(220,220,220,1)",
	                data: allsnum
	            },
	            {
	                label: "示例数据",
		            fillColor: "rgba(26,179,148,0.5)",
		            strokeColor: "rgba(26,179,148,0.7)",
		            pointColor: "rgba(26,179,148,1)",
		            pointStrokeColor: "#fff",
		            pointHighlightFill: "#fff",
		            pointHighlightStroke: "rgba(26,179,148,1)",
	                data: type2
	            },
				{
	                label: "示例数据",
	                fillColor: "rgba(237,85,101,0.5)",
	                strokeColor: "rgba(237,85,101,1)",
	                pointColor: "rgba(237,85,101,1)",
	                pointStrokeColor: "#fff",
	                pointHighlightFill: "#fff",
	                pointHighlightStroke: "rgba(237,85,101,1)",
	                data: type1
	            }]
	        };
	        var lineOptions = {
	            scaleShowGridLines: true,
	            scaleGridLineColor: "rgba(0,0,0,.05)",
	            scaleGridLineWidth: 1,
	            bezierCurve: true,
	            bezierCurveTension: 0.4,
	            pointDot: true,
	            pointDotRadius: 4,
	            pointDotStrokeWidth: 1,
	            pointHitDetectionRadius: 20,
	            datasetStroke: true,
	            datasetStrokeWidth: 2,
	            datasetFill: true,
	            responsive: true,
	        };
	        var ctx = document.getElementById("lineChart").getContext("2d");
	        var myNewChart = new Chart(ctx).Line(lineData, lineOptions);
        });
    });
</script>
<?php  include wl_template('common/footer');?>