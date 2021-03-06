<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<div class="page-header">
  <h2>微人才微招聘 使用必读<small>Version <?php  echo $modules_data['version'];?></small></h2>
</div>

<div class="panel panel-default">
  <div class="panel-heading">准备工作</div>
  <div class="panel-body">
    <p>1、参数设置中，按要求设置。</p>
    <p>2、后台请自行添加职位分类，行业分类。</p>
    <p>3、请设置自定义分享的JS借用权限。</p>
  </div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">关于自定义分享</div>
    <div class="panel-body">
        <p>1、请在功能菜单中选择“分享设置”。对“标题”、“首页”、“招聘列表”、“求职列表”进行单独设置</p>
        <p>2、如果你不是高级号，请在功能选项-公众号选项-借用 JS 分享设置中，借用其他高级号</p>
    </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">什么样的公众号才可以使用？如何使用？</div>
  <div class="panel-body">
    <p>1、普通订阅号、认证订阅号、普通服务号、认证服务号均可使用</p>
    <p>2、普通订阅号、认证订阅号、普通服务号【必须以关键词】触发形式使用；关键字请在回复规则中设置</p>
    <p>3、认证服务号以关键词触发或直接链接形式使用都可</p>
    <p>4、不支持借用高级账号权限。</p>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">关于关注加粉</div>
  <div class="panel-body">
     <p>1、系统自动判断是否关注你的公众账号，若未关注，则跳转到关注页。采用长按二维码关注。</p>
     <p>2、即使取消后再访问，也会判断是否关注。在加粉方面已得到加强。为众多运营者在运营方面架势。<p>
  </div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">关于参数设置的说明</div>
    <div class="panel-body">
        <p>1、必须上传自己公众账号的二维码</p>
        <p>2、必须填写自己的联系电话，方便企业用户联系你进行电话认证</p>
        <p>3、首页分类一行几列,有些分类名称长，则设为2较好。具体视各个情况而定</p>
    </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">关于给企业认证</div>
  <div class="panel-body">
    <p>1、系统提供两种认证方式：①电话认证；②企业营业执照认证。详见“招聘企业管理”</p>
    <p>2、如果需要企业营业执照认证方式，请在“参数设置”中开启。并设置“营业执照允许上传最大值”，默认为2M。</p>
    <p>（Tips：从效率上讲，不建议上传过大的图片。一则上传时慢，网络不好的情况下，容易出现错误。二则如果占用运营者服务器空间）</p>
    <p>3、认证通过后，在“招聘企业管理”——认证，选择认证方式。如果取消认证，再次点击即可</p>
    <p>4、企业用户在“我的企业信息”中完善企业信息，并可选择是否上传企业营业执照。</p>
    <p>5、企业营业执照无论上传的尺寸多大，系统将按比例自动压缩为宽为320px的图片。经测试，将有效减轻服务器压力，减少服务器占用空间。1M的图片，经过压缩为19K左右。</p>
    <p>6、增加上传企业logo、企业封面形象照，后台自行设置上传大小</p>
  </div>
</div>



<div class="panel panel-default">
  <div class="panel-heading">关于查看简历数</div>
  <div class="panel-body">
    <p>1、给运营者提供的运营亮点。提供的思路：你可以设置不同档次的套餐：①500元/年,可查看500份简历；②1000元/年，可查看1000份简历；③....；依次类推</p>
    <p>2、运营者线下跑单子，签订合同，线上在“招聘企业管理”设置查看简历数</p>
    <p>3、目前此版本由人为控制。后续版本将增加“自由套餐”，“合同管理”等</p>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">关于求职者头像</div>
  <div class="panel-body">
    <p>1、"头像允许上传最大值"建议设置为2M。道理同营业执照上传</p>
    <p>2、"头像尺寸宽度"建议设置宽为200px。系统将自动进行缩略图转换。新头像将自动覆盖原图。</p> 
    <p>3、系统自带一套男、女默认头像，位于q_3354988381_rencai/template/static/images下的default_man.jpg、和default_woman.jpg。你可以上传【同名文件】覆盖此文件。</p>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">关于招聘信息的置顶</div>
  <div class="panel-body">
    1、在“招聘信息管理”中“是否置顶”设置。并选择有效期。有效期过后，将不再显示。
  </div>
</div>

<div class="panel panel-danger">
    <div class="panel-heading">关于首页热门职位</div>
    <div class="panel-body">
        <p>1、后台“招聘信息管理”中选择“热”。即可显示。为运营者提供新的收益渠道</p>
        <p>2、可在后台自行设置是否开启</p>
    </div>
</div>

<div class="panel panel-danger">
    <div class="panel-heading">关于职位信息页评价功能</div>
    <div class="panel-body">
        <p>1、职位信息页增加评价功能</p>
        <p>2、目前只开放个人评价企业职位信息</p>
    </div>
</div>

<div class="panel panel-danger">
    <div class="panel-heading">关于招聘频道最新加入公司</div>
    <div class="panel-body">
        <p>1、按照最新加入时间降序排列</p>
        <p>2、这地方可以扩展，给有需要的企业置顶本频道</p>
    </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">关于求职信息的置顶</div>
  <div class="panel-body">
    <p>1、求职者用户中心中设置可一键拨打电话联系运营者，进行简历置顶</p>
    <p>2、此处，作为运营者可自由设置套餐，收取费用等</p>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">关于通知模板</div>
  <div class="panel-body">
    <p>1、当求职者申请职位、企业给求职者发邀请时都会触发消息通知。</p>
    <p>2、目前使用的客服消息通知方式（无需配置模板、服务号模板通知日后会扩展，请等候免费升级）.</p>
    <p>3.安装好通知模块后，在通知插件”参数配置“中配置好通知密钥，将此密钥复制到人才模块的”参数配置”中最下面的通知密钥栏中。</p>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">其它</div>
  <div class="panel-body">
    <p>1、企业上传头像失败问题：确保服务器目录“www目录/attachment/images/q_3354988381_rencai”存在并可写</p>
    <p>1、简历上传头像失败问题：确保服务器目录“www目录/attachment/images/q_3354988381_rencai/avatar”存在并可写</p>
    <p>2、如果手机端出现“省、市、区”选单无内容时，请保证如下目录有<a href="../addons/q_3354988381_rencai/lib/district.js" target="_blank" title="下载">district.js</a>文件（app\resource\js\lib\、app\resource\js\app\）</p>
    
  </div>
</div>

<div class="panel panel-primary" style="display:none">
  <div class="panel-heading">关于微人才</div>
  <div class="panel-body">
    <p>1、若有问题，请加入产品QQ群：490186557 进行咨询</p>
  </div>
</div>

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>