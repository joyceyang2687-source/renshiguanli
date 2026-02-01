<template>
  <div class="login-container">
    <!-- 视频背景 -->
    <video class="video-bg" autoplay muted loop playsinline>
      <source src="/renshiguanli/upload/kMwZibPW.mp4" type="video/mp4">
    </video>
    
    <!-- 登录卡片 -->
    <div class="login-card">
      <!-- 装饰光圈 -->
      <div class="decoration-circle circle-1"></div>
      <div class="decoration-circle circle-2"></div>
      
      <!-- Logo和标题 -->
      <div class="login-header">
        <div class="logo-wrapper">
          <div class="logo-icon">
            <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-1 17.93c-3.95-.49-7-3.85-7-7.93 0-.62.08-1.21.21-1.79L9 15v1c0 1.1.9 2 2 2v1.93zm6.9-2.54c-.26-.81-1-1.39-1.9-1.39h-1v-3c0-.55-.45-1-1-1H8v-2h2c.55 0 1-.45 1-1V7h2c1.1 0 2-.9 2-2v-.41c2.93 1.19 5 4.06 5 7.41 0 2.08-.8 3.97-2.1 5.39z" fill="currentColor"/>
            </svg>
          </div>
        </div>
        <h1 class="system-title">人事管理系统</h1>
        <p class="system-subtitle">Human Resource Management System</p>
      </div>
      
      <!-- 登录表单 -->
      <el-form class="login-form" :model="rulesForm" ref="loginForm">
        <el-form-item class="form-item">
          <div class="input-wrapper">
            <span class="input-icon">
              <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z" fill="currentColor"/>
              </svg>
            </span>
            <el-input
              v-model="rulesForm.username"
              placeholder="请输入用户名"
              prefix-icon=""
              clearable
              @keyup.enter.native="login"
            ></el-input>
          </div>
        </el-form-item>
        
        <el-form-item class="form-item">
          <div class="input-wrapper">
            <span class="input-icon">
              <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M18 8h-1V6c0-2.76-2.24-5-5-5S7 3.24 7 6v2H6c-1.1 0-2 .9-2 2v10c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V10c0-1.1-.9-2-2-2zm-6 9c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2zm3.1-9H8.9V6c0-1.71 1.39-3.1 3.1-3.1 1.71 0 3.1 1.39 3.1 3.1v2z" fill="currentColor"/>
              </svg>
            </span>
            <el-input
              v-model="rulesForm.password"
              type="password"
              placeholder="请输入密码"
              prefix-icon=""
              show-password
              @keyup.enter.native="login"
            ></el-input>
          </div>
        </el-form-item>
        
        <!-- 验证码（如果需要） -->
        <el-form-item v-if="showCode" class="form-item">
          <div class="input-wrapper code-wrapper">
            <span class="input-icon">
              <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M19 3H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-7 14c-1.66 0-3-1.34-3-3s1.34-3 3-3 3 1.34 3 3-1.34 3-3 3zm3-10H9V5h6v2z" fill="currentColor"/>
              </svg>
            </span>
            <el-input
              v-model="rulesForm.code"
              placeholder="请输入验证码"
              @keyup.enter.native="login"
            ></el-input>
            <div class="code-box" @click="getRandCode(4)">
              <span v-for="(item, index) in codes" :key="index" 
                :style="{color: item.color, transform: item.rotate, fontSize: item.size}">
                {{ item.num }}
              </span>
            </div>
          </div>
        </el-form-item>
        
        <!-- 角色选择 -->
        <el-form-item v-if="roleOptions.length > 1" class="form-item role-item">
          <div class="role-wrapper">
            <span class="role-label">选择角色</span>
            <el-radio-group v-model="rulesForm.role" @change="menuChange">
              <el-radio 
                v-for="item in roleOptions" 
                :key="item.value" 
                :label="item.value"
              >{{ item.key }}</el-radio>
            </el-radio-group>
          </div>
        </el-form-item>
        
        <el-form-item class="form-item">
          <el-button 
            type="primary" 
            class="login-btn" 
            :loading="loading"
            @click="login"
          >
            <span v-if="!loading">登 录</span>
            <span v-else>登录中...</span>
          </el-button>
        </el-form-item>
      </el-form>
      
      <!-- 底部信息 -->
      <div class="login-footer">
        <p>© 2024 华信科技 All Rights Reserved</p>
      </div>
    </div>
    
    <!-- 浮动装饰元素 -->
    <div class="floating-shapes">
      <div class="shape shape-1"></div>
      <div class="shape shape-2"></div>
      <div class="shape shape-3"></div>
    </div>
  </div>
</template>

<script>
import menu from "@/utils/menu";

