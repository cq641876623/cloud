<#include "chen_model.ftl">
<#macro css>
    <link rel="icon" href="${rc.contextPath}/images/title_icon/监控.png">
    <link rel="stylesheet" href="${rc.contextPath}/js/vue/elementui.css">
    <link rel="stylesheet" href="${rc.contextPath}/js/layui/css/layui.css" media="all">
</#macro>
<#macro js>

    <script src="${rc.contextPath}/js/vue/elementui.js"></script>


    <!--主文件-->
    <script src="${rc.contextPath}/js/threeJs/build/three.js"></script>
    <!--检查webGL环境-->
    <script src="${rc.contextPath}/js/threeJs/js/Detector.js"></script>

    <script src="${rc.contextPath}/js/threeJs/js/loaders/LoaderSupport.js"></script>


    <!--外部3D模型导入-->
    <!--obj材质导入-->

    <!--obj对象导入-->
    <script src="${rc.contextPath}/js/threeJs/js/loaders/OBJLoader.js"></script>
    <!--GLTF或GLB对象导入-->
    <script src="${rc.contextPath}/js/threeJs/js/loaders/GLTFLoader.js"></script>

    <!--辅助-->
    <!--控制文件-->
    <script src="${rc.contextPath}/js/threeJs/js/controls/OrbitControls.js"></script>

    <!--鼠标点击交互事件辅助-->
    <script src="${rc.contextPath}/js/threeJs/js/shaders/CopyShader.js"></script>
    <script src="${rc.contextPath}/js/threeJs/js/shaders/FXAAShader.js"></script>
    <script src="${rc.contextPath}/js/threeJs/js/postprocessing/EffectComposer.js"></script>
    <script src="${rc.contextPath}/js/threeJs/js/postprocessing/RenderPass.js"></script>
    <script src="${rc.contextPath}/js/threeJs/js/postprocessing/ShaderPass.js"></script>
    <script src="${rc.contextPath}/js/threeJs/js/postprocessing/OutlinePass.js"></script>
    <script src="${rc.contextPath}/js/threeJsCQQ/build/threeJsC.js"></script>

<#--    <script src="https://cdn.bootcss.com/moment.js/2.24.0/moment.min.js"></script>-->
<#--    <script src="https://cdn.bootcss.com/moment.js/2.24.0/locale/zh-cn.js"></script>-->

    <script src="${rc.contextPath}/js/layui/layui.js"></script>
    <script src="${rc.contextPath}/js/echarts/echarts.js"></script>
    <script src="${rc.contextPath}/js/timehelp/moment.min.js"></script>
    <script src="${rc.contextPath}/js/timehelp/zh-cn.js"></script>

<#--    <script src="https://cdn.bootcss.com/echarts/4.2.1-rc1/echarts.min.js"></script>-->
<#--    <script src="https://cdn.bootcss.com/echarts/4.4.0-rc.1/echarts.js"></script>-->


<#--    <script src="https://cdn.bootcss.com/heatmap.js/2.0.2/heatmap.min.js"></script>-->
    <script src="${rc.contextPath}/js/heatmap/heatmap.js"></script>

    <script>


        var theme = {
            // 默认色板
            color: [
                '#2ec7c9','#b6a2de','#5ab1ef','#ffb980','#d87a80',
                '#8d98b3','#e5cf0d','#97b552','#95706d','#dc69aa',
                '#07a2a4','#9a7fd1','#588dd5','#f5994e','#c05050',
                '#59678c','#c9ab00','#7eb00a','#6f5553','#c14089'
            ],

            // 图表标题
            title: {
                textStyle: {
                    fontWeight: 'normal',
                    color: '#008acd'          // 主标题文字颜色
                }
            },

            // 值域
            dataRange: {
                itemWidth: 15,
                color: ['#5ab1ef','#e0ffff']
            },

            // 工具箱
            toolbox: {
                color : ['#1e90ff', '#1e90ff', '#1e90ff', '#1e90ff'],
                effectiveColor : '#ff4500'
            },

            // 提示框
            tooltip: {
                backgroundColor: 'rgba(50,50,50,0.5)',     // 提示背景颜色，默认为透明度为0.7的黑色
                axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                    type : 'line',         // 默认为直线，可选为：'line' | 'shadow'
                    lineStyle : {          // 直线指示器样式设置
                        color: '#008acd'
                    },
                    crossStyle: {
                        color: '#008acd'
                    },
                    shadowStyle : {                     // 阴影指示器样式设置
                        color: 'rgba(200,200,200,0.2)'
                    }
                }
            },

            // 区域缩放控制器
            dataZoom: {
                dataBackgroundColor: '#efefff',            // 数据背景颜色
                fillerColor: 'rgba(182,162,222,0.2)',   // 填充颜色
                handleColor: '#008acd'    // 手柄颜色
            },

            // 网格
            grid: {
                borderColor: '#eee'
            },

            // 类目轴
            categoryAxis: {
                axisLine: {            // 坐标轴线
                    lineStyle: {       // 属性lineStyle控制线条样式
                        color: '#008acd'
                    }
                },
                splitLine: {           // 分隔线
                    lineStyle: {       // 属性lineStyle（详见lineStyle）控制线条样式
                        color: ['#eee']
                    }
                }
            },

            // 数值型坐标轴默认参数
            valueAxis: {
                axisLine: {            // 坐标轴线
                    lineStyle: {       // 属性lineStyle控制线条样式
                        color: '#008acd'
                    }
                },
                splitArea : {
                    show : true,
                    areaStyle : {
                        color: ['rgba(250,250,250,0.1)','rgba(200,200,200,0.1)']
                    }
                },
                splitLine: {           // 分隔线
                    lineStyle: {       // 属性lineStyle（详见lineStyle）控制线条样式
                        color: ['#eee']
                    }
                }
            },

            polar : {
                axisLine: {            // 坐标轴线
                    lineStyle: {       // 属性lineStyle控制线条样式
                        color: '#ddd'
                    }
                },
                splitArea : {
                    show : true,
                    areaStyle : {
                        color: ['rgba(250,250,250,0.2)','rgba(200,200,200,0.2)']
                    }
                },
                splitLine : {
                    lineStyle : {
                        color : '#ddd'
                    }
                }
            },

            timeline : {
                lineStyle : {
                    color : '#008acd'
                },
                controlStyle : {
                    normal : { color : '#008acd'},
                    emphasis : { color : '#008acd'}
                },
                symbol : 'emptyCircle',
                symbolSize : 3
            },

            // 柱形图默认参数
            bar: {
                itemStyle: {
                    normal: {
                        barBorderRadius: 5
                    },
                    emphasis: {
                        barBorderRadius: 5
                    }
                }
            },

            // 折线图默认参数
            line: {
                smooth : true,
                symbol: 'emptyCircle',  // 拐点图形类型
                symbolSize: 3           // 拐点图形大小
            },

            // K线图默认参数
            k: {
                itemStyle: {
                    normal: {
                        color: '#d87a80',       // 阳线填充颜色
                        color0: '#2ec7c9',      // 阴线填充颜色
                        lineStyle: {
                            color: '#d87a80',   // 阳线边框颜色
                            color0: '#2ec7c9'   // 阴线边框颜色
                        }
                    }
                }
            },

            // 散点图默认参数
            scatter: {
                symbol: 'circle',    // 图形类型
                symbolSize: 4        // 图形大小，半宽（半径）参数，当图形为方向或菱形则总宽度为symbolSize * 2
            },

            // 雷达图默认参数
            radar : {
                symbol: 'emptyCircle',    // 图形类型
                symbolSize:3
                //symbol: null,         // 拐点图形类型
                //symbolRotate : null,  // 图形旋转控制
            },

            map: {
                itemStyle: {
                    normal: {
                        areaStyle: {
                            color: '#ddd'
                        },
                        label: {
                            textStyle: {
                                color: '#d87a80'
                            }
                        }
                    },
                    emphasis: {                 // 也是选中样式
                        areaStyle: {
                            color: '#fe994e'
                        }
                    }
                }
            },

            force : {
                itemStyle: {
                    normal: {
                        linkStyle : {
                            color : '#1e90ff'
                        }
                    }
                }
            },

            chord : {
                itemStyle : {
                    normal : {
                        borderWidth: 1,
                        borderColor: 'rgba(128, 128, 128, 0.5)',
                        chordStyle : {
                            lineStyle : {
                                color : 'rgba(128, 128, 128, 0.5)'
                            }
                        }
                    },
                    emphasis : {
                        borderWidth: 1,
                        borderColor: 'rgba(128, 128, 128, 0.5)',
                        chordStyle : {
                            lineStyle : {
                                color : 'rgba(128, 128, 128, 0.5)'
                            }
                        }
                    }
                }
            },

            gauge :     {
                axisLine: {            // 坐标轴线
                    lineStyle: {       // 属性lineStyle控制线条样式
                        color: [[0.2, '#2ec7c9'],[0.8, '#5ab1ef'],[1, '#d87a80']],
                        width: 10
                    }
                },
                axisTick: {            // 坐标轴小标记
                    splitNumber: 10,   // 每份split细分多少段
                    length :15,        // 属性length控制线长
                    lineStyle: {       // 属性lineStyle控制线条样式
                        color: 'auto'
                    }
                },
                splitLine: {           // 分隔线
                    length :22,         // 属性length控制线长
                    lineStyle: {       // 属性lineStyle（详见lineStyle）控制线条样式
                        color: 'auto'
                    }
                },
                pointer : {
                    width : 5
                }
            },

            textStyle: {
                fontFamily: '微软雅黑, Arial, Verdana, sans-serif'
            }
        };


    </script>

