<?php
/**
* My Handy Restaurant
*
* http://www.myhandyrestaurant.org
*
* My Handy Restaurant is a restaurant complete management tool.
* Visit {@link http://www.myhandyrestaurant.org} for more info.
* Copyright (C) 2003-2004 Fabio De Pascale
* 
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
* 
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
* 
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*
* @author		Fabio 'Kilyerd' De Pascale <public@fabiolinux.com>
* @package		MyHandyRestaurant
* @copyright		Copyright 2003-2005, Fabio De Pascale
*/

function discount_save_to_source($discount_value){
	$olddiscount = get_db_data(__FILE__,__LINE__,$_SESSION['common_db'],'sources','discount',$_SESSION['sourceid']);

	$newdiscount=$olddiscount-abs($discount_value);

	$query = "UPDATE `#prefix#sources` SET `discount` = '$newdiscount'
		WHERE `id` = '".$_SESSION['sourceid']."'";
	$res=common_query($query,__FILE__,__LINE__);
	if(!$res) return mysql_errno();

	return 0;
}

function write_log_discount($discount_value,$transaction_id){
	return write_log_item(DISCOUNT_ID,1,-1*abs($discount_value),$transaction_id);
	
	$log_table=$GLOBALS['table_prefix']."account_log";

	$log["waiter"]=$_SESSION['userid'];
	$log["destination"]=0;
	$log["dish"]=DISCOUNT_ID;
	$log["category"]=0;
	$log["quantity"]=1;
	$log["price"]=-1*abs($discount_value);
	$log["payment"]=$receipt_id;

	$query="INSERT INTO `$log_table` (";
	for (reset ($log); list ($key, $value) = each ($log); ) {
		$value = str_replace ("'", "\'", $value);
		$query.="`".$key."`,";
	}
	// strips the last comma that has been put
	$query = substr ($query, 0, strlen($query)-1);
	$query.=") VALUES (";
	for (reset ($log); list ($key, $value) = each ($log); ) {
		$value = str_replace ("'", "\'", $value);
		$query.="'".$value."',";
	}
	// strips the last comma that has been put
	$query = substr ($query, 0, strlen($query)-1);
	$query.=")";

	// CRYPTO
	$res = mysql_db_query ($_SESSION['mgmt_db'],$query);
	if($errno=mysql_errno()) {
		$msg="Error in ".__FUNCTION__." - ";
		$msg.='mysql: '.mysql_errno().' '.mysql_error()."\n";
		$msg.='query: '.$query."\n";
		echo nl2br($msg)."\n";
		error_msg(__FILE__,__LINE__,$msg);
		return $errno;
	}
	return 0;
}


function apply_discount_percent($sourceid,$percent){
	$_SESSION['discount']['type']="percent";

	$percent=(float) $percent;
	if($percent<0) $percent=-$percent;
	elseif($percent>100) $percent=100;

  	if($percent){
		$_SESSION['discount']=array('type','percent','amount');
		$_SESSION['discount']['type']="percent";
		$_SESSION['discount']['percent']=$percent;
		$_SESSION['discount']['amount']=0;
	} else {
		unset($_SESSION['discount']);
	}

	return 0;
}


function apply_discount_amount($sourceid,$amount){
	$_SESSION['discount']['type']="amount";
	$amount=str_replace (",", ".", $amount);
	$amount=(float) $amount;
	
	// if($amount>table_total_without_discount($sourceid)) $amount=table_total_without_discount($sourceid);
	if($amount>bill_total()) $amount=bill_total();
	elseif($amount<0) $amount=-$amount;

	$amount=-1*$amount;

	if($amount){
		$_SESSION['discount']=array('type','percent','amount');
		$_SESSION['discount']['type']="amount";
		$_SESSION['discount']['percent']=0;
		$_SESSION['discount']['amount']=$amount;
	} else {
		unset($_SESSION['discount']);
	}

	return 0;
}

function apply_discount($discount_type){
	$err=0;
	$sourceid = $_SESSION['sourceid'];
	
	if(isset($_REQUEST['percent'])){
		$percent=$_REQUEST['percent'];
	}
	if(isset($_REQUEST['amount'])){
		$amount=$_REQUEST['amount'];
	}

	if($discount_type=="none")
		unset($_SESSION['discount']);
	elseif($discount_type=="amount")
		$err=apply_discount_amount($sourceid,$amount);
	elseif($discount_type=="percent")
		$err=apply_discount_percent($sourceid,$percent);

	return $err;
}

function discount_calculate_from_percent($sourceid,$percent){
	if($percent>100) $percent=100;
	elseif($percent<0) $percent=0;

	$total_no_disc=source_total_without_discount($sourceid);
	$amount=round(-1*$total_no_disc/100*$percent,2);
	//$amount=sprintf("%01.2f",$amount);

	return $amount;
}


function discount_form_javascript($sourceid){
	$output = '';
	
	if(isset($_SESSION['discount'])){
		$percent=$_SESSION['discount']['percent'];
		$amount=-1*$_SESSION['discount']['amount'];
	} else {
		$percent=0;
		$amount=0;
	}

	if(!isset($_SESSION['discount']) ||
		!isset($_SESSION['discount']['type'])) $_SESSION['discount']['type'] = '';
	switch($_SESSION['discount']['type']){
		case "percent": $dis[1]="";
						$dis[2]="disabled";
						$chk[0]="";
						$chk[1]="checked";
						$chk[2]="";
						break;
		case "amount": 	$dis[1]="disabled";
						$dis[2]="";
						$chk[0]="";
						$chk[1]="";
						$chk[2]="checked";
						break;
		default: 		$dis[1]="disabled";
						$dis[2]="disabled";
						$chk[0]="checked";
						$chk[1]="";
						$chk[2]="";
						break;

	}
	// Next is a micro-form to set a sicount in percent value
	$output .= '
	<FIELDSET>
	<LEGEND>'.ucfirst(phr('DISCOUNT')).'</LEGEND>
	<FORM ACTION="orders.php" NAME="form_discount" METHOD=POST>
	<INPUT TYPE="HIDDEN" NAME="command" VALUE="bill_discount">
	<INPUT TYPE="HIDDEN" NAME="keep_separated" VALUE="1">
	<input type="radio" name="discount_type" value="none" onclick="JavaScript:discount_switch();" '.$chk[0].'>'.ucfirst(phr('NONE')).'<br />
	<input type="radio" name="discount_type" value="percent" onclick="JavaScript:discount_switch();" '.$chk[1].'>
	'.ucfirst(phr('PERCENTUAL')).' <INPUT TYPE="text" name="percent" size="3" maxlength="3" value="'.$percent.'" '.$dis[1].'>% <br />
	<input type="radio" name="discount_type" value="amount" onclick="JavaScript:discount_switch();" '.$chk[2].'>'.ucfirst(phr('VALUE')).' <INPUT TYPE="text" name="amount"
	size="6" maxlength="10" value="'.$amount.'" '.$dis[2].'>'.country_conf_currency (true).'<br />
	<INPUT TYPE="SUBMIT" value="'.ucfirst(phr('APPLY_DISCOUNT')).'"><br />
	</FORM>
	</FIELDSET>
	';
	return $output;
}
?>