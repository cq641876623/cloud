<#include "chen_model.ftl">
<#macro css>
    <link rel="icon" href="${rc.contextPath}/images/title_icon/监控.png">
    <link rel="stylesheet" href="${rc.contextPath}/js/vue/elementui.css">
</#macro>
<#macro js>
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
</#macro>
<@layout "home">
    <div id="app">
        <cq-view imgUrl="
                /fws/8475ff07-0aee-4f5a-9345-ce209c7acb8a.jpeg,
                /fws/3c77a640-4c66-4bda-8cfa-ddb235101086.jpeg,
        "></cq-view>
    </div>
    <script>
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
                    return this.imgurl.split(",");
            }
        }

        })
        var vue=new Vue({
            el:'#app'
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