<#include "chen_model.ftl">

<#macro css>
    <link rel="icon" href="${rc.contextPath}/images/title_icon/监控.png">
    <link rel="stylesheet" href="${rc.contextPath}/js/vue/elementui.css">
    <link rel="stylesheet" href="${rc.contextPath}/js/vue/muse-ui.css">
    <link rel="stylesheet" href="${rc.contextPath}/css/index.css">
    <link rel="stylesheet" href="${rc.contextPath}/js/layui/css/layui.css" media="all">
</#macro>
<#macro js>


    <script src="${rc.contextPath}/js/vue/elementui.js"></script>
    <script src="${rc.contextPath}/js/vue/muse-ui.js"></script>
    <script src="${rc.contextPath}/js/layui/layui.js"></script>


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

</#macro>






<@layout "setting">

    <div id="app" style="margin: 5px;position: fixed;height: 100%;width: 100%;">

        <div style="    margin: 10px 0px;
                        height: 40px;
                        position: fixed;
                        top: 0;
                        left: 0;
                        width: 100%;">
            <#list menus as menu>
                <#if menu.type==2>
                    <mu-button color="${menu.color}" @click="${menu.action}"><i class="${menu.icon}"></i>${menu.menuName}</mu-button>
                </#if>
                 <#if menu.type==4>
                     <el-input
                             style="width: 250px;display: inline-block;"
                             placeholder="${menu.menuName}"
                             v-model="${menu.action}"
                             clearable>
                     </el-input>
                 </#if>
            </#list>



        </div>

        <el-table
                @selection-change="handleSelectionChange"
                :data="tableData"
                border
                :max-height="tableMaxHeight"
                style="width: 100%;
                        position: fixed;
                        left: 0;
                        top: 60px;
                        height: calc(100% - 95px);
">
            <el-table-column
                    type="selection"
                    width="55">
            </el-table-column>
            <el-table-column
                    fixed
                    prop="id"
                    label="系统编号"
                    width="150">
            </el-table-column>
            <el-table-column
                    prop="deviceName"
                    label="设备名称"
                    width="120">
            </el-table-column>
            <el-table-column
                    prop="typeName"
                    label="类型"
                    width="120">
            </el-table-column>
            <el-table-column
                    prop="createTime"
                    label="创建时间"
                    width="200">
            </el-table-column>
            <el-table-column
                    prop="view"
                    label="已阅"
                    :formatter="viewFormat"
                    width="120">
            </el-table-column>

            <#assign tableFixed=false>
                <#list menus as menu>
                 <#if menu.type==3>
                     <#assign tableFixed=true>
                 </#if>
                </#list>
                <#if tableFixed>
                    <el-table-column
                            fixed="right"
                            label="操作"
                            width="120">
                        <template slot-scope="scope">
                            <#list menus as menu>
                                <#if menu.type==3>
                                    <span @click="${menu.action}" class="${menu.color}">${menu.menuName}</span>
                                </#if>
                            </#list>


