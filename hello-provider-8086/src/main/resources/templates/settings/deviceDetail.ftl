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
        .el-input{
            width: auto!important;

        }

        .el-input.is-disabled .el-input__inner{
            color: black!important;
        }
    </style>
</#macro>






<@layout "detail">
    <div id="app" class="container">
        <div class="cq-title-header" >
            01 名称段
        </div>
        <div class="cq-detail-body">
            <div class="cq-page-body">
                <div class="cq-col">
                <span>
                    设备名称：
                </span>
                     <el-input size="mini"
                             placeholder="请输入内容"
                             v-model="form.name"
                             <#if type??&&type==0>
                                 :disabled="true"
                             </#if>
                     >
                    </el-input>


                </div>
                <div class="cq-col">
                    <#if type??&&type!=2>
                                <span>
                            系统编号：
                        </span>
                               <el-input size="mini"
                                       placeholder="请输入内容"
                                       v-model="form.id"
                                         :disabled="true"
                             >
                            </el-input>
                    </#if>

                </div>
            </div>
            <#if type!=2>
                <div class="cq-page-body">
                    <div class="cq-col">
                <span>
                    在线状态：
                </span>
                        <span>
                    <#if deviceManager??>
                        <#if deviceManager.online?? && deviceManager.online==1>
                            在线
                        <#else>
                            不在线
                        </#if>
                    </#if>
                </span>
                    </div>
                    <div class="cq-col">
                <span>
                    创建时间：
                </span>
                        <span>
                    <#if deviceManager??>
                        ${deviceManager.createTime?string('yyyy-MM-dd hh:mm:ss')}
                    </#if>
                </span>
                    </div>
                </div>
            </#if>


        </div>


        <div class="cq-title-header" >
            02 报警相关
        </div>
        <div class="cq-detail-body">
            <div class="cq-page-body">
                <div class="cq-col">
                <span>
                    报警温度上限：
                </span>
                    <el-input size="mini"
                            placeholder="请输入内容"
                            v-model="form.maximumAlarm"
                            <#if type??&&type==0>
                                :disabled="true"
                            </#if>
                    >
                    </el-input>&#8451;
                </div>
                <div class="cq-col">
                <span>
                    报警温度下限：
                </span>
                    <el-input size="mini"
                            placeholder="请输入内容"
                            v-model="form.minimumAlarm"
                            <#if type??&&type==0>
                                :disabled="true"
                            </#if>
                    >
                    </el-input>&#8451;

                </div>
            </div>
            <div class="cq-page-body">
                <div class="cq-col">
                <span>
                    预警温度上限：
                </span>
                    <el-input size="mini"
                            placeholder="请输入内容"
                            v-model="form.preparemaximumAlarm"
                            <#if type??&&type==0>
                                :disabled="true"
                            </#if>
                    >
                    </el-input>&#8451;
                </div>
                <div class="cq-col">
                <span>
                    预警温度下限：
                </span>
                    <el-input size="mini"
                            placeholder="请输入内容"
                            v-model="form.prepareminimumAlarm"
                            <#if type??&&type==0>
                                :disabled="true"
                            </#if>
                    >
                    </el-input>&#8451;

                </div>
            </div>

            <div class="cq-page-body">
                <div class="cq-col">
                <span>
                    报警方式：
                </span>
                    <el-select v-model="type1" multiple placeholder="请选择" size="mini">
                        <#list  alarmTypeList as alarmType>
                            <el-option key="${alarmType.id}" label="${alarmType.name}" :value="${alarmType.id}"></el-option>
                        </#list>

                    </el-select>

                </div>
                <div class="cq-col">
                <span>
                    预警方式：
                </span>
                    <el-select v-model="type2" multiple placeholder="请选择" size="mini">
                        <#list  alarmTypeList as alarmType>
                            <el-option key="${alarmType.id}" label="${alarmType.name}" :value="${alarmType.id}"></el-option>
                        </#list>
                    </el-select>

                </div>
            </div>

        </div>

        <div class="cq-title-header" >
            03 热成像相机
        </div>
        <div class="cq-detail-body">
            <div class="cq-page-body">
                <div class="cq-col">
                <span>
                    ip：
                </span>
                    <el-input size="mini"
                            placeholder="请输入内容"
                            v-model="form.deviceIp"
                           <#if type??&&type==0>
                                :disabled="true"
                            </#if>
                    >
                    </el-input>

                </div>
                <div class="cq-col">
                <span>
                    登录端口：
                </span>
                    <el-input size="mini"
                            placeholder="请输入内容"
                            v-model="form.deviceLoginport"
                           <#if type??&&type==0>
                                :disabled="true"
                            </#if>
                    >
                    </el-input>

                </div>
            </div>
            <div class="cq-page-body">
                <div class="cq-col">
                <span>
                    登录用户名：
                </span>
                    <el-input size="mini"
                            placeholder="请输入内容"
                            v-model="form.deviceUsername"
                           <#if type??&&type==0>
                                :disabled="true"
                            </#if>
                    >
                    </el-input>

                </div>
                <div class="cq-col">
                <span>
                    登录密码：
                </span>
                    <el-input size="mini"
                            placeholder="请输入内容"
                            v-model="form.devicePassword"
                           <#if type??&&type==0>
                                :disabled="true"
                            </#if>
                    >
                    </el-input>
                </div>
            </div>
            <div class="cq-page-body">
                <div class="cq-col">
                <span>
                    播放端口：
                </span>
                    <el-input size="mini"
                            placeholder="请输入内容"
                            v-model="form.devicePort"
                           <#if type??&&type==0>
                                :disabled="true"
                            </#if>
                    >
                    </el-input>
                </div>
                <div class="cq-col">
                    <span>
                        单位相位探测时间：
                    </span>
                    <el-input size="mini"
                            placeholder="请输入内容"
                            v-model="form.hotGrasp"
                           <#if type??&&type==0>
                                :disabled="true"
                            </#if>
                    >
                    </el-input>

                </div>
            </div>

        </div>

        <div class="cq-title-header" >
            04 云台
        </div>
        <div class="cq-detail-body">
            <div class="cq-page-body">
                <div class="cq-col">
                <span>
                    云台端口：
                </span>
                    <el-input size="mini"
                            placeholder="请输入内容"
                            v-model="form.comName"
                           <#if type??&&type==0>
                                :disabled="true"
                            </#if>
                    >
                    </el-input>

                </div>
                <div class="cq-col">
                <span>
                    云台地址：
                </span>
                    <el-input size="mini"
                            placeholder="请输入内容"
                            v-model="form.comAddress"
                           <#if type??&&type==0>
                                :disabled="true"
                            </#if>
                    >
                    </el-input>

                </div>
            </div>
            <div class="cq-page-body">
                <div class="cq-col">
                <span>
                    归零时间：
                </span>
                    <el-input size="mini"
                            placeholder="请输入内容"
                            v-model="form.zeroTime"
                           <#if type??&&type==0>
                                :disabled="true"
                            </#if>
                    >
                    </el-input>

                </div>
                <div class="cq-col">
                <span>
                    单位时间：
                </span>
                    <el-input size="mini"
                            placeholder="请输入内容"
                            v-model="form.unitTime"
                           <#if type??&&type==0>
                                :disabled="true"
                            </#if>
                    >
                    </el-input>

                </div>
            </div>
            <div class="cq-page-body">
                <div class="cq-col">
                <span>
                    初始角度：
                </span>
                    <el-input size="mini"
                            placeholder="请输入内容"
                            v-model="form.startingAngle"
                            <#if type??&&type==0>
                                :disabled="true"
                            </#if>
                    >
                    </el-input>&deg;

                </div>
                <div class="cq-col">
                </div>
            </div>
        </div>


        <div class="cq-title-header" >
            04 3D模型
        </div>
        <div class="cq-detail-body">
            <div class="cq-page-body">
                <div class="cq-col">
                <span>
                    模型地址：
                </span>
                    <el-input size="mini"
                            placeholder="请输入内容"
                            v-model="form.cameraModel"
                            <#if type??&&type==0>
                                :disabled="true"
                            </#if>
                    >
                    </el-input>

                </div>
                <div class="cq-col">
                <span>
                    模型坐标-X：
                </span>
                    <el-input size="mini"
                            placeholder="请输入内容"
                            v-model="form.x"
                            <#if type??&&type==0>
                                :disabled="true"
                            </#if>
                    >
                    </el-input>

                </div>
            </div>
            <div class="cq-page-body">
                <div class="cq-col">
                <span>
                  模型坐标-Y：
                </span>
                    <el-input size="mini"
                            placeholder="请输入内容"
                            v-model="form.y"
                            <#if type??&&type==0>
                                :disabled="true"
                            </#if>
                    >
                    </el-input>

                </div>
                <div class="cq-col">
                <span>
                    模型坐标-Z：
                </span>
                    <el-input size="mini"
                            placeholder="请输入内容"
                            v-model="form.z"
                            <#if type??&&type==0>
                                :disabled="true"
                            </#if>
                    >
                    </el-input>

                </div>
            </div>


            <div class="cq-page-body">
                <div class="cq-col">
                <span>
                    热力图长度：
                </span>
                    <el-input size="mini"
                            placeholder="请输入内容"
                            v-model="form.basePlanel"
                            <#if type??&&type==0>
                                :disabled="true"
                            </#if>
                    >
                    </el-input>

                </div>
                <div class="cq-col">
                <span>
                    热力图宽度：
                </span>
                    <el-input size="mini"
                            placeholder="请输入内容"
                            v-model="form.basePlanew"
                            <#if type??&&type==0>
                                :disabled="true"
                            </#if>
                    >
                    </el-input>

                </div>
            </div>

            <div class="cq-page-body">
                <div class="cq-col">
                <span>
                    热力图高度：
                </span>
                    <el-input size="mini"
                            placeholder="请输入内容"
                            v-model="form.basePlanez"
                            <#if type??&&type==0>
                                :disabled="true"
                            </#if>
                    >
                    </el-input>

                </div>
                <div class="cq-col">


                </div>
            </div>
        </div>


        <#if type??&&type==1>
            <div style="display: flex;justify-content: center;">
                <mu-button color="success" @click="updateDeviceDetail">保存</mu-button>
            </div>
        </#if>
        <#if type??&&type==2>
            <div style="display: flex;justify-content: center;">
                <mu-button color="success" @click="insertDeviceDetail">新建</mu-button>
            </div>
        </#if>



    </div>








    </div>
    <script>
        var ajaxErrorFunc=function (e) {
            console.log("ajax",e);
            console.log("ajax-error",e);
        }


        var updateDeviceDetail={
            url: "${rc.contextPath}/device/updateDeviceDetail",
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

        <#--var findAllAlarmType={-->
        <#--    url: "${rc.contextPath}/alarmType/allAlarmType",-->
        <#--    type: "GET",-->
        <#--    dataType: "json",-->
        <#--    contentType: "application/json",-->
        <#--    success: function (result) {-->
        <#--        if(result.code==200){-->
        <#--            vueobj.alarmTypeList=result.data;-->

        <#--        }else {-->
        <#--            vueobj.$message({-->
        <#--                message: result.msg,-->
        <#--                type: 'warning'-->
        <#--            });-->
        <#--        }-->

        <#--    },error:ajaxErrorFunc-->
        <#--};-->



        var vueobj=new Vue({
            el:'#app',
            data(){
                return {
                    type1:[${alarm}],
                    type2:[
                        ${prepera}

                    ],
                    alarmTypeList:[],
                    form:{
                        <#if type!=3>
                            id:'${deviceManager.id}',
                        </#if>
                        name:'${deviceManager.name}',
                        maximumAlarm:'${deviceManager.maximumAlarm}',
                        preparemaximumAlarm:'${deviceManager.preparemaximumAlarm}',
                        prepareminimumAlarm:'${deviceManager.prepareminimumAlarm}',
                        alarmType:'${deviceManager.alarmType}',
                        prepareType:'${deviceManager.prepareType}',
                        minimumAlarm:'${deviceManager.minimumAlarm}',
                        deviceIp:'${deviceManager.deviceIp}',
                        deviceLoginport:'${deviceManager.deviceLoginport}',
                        deviceUsername:'${deviceManager.deviceUsername}',
                        devicePassword:'${deviceManager.devicePassword}',
                        devicePort:'${deviceManager.devicePort}',
                        hotGrasp:'${deviceManager.hotGrasp}',
                        comName:'${deviceManager.comName}',
                        comAddress:'${deviceManager.comAddress}',
                        zeroTime:'${deviceManager.zeroTime}',
                        unitTime:'${deviceManager.unitTime}',
                        startingAngle:'${deviceManager.startingAngle}',
                        cameraModel:'${deviceManager.cameraModel}',
                        x:'${deviceManager.x}',
                        y:'${deviceManager.y}',
                        z:'${deviceManager.z}',
                        basePlanez:'${deviceManager.basePlanez}',
                        basePlanew:'${deviceManager.basePlanew}',
                        basePlanel:'${deviceManager.basePlanel}',
                        updateTime:'${deviceManager.updateTime?datetime}',
                    }
                };
            },
            methods:{
                updateDeviceDetail(){
                    this.$confirm('此操作将更改设备, 是否继续?', '提示', {
                        confirmButtonText: '确定',
                        cancelButtonText: '取消',
                        type: 'warning'
                    }).then(() => {
                        updateDeviceDetail['data']=JSON.stringify(vueobj.form);
                        $.ajax(updateDeviceDetail);
                    }).catch(() => {
                        this.$message({
                            type: 'info',
                            message: '已取消更改'
                        });
                    });
                },
                insertDeviceDetail(){
                    this.$confirm('此操作将新建设备, 是否继续?', '提示', {
                        confirmButtonText: '确定',
                        cancelButtonText: '取消',
                        type: 'warning'
                    }).then(() => {
                        insertDeviceDetail['data']=JSON.stringify(vueobj.form);
                        $.ajax(insertDeviceDetail);
                    }).catch(() => {
                        this.$message({
                            type: 'info',
                            message: '已取消新建'
                        });
                    });
                },
                // prepareType(){
                //     if(this.form.alarmType!=null){
                //         var arr=this.form.alarmType.split(',');
                //         for(var  i=0;i<arr.length;i++){
                //             for(var j=0;this.alarmTypeList.length;j++){
                //                 if(this.alarmTypeList[j].id==arr[i]){
                //                     this.type1.push(this.alarmTypeList[j]);
                //                     break;
                //                 }
                //             }
                //         }
                //     }
                //     if(this.form.prepareType!=null){
                //         var arr=this.form.prepareType.split(',');
                //         for(var  i=0;i<arr.length;i++){
                //             for(var j=0;this.alarmTypeList.length;j++){
                //                 if(this.alarmTypeList[j].id==arr[i]){
                //                     this.type2.push(this.alarmTypeList[j]);
                //                     break;
                //                 }
                //             }
                //         }
                //     }
                // }


            },
            watch:{
                // alarmTypeList:function(){
                //     this.prepareType();
                // },
                type1:function (val) {
                    this.form.alarmType=val.toString();

                },
                type2:function (val) {

                    this.form.prepareType=val.toString();
                }
            }
        });
        // $.ajax(findAllAlarmType)
    </script>


</@layout>