export default {
  name: 'LoginNew',
  data() {
    return {
      rulesForm: {
        username: "",
        password: "",
        role: "",
        code: '',
      },
      loading: false,
      showCode: false, // 是否显示验证码
      menus: [],
      roleOptions: [],
      tableName: "",
      codes: [
        { num: 1, color: '#000', rotate: '10deg', size: '16px' },
        { num: 2, color: '#000', rotate: '10deg', size: '16px' },
        { num: 3, color: '#000', rotate: '10deg', size: '16px' },
        { num: 4, color: '#000', rotate: '10deg', size: '16px' }
      ],
    };
  },
  mounted() {
    let menus = menu.list();
    this.menus = menus;
    for (let i = 0; i < this.menus.length; i++) {
      if (this.menus[i].hasBackLogin == '是') {
        let menuItem = {};
        menuItem["key"] = this.menus[i].roleName;
        menuItem["value"] = this.menus[i].tableName;
        this.roleOptions.push(menuItem);
      }
    }
  },
  created() {
    this.getRandCode();
  },
  methods: {
    menuChange(role) {},
    
    register(tableName) {
      this.$storage.set("loginTable", tableName);
      this.$router.push({ path: '/register' });
    },
    
    login() {
      let code = '';
      for (let i in this.codes) {
        code += this.codes[i].num;
      }
      
      if (this.showCode && !this.rulesForm.code) {
        this.$message.error("请输入验证码");
        return;
      }
      if (this.showCode && this.rulesForm.code.toLowerCase() != code.toLowerCase()) {
        this.$message.error("验证码输入有误");
        this.getRandCode();
        return;
      }
      if (!this.rulesForm.username) {
        this.$message.error("请输入用户名");
        return;
      }
      if (!this.rulesForm.password) {
        this.$message.error("请输入密码");
        return;
      }
      
      if (this.roleOptions.length > 1) {
        if (!this.rulesForm.role) {
          this.$message.error("请选择角色");
          return;
        }
        let menus = this.menus;
        for (let i = 0; i < menus.length; i++) {
          if (menus[i].tableName == this.rulesForm.role) {
            this.tableName = menus[i].tableName;
            this.rulesForm.role = menus[i].roleName;
          }
        }
      } else {
        this.tableName = this.roleOptions[0].value;
        this.rulesForm.role = this.roleOptions[0].key;
      }
      
      this.loading = true;
      this.$http({
        url: `${this.tableName}/login?username=${this.rulesForm.username}&password=${this.rulesForm.password}`,
        method: "post"
      }).then(({ data }) => {
        this.loading = false;
        if (data && data.code === 0) {
          this.$message.success("登录成功");
          this.$storage.set("Token", data.token);
          this.$storage.set("userId", data.userId);
          this.$storage.set("role", this.rulesForm.role);
          this.$storage.set("sessionTable", this.tableName);
          this.$storage.set("adminName", this.rulesForm.username);
          this.$router.replace({ path: "/index/" });
        } else {
          this.$message.error(data.msg);
        }
      }).catch(() => {
        this.loading = false;
      });
    },
    
    getRandCode(len = 4) {
      this.randomString(len);
    },
    
    randomString(len = 4) {
      let chars = [
        "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k",
        "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v",
        "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G",
        "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R",
        "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2",
        "3", "4", "5", "6", "7", "8", "9"
      ];
      let colors = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"];
      let sizes = ['14', '15', '16', '17', '18'];

      for (let i = 0; i < len; i++) {
        let key = Math.floor(Math.random() * chars.length);
        this.codes[i].num = chars[key];
        
        let code = '#';
        for (let j = 0; j < 6; j++) {
          let key = Math.floor(Math.random() * colors.length);
          code += colors[key];
        }
        this.codes[i].color = code;
        
        let rotate = Math.floor(Math.random() * 60);
        let plus = Math.floor(Math.random() * 2);
        if (plus == 1) rotate = '-' + rotate;
        this.codes[i].rotate = 'rotate(' + rotate + 'deg)';
        
        let size = Math.floor(Math.random() * sizes.length);
        this.codes[i].size = sizes[size] + 'px';
      }
    },
  }
};
</script>

<style lang="scss" scoped>
$blue: #4A90E2;

.login-container {
  width: 100%;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  background: #1a1a2e;
}

.video-bg {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
  z-index: 0;
}

.login-card {
  position: relative;
  z-index: 10;
  width: 420px;
  background: rgba(135, 206, 250, 0.25);
  backdrop-filter: blur(20px);
  -webkit-backdrop-filter: blur(20px);
  border-radius: 20px;
  padding: 40px 35px;
  box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
  border: 1px solid rgba(255, 255, 255, 0.25);
  box-sizing: border-box;
}

