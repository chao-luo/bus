/**
 * author : lch
 * date : 2015/4/11
 * depiction :
 */
var color = ["red", "orange", "black", "green", "blue", "cyan", "violet", "azure"];

webix.ready(function () {
    view = true;
    webix.ui({
        rows: [
            {
                cols: [
                    {
                        rows: [{
                            view: "toolbar", cols: [{
                                view: "search", placeholder: "输入查询地点",
                                on: {
                                    'onKeyPress': function (code) {
                                        if (code == 13) {
                                            var value = this.getValue();
                                            search(value);
                                        }
                                    },
                                    'onSearchIconClick': function () {
                                        var value = this.getValue();
                                        search(value);
                                    }
                                }
                            }]
                        }, {
                            view: "multiselect", id: 'multiselect', label: "线路", options: {
                                buttonText: "显示",
                                data: [
                                    {id: 1, value: "线路1"},
                                    {id: 2, value: "线路2"},
                                    {id: 3, value: "线路3"},
                                    {id: 4, value: "线路4"},
                                    {id: 5, value: "线路5"},
                                    {id: 6, value: "线路6"},
                                    {id: 7, value: "线路7"}
                                ]
                            },value: "1,2,3,4,5,6,7"
                        }, {
                            view: "form", borderless: true, elements: [
                                //{view: "text", type: 'email' ,label: "Email"},
                                {
                                    view: "label",
                                    label: "地点不对?欢迎参考<a href='http://api.map.baidu.com/lbsapi/getpoint/' target='_blank'>百度拾取坐标系统</a>反馈"
                                },
                                {view: "textarea", height: 300, name: "content", id: 'content', hidden: true},
                                {
                                    margin: 5, cols: [
                                    {
                                        view: "button", value: "问题反馈", type: "form", id: 'submit'
                                        , on: {
                                        'onItemClick': function () {
                                            if (view) {
                                                $$('submit').setValue('提交');
                                                $$('submit').refresh();
                                                $$('content').show();
                                            } else {
                                                var content = $$('content').getValue();
                                                if (content == null || '' == content) {
                                                    return;
                                                }
                                                $.ajax({
                                                    url: 'feedback.do',
                                                    type: 'post',
                                                    data: {
                                                        content: content
                                                    },
                                                    success: function (data) {
                                                        webix.message("您好,非常感谢您的反馈,您的建议我们会尽快处理");
                                                        $$('content').setValue('');
                                                    }
                                                });
                                                $$('submit').setValue('问题反馈');
                                                $$('submit').refresh();
                                                $$('content').hide();
                                            }
                                            view = !view;
                                        }
                                        //,
                                        //'onKeyPress': function(code) {
                                        //    if (code == 13) {
                                        //        var value = this.getValue();
                                        //        search(value);
                                        //    }
                                        //}
                                    }
                                    }
                                ]
                                }
                            ]
                        }]
                    }, //1st column
                    {
                        view: 'template',
                        borderless:true,
                        template: '<div id="allmap" style="width: 100%; height: 100%" />',
                        width: screen.width * 0.8,
                        height: screen.height * 0.8
                    } //2nd column
                ]
            }, {
                view:'label', label: 'Copyright © 2015 luo.chao All rights reserved.', align: 'center', border:false
            }
        ]
    });
    drawMap();
    $$('multiselect').getPopup().getButton().attachEvent('onItemClick', function() {
        map.clearOverlays();
        var lineArray = $$('multiselect').getValue().split(',');
        for(var index in lineArray) {
            drawLine(lineArray[index]);
        }
    })
});

function drawLine(lineNubmer) {
    $.ajax({
        url: "line/" + lineNubmer + ".do",
        success: function (data) {
            var lastPoint;
            var lastLine;
            var colorIndex = 0;
            $.each(data, function (n, value) {
                var point = new BMap.Point(value.lon, value.lat);
                var marker = new BMap.Marker(point);
                map.addOverlay(marker);
                var content = "线路: " + value.line_number + "<br />" + "站点: " + value.station_name + "<br />" + "到站时间: " + value.arrival_time
                addClickHandler(content, marker);

                //var labelName = value.station_name;
                //var label = new BMap.Label(labelName, {
                //    offset: new BMap.Size(0, -30),
                //    position: point
                //});
                //map.addOverlay(label);
                if (lastPoint != null) {
                    if (lastLine == value.line_number) {
                        var polyline = new BMap.Polyline([
                                lastPoint,
                                point
                            ],
                            {strokeColor: color[value.line_number -1], strokeWeight: 6, strokeOpacity: 0.5}
                        );
                        map.addOverlay(polyline);
                    }
                }
                lastPoint = point;
                lastLine = value.line_number;
            })
        }
    });
};

function drawMap() {
    // 百度地图API功能
    map = new BMap.Map("allmap");    // 创建Map实例
    var company = new BMap.Point(117.144, 31.837);
    map.centerAndZoom(company, 15);  // 初始化地图,设置中心点坐标和地图级别
    map.addControl(new BMap.MapTypeControl());   //添加地图类型控件
    map.setCurrentCity("合肥");          // 设置地图显示的城市 此项是必须设置的
    map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
    var marker = new BMap.Marker(company);
    map.addOverlay(marker);
    addClickHandler("公司", marker);

    $.ajax({
        url: "line/all.do",
        success: function (data) {
            var lastPoint;
            var lastLine;
            var colorIndex = 0;
            $.each(data, function (n, value) {
                var point = new BMap.Point(value.lon, value.lat);
                var marker = new BMap.Marker(point);
                map.addOverlay(marker);
                var content = "线路: " + value.line_number + "<br />" + "站点: " + value.station_name + "<br />" + "到站时间: " + value.arrival_time
                addClickHandler(content, marker);

                //var labelName = value.station_name;
                //var label = new BMap.Label(labelName, {
                //    offset: new BMap.Size(0, -30),
                //    position: point
                //});
                //map.addOverlay(label);
                if (lastPoint != null) {
                    if (lastLine == value.line_number) {
                        var polyline = new BMap.Polyline([
                                lastPoint,
                                point
                            ],
                            {strokeColor: color[value.line_number -1], strokeWeight: 6, strokeOpacity: 0.5}
                        );
                        map.addOverlay(polyline);
                    }
                }
                lastPoint = point;
                lastLine = value.line_number;
            })
        }
    });
}

/**
 * 查询地点
 * @param name
 */
function search(name) {
    if (name == null || '' == name) {
        return;
    }
    var local = new BMap.LocalSearch(map, {
        renderOptions: {map: map}
    });
    local.search(name);
}

function addClickHandler(content,marker){
    marker.addEventListener("click",function(e){
            openInfo(content,e)}
    );
}
function openInfo(content,e){
    var opts = {
        width : 250,     // 信息窗口宽度
        height: 80,     // 信息窗口高度
        title : "信息窗口" , // 信息窗口标题
        enableMessage:true//设置允许信息窗发送短息
    };
    var p = e.target;
    var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);
    var infoWindow = new BMap.InfoWindow(content,opts);  // 创建信息窗口对象
    map.openInfoWindow(infoWindow,point); //开启信息窗口
}


