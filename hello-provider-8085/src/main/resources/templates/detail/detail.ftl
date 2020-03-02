<#include "chen_model.ftl">

<#macro css>
    <link rel="icon" href="${rc.contextPath}/images/title_icon/监控.png">
    <link rel="stylesheet" href="${rc.contextPath}/js/vue/elementui.css">
    <link rel="stylesheet" href="${rc.contextPath}/js/vue/muse-ui.css">
</#macro>
<#macro js>


    <script src="${rc.contextPath}/js/vue/elementui.js"></script>
    <script src="${rc.contextPath}/js/vue/muse-ui.js"></script>


</#macro>
<#macro style>
<style>
    @media (min-width: 576px){
        .container{max-width: 540px;}
    }
    @media (min-width: 768px){
        .container{max-width: 720px;}
        .cq-col{
            flex: 0 0 41.66667%;
            max-width: 41.66667%;
        }
    }
    @media (min-width: 992px){
        .container{max-width: 960px;}

    }

    @media (min-width: 1200px){
        .container{ max-width: 1140px;}
    }

    .container{

        margin-right: auto;
        margin-left: auto;
        width: 100%;
    }

    .cq-page-body{
        display: flex;
        flex-wrap: wrap;
        align-items:center;
        justify-content: space-around;
        padding: 10px;

    }

    .cq-title-header{
        font-size: 18px;
        line-height: 24px;
        position: relative;
        height: 36px;
        padding: 4px 0;
        color: #f96e40;
        border-bottom: 1px solid #f96e40;
        margin-top: 15px;

    }
    .cq-detail-body{
        background: #f7f7f7;
    }
</style>

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
            line-height: 44px;
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
</#macro>