.decoration-circle,
.floating-shapes {
  display: none;
}

// 头部区域
.login-header {
  text-align: center;
  margin-bottom: 30px;
}

.logo-wrapper {
  margin-bottom: 16px;
}

.logo-icon {
  width: 60px;
  height: 60px;
  margin: 0 auto;
  background: linear-gradient(135deg, $blue, #64B5F6);
  border-radius: 14px;
  display: flex;
  align-items: center;
  justify-content: center;
  box-shadow: 0 6px 20px rgba(74, 144, 226, 0.4);
  
  svg {
    width: 32px;
    height: 32px;
    color: #fff;
  }
}

.system-title {
  font-size: 24px;
  font-weight: 700;
  color: #fff;
  margin: 0 0 8px 0;
}

.system-subtitle {
  font-size: 11px;
  color: rgba(255, 255, 255, 0.6);
  margin: 0;
  text-transform: uppercase;
  letter-spacing: 1px;
}

// 表单区域
.login-form {
  /deep/ .el-form-item {
    margin-bottom: 18px;
    
    &:last-child {
      margin-bottom: 0;
    }
    
    .el-form-item__content {
      line-height: normal;
    }
  }
}

.input-wrapper {
  position: relative;
}

.input-icon {
  position: absolute;
  left: 14px;
  top: 50%;
  transform: translateY(-50%);
  z-index: 2;
  pointer-events: none;
  
  svg {
    width: 18px;
    height: 18px;
    color: rgba(255, 255, 255, 0.5);
  }
}

/deep/ .el-input {
  .el-input__inner {
    height: 46px;
    padding-left: 42px;
    padding-right: 14px;
    border: 1px solid rgba(255, 255, 255, 0.3);
    border-radius: 10px;
    font-size: 14px;
    color: #fff;
    background: rgba(255, 255, 255, 0.08);
    
    &::placeholder {
      color: rgba(255, 255, 255, 0.4);
    }
    
    &:hover {
      border-color: rgba(255, 255, 255, 0.5);
    }
    
    &:focus {
      border-color: $blue;
      background: rgba(255, 255, 255, 0.12);
    }
  }
  
  .el-input__suffix .el-input__icon {
    color: rgba(255, 255, 255, 0.4);
  }
}

.code-wrapper {
  /deep/ .el-input__inner {
    padding-right: 110px;
  }
  
  .code-box {
    position: absolute;
    right: 4px;
    top: 50%;
    transform: translateY(-50%);
    width: 95px;
    height: 36px;
    background: rgba(255, 255, 255, 0.15);
    border-radius: 6px;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    
    span {
      font-weight: 600;
      font-size: 15px;
      padding: 0 2px;
    }
  }
}

// 角色选择
.role-item .role-wrapper {
  background: rgba(255, 255, 255, 0.08);
  border: 1px solid rgba(255, 255, 255, 0.3);
  border-radius: 10px;
  padding: 14px 16px;
}

.role-label {
  display: block;
  font-size: 13px;
  font-weight: 500;
  color: rgba(255, 255, 255, 0.7);
  margin-bottom: 10px;
}

/deep/ .el-radio-group {
  display: flex;
  gap: 24px;
}

/deep/ .el-radio {
  margin-right: 0;
  
  .el-radio__inner {
    width: 16px;
    height: 16px;
    border: 2px solid rgba(255, 255, 255, 0.4);
    background: transparent;
    
    &::after {
      width: 6px;
      height: 6px;
      background: $blue;
    }
  }
  
  &.is-checked .el-radio__inner {
    border-color: $blue;
    background: transparent;
  }
  
  .el-radio__label {
    color: #fff;
    font-size: 14px;
    padding-left: 6px;
  }
}

// 登录按钮
.login-btn {
  width: 100%;
  height: 48px;
  font-size: 16px;
  font-weight: 600;
  letter-spacing: 4px;
  background: linear-gradient(135deg, $blue, #64B5F6);
  border: none;
  border-radius: 10px;
  color: #fff;
  box-shadow: 0 4px 16px rgba(74, 144, 226, 0.4);
  
  &:hover {
    transform: translateY(-1px);
    box-shadow: 0 6px 20px rgba(74, 144, 226, 0.5);
  }
}

// 底部
.login-footer {
  text-align: center;
  margin-top: 24px;
  
  p {
    font-size: 11px;
    color: rgba(255, 255, 255, 0.4);
    margin: 0;
  }
}

@media (max-width: 480px) {
  .login-card {
    width: 90%;
    padding: 30px 24px;
  }
}
</style>
