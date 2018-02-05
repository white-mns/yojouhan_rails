// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require "jquery.cleanQuery"
//= require_tree .
//

// 説明文の開閉処理
function example_open(flg) {
	var example=document.getElementById("example");
	var example_open=document.getElementById("example_open");
	var example_close=document.getElementById("example_close");

    if(!example || !example_open){return;}

	if(flg) {
		example.style.display='inline';
		example_open.style.display='none';
		example_close.style.display='inline';

	}else{
		example.style.display='none';
		example_open.style.display='inline';
		example_close.style.display='none';
	}
};

// 検索フォームの開閉処理
function search_open(flg) {
	var table=document.getElementById("search_table");
	var close=document.getElementById("search_close");

    if(!table || !close){return;}

	if(flg) {
		table.style.display='table';
		close.style.display='none';

	}else{
		table.style.display='none';
		close.style.display='table';
	}
};

// ページ移動時の発火処理
var turboReady = function(){
	var url     = location.href;
    var params  = url.split("?");

	if(params[1]){
		search_open(false);
        example_open(false);
	}

    $('FORM').cleanQuery();
};

$(document).on('turbolinks:load', turboReady);