</#macro>
<#macro style>
    <style>
        .cq-n-btn{
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 22px;
            text-decoration: none;
            color: black;
            display: inline-block;
            cursor: pointer;
            user-select: none;
        }
        .pentagon {
            margin: auto;
            top: 10px;
            font-size: 15px;
            line-height: 70px;
            position: relative;
            user-select: none;
            font-weight: 600;
            width: 80px;
            border-bottom: 30px solid #e6e7e6;
            border-left: 20px solid transparent;
            border-right: 20px solid transparent;
        }
        .pentagon::before {
            content: "";
            position: absolute;
            width: 80px;
            height: 0px;
            top: 30px;
            left: -20px;
            border-top: 40px solid #e6e7e6;
            border-left: 20px solid transparent;
            border-right: 20px solid transparent;
        }
        .cq-right-btn{
            display: block!important;
            width: 130px!important;
        }
        .cq-task-box{
            border: 2px solid #ccc!important;
            padding: 14px;
            border-radius: 5px!important;
            position: relative;
            margin-top: 5px;
            margin-left: 5px;
            margin-right: 5px;
        }


        .cq-task-box:after {
            content: '';
            width: 8px;
            height: 8px;
            position: absolute;
            top: 10px;
            left: -5px;
            transform: rotate(45deg);
            background-color:  #36424f;
            border: 1px #fff;
            border-style: none none solid solid;
        }
        .cq-left-content{
            color: white;
            height: 100%;
            overflow-y: scroll;
            width: 68%;
        }

        /*滚动条样式*/
        .cq-left-content::-webkit-scrollbar {/*滚动条整体样式*/
            width: 4px;     /*高宽分别对应横竖滚动条的尺寸*/
            height: 4px;
            margin-left: 10px;
        }
        .cq-left-content::-webkit-scrollbar-thumb {/*滚动条里面小方块*/
            border-radius: 5px;
            -webkit-box-shadow: inset 0 0 5px rgba(0,0,0,0.2);
            background: #8bd4f3;
        }
        .cq-left-content::-webkit-scrollbar-track {/*滚动条里面轨道*/
            -webkit-box-shadow: inset 0 0 5px rgba(0,0,0,0.2);
            border-radius: 0;
            background: rgba(0,0,0,0.1);
        }

        .cq-imgs-box{
            display: flex;
            padding: 10px;
            margin-top: 10px;
            border: 2px solid white;
            border-radius: 5px;
            position: relative;
        }

        .cq-imgs-viewbox{
            height: max-content;
            width: max-content;
            overflow-x: scroll;
            display: flex;
            overflow-y: hidden;
        }
        .cq-task-header-content{
            margin-left: 20px;
            margin-top: 10px;
        }
        .cq-img{
            width: 300px;
            height: 200px;

        }
        .cq-file{
            width: 200px;
            height: 200px;

        }

        .cq-img:hover{
            transform: scale(1.1, 1.1);
            cursor: zoom-in;
        }
        .cq-img-contrain{
            margin:0 10px;
            display:inline-block !important;
            width:300px;
            height:200px;
        }

        /*滚动条样式*/
        .cq-imgs-viewbox::-webkit-scrollbar {/*滚动条整体样式*/
            width: 4px;     /*高宽分别对应横竖滚动条的尺寸*/
            height: 4px;
        }
        .cq-imgs-viewbox::-webkit-scrollbar-thumb {/*滚动条里面小方块*/
            border-radius: 5px;
            -webkit-box-shadow: inset 0 0 5px rgba(0,0,0,0.2);
            background: #8bd4f3;
        }
        .cq-imgs-viewbox::-webkit-scrollbar-track {/*滚动条里面轨道*/
            -webkit-box-shadow: inset 0 0 5px rgba(0,0,0,0.2);
            border-radius: 0;
            background: rgba(0,0,0,0.1);
        }

        .cq-imgs-view-btn{
            color:  #8bd4f3;
            top: calc(50% - 25px);

            width: 50px;
            height:  50px;
            border: 2px solid white;
            border-radius: 100%;
            position: absolute;
            font-size: 24px;
            font-weight: 900;
            text-align:  center;
            line-height: 50px;
            background: rgba(255, 255, 255, 0.55);
            vertical-align: 50px;
            z-index:  9;
            user-select: none;
        }

        .cq-imgs-view-left-btn{
            left: 8px;
        }
        .cq-imgs-view-right-btn{
            right: 8px;
        }
        .cq-img-big{
            position: fixed;
            width: 100%!important;
            height: 100%!important;
            object-fit: contain;
            top: 0;
            left: 0;
            background: #5e5e5e8c;
            z-index: 9999;
        }
    </style>


    <style>
        .layui-layer-lan .layui-layer-title{
            border-top-left-radius: 10px!important;
            border-top-right-radius: 10px!important;
        }
        .layui-layer{
            border-radius: 10px!important;
            box-shadow: 6px 6px 5px rgba(0,0,0,.2)!important;
        }
        .layui-layer-iframe iframe {
            border-bottom-left-radius: 10px!important;
            border-bottom-right-radius: 10px!important;
        }
    </style>


    <style>
        .image-border {
            position: absolute;
            width: 5px;
            height: 5px;
        }

        .image-border1 {
            top: 0;
            left: 0;
            border-left: 3px solid #FFFFFF;
            border-top: 3px solid #FFFFFF;
        }

        .image-border2 {
            top: 0;
            right: -2px;
            border-right: 3px solid #FFFFFF;
            border-top: 3px solid #FFFFFF;
        }

        .image-border3 {
            bottom: 0;
            left: 0;
            border-bottom: 3px solid #FFFFFF;
            border-left: 3px solid #FFFFFF;
        }

        .image-border4 {
            bottom: 0;
            right: -2px;
            border-right: 3px solid #FFFFFF;
            border-bottom: 3px solid #FFFFFF;
        }



        .info-block{
            position: relative;
            width: 100%;
            text-align: center;
            font-size: 5px;
            line-height: 40px;
            height: 40px;
            margin: 5px;

            background-color:#0b3c6cad;
        }


        .info-block-table{
            position: relative;
            text-align: center;
            font-size: 5px;
            line-height: 40px;
            margin: 5px;

        }
        .info-block-btn{
            box-shadow: 0 3px 1px -2px rgba(0,0,0,.2), 0 2px 2px 0 rgba(0,0,0,.14), 0 1px 5px 0 rgba(0,0,0,.12);
            background-color: #2196f3;
            margin: 3px;
            border-radius: 2px;
            width: 50%;
            text-align: center;
            height: 30px;
            line-height: 30px;
            user-select: none;
            outline: none;
            -webkit-appearance: none;
        }
        .data-row{
            padding: 5px;
            margin: 10px;height: 40px;
            /*background: #2196f3;*/
            /*border-radius: 5px;*/
            /*box-shadow: 0px 1px 0px 0px #888888;*/
            color: white;
            line-height: 20px;
            height: 20px;
            font-size: 5px;
            border-bottom: 1px solid rgba(0,0,0,.12);
            box-sizing: border-box;
        }

        td{
            padding-left: 10px;
        }


        .table-scroll::-webkit-scrollbar

        {
            width: 5px;
            height:5px;

            background-color: rgba(181, 177, 177, 0);

        }
        .table-scroll::-webkit-scrollbar-track
        {
            -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
            border-radius: 10px;
            background-color: rgba(0, 0, 0, 0);

        }




        .table-scroll::-webkit-scrollbar-thumb
        {
            border-radius: 10px;
            -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
            background-color:#b5b1b1;
        }


        table{
            table-layout: fixed;
            border-radius: 2px;
            height: 100%;;
            width: 100%;
            word-break: keep-all;
            border-collapse: collapse;
            border-spacing: 0px;
            transition: all .45s cubic-bezier(.23,1,.32,1);
            box-shadow: 0 2px 1px -1px rgba(0,0,0,.2), 0 1px 1px 0 rgba(0,0,0,.14), 0 1px 3px 0 rgba(0,0,0,.12);
            box-sizing: border-box;

        }

        .cq-status-green {
            width: 10px;
            height: 10px;
            border-radius: 50%;
            background: lawngreen;
            display: inline-flex;
        }
        .cq-status-red {
            width: 10px;
            height: 10px;
            border-radius: 50%;
            background: red;
            display: inline-flex;
        }

        .device-row-noselect {
            user-select: none;
        }
        .device-row-select {
            user-select: none;
            background: #2196f3;
        }


        .btn{
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 22px;
            text-decoration: none;
            color: #fff;
            display: inline-block;
            cursor: pointer;
            user-select: none;
        }
        .cq-btn-blue{
            background-color: #55acee;box-shadow: 0px 5px 0px 0px #3C93D5;
        }
        .cq-btn-blue2{
            background-color: #8f8f8f;
        }

        .cq-btn-blue:hover{
            background-color: #6FC6FF;
        }

        .cq-btn-blue:active{
            transform: translate(0px, 5px);
            background-color: #6FC6FF;
            box-shadow: 0px 0px 0px 0px #3C93D5;
        }

    </style>