<@layout "detail">
    <div id="app" class="container">
        <div class="cq-title-header" >
            01 探测详情
        </div>
        <div class="cq-detail-body">
            <div class="cq-page-body">
                <div class="cq-col">
                <span>
                    设备名称：
                </span>
                    <span>
                    <#if deviceActive??>
                        ${deviceActive.deviceName}
                    </#if>
                </span>
                </div>
                <div class="cq-col">
                <span>
                    类型：
                </span>
                    <span>
                    <#if deviceActive??>
                        ${deviceActive.typeName}
                    </#if>
                </span>
                </div>
            </div>
            <div class="cq-page-body">
                <div class="cq-col">
                <span>
                    报警类型：
                </span>
                    <span>
                    <#if deviceActive??>
                        ${deviceActive.typeName}
                    </#if>
                </span>
                </div>
                <div class="cq-col">
                <span>
                    时间：
                </span>
                    <span>
                    <#if deviceActive??>
                        ${deviceActive.createTime?string('yyyy-MM-dd hh:mm:ss')}
                    </#if>
                </span>
                </div>
            </div>

            <div class="cq-page-body">
                <div class="cq-col">
                <span>
                    最高温：
                </span>
                    <span>
                    <#if deviceActive??>
                        ${deviceActive.maxTemperature}
                    </#if>
                </span>
                </div>
                <div class="cq-col">
                <span>
                    最低温：
                </span>
                    <span>
                    <#if deviceActive??>
                        ${deviceActive.minTemperature}
                    </#if>
                </span>
                </div>
            </div>

            <#if deviceActive.alarmTemperature??>
                <div class="cq-page-body">
                    <div class="cq-col" style="color: red">
                            <span>
                                报警温度：
                            </span>
                        <span >
                                <#if deviceActive??>
                                    ${deviceActive.alarmTemperature}
                                </#if>
                            </span>
                    </div>
                    <div class="cq-col" style="color: red"></div>
                </div>

                <div class="cq-page-body">
                    <div class="cq-col" style="color: red">
                <span>
                    警报阅览：
                </span>
                        <span >
                    <#if deviceActive.read?? &&  deviceActive.read==1>

                        未读
                    <#else>
                       ${deviceActive.viewAdminName}  已读
                    </#if>

                </span>
                    </div>
                    <div class="cq-col" style="color: red">
                        <#if deviceActive.readTime?? >
                            <span >
                        警报阅览时间：
                        </span>
                            <span>
                             ${deviceActive.readTime?string('yyyy-MM-dd hh:mm:ss')}
                        </span>


                        </#if>

                    </div>
                </div>
            </#if>




        </div>
 <#if deviceActive.alarmTemperature??>
        <div class="cq-title-header" >
            01 报警截图
        </div>
        <div class="cq-detail-body">
            <cq-view imgUrl="
            <#list deviceActive.alarmScreenshots?split(",") as imgurl>
                ${rc.contextPath+"/"+imgurl+","}
            </#list>
        "></cq-view>
        </div>
 </#if>

    </div>








    </div>
    <script>

        var insertDeviceDetail={
            url: "${rc.contextPath}/device/insertDeviceDetail",
            type: "POST",
            dataType: "json",
            contentType: "application/json",
            success: function (result) {
                if(result.code==200){
                    parent.vueobj.$message({
                        type: 'success',
                        message: '修改成功!'
                    });
                    parent.vueobj.reloadTable();
                    parent.layer.closeAll();

                }else {
                    vueobj.$message({
                        message: result.msg,
                        type: 'warning'
                    });
                }

            },error:ajaxErrorFunc
        };

        var ajaxErrorFunc=function (e) {
            console.log("ajax",e);
            console.log("ajax-error",e);
        }

        Vue.component('cq-view', {
            props: ['imgurl'],
            template: "<div class=\"cq-imgs-box\"><div class=\"cq-imgs-viewbox\">" +
                " <a class=\"cq-img-contrain\" target=\"_blank\"  v-for='i in dealimg()'>\n" +
                "<img  class=\"cq-img\" v-bind:src='i'/>" +
                "                                            </a>" +
                "</div></div>",
            data: function () {
                return {
                    imgList: []
                }
            },
            methods:{
                dealimg(){
                    console.log(this.imgurl)
                    var a=this.imgurl.split(",");
                    for (var i=0;i<a.length;i++){
                        if(a[i]==null||a[i].trim()==''){
                            a.splice(i,1);
                        }
                    }
                    return a;
                }
            }

        })
        var vueobj=new Vue({
            el:'#app',
            data(){
                return {

                };
            },
            methods:{

            }
        });
        var ImgsView=function () {
            this.imgsBox=document.querySelectorAll(".cq-imgs-box");
            var leftScroll=document.createElement("div");
            var rightScroll=document.createElement("div");
            this.leftScrollLeftShow="&lt;";
            this.leftScrollRightShow="&gt;";
            this.allLeftScroll=null;
            this.allRightScroll=null;
            this.init=function () {
                this.createScrollBtn();
                this.addScrollBtnEvent();
                this.zoom();
            }
            this.createScrollBtn=function () {
                leftScroll.classList.add("cq-imgs-view-btn");
                leftScroll.classList.add("cq-imgs-view-left-btn");
                rightScroll.classList.add("cq-imgs-view-btn");
                rightScroll.classList.add("cq-imgs-view-right-btn");
                leftScroll.innerHTML=this.leftScrollLeftShow;
                rightScroll.innerHTML=this.leftScrollRightShow;
                this.imgsBox.forEach(function (item){
                    item.append(leftScroll.cloneNode(true));
                    item.append(rightScroll.cloneNode(true));
                });
            }

            this.addScrollBtnEvent=function () {
                this.allLeftScroll=document.querySelectorAll(".cq-imgs-view-left-btn");
                this.allRightScroll=document.querySelectorAll(".cq-imgs-view-right-btn");
                this.allLeftScroll.forEach(function (item) {

                    var viewBox=item.parentElement.getElementsByClassName("cq-imgs-viewbox")[0];
                    if(viewBox==null)return;

                    var leftMouseDownTime=null;


                    item.addEventListener("mousedown",function (evt) {
                        leftMouseDownTime=setInterval(function () {
                            viewBox.scrollTo(viewBox.scrollLeft-5,0);
                        },10);
                    });
                    item.addEventListener("mouseup",function (evt) {
                        clearInterval(leftMouseDownTime);
                    });
                });

                this.allRightScroll.forEach(function (item) {
                    var viewBox=item.parentElement.getElementsByClassName("cq-imgs-viewbox")[0];
                    var rightMouseDownTime=null;
                    item.addEventListener("mousedown",function (evt) {
                        rightMouseDownTime=setInterval(function () {
                            viewBox.scrollTo(viewBox.scrollLeft+5,0);
                        },10);
                    });
                    item.addEventListener("mouseup",function (evt) {
                        clearInterval(rightMouseDownTime);
                    });


                });

            }
            var imgZoomIn=function (e) {
                e.target.classList.replace("cq-img-big","cq-img");
                e.target.addEventListener("click",imgZoomOut);
            }
            var imgZoomOut=function (e) {
                e.target.classList.replace("cq-img","cq-img-big");
                e.target.removeEventListener('click',imgZoomOut);
                e.target.addEventListener('click',imgZoomIn);
            }

            this.zoom=function () {
                var contrain=document.querySelectorAll(".cq-img");
                contrain.forEach(function (item) {
                    item.addEventListener("click",imgZoomOut);
                });
            }

        }
        var imgs=new ImgsView();
        imgs.init();
    </script>


</@layout>