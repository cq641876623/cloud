<#include "chen_model.ftl">

<#macro css>
    <link rel="icon" href="${rc.contextPath}/images/title_icon/监控.png">
    <link rel="stylesheet" href="${rc.contextPath}/js/vue/elementui.css">
    <link rel="stylesheet" href="${rc.contextPath}/js/vue/muse-ui.css">
    <link rel="stylesheet" href="${rc.contextPath}/css/index.css">
    <link rel="stylesheet" href="${rc.contextPath}/js/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${rc.contextPath}/js/ztree/css/metroStyle/metroStyle.css" media="all">
<#--    <link rel="stylesheet" href="${rc.contextPath}/js/ztree/css/zTreeStyle/zTreeStyle.css" >-->
</#macro>
<#macro js>


    <script src="${rc.contextPath}/js/vue/elementui.js"></script>
    <script src="${rc.contextPath}/js/vue/muse-ui.js"></script>
    <script src="${rc.contextPath}/js/layui/layui.js"></script>
    <script src="${rc.contextPath}/js/ztree/jquery.ztree.all-3.5.js"></script>
    <script src="${rc.contextPath}/js/Jquery/jquery-migrate.js"></script>
<#--    <script src="https://cdn.bootcss.com/jquery-migrate/3.0.0/jquery-migrate.js"></script>-->

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
        .cq-tag {
            user-select: none;
            outline: none;
            -webkit-appearance: none;
            align-items: center;
            padding: 3px;
            line-height: 1.5;
            font-size: 12px;
            font-style: normal;
            color: #fff;
            border-radius: 3px;
            overflow: hidden;
        }

        .cq-tag-blue {
            background-color: #2196f3;
        }

        .cq-tag-greeen{
              background-color: #4caf50;

          }
        .cq-tag-red{
            background-color:  #f44336;

        }

    </style>


    <style>
        ::-webkit-scrollbar{
            width: 10px!important;
            height: 10px!important;
            -webkit-appearance: none;
            background: #f1f1f1;}
        ::-webkit-scrollbar-thumb{
            height: 5px;
            border: 1px solid transparent;
            border-top: 0;
            border-bottom: 0;
            border-radius: 6px;
            background-color: #ccc;
            background-clip: padding-box;
        }
    </style>

    <style>
        .el-input{
            width: auto!important;

        }
        .el-input__inner{
            height: 25px;
        }
        .el-input.is-disabled .el-input__inner{
            color: black!important;
        }
    </style>

</#macro>






<@layout "setting">

    <div id="app" style="">
        <div style="margin: 10px;">
            <span>名称：</span>
            <el-input
                    placeholder="请输入内容"
                    v-model="role['name']"
                    <#if type??&&type==0>
                        :disabled="true"
                    </#if>
            >
            </el-input>
        </div>


        <div id="ztree" class="ztree"></div>

        <#if type??&&type==1>
            <div style="display: flex;justify-content: center;">
                <mu-button color="success" @click="update">保存</mu-button>
            </div>
        </#if>
        <#if type??&&type==2>
            <div style="display: flex;justify-content: center;">
                <mu-button color="success" @click="insert">新建</mu-button>
            </div>
        </#if>


    </div>


    <script>
        var zTreeObj,
            setting = {
                check: {
                    enable: true    ,
                },

                view: {
                    selectedMulti: false
                },
                data: {

                    simpleData: {
                        enable: true,
                        idKey: "id",
                        pIdKey: "parentId",

                    }
                }

            };
        var loadAllAuth={
            url: "${rc.contextPath}/roles/loadAllAuth",
            type: "GET",
            dataType: "json",
            contentType: "application/json",
            success: function (result) {
                if(result.code==200){

                    for(var i=0;i<result.data.length;i++){
                        result.data[i].icon=null;
                        result.data[i].name+="("+result.data[i].description+")"

                    }

                    zTreeObj = $.fn.zTree.init($('#ztree'), setting, result.data);
                    <#if type??&&type<2>
                        $.ajax(getAuth);
                    </#if>

                }

            },error:ajaxErrorFunc
        }

        $.ajax(loadAllAuth);




        var getAuth={
            url: "${rc.contextPath}/roles/getAuth",
            type: "GET",
            dataType: "json",
            data:{
                <#if id??>
                    id:${id}
                </#if>

            },
            contentType: "application/json",
            success: function (result) {
                if(result.code==200){
                    vueobj.role=result.data;
                    var authList=result.data['authorities'].split(",");
                    for(var i=0;i<authList.length;i++){
                        var node = zTreeObj.getNodeByParam("id", authList[i], null);
                        zTreeObj.checkNode(node, true, false);
                    }
                }else {
                    vueobj.$message({
                        message: result.msg,
                        type: 'warning'
                    });
                }

            },error:ajaxErrorFunc
        };

        var insertTable={
            url: "${rc.contextPath}/roles/insertRole",
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
        }


        var updateRole={
            url: "${rc.contextPath}/roles/updateRole",
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
        }

        var vueobj=new Vue({
            el:'#app',
            data(){
                return {
                    role:{
                        id:'',
                        name:'',
                        authorities:'',
                        status:'',
                        createTime:'',
                        updateTime:''
                    }
                };
            },
            methods:{
                update(){
                    var nodes=zTreeObj.getCheckedNodes(true);
                    var auth='';
                    nodes.forEach(function (item) {
                        auth+=item['id']+",";
                    })
                    if(auth.length>0){
                        auth=auth.substring(0,auth.length-1);
                    }
                    this.role['authorities']=auth;

                    console.log(auth)
                    updateRole['data']=JSON.stringify(this.role);
                    $.ajax(updateRole);
                },
                insert(){
                    var nodes=zTreeObj.getCheckedNodes(true);
                    var auth='';
                    nodes.forEach(function (item) {
                        auth+=item['id']+",";
                    })
                    if(auth.length>0){
                        auth=auth.substring(0,auth.length-1);
                    }
                    this.role['authorities']=auth;
                    this.$confirm('此操作将新建角色, 是否继续?', '提示', {
                        confirmButtonText: '确定',
                        cancelButtonText: '取消',
                        type: 'warning'
                    }).then(() => {
                        insertTable['data']=JSON.stringify(vueobj.role);
                        $.ajax(insertTable);
                    }).catch(() => {
                        this.$message({
                            type: 'info',
                            message: '已取消新建'
                        });
                    });
                }
            },
            watch:{

            }
        });





        var ajaxErrorFunc=function (e) {
            console.log("ajax",e);
            console.log("ajax-error",e);
        }





    </script>


</@layout>