</#macro>
<@layout "home">
    <div id="app" style="position: fixed;width: 100%;height: 100%;top: 0;left: 0;"
         v-loading.fullscreen.lock="load"
         element-loading-text="拼命加载中"
         element-loading-spinner="el-icon-loading"
         element-loading-background="rgba(0, 0, 0, 0.8)">

        <!--        标题-->
        <div id="title" style="color: cornflowerblue;
                        position: fixed;
                        left: 0;
                        top: 0;
                        font-size: 25px;
                            height: 50px;
                        margin: 10px;">
            <div style="font-size: 13px;">Ramo Fire Warning System</div>
            <div>火灾预警系统</div>
        </div>

        <div style="    color: #fff;
                        font-size: 24px;
                        font-weight: 900;
                        position: fixed;
                        top: 0px;
                        left: calc(50% - 150px);
                        background: #3e4664;
                        width: 300px;
                        line-height: 40px;
                        text-align: center;
                        border-bottom-left-radius: 5px;
                        height: 40px;
                        border-bottom-right-radius: 5px;
                        box-shadow: 4px 2px 1px rgba(0,0,0,.15);
                        box-sizing: border-box;">
            {{sceneInfo['name']}}
        </div>



        <!--        左侧边栏-->
        <div id="leftTool" style="position: fixed;
                    top: 50px;
                    margin: 13px;
                    left: 0px;
                    width: 250px;
                    color: white;
                    height: calc(100% - 63px);
                    background: rgba(255, 255, 255, 0);">
            <!--            一号部分-->
            <div style="height: 50%;">
                <div style="display: flex;height: 85px;">
                    <h1>01</h1>
                    <h1 style="margin-left: 12px;">
                        <div style="color: cornflowerblue;font-size:  1px;    margin-left: 30px;">Device manager</div>
                        <div style="font-size: 18px;">设备管理</div>
                    </h1>

                </div>
                <div style="display: flex;height: 50px;margin: 5px;">
                    <div class="info-block">
                        <div class="image-border image-border1"></div>
                        <div class="image-border image-border2"></div>
                        <div class="image-border image-border3"></div>
                        <div class="image-border image-border4"></div>

                        <div style="height:100%;width: 100%;">
                            设备总数：{{deviceManager.numberOfDevice}}
                        </div>
                    </div>

                    <div class="info-block">
                        <div class="image-border image-border1"></div>
                        <div class="image-border image-border2"></div>
                        <div class="image-border image-border3"></div>
                        <div class="image-border image-border4"></div>

                        <div style="height:100%;width: 100%;">
                            在线设备：{{deviceManager.numberOfOnlineDevice}}
                        </div>
                    </div>
                </div>



                <div class="table-scroll info-block-table" style="max-height: calc(100% - 85px - 50px);width: 100%;overflow-y: scroll;">
                    <table style="        background-color:#0b3c6cad;">
                        <tbody style="box-sizing: border-box;">

                        <tr class="data-row"  v-for="device in deviceManager.allDevice"  v-on:click="changeCurrentCamera(device)">
                            <td v-bind:class="device.id==deviceParameters.deviceStatic['id']?'device-row-select':'device-row-noselect'"  >
                                <i class="el-icon-video-camera"></i>
                                <span >{{device['name']}}</span>
                                <span class="cq-status-green" v-if="device['online']==1"></span>
                                <span class="cq-status-red" v-if="device['online']==0"></span>
                            </td>
                            <td v-bind:class="device.id==deviceParameters.deviceStatic['id']?'device-row-select':'device-row-noselect'" >
                                <span>
                                    <i class="el-icon-view" ></i>
                                </span>
                            </td>
                        </tr>

                        </tbody>



                    </table>
                </div>

            </div>
            <!--            二号部分-->
            <div style="height: 50%;">
                <div style="display: flex;height: 85px;">
                    <h1>02</h1>
                    <h1 style="margin-left: 12px;">
                        <div style="color: cornflowerblue;font-size:  1px;    margin-left: 30px;">Data monitoring</div>
                        <div style="font-size: 18px;">数据监控</div>
                    </h1>

                </div>

                <div style="height:calc(100% - 85px);width: 100%;">
                    <div style="display: flex;height: 30px;justify-content: space-around;">
<#--                        <div class="info-block-btn">-->
<#--                            实时数据-->
<#--                        </div>-->
                        <el-radio v-model="dataMonitoring.dataType" label="1">实时数据</el-radio>
                        <el-radio v-model="dataMonitoring.dataType" label="2">故障数据</el-radio>
<#--                        <div  class="info-block-btn">-->
<#--                            故障数据-->
<#--                        </div>-->
                    </div>

                    <div class="table-scroll" style="max-height: calc(100% - 50px);width: 100%;overflow-y: scroll;">
                        <table style="  border-collapse: separate;border-spacing: 10px 10px;">
                            <tbody style="box-sizing: border-box;" v-if="dataMonitoring.dataType==1">

                                <tr class="data-row"  v-for="i in dataMonitoring.liveData">

                                    <td @click="viewDetail(i)" style="padding: 5px;
                                                                        background: #27293d;
                                                                        border: 0;
                                                                        border-radius: 0.2857rem;
                                                                        position: relative;
                                                                        width: 100%;
                                                                        margin-bottom: 30px;
                                                                        box-shadow: 0 1px 20px 0px rgba(0, 0, 0, 0.1)">
                                        <div>
                                            {{activeType(i)}}
                                        </div>
                                        <div>名称：{{i['deviceName']}} 位置：{{i['presetPosition']}}</div>
                                        <div v-if="i['type']==2" style="color: red" >
                                            <i class="el-icon-warning"></i>最高温：{{i['maxTemperature']}}
                                        </div>
                                        <div v-else>
                                            最高温：{{i['maxTemperature']}}
                                        </div>
                                        <div v-if="i['type']==1" style="color: red">
                                            <i class="el-icon-warning"></i>最低温：{{i['minTemperature']}}
                                        </div>
                                        <div v-else>
                                            最低温：{{i['minTemperature']}}
                                        </div>
                                        <div style="    text-align: right;">
                                            {{timeProccess(i['createTime'])}}
                                        </div>
                                    </td>
                                </tr>

                            </tbody>
                            <tbody style="box-sizing: border-box;" v-else>

                                <tr class="data-row"  v-for="i in dataMonitoring.faultData">
                                    <td  @click="viewDetail(i)" style="padding: 5px;
                                                background: #27293d;
                                                border: 0;
                                                border-radius: 0.2857rem;
                                                position: relative;
                                                width: 100%;
                                                margin-bottom: 30px;
                                                box-shadow: 0 1px 20px 0px rgba(0, 0, 0, 0.1)">
                                        <div>名称：{{i['deviceName']}} 位置：{{i['presetPosition']}}</div>
                                        <div v-if="i['type']==2" style="color: red">
                                            最高温：{{i['maxTemperature']}}
                                        </div>
                                        <div v-else>
                                            最高温：{{i['maxTemperature']}}
                                        </div>
                                        <div v-if="i['type']==1" style="color: red">
                                            最低温：{{i['minTemperature']}}
                                        </div>
                                        <div v-else>
                                            最低温：{{i['minTemperature']}}
                                        </div>
                                        <div style="text-align: right;">
                                            {{timeProccess(i['createTime'])}}
                                        </div>
                                    </td>
                                </tr>

                            </tbody>



                        </table>
                    </div>



                </div>


            </div>


        </div>

        <div style="position: fixed;
                                display: flex;
                                right: 10px;
                                line-height: 32px;

                                 justify-content: space-around;
                                top: 10px; ">
            <a style="      color: white;
                            font-size: 20px;
                            user-select: none;
                            font-weight: 900;">
                您好,${Session.sessionUser.name}
            </a>
            <el-dropdown   style="        background: rgb(255, 255, 255);
                                        border-radius: 50%;
                                        width: 20px;
                                        height: 20px;
                                        font-size: 15px;
                                        text-align: center;
                                        line-height: 20px;
                                        margin: auto;">
                   <span class="el-dropdown-link">
                            <div >

                                <i class="el-icon-setting"></i>
                            </div>
                        </span>

                <el-dropdown-menu slot="dropdown">
                    <el-dropdown-item ><a href="${rc.contextPath}/setting/setting" style="text-decoration:none">设置</a></el-dropdown-item>
                    <el-dropdown-item><a href="${rc.contextPath}/logout" style="text-decoration:none">注销</a></el-dropdown-item>
                </el-dropdown-menu>

            </el-dropdown>
        </div>


        <div style="position: fixed;
                bottom: 0px;
                margin: 13px;
                right: 0px;
                color: white;
                padding: 10px;
                border-radius: 4px;

