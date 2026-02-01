<template>
  <el-aside class="index-aside" width="200px">
    <div class="index-aside-inner">
      <el-menu default-active="1">
        <el-menu-item @click="menuHandler('/')" index="1">
          <!-- <i class="el-icon-s-home"></i> -->
          首页
        </el-menu-item>
        <sub-menu
          v-for="menu in menuList"
          :key="menu.menuId"
          :menu="menu"
          :dynamicMenuRoutes="dynamicMenuRoutes"
        ></sub-menu>
      </el-menu>
    </div>
  </el-aside>
</template>
<script>
import SubMenu from "@/components/index/IndexAsideSub";
export default {
  data() {
    return {
      menuList: [],
      dynamicMenuRoutes: []
    };
  },
  components: {
    SubMenu
  },
  mounted() {
    // 获取动态菜单数据并且渲染
    this.menuList = JSON.parse(sessionStorage.getItem("menuList") || "[]");
    this.dynamicMenuRoutes = JSON.parse(
      sessionStorage.getItem("dynamicMenuRoutes") || "[]"
    );
  },
  methods: {
    menuHandler(path) {
      this.$router.push({ path: path });
    }
  }
};
</script>
<style lang="scss" scoped>
.index-aside {
  margin-top: 64px;
  overflow: hidden;
  background: linear-gradient(180deg, #ffffff 0%, #f8fafc 100%);
  box-shadow: 2px 0 12px rgba(0, 0, 0, 0.04);
  
  .index-aside-inner {
    width: 217px;
    height: 100%;
    overflow-y: auto;
    padding: 16px 0;
    
    &::-webkit-scrollbar {
      width: 6px;
    }
    
    &::-webkit-scrollbar-thumb {
      background: rgba(102, 126, 234, 0.2);
      border-radius: 3px;
    }
    
    &::-webkit-scrollbar-track {
      background: transparent;
    }
  }
  
  /deep/ .el-menu {
    border-right: none;
    background: transparent;
    
    .el-menu-item {
      height: 48px;
      line-height: 48px;
      margin: 4px 12px;
      border-radius: 10px;
      color: #4a5568;
      font-size: 14px;
      font-weight: 500;
      transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
      
      &:hover {
        background: rgba(102, 126, 234, 0.08);
        color: #667eea;
      }
      
      &.is-active {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: #ffffff;
        box-shadow: 0 4px 15px rgba(102, 126, 234, 0.35);
      }
      
      i {
        margin-right: 10px;
        font-size: 18px;
      }
    }
    
    .el-submenu {
      margin: 4px 12px;
      
      .el-submenu__title {
        height: 48px;
        line-height: 48px;
        border-radius: 10px;
        color: #4a5568;
        font-size: 14px;
        font-weight: 500;
        transition: all 0.3s ease;
        
        &:hover {
          background: rgba(102, 126, 234, 0.08);
          color: #667eea;
        }
        
        i {
          color: inherit;
        }
      }
      
      &.is-opened {
        .el-submenu__title {
          color: #667eea;
        }
      }
      
      .el-menu-item {
        margin: 2px 0;
        padding-left: 48px !important;
        min-width: auto;
      }
    }
  }
}
</style>

