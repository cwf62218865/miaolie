<?php
$url = 'http://username:password@hostname/path?arg=value#anchor';
print_r(parse_url($url));
echo parse_url($url, PHP_URL_PATH);

//
//// Include the main TCPDF library (search for installation path).
//require_once('tcpdf/tcpdf.php');
//
//// create new PDF document
//$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
//
//// set document information
//$pdf->SetCreator(PDF_CREATOR); //设置创建者
//$pdf->SetAuthor('Nicola Asuni'); //设置作者
//$pdf->SetTitle('TCPDF Example 001'); //设置文件的title
//$pdf->SetSubject('TCPDF Tutorial'); //设置主题
//$pdf->SetKeywords('TCPDF, PDF, example, test, guide'); //设置关键词
//// set default header data
//$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE . ' 001', PDF_HEADER_STRING, array(0, 64, 255), array(0, 64, 128)); //设置头部,比如header_logo，header_title，header_string及其属性
//$pdf->setFooterData(array(0, 64, 0), array(0, 64, 128));
//
//// set header and footer fonts
//$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN)); //设置页头字体
//$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA)); //设置页尾字体
//// set default monospaced font
//$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED); //设置默认等宽字体
//// set margins
//$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT); //设置margins 参考css的margins
//$pdf->SetHeaderMargin(PDF_MARGIN_HEADER); //设置页头margins
//$pdf->SetFooterMargin(PDF_MARGIN_FOOTER); //设置页脚margins
//// set auto page breaks
//$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM); //设置自动分页
//// set image scale factor
//$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO); //设置调整图像自适应比例
//// set some language-dependent strings (optional) 设置一些与语言相关的字符串
//if (@file_exists(dirname(__FILE__) . '/lang/eng.php')) {
//    require_once(dirname(__FILE__) . '/lang/eng.php');
//    $pdf->setLanguageArray($l);
//}
//
//// ---------------------------------------------------------
//// set default font subsetting mode
//$pdf->setFontSubsetting(true); //设置默认字体子集模式
//// Set font
//// dejavusans is a UTF-8 Unicode font, if you only need to
//// print standard ASCII chars, you can use core fonts like
//// helvetica or times to reduce file size.
//$pdf->SetFont('dejavusans', '', 14, '', true); //设置字体
//// Add a page
//// This method has several options, check the source code documentation for more information.
//$pdf->AddPage(); //增加一个页面
//// set text shadow effect  设置文字阴影效果
//$pdf->setTextShadow(array('enabled' => true, 'depth_w' => 0.2, 'depth_h' => 0.2, 'color' => array(196, 196, 196), 'opacity' => 1, 'blend_mode' => 'Normal'));
//
//// Set some content to print
//$html = <<<EOD
//<h1>Welcome to <a href="http://www.tcpdf.org" style="text-decoration:none;background-color:#CC0000;color:black;">&nbsp;<span style="color:black;">TC</span><span style="color:white;">PDF</span>&nbsp;</a>!</h1>
//<i>This is the first example of TCPDF library.</i>
//<p>This text is printed using the <i>writeHTMLCell()</i> method but you can also use: <i>Multicell(), writeHTML(), Write(), Cell() and Text()</i>.</p>
//<p>Please check the source code documentation and other examples for further information.</p>
//<p style="color:#CC0000;">TO IMPROVE AND EXPAND TCPDF I NEED YOUR SUPPORT, PLEASE <a href="http://sourceforge.net/donate/index.php?group_id=128076">MAKE A DONATION!</a></p>
//EOD;
//
///*
// *
//  此方法允许以换行符打印文本。
//  它们可以是自动的（一旦文本到达单元格的右边界）或显式（通过\ n字符）。 输出所需的许多单元，一个低于另一个。
//    文本可以对齐，居中或对齐。 单元格块可以框架并绘制背景。
// */
//
//// Print text using writeHTMLCell()
//$pdf->writeHTMLCell(0, 0, '', '', $html, 0, 1, 0, true, '', true); //使用writeHTMLCell打印文本
//// ---------------------------------------------------------
//// Close and output PDF document
//// This method has several options, check the source code documentation for more information.
//$pdf->Output('example_001.pdf', 'I'); //I输出在浏览器上
//
////============================================================+
//// END OF FILE
////============================================================+