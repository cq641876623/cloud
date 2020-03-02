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
    <div id="app" >
        <el-form ref="form" :model="form" label-width="80px" style="margin: 10px">
            <el-form-item label="旧密码">
                <el-input placeholder="请输入旧密码" v-model="form.oldp" show-password></el-input>
            </el-form-item>
            <el-form-item label="新密码">
              <el-input placeholder="请输入新密码" v-model="form.newP" show-password></el-input>
            </el-form-item>
            <el-form-item label="再次输入">
              <el-input placeholder="请再次输入新密码" v-model="form.rnewP" show-password></el-input>
            </el-form-item>
        </el-form>




<div style="    display: flex;">
    <mu-button color="success" @click="updateDetail" style="margin: auto;">保存</mu-button>
</div>





    </div>








    </div>
    <script>
        var ajaxErrorFunc=function (e) {
            console.log("ajax",e);
            console.log("ajax-error",e);
        }






        var updataDetail={
            url: "${rc.contextPath}/user/changePass",
            type: "POST",
            dataType: "json",
            contentType: "application/json",
            success: function (result) {
                if(result.code==200){
                    parent.vueobj.$message({
                        type: 'success',
                        message: result.data
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
                    form:{
                        oldp:'',
                        newP:'',
                        rnewP:''
                    },

                };
            },
            methods:{
                updateDetail(){
                    this.$confirm('此操作将更改用户信息, 是否继续?', '提示', {
                        confirmButtonText: '确定',
                        cancelButtonText: '取消',
                        type: 'warning'
                    }).then(() => {
                        if(this.form.newP==this.form.rnewP){
                            updataDetail['data']=JSON.stringify(vueobj.form);
                            $.ajax(updataDetail);
                        }else {
                            this.$message({
                                type: 'info',
                                message: '重复输入密码不一致'
                            });

                        }
                    }).catch(() => {
                        this.$message({
                            type: 'info',
                            message: '已取消更改'
                        });
                    });
                },
                insertDetail(){
                    this.$confirm('此操作将新建用户, 是否继续?', '提示', {
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


            }
        });


    </script>


</@layout>