
<template>
    <!-- <el-header>
        <el-menu background-color="#00c292" text-color="#FFFFFF" active-text-color="#FFFFFF" mode="horizontal">
            <div class="fl title">{{this.$project.projectName}}</div>
            <div class="fr logout" style="display:flex;">
                <el-menu-item index="2">
                    <div>{{this.$storage.get('role')}} {{this.$storage.get('adminName')}}</div>
                </el-menu-item>
                <el-menu-item @click="onLogout" index="2">
                    <div>退出登录</div>
                </el-menu-item>
            </div>
        </el-menu>
    </el-header> -->
    <div class="navbar" :style="{backgroundColor:heads.headBgColor,height:heads.headHeight,boxShadow:heads.headBoxShadow,lineHeight:heads.headHeight}">
        <div class="title-menu" :style="{justifyContent:heads.headTitleStyle=='1'?'flex-start':'center'}">
            <el-image v-if="heads.headTitleImg" class="title-img" :style="{width:heads.headTitleImgWidth,height:heads.headTitleImgHeight,boxShadow:heads.headTitleImgBoxShadow,borderRadius:heads.headTitleImgBorderRadius}" :src="heads.headTitleImgUrl" fit="cover"></el-image>
            <div class="title-name" :style="{color:heads.headFontColor,fontSize:heads.headFontSize}">{{this.$project.projectName}}</div>
            <!--             <img src="../../../../img/logo.jpg" style="width: 60px;height: 60px;border-radius:60px"> -->
        </div>
        <div class="right-menu">
            <div class="user-info" :style="{color:heads.headUserInfoFontColor,fontSize:heads.headUserInfoFontSize}">{{this.$storage.get('role')}} {{this.$storage.get('adminName')}}</div>
            <!--<div class="logout" :style="{color:heads.headLogoutFontColor,fontSize:heads.headLogoutFontSize}" @click="onIndexTap">退出到前台</div>-->
            <div class="logout" :style="{color:heads.headLogoutFontColor,fontSize:heads.headLogoutFontSize}" @click="onLogout">退出登录</div>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                dialogVisible: false,
                ruleForm: {},
                user: {},
                heads: {"headLogoutFontHoverColor":"#fff","headFontSize":"22px","headUserInfoFontColor":"rgba(255, 255, 255, 0.95)","headBoxShadow":"0 4px 20px rgba(74, 144, 226, 0.25)","headTitleImgHeight":"40px","headLogoutFontHoverBgColor":"rgba(255, 255, 255, 0.2)","headFontColor":"rgba(255, 255, 255, 1)","headTitleImg":false,"headHeight":"64px","headTitleImgBorderRadius":"20px","headTitleImgUrl":"","headBgColor":"linear-gradient(135deg, #4A90E2 0%, #5B9BD5 100%)","headTitleImgBoxShadow":"0 2px 8px rgba(0,0,0,0.15)","headLogoutFontColor":"rgba(255, 255, 255, 0.9)","headUserInfoFontSize":"14px","headTitleImgWidth":"40px","headTitleStyle":"2","headLogoutFontSize":"14px"},
            };
        },
        created() {
            this.setHeaderStyle()
        },
        mounted() {
            let sessionTable = this.$storage.get("sessionTable")
            this.$http({
                url: sessionTable + '/session',
                method: "get"
            }).then(({
                         data
                     }) => {
                if (data && data.code === 0) {
                    this.user = data.data;
                } else {
                    let message = this.$message
                    message.error(data.msg);
                }
            });
        },
        methods: {
            onLogout() {
                let storage = this.$storage
                let router = this.$router
                storage.clear()
                router.replace({
                    name: "login"
                });
            },
            onIndexTap(){
                window.location.href = `${this.$base.indexUrl}`
            },
            setHeaderStyle() {
                this.$nextTick(()=>{
                    document.querySelectorAll('.navbar .right-menu .logout').forEach(el=>{
                        el.addEventListener("mouseenter", e => {
                            e.stopPropagation()
                            el.style.backgroundColor = this.heads.headLogoutFontHoverBgColor
                            el.style.color = this.heads.headLogoutFontHoverColor
                        })
                        el.addEventListener("mouseleave", e => {
                            e.stopPropagation()
                            el.style.backgroundColor = "transparent"
                            el.style.color = this.heads.headLogoutFontColor
                        })
                    })
                })
            },
        }
    };
</script>


<style lang="scss" scoped>
    $blue: #4A90E2;
    
    .navbar {
        height: 64px;
        line-height: 64px;
        width: 100%;
        padding: 0 30px;
        box-sizing: border-box;
        background: linear-gradient(135deg, $blue 0%, #5B9BD5 100%);
        position: relative;
        z-index: 111;
        box-shadow: 0 2px 12px rgba(74, 144, 226, 0.3);

    .right-menu {
        position: absolute;
        right: 30px;
        top: 0;
        height: 100%;
        display: flex;
        justify-content: flex-end;
        align-items: center;
        gap: 8px;
        z-index: 111;

    .user-info {
        font-size: 14px;
        color: rgba(255, 255, 255, 0.95);
        padding: 8px 16px;
        background: rgba(255, 255, 255, 0.15);
        border-radius: 20px;
        display: flex;
        align-items: center;
        gap: 6px;
        
        &::before {
            content: '👤';
            font-size: 14px;
        }
    }

    .logout {
        font-size: 14px;
        color: rgba(255, 255, 255, 0.9);
        padding: 8px 16px;
        cursor: pointer;
        border-radius: 20px;
        transition: all 0.3s;
        border: 1px solid rgba(255, 255, 255, 0.3);
        
        &:hover {
            background: rgba(255, 255, 255, 0.2);
            color: #fff;
        }
    }

    }

    .title-menu {
        display: flex;
        justify-content: flex-start;
        align-items: center;
        width: 100%;
        height: 100%;

    .title-img {
        width: 44px;
        height: 44px;
        border-radius: 22px;
        box-shadow: 0 1px 6px #444;
        margin-right: 16px;
    }

    .title-name {
        font-size: 22px;
        color: #fff;
        font-weight: 700;
        letter-spacing: 2px;
    }
    }
    }
    // .el-header .fr {
       // 	float: right;
       // }

    // .el-header .fl {
       // 	float: left;
       // }

    // .el-header {
       // 	width: 100%;
       // 	color: #333;
       // 	text-align: center;
       // 	line-height: 60px;
       // 	padding: 0;
       // 	z-index: 99;
       // }

    // .logo {
       // 	width: 60px;
       // 	height: 60px;
       // 	margin-left: 70px;
       // }

    // .avator {
       // 	width: 40px;
       // 	height: 40px;
       // 	background: #ffffff;
       // 	border-radius: 50%;
       // }

    // .title {
       // 	color: #ffffff;
       // 	font-size: 20px;
       // 	font-weight: bold;
       // 	margin-left: 20px;
       // }
</style>
