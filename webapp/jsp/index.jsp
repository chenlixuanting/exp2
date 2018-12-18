<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品查询页面</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/bootstrap-table.css">
</head>
<body>
    <div class="container-fluid">
        <div style="height:50%;width: auto;">
            <table id="commodityTable"></table>
        </div>
    </div>
</body>
<script src="../js/jquery-3.3.1.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/bootstrap-table.js"></script>
<script src="../js/bootstrap-table-zh-CN.js"></script>
<script>
    $('#commodityTable').bootstrapTable({

        url: "commodity/query",
        //这个接口需要处理bootstrap table传递的固定参数,并返回特定格式的json数据
        //默认值为 'limit',传给服务端的参数为：limit, offset, search, sort, order Else

        //请求方法
        method: 'get',

        //是否显示行间隔色
        striped: true,

        //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        cache: false,

        //是否显示分页（*）
        pagination: true,

        //是否启用排序
        sortable: false,

        //排序方式
        sortOrder: "desc",

        //初始化加载第一页，默认第一页
        //我设置了这一项，但是貌似没起作用，而且我这默认是0,- -
        pageNumber:1,

        //每页的记录行数（*）
        pageSize: 10,

        //可供选择的每页的行数（*）
        pageList: [10, 25, 50, 100],

        queryParamsType:'',
        ////默认为空时传递
        //sortOrder:desc
        //pageSize:10
        //pageNumber:2

        //分页方式：client客户端分页，server服务端分页（*）
        sidePagination: "client",

        //是否显示搜索 搜索input name= searchText 服务端获取该值查询即可
        search: true,

        columns: [{
            checkbox: true
        },{
            field: 'commodityId',
            title: '主键',
            width:'20%'
        }, {
            field: 'number',
            title: '库存',
            width:'20%'
        }, {
            field: 'description',
            title: '描述',
            width:'40%'
        }, {
            field: 'createTime',
            title: '产生时间',
            width:'20%',
            formatter: dateFormatter
        }]
    });

    // 对Date的扩展，将 Date 转化为指定格式的String
    // 月(M)、日(d)、小时(h)、分(m)、秒(s)、季度(q) 可以用 1-2 个占位符，
    // 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字)
    // 例子：
    // (new Date()).Format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423
    // (new Date()).Format("yyyy-M-d h:m:s.S")      ==> 2006-7-2 8:9:4.18
    Date.prototype.Format = function (fmt) { //author: meizz
        var o = {
            "M+": this.getMonth() + 1, //月份
            "d+": this.getDate(), //日
            "h+": this.getHours(), //小时
            "m+": this.getMinutes(), //分
            "s+": this.getSeconds(), //秒
            "q+": Math.floor((this.getMonth() + 3) / 3), //季度
            "S": this.getMilliseconds() //毫秒
        };
        if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        for (var k in o)
            if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
        return fmt;
    }

    function dateFormatter (value, row, index) {
        var result = new Date(value).Format("yyyy-MM-dd hh:mm:ss");
        return result;

    }
</script>
</html>
