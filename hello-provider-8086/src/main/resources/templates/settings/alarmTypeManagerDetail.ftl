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
                display: flex;
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
        .el-select{
            display: block!important;
        }


        .el-input.is-disabled .el-input__inner{
            color: black!important;
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
        .avatar-uploader .el-upload {
            border: 1px dashed #d9d9d9;
            border-radius: 6px;
            cursor: pointer;
            position: relative;
            overflow: hidden;
        }
        .avatar-uploader .el-upload:hover {
            border-color: #409EFF;
        }
        .avatar-uploader-icon {
            font-size: 28px;
            color: #8c939d;
            width: 178px;
            height: 178px;
            line-height: 178px;
            text-align: center;
        }
        .avatar {
            width: 178px;
            height: 178px;
            display: block;
        }

    </style>
</#macro>


<@layout "detail">
    <div id="app" class="container">

        <div style="margin: 10px">
            <span>报警名称：</span>
            <el-input
                    placeholder="请输入内容"
                    v-model="form.name"
                    <#if type??&&type==0>
                        :disabled="true"
                    </#if>
            >
            </el-input>
        </div>
        <div style="margin: 10px">
            <span>报警类型：</span>
            <el-select v-model="form.type"  placeholder="请选择">
                <el-option
                        v-for="item in type"
                        :key="item.id"
                        :label="item.name"
                        :value="item.id">
                </el-option>
            </el-select>
        </div>


        <div style="display: flex">
            <div>
                <mu-chip class="demo-chip"  delete v-for="item in users" @delete="handleClose(item.id)">{{item.name}}</mu-chip>
            </div>
            <div style="width: 100%">
                <mu-button color="primary" @click="addpe" style="margin: 5px;">添加报警对象</mu-button>
                <el-table
                        @selection-change="handleSelectionChange"
                        :data="tableData"
                        border
                        :max-height="tableMaxHeight"
                        style="width: 100%;">
                    <el-table-column
                            type="selection"
                            width="55">
                    </el-table-column>
                    <el-table-column
                            fixed
                            prop="id"
                            label="系统编号"
                            width="100">
                    </el-table-column>
                    <el-table-column
                            prop="name"
                            label="用户名"
                            width="120">
                    </el-table-column>
                    <el-table-column
                            prop="loginName"
                            label="登录名"
                            width="120">
                    </el-table-column>
                    <el-table-column
                            prop="roleName"
                            label="角色"
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
                                width="200">
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
                        style="
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
        </div>










        <#if type??&&type==1>
            <div style="display: flex;justify-content: center;">
                <mu-button color="success" @click="updateDetail">保存</mu-button>
            </div>
        </#if>
        <#if type??&&type==2>
            <div style="display: flex;justify-content: center;">
                <mu-button color="success" @click="insertDetail">新建</mu-button>
            </div>
        </#if>



    </div>








    </div>
    <script>
        var ajaxErrorFunc=function (e) {
            console.log("ajax",e);
            console.log("ajax-error",e);
        }


        var findAllRoles={
            url: "${rc.contextPath}/roles/findAllRoles",
            type: "GET",
            dataType: "json",
            contentType: "application/json",
            success: function (result) {
                if(result.code==200){
                    vueobj.roles=result.data;
                }else {
                    vueobj.$message({
                        message: result.msg,
                        type: 'warning'
                    });
                }

            },error:ajaxErrorFunc
        };



        var updataDetail={
            url: "${rc.contextPath}/alarmType/updateDetail",
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

        var insertDetail={
            url: "${rc.contextPath}/alarmType/insertDetail",
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


        var vueobj=new Vue({
            el:'#app',
            data(){
                return {
                    users:[
                        <#list admins as  user>
                            {id :${user.id},name:'${user.name}'},
                        </#list>
                    ],
                    tableData: [],
                    currentPage: 1,
                    count:0,
                    pageSize:10,
                    multipleSelection: [],
                    tableMaxHeight:window.innerHeight-95,
                    search:'',
                    form:{
                        <#if type!=3>
                            id:'${alarmType.id}',
                        </#if>
                        name:'${alarmType.name}',
                        <#if alarmType.type??>
                        type:${alarmType.type},
                        <#else >
                        type:'',
                        </#if>
                        admins:'${alarmType.admins}',
                        updateTime:'${alarmType.updateTime?datetime}',
                    },
                    type:[
                        {id:0, name:'界面报警'},
                        {id:1, name:'短信报警'},
                        {id:2, name:'邮件报警'},
                        {id:3, name:'声光报警'}
                        ],

                };
            },
            methods:{
                addpe(){
                    var flag=false;
                    for(var i=0;i<this.multipleSelection.length;i++){
                        flag=false;
                        for(var j=0;j<this.users.length;j++){
                            if(this.users[j].id==this.multipleSelection[i].id){
                                flag=true;
                            }
                        }
                        if(flag)continue;
                        this.users.push({id:this.multipleSelection[i].id,name:this.multipleSelection[i].name});


                    }
                },
                handleClose(id){
                    for(var i=0;i<this.users.length;i++){
                        if(this.users[i].id==id){
                            this.users.splice(i,1);
                        }
                    }

                },
                handleSizeChange(val) {
                    this.pageSize=val;
                    loadTable()
                },
                handleCurrentChange(val) {
                    this.currentPage=val;
                    loadTable()
                },
                handleSelectionChange(val) {
                    this.multipleSelection = val;
                },
                updateDetail(){
                    this.$confirm('此操作将更改信息, 是否继续?', '提示', {
                        confirmButtonText: '确定',
                        cancelButtonText: '取消',
                        type: 'warning'
                    }).then(() => {
                        updataDetail['data']=JSON.stringify(vueobj.form);
                        $.ajax(updataDetail);
                    }).catch(() => {
                        this.$message({
                            type: 'info',
                            message: '已取消更改'
                        });
                    });
                },
                insertDetail(){
                    this.$confirm('此操作将新建, 是否继续?', '提示', {
                        confirmButtonText: '确定',
                        cancelButtonText: '取消',
                        type: 'warning'
                    }).then(() => {
                        insertDetail['data']=JSON.stringify(vueobj.form);
                        $.ajax(insertDetail);
                    }).catch(() => {
                        this.$message({
                            type: 'info',
                            message: '已取消新建'
                        });
                    });
                },
                handleAvatarSuccess(res, file) {
                    console.log("handleAvatarSuccess",res)
                    this.form.headUrl=res.data;
                },
                beforeAvatarUpload(file) {
                    const isJPG = file.type === 'image/jpeg';
                    const isLt2M = file.size / 1024 / 1024 < 2;

                    if (!isJPG) {
                        this.$message.error('上传头像图片只能是 JPG 格式!');
                    }
                    if (!isLt2M) {
                        this.$message.error('上传头像图片大小不能超过 2MB!');
                    }
                    return isJPG && isLt2M;
                }


            },
            watch:{
                search:function (val) {
                    loadTable();
                },
                users:function (val) {
                        console.log(val)
                    var us='';
                    for(var  i=0;i<this.users.length;i++){
                        us+=this.users[i].id+",";
                    }

                    if(us.length>1)this.form.admins=us.substring(0,us.length-1);
                    else this.form.admins='';

                }
            }
        });

        var loadPage={
            url: "${rc.contextPath}/user/loadUserPage",
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

        $.ajax(loadPage);
    </script>


</@layout>