">

            <div>



                <div style="display: flex;background-color: rgba(11, 60, 108, 0.68);padding: 10px;min-width: 200px;">
                    <h1>03</h1>
                    <h1 style="margin-left: 12px;">
                        <div style="color: cornflowerblue;font-size:  1px;    margin-left: 30px;">Device parameters</div>
                        <div style="font-size: 18px;">设备参数</div>
                    </h1>

                    <div @click="show2 = !show2" style="position: absolute;right: 20px;font-size:  25px;">
                        <i v-if="show2==true" class="el-icon-arrow-down"></i>
                        <i v-else class="el-icon-arrow-up"></i>
                    </div>

                </div>

                <transition name="el-zoom-in-bottom">

                <div v-show="show2" style="text-align: left;background-color: rgba(11, 60, 108, 0.68);padding: 10px;padding-top: 0!important;">
                    <div>名称：{{deviceParameters.deviceStatic['name']}}
                        <span class="cq-status-green" v-if="deviceParameters.deviceStatic['online']==1"></span>
                        <span class="cq-status-red" v-if="deviceParameters.deviceStatic['online']==0"></span>
                    </div>
                    <div style="font-size: 3px;">
                        最后时间：{{timeProccess(deviceParameters.deviceStatic['lastTime'])}}
                    </div>

                    <div style="margin-top: 10px;">
<#--                        <div style="display: flex;">-->
<#--                            <el-radio v-model="deviceParameters.norlOrHot" label="1">普通</el-radio>-->
<#--                            <el-radio v-model="deviceParameters.norlOrHot" label="2">热成像</el-radio>-->
<#--                        </div>-->

                        <div v-pre style="display: flex;width: 500px;justify-content: space-between;">

                            <!--[if IE]>
                            <object type="application/x-vlc-plugin" id="vlc1"
                                    classid="clsid:9BE31822-FDAD-461B-AD51-BE1D1C159921" codebase="http://downloads.videolan.org/pub/videolan/vlc/latest/win32/axvlc.cab" width="230" height="200">
                                <param name="volume" value="100" />
                                <param name="autoplay" value="true" />
                                <param name="loop" value="false" />
                                <param name="controls" value="true" />
                            </object>

                            <![endif]-->
                            <!--[if !IE]><!-->
                            <object type="application/x-vlc-plugin" id="vlc1"  width="230" height="200" pluginspage="http://www.videolan.org" codebase="http://downloads.videolan.org/pub/videolan/vlc-webplugins/2.0.6/npapi-vlc-2.0.6.tar.xz">
                                <param name="volume" value="50" />
                                <param name="autoplay" value="true" />
                                <param name="loop" value="false" />
                                <param name="fullscreen" value="true" />
                                <param name="controls" value="true" />
                            </object>



                            <!--[if IE]>
                            <object type="application/x-vlc-plugin" id="vlc2"
                                    classid="clsid:9BE31822-FDAD-461B-AD51-BE1D1C159921" codebase="http://downloads.videolan.org/pub/videolan/vlc/latest/win32/axvlc.cab" width="230" height="200">
                                <param name="volume" value="100" />
                                <param name="autoplay" value="true" />
                                <param name="loop" value="false" />
                                <param name="controls" value="true" />
                            </object>

                            <![endif]-->
                            <!--[if !IE]><!-->
                            <object type="application/x-vlc-plugin" id="vlc2"  width="230" height="200" pluginspage="http://www.videolan.org" codebase="http://downloads.videolan.org/pub/videolan/vlc-webplugins/2.0.6/npapi-vlc-2.0.6.tar.xz">
                                <param name="volume" value="50" />
                                <param name="autoplay" value="true" />
                                <param name="loop" value="false" />
                                <param name="fullscreen" value="true" />
                                <param name="controls" value="true" />
                            </object>



                        </div>


                    </div>

                    <div style="width: 500px;height: 300px;background: rgb(255,255,255);padding: 10px;border-radius: 6px;margin-top: 10px;">
                        <div id="echart" style="height: 100%;width: 100%;"></div>
                    </div>

                </div>
                </transition>



            </div>


        </div>




        <canvas id="test" height="640" width="1600" style="position: fixed;visibility: hidden"></canvas>



    </div>

    <script>
        var a={x:-69.448,y:12.686};

    </script>

    <script>
        var id=${Session.sessionUser.id};


        //
        // Vue.component('cq-view', {
        //     props: ['imgurl'],
        //     template: "<div class=\"cq-imgs-box\"><div class=\"cq-imgs-viewbox\">" +
        //         " <a class=\"cq-img-contrain\" target=\"_blank\"  v-for='i in dealimg()'>\n" +
        //         "<img  class=\"cq-img\" v-bind:src='i'/>" +
        //         "                                            </a>" +
        //         "</div></div>",
        //     data: function () {
        //         return {
        //             imgList: []
        //         }
        //     },
        //     methods:{
        //         dealimg(){
        //             console.log(this.imgurl)
        //             return this.imgurl.split(",");
        //         }
        //     }
        //
        // })
        // var ImgsView=function () {
        //     this.imgsBox=document.querySelectorAll(".cq-imgs-box");
        //     var leftScroll=document.createElement("div");
        //     var rightScroll=document.createElement("div");
        //     this.leftScrollLeftShow="&lt;";
        //     this.leftScrollRightShow="&gt;";
        //     this.allLeftScroll=null;
        //     this.allRightScroll=null;
        //     this.init=function () {
        //         this.createScrollBtn();
        //         this.addScrollBtnEvent();
        //         this.zoom();
        //     }
        //     this.createScrollBtn=function () {
        //         leftScroll.classList.add("cq-imgs-view-btn");
        //         leftScroll.classList.add("cq-imgs-view-left-btn");
        //         rightScroll.classList.add("cq-imgs-view-btn");
        //         rightScroll.classList.add("cq-imgs-view-right-btn");
        //         leftScroll.innerHTML=this.leftScrollLeftShow;
        //         rightScroll.innerHTML=this.leftScrollRightShow;
        //         this.imgsBox.forEach(function (item){
        //             item.append(leftScroll.cloneNode(true));
        //             item.append(rightScroll.cloneNode(true));
        //         });
        //     }
        //
        //     this.addScrollBtnEvent=function () {
        //         this.allLeftScroll=document.querySelectorAll(".cq-imgs-view-left-btn");
        //         this.allRightScroll=document.querySelectorAll(".cq-imgs-view-right-btn");
        //         this.allLeftScroll.forEach(function (item) {
        //
        //             var viewBox=item.parentElement.getElementsByClassName("cq-imgs-viewbox")[0];
        //             if(viewBox==null)return;
        //
        //             var leftMouseDownTime=null;
        //
        //
        //             item.addEventListener("mousedown",function (evt) {
        //                 leftMouseDownTime=setInterval(function () {
        //                     viewBox.scrollTo(viewBox.scrollLeft-5,0);
        //                 },10);
        //             });
        //             item.addEventListener("mouseup",function (evt) {
        //                 clearInterval(leftMouseDownTime);
        //             });
        //         });
        //
        //         this.allRightScroll.forEach(function (item) {
        //             var viewBox=item.parentElement.getElementsByClassName("cq-imgs-viewbox")[0];
        //             var rightMouseDownTime=null;
        //             item.addEventListener("mousedown",function (evt) {
        //                 rightMouseDownTime=setInterval(function () {
        //                     viewBox.scrollTo(viewBox.scrollLeft+5,0);
        //                 },10);
        //             });
        //             item.addEventListener("mouseup",function (evt) {
        //                 clearInterval(rightMouseDownTime);
        //             });
        //
        //
        //         });
        //
        //     }
        //     var imgZoomIn=function (e) {
        //         e.target.classList.replace("cq-img-big","cq-img");
        //         e.target.addEventListener("click",imgZoomOut);
        //     }
        //     var imgZoomOut=function (e) {
        //         e.target.classList.replace("cq-img","cq-img-big");
        //         e.target.removeEventListener('click',imgZoomOut);
        //         e.target.addEventListener('click',imgZoomIn);
        //     }
        //
        //     this.zoom=function () {
        //         var contrain=document.querySelectorAll(".cq-img");
        //         contrain.forEach(function (item) {
        //             item.addEventListener("click",imgZoomOut);
        //         });
        //     }
        //
        // }
    </script>

    <script>


        function getDevice(id) {
            for(var i=0;i<vueobj.deviceManager.allDevice.length;i++){
                if(id==vueobj.deviceManager.allDevice[i].id){
                    return vueobj.deviceManager.allDevice[i];
                }
            }

        }


    </script>