<#--                            <span @click="view(scope.row)" class="cq-tag cq-tag-blue">查看</span>-->
<#--                            <span @click="edit(scope.row)" class="cq-tag cq-tag-greeen">编辑</span>-->
<#--                            <span @click="del(scope.row)" class="cq-tag cq-tag-red">删除</span>-->
                        </template>
                    </el-table-column>


                </#if>





        </el-table>
        <el-pagination
                style="position: fixed;
                    bottom: 0;
                    height: 35px;
                    width: 100%;"
                @size-change="handleSizeChange"
                @current-change="handleCurrentChange"
                :current-page="currentPage"
                :page-sizes="[10,20,50,100, 200, 300, 400]"
                :page-size="pageSize"
                layout="total, sizes, prev, pager, next, jumper"
                :total="count">
        </el-pagination>



    </div>


    <script>

        var layer=null;
        layui.use('layer', function(){
            layer = layui.layer;


        });

        var del={
            url: "${rc.contextPath}/roles/delRole",
            type: "POST",
            dataType: "json",
            contentType: "application/json",
            success: function (result) {
                if(result.code==200){
                    vueobj.$message({
                        type: 'success',
                        message: '修改成功!'
                    });
                    vueobj.reloadTable();
                }else {
                    vueobj.$message({
                        message: result.msg,
                        type: 'warning'
                    });
                }

            },error:ajaxErrorFunc
        };

        var vueobj=new Vue({
            el:'#app',
            data(){
                return {
                    tableData: [],
                    currentPage: 1,
                    count:0,
                    pageSize:10,
                    multipleSelection: [],
                    tableMaxHeight:window.innerHeight-95,
                    search:'',
                };
            },
            methods:{
                onlineFormat(row, column){
                    return row.online==1?"在线":"不在线";

                },
                viewFormat(row, column){
                    return row.view==1?"是":"否";
                },
                handleSizeChange(val) {
                    this.pageSize=val;
                    loadTable()
                },
                handleCurrentChange(val) {
                    this.currentPage=val;
                    loadTable()
                },
                view(row) {
                    console.log(row);
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
                        content: ['${rc.contextPath}/device/detail?id='+row['id']], //iframe的url，no代表不显示滚动条

                    });
                },
                edit(row) {
                    console.log(row);
                    layer.open({
                        type: 2,
                        title: '详情',
                        shadeClose: true,
                        shade: false,
                        scrollbar: true,
                        skin:'layui-layer-lan',
                        maxmin: true, //开启最大化最小化按钮
                        area: ['60%', '70%'],
                        resize:true,
                        offset: 'auto', //右下角弹出
                        content: ['${rc.contextPath}/roles/roleDetail?type=1&id='+row['id']], //iframe的url，no代表不显示滚动条

                    });
                },
                newbulid(){
                    layer.open({
                        type: 2,
                        title: '新建',
                        shadeClose: true,
                        shade: false,
                        scrollbar: true,
                        skin:'layui-layer-lan',
                        maxmin: true, //开启最大化最小化按钮
                        area: ['60%', '70%'],
                        resize:true,
                        offset: 'auto', //右下角弹出
                        content: ['${rc.contextPath}/roles/roleDetail?type=2'], //iframe的url，no代表不显示滚动条

                    });
                },
                del(row){
                    if(row['id']==1){
                        this.$message({
                            type: 'error',
                            message: '超级管理员无法删除！'
                        });
                    }

                    this.$confirm('此操作将删除角色 '+row['name']+ ', 是否继续?', '提示', {
                        confirmButtonText: '确定',
                        cancelButtonText: '取消',
                        type: 'warning'
                    }).then(() => {

                        del['data']=JSON.stringify(row);
                        $.ajax(del);
                    }).catch(() => {
                        this.$message({
                            type: 'info',
                            message: '已取消删除'
                        });
                    });
                },
                batchDel(){
                    for(var i=0;i<this.multipleSelection.length;i++){
                        if(this.multipleSelection[i].id==1){
                            this.$message({
                                type: 'error',
                                message: '不能删除超级管理员，已取消删除！'
                            });
                            return;
                        }
                    }

                    this.$confirm('此操作将批量删除角色, 是否继续?', '提示', {
                        confirmButtonText: '确定',
                        cancelButtonText: '取消',
                        type: 'warning'
                    }).then(() => {
                        this.multipleSelection.forEach(function (item) {
                            del['data']=JSON.stringify(item);
                            $.ajax(del);
                        });
                    }).catch(() => {
                        this.$message({
                            type: 'info',
                            message: '已取消删除'
                        });
                    });
                },
                reloadTable(){
                    loadTable()
                },
                handleSelectionChange(val) {
                    this.multipleSelection = val;
                },
            },
            watch:{
                search:function (val) {
                    loadTable()
                }
            }
        });



        var table={
            url: "${rc.contextPath}/deviceActive/loadDeviceActivePage",
            type: "GET",
            dataType: "json",
            data:{
                pageIndex:vueobj.currentPage,
                pageSize:vueobj.pageSize
            },
            success: function (result) {
                if(result.code==200){
                    vueobj.tableData=result.data;
                    vueobj.count=result.count;
                }

            },error:ajaxErrorFunc
        };

        $.ajax(table);

        var ajaxErrorFunc=function (e) {
            console.log("ajax",e);
            console.log("ajax-error",e);
        }

        window.addEventListener( 'resize', onWindowResize, false );
        function onWindowResize() {
            vueobj.tableMaxHeight=window.innerHeight-95;
        }


        function loadTable(){
            table.data.pageIndex=vueobj.currentPage;
            table.data.pageSize=vueobj.pageSize;
            if(vueobj.search!=null&&vueobj.search.trim()!=''){
                table.data.search=vueobj.search;
            }else {
                table.data.search=null;
            }
            $.ajax(table);
        }

    </script>


</@layout>