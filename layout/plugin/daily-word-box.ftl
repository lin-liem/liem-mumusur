<script type="text/javascript">
	/** 彩虹屁 */
  	function caihongpi(ele){
        var defaultw = '我不曾想过会再见，若再见那一定是失败';
        $.get("https://api.tianapi.com/txapi/caihongpi/index?key=b3a378092d1769731209cfe0de02b57e",
        function(data,status){
            if(data.code ==200 && data.msg=="success"){
                $(ele).text(data.newslist[0].content);
            }else{
                $(ele).text(defaultw);
            }
        });
    }
  	
  	caihongpi('.caihong-text');
</script>
