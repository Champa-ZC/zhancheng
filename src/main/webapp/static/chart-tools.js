/*
 @name: chart-tools.js
 @description: 基于 echarts 分装的创建图表的方法
 @date: 2014/11/17
 @author: 邹志强(zouzhiqiang@yiwei.com)
 */
/**
 * 生成第一种类型的图表  参考 前台 首页
 * @param chartInfo
 * @param data
 * @returns {{}}
 */
function renderChart1(chartInfo, data) {
    var default_option = {
        "tooltip": { "trigger": "axis" },
        "legend": { "data": ["统计标题"] },
        "xAxis": [
            { "type": "category", "data": [] }
        ],
        "yAxis": [
            { name: '浏览及IP数', "type": "value" },
            { name: '订单数', "type": "value" }
        ],
        "series": [
            {
                "name": "统计标题", "type": "line", "data": []
            }
        ]
    };
    var _charts = {};//charts
    var _option = {};//各chart的options
    var _html = [];

    //生成chart 及 初始值
    for (var i = 0; i < chartInfo.length; i++) {
        var obj = chartInfo[i];
        _charts[obj.id] = echarts.init(document.getElementById(obj.id));
        _option[obj.id] = $.extend(true, {}, default_option);
        _option[obj.id].legend.data = obj.title;
        //_option[obj.id].color=obj.color;
        _option[obj.id].series = [];
        for (var j = 0; j < obj.title.length; j++) {
            var _title = obj.title[j];
            var _temp = { "name": _title, "type": "line", "data": [] };
            if (_title == '当日订单') {
                _temp.yAxisIndex = 1;
            }
            _option[obj.id].series.push(_temp);
        }
    }
    //根据配置 修改各chart的data为实际的数据
    for (var i = 0; i < data.length; i++) {
        var _data = data[i];
        for (var j = 0; j < chartInfo.length; j++) {
            var _ch = chartInfo[j];
            _option[_ch.id].xAxis[0].data.push(_data.date);
            for (var k = 0; k < _ch.key.length; k++) {
                var _key = _ch.key[k];
                _option[_ch.id].series[k].data.push(_data[_key]);
            }
        }
    }

    //将 option 设置到chart上
    for (var i = 0; i < chartInfo.length; i++) {
        var obj = chartInfo[i];
        _charts[obj.id].setOption(_option[obj.id]);
    }
    return _charts;
}

function renderChart2(chartInfo, data){
    var default_option = {
        title : {
            text: '订单统计',
            x:'center'
        },
        tooltip : {
            trigger: 'item',
            formatter: "暂无订单"
        },
        legend: {
            orient : 'vertical',
            x : 'left',
            y : 'center',
            data:['暂无订单']
        },
        series : [
            {
                name:'订单数',
                type:'pie',
                radius : ['50%', '70%'],
                itemStyle : {
                    normal : {
                        label : {
                            show : false
                        },
                        labelLine : {
                            show : false
                        }
                    },
                    emphasis : {
                        label : {
                            show : true,
                            position : 'center',
                            textStyle : {
                                fontSize : '18',
                                fontWeight : 'bold'
                            }
                        }
                    }
                },
                data:[
                    {value:'1', name:'暂无订单'}
                ]
            }
        ]
    };
    var _chart;
    var _option;
    _chart = echarts.init(document.getElementById(chartInfo.id));
    _option = $.extend(true, {}, default_option);


    var data_temp=[];
    var nums=0;
    for (var i = 0; i < data.length; i++) {
        var _num=parseInt(data[i],10);
        nums+=_num;
        data_temp.push({
            value:_num,
            name:chartInfo.title[i]
        });
    }

    if(nums>0){
        _option.legend.data=chartInfo.title;
        _option.tooltip.formatter= "{a} <br/>{b} : {c} ({d}%)";
        _option.series[0].data=data_temp;
    }

    _chart.setOption(_option);
    return _chart;
}