<script>


    var  heatmapInstance;
    var bigmap=document.createElement("div");
    bigmap.id="bigmap"
    bigmap.style.height="640px";
    bigmap.style.width="1600px";
    bigmap.style.background="#ffea85";
    bigmap.style.display="none"


    document.body.append(bigmap);

    heatmapInstance = h337.create({
        container: bigmap
    });



    var waningString=['正常','低温报警','高温报警','温差报警','设备信息未获取到','低温预警','高温预警'];
    var heatmapConf={
        canvasSize:256,
        canvasBackground:"#00ffac",
        canvasGlobalAlpha:0.3,
        Segments:60,
        rotation:1.56,
        viewingAngle:45,
        drawR:30
    };

    var planeList=[];

    //
    // var colorFul=new Array();
    // for(var i=0;i<255;i++){
    //     colorFul.push("rgb(0,"+i+",255)");
    // }
    // for(var i=0;i<=255;i++){
    //     colorFul.push("rgb(0,255,"+(255-i)+")");
    // }
    // for(var i=0;i<=255;i++){
    //     colorFul.push("rgb("+i+",255,0)");
    // }
    // for(var i=0;i<=255;i++){
    //     colorFul.push("rgb(255,"+(255-i)+",0)");
    // }


    // Vue.component('cq-view', {
    //     props: ['imgUrl'],
    //     template: "    <div class=\"cq-imgs-box\"><div class=\"cq-imgs-viewbox\">" +
    //         " <a class=\"cq-img-contrain\" target=\"_blank\" >\n" +
    //         "<img   src=\"https://cn.vuejs.org/images/logo.png\"/>" +
    //         "                                            </a>" +
    //         "</div></div>",
    //
    // })

    var layer=null;
    layui.use('layer', function(){
        layer = layui.layer;


    });

    var vueobj=new Vue({
        el:'#app',
        data(){
            return {
                show2: true,
                sceneInfo:{
                    id:'',
                    name:'',
                    url:'',
                    status:'',
                    createTime:'',
                    updateTime:''

                },
                deviceManager:{
                    numberOfDevice:0,
                    numberOfOnlineDevice:0,
                    allDevice:[]
                },
                dataMonitoring:{
                    liveData:[{
                        id:'',
                        deviceId:'',
                        deviceName:'',
                        presetPosition:'',
                        maxTemperature:'',
                        minTemperature:'',
                        type:'',
                        typeName:'',
                        alarmScreenshots:'',
                        alarmTemperature:'',
                        highestX:'',
                        highestY:'',
                        lowestX:'',
                        lowestY:'',
                        view:'',
                        createTime:'',
                        updateTime:''
                    }],
                    faultData:[{
                        id:'',
                        deviceId:'',
                        deviceName:'',
                        presetPosition:'',
                        maxTemperature:'',
                        minTemperature:'',
                        type:'',
                        typeName:'',
                        alarmScreenshots:'',
                        alarmTemperature:'',
                        highestX:'',
                        highestY:'',
                        lowestX:'',
                        lowestY:'',
                        createTime:'',
                        updateTime:''
                    }],
                    dataType:'1'
                },
                deviceParameters:{
                    deviceActive:{
                        currentAngle:'',
                        maximumTemperature:'',
                        minimumTemperature:'',
                    },
                    deviceStatic:{
                        id:'',
                        name:'',
                        online:'',
                        deviceUsername:'',
                        devicePassword:'',
                        deviceIp:'',
                        devicePort:''
                    },
                },
                heatmapList:[],
                load:true,
                alarmList:[]



            };
        },
        methods:{
            activeType(item){
                return waningString[item.type]

            },
            changeCurrentCamera:function(device){
                    vueobj.deviceParameters.deviceStatic=device;
            },
            dataMintorProcessing:function(i){
                // console.log("time",new Date(i['createTime']));
                return i['deviceName']+" "+i['presetPosition']+"号位"+" "+"max:"+i['maxTemperature']+" "+ "min:"+i['minTemperature'] +" "+moment(new Date(i['createTime'])).utcOffset(480).format("HH:mm:ss");
             },
            timeProccess:function (i) {
                return moment(new Date(i)).utcOffset(480).format("YYYY MMM  Do-HH:mm:ss")
            },
            viewDetail:function(i){
                layer.open({
                    type: 2,
                    title: '详情',
                    shadeClose: true,
                    shade: false,
                    skin:'layui-layer-lan',
                    maxmin: true, //开启最大化最小化按钮
                    area: ['60%', '70%'],
                    resize:true,
                    offset: 'auto', //右下角弹出
                    content: ['${rc.contextPath}/device/detail?id='+i['id']], //iframe的url，no代表不显示滚动条

                });
            },
            liveDataChange:function () {
                // buildCanvas(this.dataMonitoring.liveData)
                buildCanvas2(this.dataMonitoring.liveData)
            }
        },
        watch:{

            'deviceParameters.deviceStatic':{
                handler(newval, oldval) {
                        myAlarm.data.id=vueobj.deviceParameters.deviceStatic['id'];
                        $.ajax(myAlarm);
                            dfs(threejs.scene,vueobj.deviceParameters.deviceStatic['id'])
                            try {
                                var url1=rtspUrl(vueobj.deviceParameters.deviceStatic,2);
                                var id1 = vlc1.playlist.add(url1, "fancy name", options);
                                vlc1.playlist.playItem(id1);
                                var url2=rtspUrl(vueobj.deviceParameters.deviceStatic,2);
                                var id2 = vlc2.playlist.add(url1, "fancy name", options);
                                vlc2.playlist.playItem(id2);

                            }catch (e) {
                                console.log(e)
                                this.$message.error('更换失败！');
                                try{
                                    vlc.playlist.stop()
                                }catch (e1) {
                                    this.$message.error('停止失败！');
                                }
                            }


                },
                // immediate: true,
                deep: true
            },
            'deviceManager.allDevice':{
                handler(newval, oldval) {
                    newval.forEach(function (item) {
                        // try{
                            loadModelJson(item['cameraModel'],item['x'],item['y'],item['z'],item);
                            buildPlane(item,vueobj.heatmapList,heatmapConf,threejs.scene)
                            // buildCanvas(vueobj.dataMonitoring.liveData)
                            buildCanvas2(vueobj.dataMonitoring.liveData)
                            dfs(threejs.scene,vueobj.deviceParameters.deviceStatic['id'])



                        // }catch (e) {
                        //     this.$message.error('载入模型失败！');
                        // }

                    });

                }
                ,deep: true
            },
            'dataMonitoring.liveData':{
                handler(newVal,oldVal){
                    // buildCanvas(newVal);
                    buildCanvas2(newVal);
                    for(var i=0;i<newVal.length;i++){
                        if(newVal[i]['alarmed'])continue;
                        if(newVal[i]['view']==1)continue;
                        try{
                            if(newVal[i].admins!=null&&newVal[i].admins.split(",").includes(id.toString())) {
                                var acticeId=newVal[i].id;
                                var time=newVal[i].createTime;
                                vueobj.$notify({
                                    title: waningString[newVal[i].type],
                                    message: "<div>设备: "+newVal[i].deviceName+" </div>" +
                                        "<div>检测到温度："+newVal[i].alarmTemperature+"</div>" +
                                        "<div style='width: 260px;\n" +
                                        "    text-align: right;'>"+time+"</div>",
                                    type: 'warning',
                                    duration:60000,
                                    position: 'top-left',
                                    offset: 0,
                                    dangerouslyUseHTMLString: true,
                                    onClick:function (e){
                                        layer.open({
                                            type: 2,
                                            title: '详情',
                                            shadeClose: true,
                                            shade: false,
                                            skin:'layui-layer-lan',
                                            maxmin: true, //开启最大化最小化按钮
                                            area: ['60%', '70%'],
                                            resize:true,
                                            offset: 'auto', //右下角弹出
                                            content: ['${rc.contextPath}/device/detail?id='+acticeId], //iframe的url，no代表不显示滚动条

                                        });
                                    }

                                });
                            }

                        }catch (e) {
                            console.log("split:error",e)
                        }
                        newVal[i]['alarmed']=1;



                    }
                    // for(var i=0;i<newVal.length;i++){
                    //     try{
                    //     if(newVal[i]['alarmed'])continue;
                    //     if(newVal[i].view!=null) {
                    //         if (newVal[i].view == 0 && newVal[i].type > 0) {
                    //             var aOp = 0;//1：alarm，2：prepera
                    //             if (newVal[i].type > 0 && newVal[i].type <= 2) {
                    //                 aOp = 1;
                    //             }
                    //             if (newVal[i].type > 4 && newVal[i].type <= 6) {
                    //                 aOp = 2;
                    //             }
                    //
                    //             var deviceId = newVal[i].deviceId;
                    //             for (var i = 0; i < vueobj.deviceManager.allDevice.length; i++) {
                    //                 if (vueobj.deviceManager.allDevice[i].id == deviceId) {
                    //                     var alarmList = [];
                    //                     if (aOp == 1) {
                    //                         alarmList = vueobj.deviceManager.allDevice[i].alarmType.split(',');
                    //
                    //                     }
                    //                     if (aOp == 2) {
                    //                         alarmList = vueobj.deviceManager.allDevice[i].prepareType.split(',');
                    //                     }
                    //                     for (var k = 0; k < vueobj.alarmList.length; k++) {
                    //                         if (alarmList.includes(vueobj.alarmList[k])) {
                    //                             vueobj.$notify({
                    //                                 title: waningString[newVal[i].type],
                    //                                 message: "设备：" + vueobj.deviceManager.allDevice[i].name + " 检测到温度：" + newVal[i].alarmTemperature,
                    //                                 type: 'warning'
                    //                             });
                    //                             newVal[i]['alarmed'] = 1;
                    //                             break;
                    //                         }
                    //                     }
                    //                     break;
                    //                 }
                    //             }
                    //         } else {
                    //             newVal[i]['alarmed'] = 2
                    //         }
                    //     }
                    //     }catch (e) {
                    //         console.log(e)
                    //     }
                    //
                    //      }
                }
                ,deep: true

            },



        },

    });
    checkBrowser();
    var vlc1 = document.getElementById("vlc1");
    var vlc2 = document.getElementById("vlc2");
    var options = new Array(":aspect-ratio=4:3", "--rtsp-tcp");




    var threejs=new ThreeJsC(document.querySelector("#app"),
        { composer:{
                switch:true,
            },
            event:{
                selectFunction:function (obj) {
                },
                clickFunction:function (ev,obj) {
                    try{
                        vueobj.deviceParameters.deviceStatic=  obj.userData.data;
                    }catch (e) {
                        console.log("3d点击事件出错",e)
                    }
                },
                isBindWindow:true
            }
        });

    test();
    function test() {
        // var heat1=document.querySelector(".heatmap-canvas");
        // var ctx1=heat1.getContext("2d");
        // ctx1.fillStyle="#8EFF79";
        // ctx1.globalCompositeOperation="destination-over";
        // ctx1.fillRect(0,0,256,256);







        var geometry = new THREE.PlaneGeometry( 160.884, 63.586, 10 );
        var textureCanvas=new THREE.CanvasTexture(document.querySelector("#bigmap").children[0]);
        // var material = new THREE.MeshBasicMaterial( {color: 0xffff00, side: THREE.DoubleSide} );

        var material =new THREE.MeshBasicMaterial( {side: THREE.DoubleSide,map:textureCanvas,transparent:true,needsUpdate:true,depthFunc:0,depthTest:false} );
        var plane = new THREE.Mesh( geometry, material );
        plane.rotation.x=heatmapConf['rotation'];
        plane.position.set(10.632,17.885,-19.440)
        plane.userData.id="plane"
        threejs.scene.add( plane );


        console.log("后平面",plane)

    }

    console.log("scene",threejs.scene)


    var loader = new THREE.ObjectLoader();


    function loadSceneJson(url) {
        loader.load(
            // 资源的URL
            "${rc.contextPath}"+url,

            // onLoad回调
            // Here the loaded data is assumed to be an object
            function ( obj ) {
                // Add the loaded object to the scene
                threejs.scene.add( obj );
                vueobj.load=false;
            },

            // onProgress回调
            function ( xhr ) {
                console.log( (xhr.loaded / xhr.total * 100) + '% loaded' );
            },

            // onError回调
            function ( err ) {
                console.error( 'An error happened' );
                vueobj.load=false;
            }
        );
    }







    var ajaxErrorFunc=function (e) {
        console.log("ajax",e);
        console.log("ajax-error",e);
    }



    var numberOfDeviceAjax={
        url: "${rc.contextPath}/device/getNumberOfDevice",
        type: "GET",
        dataType: "json",
        success: function (result) {
            if(result.code==200){
                vueobj.deviceManager.numberOfDevice=result.data;
            }

        },error:ajaxErrorFunc
    };



    var numberOfOnlineDeviceAjax={
        url: "${rc.contextPath}/device/getNumberOfOnlineDevice",
        type: "GET",
        dataType: "json",
        success: function (result) {
            if(result.code==200){
                vueobj.deviceManager.numberOfOnlineDevice=result.data;
            }

        },error:ajaxErrorFunc
    };


    var allDevice={
        url: "${rc.contextPath}/device/findAllDevice",
        type: "GET",
        dataType: "json",
        success: function (result) {
            if(result.code==200){
                vueobj.deviceManager.allDevice=result.data;
                if((vueobj.deviceParameters.deviceStatic['name']==null||vueobj.deviceParameters.deviceStatic['name']=='')&& vueobj.deviceManager.allDevice.length>0){
                    vueobj.deviceParameters.deviceStatic=vueobj.deviceManager.allDevice[0];
                }
            }

        },error:ajaxErrorFunc
    };

    var sceneInfo={
        url: "${rc.contextPath}/scene/getScene",
        type: "GET",
        dataType: "json",
        success: function (result) {
            if(result.code==200){
                vueobj.sceneInfo=result.data;
                if(result.data['url']!=''){
                    loadSceneJson(result.data['url']);
                }else {
                    console.log("无场景可以加载！")
                }

            }

        },error:ajaxErrorFunc
    };
    var realTimeDeviceActiveNormal={
        url: "${rc.contextPath}/device/findBaseDeviceActiveNormal",
        type: "GET",
        dataType: "json",
        success: function (result) {
            if(result.code==200){
                vueobj.dataMonitoring.liveData=result.data;
            }

        },error:ajaxErrorFunc
    };





    var realTimeDeviceActive={
        url: "${rc.contextPath}/device/findBaseRealTimeDeviceActiveNormal",
        type: "GET",
        dataType: "json",
        success: function (result) {
            if(result.code==200){
                for(var i=result.data.length-1;0<i;i--){
                    vueobj.dataMonitoring.liveData.splice(0,0,result.data[i]);
                }
                vueobj.liveDataChange();

            }

        },error:ajaxErrorFunc
    };


    var realTimeDeviceActiveAbnormal={
        url: "${rc.contextPath}/device/findBaseDeviceActiveAbnormal",
        type: "GET",
        dataType: "json",
        success: function (result) {
            if(result.code==200){
                vueobj.dataMonitoring.faultData=result.data;

            }

        },error:ajaxErrorFunc
    };

    $.ajax(sceneInfo);
    $.ajax(allDevice);
    // $.ajax(myAlarm);



    $.ajax(realTimeDeviceActiveNormal);
    $.ajax(realTimeDeviceActiveAbnormal);
    $.ajax(numberOfDeviceAjax);
    $.ajax(numberOfOnlineDeviceAjax);

    // var imgs=new ImgsView();
    // imgs.init();


    function dingshiqi(){
        if(vueobj.dataMonitoring.liveData.length==0)return;
        var id=vueobj.dataMonitoring.liveData[0].id;
        realTimeDeviceActive['data']={
            id:id,
        }
        $.ajax(realTimeDeviceActive);
        $.ajax(myAlarm)

    }


    // window.setInterval(dingshiqi,10000)



    function loadModelJson(url,x,y,z,data) {
        loader.load(
            // 资源的URL
            "${rc.contextPath}"+url,

            // onLoad回调
            // Here the loaded data is assumed to be an object
            function ( obj ) {
                // Add the loaded object to the scene
                try{
                    obj.position.set(x,z,y);
                    obj['children'][0]['children'][0].userData['selectAble']=true;
                    obj['children'][0]['children'][0].userData['clickAble']=true;
                    obj['children'][0]['children'][0].userData['data']=data;

                }catch (e) {
                    console.log("model位置初始化失败！");
                }

                threejs.scene.add( obj );
                dfs(threejs.scene,vueobj.deviceParameters.deviceStatic['id'])

            },

            // onProgress回调
            function ( xhr ) {
                console.log( (xhr.loaded / xhr.total * 100) + '% loaded' );
            },



            // onError回调
            function ( err ) {
                console.error( 'An error happened' );
            }
        );
    }


    //仅适用于IE浏览器是，并且安装有vlc插件，则返回true；
    function isInsalledIEVLC(){
        var vlcObj = null;
        var vlcInstalled= false;
        try {
            //此处是检测vlc安装的核心，经过亲测，貌似无效，具体原因不详，有可能是使用的版本问题，我目前使用的是2.2.6版本。
            vlcObj = new ActiveXObject("VideoLAN.Vlcplugin.1");
            if( vlcObj != null ){
                vlcInstalled = true
            }
        } catch (e) {
            vlcInstalled= false;
        }
        return vlcInstalled;
    }

    //仅适用于52版本以下的firefox浏览器是，并且安装有vlc插件，则返回true；
    function isInsalledFFVLC(){
        var numPlugins=navigator.plugins.length;
        for  (i=0;i<numPlugins;i++){
            plugin=navigator.plugins[i];
            if(plugin.name.indexOf("VideoLAN") > -1 || plugin.name.indexOf("VLC") > -1){
                return true;
            }
        }
        return false;
    }

    /* 浏览器检测 */
    function checkBrowser(){
        var browser=navigator.appName
        var b_version=navigator.appVersion
        var version=parseFloat(b_version)
        if ( browser=="Netscape"  && version>=4) {
            if(isInsalledFFVLC()){
                console.log("已装VLC插件");
            }else{
                console.log("未装VLC插件");
                console.log("未装VLC插件");
                vueobj.$message.error('未装VLC插件');
            }
        }else if(browser=="Microsoft Internet Explorer" && version>=4) {
            if(isInsalledIEVLC()){
                console.log("已装VLC插件");
            }else{
                console.log("未装VLC插件");
            }
        }
    }

    function rtspUrl(deviceManager,type) {
        return "rtsp://"+deviceManager['deviceUsername']+":"+deviceManager['devicePassword']+"@"+deviceManager['deviceIp']+':'+deviceManager['devicePort']+"/Streaming/Channels/"+type+"01?transportmode=unicast"
    }


    function buildPlane(device,heatmapList,heatmapConf,scene) {
        if(document.querySelector(("#device"+device['id']))!=null){
            document.querySelector(("#device"+device['id'])).remove()
            deletPlane(device,scene)
        }
        var heatMapP=document.createElement("div");
        heatMapP.setAttribute("id","device"+device['id'])
        heatMapP.style.height=heatmapConf.canvasSize+"px"
        heatMapP.style.width=heatmapConf.canvasSize+"px"
        heatMapP.style.display="none"
        document.body.append(heatMapP)


        var heatmapInstance = h337.create({
            container: heatMapP,
            radius:heatmapConf.drawR,
        });

        heatmapInstance.deviceId=device['id']
        heatmapInstance.startingAngle=device['startingAngle']
        heatmapInstance.basePlanel=device['basePlanel']


        // var heatmap=document.createElement("canvas");
        // heatmap.setAttribute("width",heatmapConf['canvasSize'])
        // heatmap.setAttribute("height",heatmapConf['canvasSize'])
        // heatmap.setAttribute("deviceid",device['id'])
        // heatmap.setAttribute("startingAngle",device['startingAngle'])
        // heatmap.setAttribute("basePlanel",device['basePlanel'])
        // var ctx=heatmap.getContext("2d");
        // ctx.globalAlpha=heatmapConf['canvasGlobalAlpha']
        // ctx.fillStyle=heatmapConf['canvasBackground']
        // ctx.fillRect(0,0,heatmap.width,heatmap.height)

        // var geometry = new THREE.CircleGeometry( device['basePlanel'],heatmapConf['Segments'] );
        var geometry = new THREE.PlaneGeometry(  device['basePlanel'], device['basePlanew'], heatmapConf['Segments'] );
        var textureCanvas=new THREE.CanvasTexture(heatMapP.children[0]);
        textureCanvas.needsUpdate=true;
        var material = new THREE.MeshBasicMaterial( {side: THREE.DoubleSide,map:textureCanvas,transparent:true,needsUpdate:true,depthFunc:0,depthTest:false} );
        var plane = new THREE.Mesh( geometry, material );
        plane.userData['planeId']=device['id'];
        plane.position.set(device['x'],device['basePlanez'],device['y'])
        plane.rotation.x=heatmapConf['rotation']
        var planeItem={
            id:device['id'],
            plane:plane
        };
        planeList.push(planeItem)
        scene.add(plane)
        vueobj.heatmapList.push(heatmapInstance);

    }

    function dfs(obj,id)    {
        if(obj.userData.hasOwnProperty("data")){
            if(obj.userData['data']['id']==id){
                threejs.outlinePassGreen.selectedObjects.pop();
                threejs.outlinePassGreen.selectedObjects.push(obj);
                console.log("递归查到的obj",obj)
                return ;
            }

        }
        if(obj['children']){
            if(obj['children'].length>0){
                obj['children'].forEach(function (item) {
                    dfs(item,id)
                })
            }
        }

    }

    function dfsFindById(obj,id) {
        if(obj.userData['id']==id){
            console.log("通过id找到的对象",obj);
            obj.material.map.needsUpdate=true;
            return obj;
        }else{
            if(obj['children']){
                obj['children'].forEach(function (item) {
                    dfsFindById(item,id)
                })
            }

        }
    }

    function buildCanvas(liveData){
        if(vueobj.heatmapList.length<=0)return;
        var center=heatmapConf.canvasSize/2;
        var dataGroupData=groupLiveData(liveData);
        var maxTemperature_Global=0;
        var minTemperature_Global=0;
        var avgTemperature_Global=0;


        vueobj.heatmapList.forEach(function (item) {
            var dataGroup = dataGroupData.get(item["deviceId"])||[]
            // var dataGroup = dataGroupData.get(parseInt(item.getAttribute("deviceid")))||[]

            //从1开始遍历
            for(var i=1;i<dataGroup.length;i++){
                if(dataGroup[i]['maxTemperature']>maxTemperature_Global)maxTemperature_Global=dataGroup[i]['maxTemperature'];
                if(dataGroup[i]['minTemperature']<minTemperature_Global)minTemperature_Global=dataGroup[i]['minTemperature'];
            }

        });
        avgTemperature_Global=(maxTemperature_Global+minTemperature_Global)/2;
        vueobj.heatmapList.forEach(function (item) {
            var data={
                max:maxTemperature_Global,
                min:minTemperature_Global,
                data:[]
            }
            // var ctx=item.getContext("2d");
            // ctx.globalAlpha=heatmapConf['canvasGlobalAlpha']*0.5


            var dataGroup = dataGroupData.get(item["deviceId"])||[];
            var startingAngle=item["startingAngle"];
            var p=heatmapConf.canvasSize/2*0.7;
            var r=heatmapConf.canvasSize/2-p;
            var maxTemperature=0;
            var minTemperature=0;
            var avgTemperature=0;
            for(var i=1;i<dataGroup.length;i++){
                if(dataGroup[i]['maxTemperature']>maxTemperature)maxTemperature=dataGroup[i]['maxTemperature'];
                if(dataGroup[i]['minTemperature']>minTemperature)minTemperature=dataGroup[i]['minTemperature'];
            }
            avgTemperature=(avgTemperature-minTemperature)/2;


            for(var i=1;i<dataGroup.length;i++){

               var highAngle=startingAngle+heatmapConf.viewingAngle*dataGroup[i]['presetPosition']+heatmapConf.viewingAngle*dataGroup[i]['highestX'];
               var highP=p*dataGroup[i]['highestY'];
               var hightPoint= coordinateTransformation(highAngle,highP,center,dataGroup[i]['maxTemperature'],20 );
                // drawCanvas(maxAndMinLocation.hight.x,maxAndMinLocation.hight.y,maxTemperature_Global,minTemperature_Global,  dataGroup[i]['maxTemperature']   ,heatmapConf.drawR,ctx,heatmapConf.canvasGlobalAlpha)
                var lowAngle=startingAngle+heatmapConf.viewingAngle*dataGroup[i]['presetPosition']+heatmapConf.viewingAngle*dataGroup[i]['lowestX'];
                var lowP=p*dataGroup[i]['lowestY'];
                var lowestPoint=coordinateTransformation(lowAngle,lowP,center,heatmapConf.canvasGlobalAlpha,dataGroup[i]['minTemperature'],20);
                data.data.push(hightPoint)
                data.data.push(lowestPoint)


                // drawCanvas(maxAndMinLocation.min.x,maxAndMinLocation.min.y,maxTemperature_Global,minTemperature_Global,  dataGroup[i]['minTemperature']   ,heatmapConf.drawR,ctx,heatmapConf.canvasGlobalAlpha)

            }
            item.setData(data);

            for(var i=0;i<threejs.scene.children.length;i++){
                if(threejs.scene.children[i].userData.hasOwnProperty("planeId")&&threejs.scene.children[i].userData['planeId']==item["deviceId"]){
                    threejs.scene.children[i].material.map.needsUpdate = true;
                    break;
                }
            }



        });
        // console.log("planeList",planeList)





    }

    function buildCanvas2(liveData){
        if(vueobj.heatmapList.length<=0)return;
        var center=heatmapConf.canvasSize/2;
        var dataGroupData=groupLiveData(liveData);
        var maxTemperature_Global=0;
        var minTemperature_Global=0;
        var avgTemperature_Global=0;
        var p=heatmapConf.canvasSize/2*0.7;
        var r=heatmapConf.canvasSize/2-p;
        var startingAngle=0;
        vueobj.heatmapList.forEach(function (item) {
            var dataGroup = dataGroupData.get(item["deviceId"])||[]
            // var dataGroup = dataGroupData.get(parseInt(item.getAttribute("deviceid")))||[]

            //从1开始遍历
            for(var i=1;i<dataGroup.length;i++){
                if(dataGroup[i]['maxTemperature']>maxTemperature_Global)maxTemperature_Global=dataGroup[i]['maxTemperature'];
                if(dataGroup[i]['minTemperature']<minTemperature_Global)minTemperature_Global=dataGroup[i]['minTemperature'];
            }

        });
        avgTemperature_Global=(maxTemperature_Global+minTemperature_Global)/2;



        var heatmapData={
            max:maxTemperature_Global,
            min:minTemperature_Global,
            data:[]
        };
        dataGroupData.forEach(function(value,key){
            console.log(value,key);

            var dataGroup=value;
            var device=getDevice(key)


            for(var i=1;i<dataGroup.length;i++){

                var highAngle=device.startingAngle+heatmapConf.viewingAngle*dataGroup[i]['presetPosition']+heatmapConf.viewingAngle*dataGroup[i]['highestX'];
                var highP=10*dataGroup[i]['highestY'];
                var hightPoint= coordinateTransformation(highAngle,highP,0,dataGroup[i]['maxTemperature'],0 );
                // drawCanvas(maxAndMinLocation.hight.x,maxAndMinLocation.hight.y,maxTemperature_Global,minTemperature_Global,  dataGroup[i]['maxTemperature']   ,heatmapConf.drawR,ctx,heatmapConf.canvasGlobalAlpha)
                var lowAngle=device.startingAngle+heatmapConf.viewingAngle*dataGroup[i]['presetPosition']+heatmapConf.viewingAngle*dataGroup[i]['lowestX'];
                var lowP=10*dataGroup[i]['lowestY'];
                var lowestPoint=coordinateTransformation(lowAngle,lowP,0,dataGroup[i]['minTemperature'],0);

                console.log("xxxxxraw",hightPoint)
                console.log("xxxxxraw",lowestPoint)

                hightPoint.x-=a.x;
                hightPoint.x+=device.x;


                hightPoint.y-=a.y;
                hightPoint.y+=device.y;
                hightPoint.y=-hightPoint.y


                lowestPoint.x-=a.x;
                lowestPoint.x+=device.x;

                lowestPoint.y-=a.y;
                lowestPoint.y+=device.y;
                lowestPoint.y=-lowestPoint.y


                hightPoint.x=parseInt(hightPoint.x*10)
                hightPoint.y=parseInt(hightPoint.y*10)
                lowestPoint.y=parseInt(lowestPoint.y*10)
                lowestPoint.y=parseInt(lowestPoint.y*10)


                console.log("hightPoint:",hightPoint)
                console.log("lowestPoint:",lowestPoint)

                heatmapData.data.push(hightPoint)
                heatmapData.data.push(lowestPoint)


                // drawCanvas(maxAndMinLocation.min.x,maxAndMinLocation.min.y,maxTemperature_Global,minTemperature_Global,  dataGroup[i]['minTemperature']   ,heatmapConf.drawR,ctx,heatmapConf.canvasGlobalAlpha)

            }



        });

        heatmapInstance.setData(heatmapData)
        for(var i=0;i<threejs.scene.children.length;i++){
            dfsFindById(threejs.scene.children[i],"plane")
        }




        // vueobj.heatmapList.forEach(function (item) {
        //     var data={
        //         max:maxTemperature_Global,
        //         min:minTemperature_Global,
        //         data:[]
        //     }
        //     // var ctx=item.getContext("2d");
        //     // ctx.globalAlpha=heatmapConf['canvasGlobalAlpha']*0.5
        //
        //
        //     var dataGroup = dataGroupData.get(item["deviceId"])||[];
        //     var startingAngle=item["startingAngle"];
        //     var p=heatmapConf.canvasSize/2*0.7;
        //     var r=heatmapConf.canvasSize/2-p;
        //     var maxTemperature=0;
        //     var minTemperature=0;
        //     var avgTemperature=0;
        //     for(var i=1;i<dataGroup.length;i++){
        //         if(dataGroup[i]['maxTemperature']>maxTemperature)maxTemperature=dataGroup[i]['maxTemperature'];
        //         if(dataGroup[i]['minTemperature']>minTemperature)minTemperature=dataGroup[i]['minTemperature'];
        //     }
        //     avgTemperature=(avgTemperature-minTemperature)/2;
        //
        //
        //     for(var i=1;i<dataGroup.length;i++){
        //
        //         var highAngle=startingAngle+heatmapConf.viewingAngle*dataGroup[i]['presetPosition']+heatmapConf.viewingAngle*dataGroup[i]['highestX'];
        //         var highP=p*dataGroup[i]['highestY'];
        //         var hightPoint= coordinateTransformation(highAngle,highP,center,dataGroup[i]['maxTemperature'],r );
        //         // drawCanvas(maxAndMinLocation.hight.x,maxAndMinLocation.hight.y,maxTemperature_Global,minTemperature_Global,  dataGroup[i]['maxTemperature']   ,heatmapConf.drawR,ctx,heatmapConf.canvasGlobalAlpha)
        //         var lowAngle=startingAngle+heatmapConf.viewingAngle*dataGroup[i]['presetPosition']+heatmapConf.viewingAngle*dataGroup[i]['lowestX'];
        //         var lowP=p*dataGroup[i]['lowestY'];
        //         var lowestPoint=coordinateTransformation(lowAngle,lowP,center,heatmapConf.canvasGlobalAlpha,dataGroup[i]['minTemperature'],r);
        //         data.data.push(hightPoint)
        //         data.data.push(lowestPoint)
        //
        //
        //         // drawCanvas(maxAndMinLocation.min.x,maxAndMinLocation.min.y,maxTemperature_Global,minTemperature_Global,  dataGroup[i]['minTemperature']   ,heatmapConf.drawR,ctx,heatmapConf.canvasGlobalAlpha)
        //
        //     }
        //     item.setData(data);
        //
        //
        //
        //
        //
        // });
        // console.log("planeList",planeList)





    }

    /**
     * 拉取各device的8个相位坐标数据
     * @param liveData
     * @returns {Map<any, any>}  key是deviceId，value是array  注意：value是index从1-8的的array，index=0为空
     *
     */
    function groupLiveData(liveData) {
        var result=new Map();//device:
        var groupMap=new Map();
        liveData.forEach(function (item) {
            if(groupMap.has(item['deviceId'])){
                groupMap.get(item['deviceId']).push(item);
            }else {
                groupMap.set(item['deviceId'],[item]);
            }
        });

        for(let item of groupMap) {
            var arr=[];
            for(var i=item[1].length-1;0<=i;i--){
                arr[item[1][i]['presetPosition']]=item[1][i];
            }
            try{
                result.set(arr[1]['deviceId'],arr);//返回arr[0]=empty
            }catch (e) {

            }

        }
        return result;
    }

    // function getColor(max,min,value) {
    //     if(Math.abs(value-min<0.1))return colorFul[0];
    //     var index=parseInt((value-min)/(max-min)*colorFul.length)-1;
    //     return colorFul[index];
    //
    // }
    function  coordinateTransformation(angle,p,center,val,d) {
        var location={x:0,y:0,value:val};
        location.x=parseInt(Math.cos(angle*(Math.PI/180))*(p+d)+center)
        location.y=parseInt(Math.sin(angle*(Math.PI/180))*(p+d)+center)
        return location;
    }

    function drawCanvas(x,y,maxT,minT,t,r,ctx,globalAlpha) {
        var color=getColor(maxT,minT,t);
        var standardValue=(t-minT)/(maxT-minT);
        var t1=0;
        var t2=0;
        var t3=0;
        var delta1=0.1;
        var delta2=0.3;
        var delta3=0.35;
        if(standardValue>0.5){
           t1=t-delta1*t;
           t2=t-delta2*t;
           t3=t-delta3*t;
        }else {
            t1=t+delta1*t;
            t2=t+delta2*t;
            t3=t+delta3*t;
        }
        ctx.globalAlpha=globalAlpha
        var grd2 = ctx.createRadialGradient(x,y,r,x,y,0);
        grd2.addColorStop(0, getColor(maxT,minT,t3));
        grd2.addColorStop(0.3, getColor(maxT,minT,t2));
        grd2.addColorStop(0.5, getColor(maxT,minT,t1));
        grd2.addColorStop(1, color);
        ctx.fillStyle = grd2;
        ctx.beginPath();
        ctx.arc(x,y,r,0,2*Math.PI);
        ctx.fill();






    }


    function deletPlane(device,scene) {
        for(var i=0;i<planeList.length;i++){
            if(planeList[i].id==device['id']){
                scene.remove(planeList[i].plane);
                planeList.splice(i,1)
                break;
            }
        }

    }


    echarts.registerTheme('mac',theme);
    var myChart=null;
    myChart = echarts.init(document.getElementById('echart'));



    var option = {
        title:{text:'',textAlign :'center',left:'center'},
        legend: {
                    x:'left',
                    data:['高温','低温']
                },
        dataZoom : {
                    show : true,
                    realtime : true,
                },
        xAxis: {
            type: 'category',
            data: []
        },
        yAxis: {
            type: 'value'
        },
        series: [{
            name:'高温',
            data: [],
            type: 'line',
            itemStyle:{
                normal:{lineStyle:{color:'#ff0006'}}
            }
        },{
            name:'低温',
            data: [],
            type: 'line',
            itemStyle:{
                                normal:{lineStyle:{color:'#85bfff'}}
                            }
        },]
    };
    // var option = {
    //     tooltip : {
    //         trigger: 'axis'
    //     },
    //     legend: {
    //         x:'left',
    //         data:['正常','超时']
    //     },
    //     toolbox: {
    //         show : true,
    //         feature : {
    //             mark : {show: true},
    //             dataZoom : {show: true},
    //             magicType : {show: true, type: ['line', 'bar']},
    //             restore : {show: true},
    //
    //         }
    //     },
    //     calculable : true,
    //     dataZoom : {
    //         show : true,
    //         realtime : true,
    //         start : 20,
    //         end : 80
    //     },
    //     xAxis : [
    //         {
    //             type : 'category',
    //             boundaryGap : false,
    //             data :[]
    //         }
    //     ],
    //     yAxis : [
    //         {
    //             type : 'value'
    //         }
    //     ],
    //     series : [
    //         {
    //             name:'正常',
    //             type:'line',
    //             data:[],
    //             itemStyle:{
    //                 normal:{lineStyle:{color:'#00ff11'}}
    //             }
    //         },
    //         {
    //             name:'超时',
    //             type:'line',
    //             data:[], itemStyle:{
    //                 normal:{lineStyle:{color:'#ff0006'}}
    //             }
    //         }
    //     ]
    // };


    var myAlarm={
        url: "${rc.contextPath}/device/countDev",
        type: "GET",
        data:{
            id:'',
            lid:''
        },
        dataType: "json",
        success: function (result) {
            if(result.code==200){
                option.title.text=result.data.deviceName;
                option.xAxis.data=result.data['time'];
                option.series[0].data=result.data['max'];
                option.series[1].data=result.data['min'];
                myChart.setOption(option);

            }

        },error:ajaxErrorFunc
    };

    // $.ajax(myAlarm)
    


</script>



</@layout>;