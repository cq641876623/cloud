<#include "chen_model.ftl">

<#macro css>
    <link rel="icon" href="${rc.contextPath}/images/title_icon/监控.png">
    <link rel="stylesheet" href="${rc.contextPath}/js/vue/elementui.css">
    <link rel="stylesheet" href="${rc.contextPath}/js/vue/muse-ui.css">
    <link rel="stylesheet" href="${rc.contextPath}/css/index.css">
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


    <style>
        .cq-ifram{
            position: fixed;
            width: calc(100% - 170px);
            right: 0px;
            bottom: 0px;
            margin: 5px;
            height: calc(100% - 90px);
            border-radius: 5px;
            box-shadow: rgba(0, 0, 0, 0.1) 15px 10px 10px -2px;
        }
    </style>
</#macro>






<@layout "setting">

    <div id="app" class="container">
        <div class="cq-page-header " style="justify-content: end!important;">
            <div class="">
                <div id="title" >
                    <div style="font-size: 13px;">Ramo Fire Warning System</div>
                    <div>火灾预警系统</div>
                </div>
            </div>
        </div>
        <div style="position: fixed;
                                display: flex;
                                right: 10px;
                                line-height: 32px;
z-index: 9999;
                                 justify-content: space-around;
                                top: 10px; ">
            <a style="
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
                    <el-dropdown-item><a href="${rc.contextPath}/logout" style="text-decoration:none">注销</a></el-dropdown-item>
                </el-dropdown-menu>

            </el-dropdown>
        </div>
        <el-menu
                style="position: fixed;width: 160px;left: 0;bottom: 0;height: calc(100% - 80px);"
                default-active="0"
                class="el-menu-vertical-demo"
        >

            <#if menus??>
                <#list menus as  menu >

                    <el-menu-item index="${menu_index}" v-on:click="iframeUrl='${rc.contextPath}${menu.url}'">
                        <i class="${menu.icon}"></i>
                        <span slot="title">${menu.menuName}</span>
                    </el-menu-item>
                </#list>
            </#if>





        </el-menu>

       <iframe class="cq-ifram"  frameborder="no" border="0" marginwidth="0" marginheight="0" style=""
        :src="iframeUrl"
       ></iframe>



    </div>










    <script>
        var vueobj=new Vue({
            el:'#app',
            data(){
                return {
                    iframeUrl:'${rc.contextPath}/home'
                };
            },
            methods:{

            }
        });

    </script>


</@layout>