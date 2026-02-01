<template>
<div class="dashboard-container">
  <!-- 欢迎区域 -->
  <div class="welcome-section">
    <div class="welcome-content">
      <div class="welcome-icon">
        <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-1 17.93c-3.95-.49-7-3.85-7-7.93 0-.62.08-1.21.21-1.79L9 15v1c0 1.1.9 2 2 2v1.93zm6.9-2.54c-.26-.81-1-1.39-1.9-1.39h-1v-3c0-.55-.45-1-1-1H8v-2h2c.55 0 1-.45 1-1V7h2c1.1 0 2-.9 2-2v-.41c2.93 1.19 5 4.06 5 7.41 0 2.08-.8 3.97-2.1 5.39z" fill="currentColor"/>
        </svg>
      </div>
      <h1 class="welcome-title">欢迎使用 {{this.$project.projectName}}</h1>
      <p class="welcome-subtitle">高效、智能、现代化的人事管理解决方案</p>
    </div>
    
    <!-- 装饰元素 -->
    <div class="decoration-circles">
      <div class="circle circle-1"></div>
      <div class="circle circle-2"></div>
      <div class="circle circle-3"></div>
    </div>
  </div>
  
  <!-- 快捷功能卡片 -->
  <div class="quick-actions">
    <div class="action-card" @click="navigateTo('/yuangong')">
      <div class="card-icon" style="background: linear-gradient(135deg, #4A90E2 0%, #5B9BD5 100%);">
        <svg viewBox="0 0 24 24" fill="none"><path d="M16 11c1.66 0 2.99-1.34 2.99-3S17.66 5 16 5c-1.66 0-3 1.34-3 3s1.34 3 3 3zm-8 0c1.66 0 2.99-1.34 2.99-3S9.66 5 8 5C6.34 5 5 6.34 5 8s1.34 3 3 3zm0 2c-2.33 0-7 1.17-7 3.5V19h14v-2.5c0-2.33-4.67-3.5-7-3.5zm8 0c-.29 0-.62.02-.97.05 1.16.84 1.97 1.97 1.97 3.45V19h6v-2.5c0-2.33-4.67-3.5-7-3.5z" fill="currentColor"/></svg>
      </div>
      <div class="card-content">
        <h3>员工管理</h3>
        <p>管理员工信息档案</p>
      </div>
    </div>
    
    <div class="action-card" @click="navigateTo('/yuangongKaoqin')">
      <div class="card-icon" style="background: linear-gradient(135deg, #52C41A 0%, #73d13d 100%);">
        <svg viewBox="0 0 24 24" fill="none"><path d="M19 3h-1V1h-2v2H8V1H6v2H5c-1.11 0-1.99.9-1.99 2L3 19c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm0 16H5V8h14v11zM9 10H7v2h2v-2zm4 0h-2v2h2v-2zm4 0h-2v2h2v-2zm-8 4H7v2h2v-2zm4 0h-2v2h2v-2zm4 0h-2v2h2v-2z" fill="currentColor"/></svg>
      </div>
      <div class="card-content">
        <h3>考勤管理</h3>
        <p>员工考勤与打卡</p>
      </div>
    </div>
    
    <div class="action-card" @click="navigateTo('/xinzi')">
      <div class="card-icon" style="background: linear-gradient(135deg, #FF8C42 0%, #f5a623 100%);">
        <svg viewBox="0 0 24 24" fill="none"><path d="M11.8 10.9c-2.27-.59-3-1.2-3-2.15 0-1.09 1.01-1.85 2.7-1.85 1.78 0 2.44.85 2.5 2.1h2.21c-.07-1.72-1.12-3.3-3.21-3.81V3h-3v2.16c-1.94.42-3.5 1.68-3.5 3.61 0 2.31 1.91 3.46 4.7 4.13 2.5.6 3 1.48 3 2.41 0 .69-.49 1.79-2.7 1.79-2.06 0-2.87-.92-2.98-2.1h-2.2c.12 2.19 1.76 3.42 3.68 3.83V21h3v-2.15c1.95-.37 3.5-1.5 3.5-3.55 0-2.84-2.43-3.81-4.7-4.4z" fill="currentColor"/></svg>
      </div>
      <div class="card-content">
        <h3>薪资管理</h3>
        <p>工资核算与发放</p>
      </div>
    </div>
    
    <div class="action-card" @click="navigateTo('/jixiao')">
      <div class="card-icon" style="background: linear-gradient(135deg, #4A90E2 0%, #2e86de 100%);">
        <svg viewBox="0 0 24 24" fill="none"><path d="M19 3H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zM9 17H7v-7h2v7zm4 0h-2v-7h2v7zm4 0h-2v-4h2v4z" fill="currentColor"/></svg>
      </div>
      <div class="card-content">
        <h3>绩效考核</h3>
        <p>员工绩效评估</p>
      </div>
    </div>
    
    <div class="action-card" @click="navigateTo('/peixun')">
      <div class="card-icon" style="background: linear-gradient(135deg, #52C41A 0%, #389e0d 100%);">
        <svg viewBox="0 0 24 24" fill="none"><path d="M5 13.18v4L12 21l7-3.82v-4L12 17l-7-3.82zM12 3L1 9l11 6 9-4.91V17h2V9L12 3z" fill="currentColor"/></svg>
      </div>
      <div class="card-content">
        <h3>培训管理</h3>
        <p>员工技能培训</p>
      </div>
    </div>
    
    <div class="action-card" @click="navigateTo('/zhaopin')">
      <div class="card-icon" style="background: linear-gradient(135deg, #FF8C42 0%, #e67700 100%);">
        <svg viewBox="0 0 24 24" fill="none"><path d="M19 3H14.82C14.4 1.84 13.3 1 12 1c-1.3 0-2.4.84-2.82 2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-7 0c.55 0 1 .45 1 1s-.45 1-1 1-1-.45-1-1 .45-1 1-1zm2 14H7v-2h7v2zm3-4H7v-2h10v2zm0-4H7V7h10v2z" fill="currentColor"/></svg>
      </div>
      <div class="card-content">
        <h3>招聘管理</h3>
        <p>人才招聘与录用</p>
      </div>
    </div>
  </div>
  
  <!-- 统计图表区域（管理员可见） -->
  <div class="chart-section" v-if="sessionTable=='users' && false">
    <div class="chart-card">
      <div id="statistic1" style="width:100%;height:400px;"></div>
    </div>
    <div class="chart-card">
      <div class="chart-header">
        <el-date-picker v-model="echartsDate" type="month" placeholder="选择月" size="small"></el-date-picker>
        <el-button @click="chartDialog2()" type="primary" size="small">查询</el-button>
      </div>
      <div id="statistic2" style="width:100%;height:350px;"></div>
    </div>
  </div>
</div>
</template>

<script>
import router from '@/router/router-static'
export default {
  data() {
    return {
      sessionTable : "",//登录账户所在表名
      role : "",//权限
      userId:"",//当前登录人的id

      echartsDate: new Date(),//echarts的时间查询字段


    };
  },
  mounted(){

    //获取当前登录用户的信息
    this.sessionTable = this.$storage.get("sessionTable");
    this.role = this.$storage.get("role");
    this.userId = this.$storage.get("userId");

    this.init();
    this.chartDialog1();
    this.chartDialog2();
  },
  methods:{
    chartDialog1() {
      let _this = this;
      // this.$nextTick(()=>{
      //   var statistic = this.$echarts.init(document.getElementById("statistic1"),'macarons');
      //   let params = {
      //     tableName: "wuzi",
      //     groupColumn: "wuzi_types",
      //   }
      //   this.$http({
      //     url: "newSelectGroupCount",//pieSum pieCount
      //     method: "get",
      //     params: params
      //   }).then(({data}) => {
      //     if (data && data.code === 0) {
      //       let res = data.data;
      //       let xAxis = [];
      //       let yAxis = [];
      //       let pArray = []
      //       var option = {};
      //       for(let i=0;i<res.length;i++){
      //         xAxis.push(res[i].name);
      //         yAxis.push(res[i].value);
      //         pArray.push({
      //           value: res[i].value,
      //           name: res[i].name
      //         })
      //         option = {
      //           title: {
      //             text: '物资类型分布图',
      //             left: 'center'
      //           },
      //           tooltip: {
      //             trigger: 'item',
      //             formatter: '{b} : {c} ({d}%)'
      //           },
      //           legend: {
      //             orient: 'vertical',
      //             left: 'left'
      //           },
      //           series: [
      //             {
      //               type: 'pie',
      //               radius: '55%',
      //               center: ['50%', '60%'],
      //               data: pArray,
      //               emphasis: {
      //                 itemStyle: {
      //                   shadowBlur: 10,
      //                   shadowOffsetX: 0,
      //                   shadowColor: 'rgba(0, 0, 0, 0.5)'
      //                 }
      //               }
      //             }
      //           ]
      //         };
      //       }
      //       statistic.setOption(option,true);
      //       window.onresize = function() {
      //         statistic.resize();
      //       };
      //     }
      //   });
      // })

      // let params = {
      //   dateFormat :"%Y", //%Y-%m
      //   riqi :getYearFormat(_this.echartsDate),//年
      //   // riqi :getMonthFormat(_this.echartsDate),//年月
      //   thisTable : {//当前表
      //     tableName :'shangpin',//当前表表名,
      //     sumColum : 'shangpin_number', //求和字段
      //     date : 'insert_time',//分组日期字段
      //     // string : 'shangpin_name',//分组字符串字段
      //     // types : 'shangpin_types',//分组下拉框字段
      //   },
      //   // joinTable : {//级联表（可以不存在）
      //   //     tableName :'yonghu',//级联表表名
      //   //     // date : 'insert_time',//分组日期字段
      //   //     string : 'yonghu_name',//分组字符串字段
      //   //     // types : 'yonghu_types',//分组下拉框字段
      //   // }
      // }
      // _this.chartVisiable = true;
      // _this.$nextTick(() => {
      //   var statistic = this.$echarts.init(document.getElementById("statistic1"), 'macarons');
      //   this.$http({
      //     url: "barSum",//barCountOne barCountTwo barSumOne barSumTwo
      //     method: "get",
      //     params: params
      //   }).then(({data}) => {
      //     if(data && data.code === 0){
      //       let yAxisName = "数值";//y轴
      //       let xAxisName = "月份";//x轴
      //       let series = [];//具体数据值
      //       data.data.yAxis.forEach(function (item,index) {//点击可关闭的按钮字符串在后台方法中
      //         let tempMap = {};
      //         tempMap.name=data.data.legend[index];
      //         tempMap.type='bar';
      //         tempMap.data=item;
      //         series.push(tempMap);
      //       })
      //
      //       var option = {
      //         tooltip: {
      //           trigger: 'axis',
      //           axisPointer: {
      //             type: 'cross',
      //             crossStyle: {
      //               color: '#999'
      //             }
      //           }
      //         },
      //         toolbox: {
      //           feature: {
      //             // dataView: { show: true, readOnly: false },  // 数据查看
      //             magicType: { show: true, type: ['line', 'bar'] },//切换图形展示方式
      //             // restore: { show: true }, // 刷新
      //             saveAsImage: { show: true }//保存
      //           }
      //         },
      //         legend: {
      //           data: data.data.legend//标题  可以点击导致某一列数据消失
      //         },
      //         xAxis: [
      //           {
      //             type: 'category',
      //             axisLabel:{interval: 0},
      //             name: xAxisName,
      //             data: data.data.xAxis,
      //             axisPointer: {
      //               type: 'shadow'
      //             }
      //           }
      //         ],
      //         yAxis: [
      //           {
      //             type: 'value',//不能改
      //             name: yAxisName,//y轴单位
      //             axisLabel: {
      //               formatter: '{value}' // 后缀
      //             }
      //           }
      //         ],
      //         series:series//具体数据
      //       };
      //       statistic.setOption(option,true);
      //       window.onresize = function () {
      //         statistic.resize();
      //       };
      //     }else {
      //       this.$message({
      //         message: "报表未查询到数据",
      //         type: "success",
      //         duration: 1500,
      //         onClose: () => {
      //           this.search();
      //         }
      //       });
      //     }
      //   });
      // });


    },
    chartDialog2() {
      let _this = this;
      // this.$nextTick(()=>{
      //   var statistic = this.$echarts.init(document.getElementById("statistic2"),'macarons');
      //
      //   var year = _this.echartsDate.getFullYear();
      //   var month = _this.echartsDate.getMonth() + 1 < 10 ? '0' + (_this.echartsDate.getMonth() + 1) : _this.echartsDate.getMonth() + 1;
      //   var riqi=year + "-" + month;
      //
      //   this.$http({
      //     url: "pieSum",//pieSum pieCount
      //     method: "get",
      //     params: {
      //       riqi :riqi
      //     }
      //   }).then(({data}) => {
      //     if (data && data.code === 0) {
      //       let res = data.data;
      //       let xAxis = [];
      //       let yAxis = [];
      //       let pArray = []
      //       var option = {};
      //       for(let i=0;i<res.length;i++){
      //         xAxis.push(res[i].name);
      //         yAxis.push(res[i].value);
      //         pArray.push({
      //           value: res[i].value,
      //           name: res[i].name
      //         })
      //         option = {
      //           title: {
      //             text: '物资月度申请统计报表',
      //             left: 'center'
      //           },
      //           tooltip: {
      //             trigger: 'item',
      //             formatter: '{b} : {c} ({d}%)'
      //           },
      //           legend: {
      //             orient: 'vertical',
      //             left: 'left'
      //           },
      //           series: [
      //             {
      //               type: 'pie',
      //               radius: '55%',
      //               center: ['50%', '60%'],
      //               data: pArray,
      //               emphasis: {
      //                 itemStyle: {
      //                   shadowBlur: 10,
      //                   shadowOffsetX: 0,
      //                   shadowColor: 'rgba(0, 0, 0, 0.5)'
      //                 }
      //               }
      //             }
      //           ]
      //         };
      //       }
      //       statistic.setOption(option,true);
      //       window.onresize = function() {
      //         statistic.resize();
      //       };
      //     }
      //   });
      // })
    },
    init(){
        if(this.$storage.get('Token')){
        this.$http({
            url: `${this.$storage.get('sessionTable')}/session`,
            method: "get"
        }).then(({ data }) => {
            if (data && data.code != 0) {
            router.push({ name: 'login' })
            }
        });
        }else{
            router.push({ name: 'login' })
        }
    },
    navigateTo(path) {
      this.$router.push({ path: path });
    }
  }
};

</script>

<style lang="scss" scoped>
.dashboard-container {
  padding: 24px;
  min-height: calc(100vh - 64px);
  background: linear-gradient(135deg, #f5f7fa 0%, #e8f4f8 100%);
}

// 欢迎区域
.welcome-section {
  position: relative;
  background: linear-gradient(135deg, #4A90E2 0%, #5B9BD5 100%);
  border-radius: 20px;
  padding: 50px 40px;
  margin-bottom: 30px;
  overflow: hidden;
  box-shadow: 0 15px 40px rgba(74, 144, 226, 0.3);
  
  .welcome-content {
    position: relative;
    z-index: 2;
    text-align: center;
  }
  
  .welcome-icon {
    width: 80px;
    height: 80px;
    background: rgba(255, 255, 255, 0.2);
    border-radius: 20px;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 20px;
    backdrop-filter: blur(10px);
    
    svg {
      width: 45px;
      height: 45px;
      color: #fff;
    }
  }
  
  .welcome-title {
    font-size: 32px;
    font-weight: 700;
    color: #fff;
    margin: 0 0 12px 0;
    text-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
  }
  
  .welcome-subtitle {
    font-size: 16px;
    color: rgba(255, 255, 255, 0.85);
    margin: 0;
    letter-spacing: 1px;
  }
  
  .decoration-circles {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    pointer-events: none;
    
    .circle {
      position: absolute;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.1);
      
      &.circle-1 {
        width: 200px;
        height: 200px;
        top: -50px;
        right: -50px;
        animation: float 6s ease-in-out infinite;
      }
      
      &.circle-2 {
        width: 150px;
        height: 150px;
        bottom: -30px;
        left: 10%;
        animation: float 8s ease-in-out infinite 1s;
      }
      
      &.circle-3 {
        width: 100px;
        height: 100px;
        top: 20%;
        left: 5%;
        animation: float 7s ease-in-out infinite 2s;
      }
    }
  }
}

@keyframes float {
  0%, 100% { transform: translate(0, 0); }
  50% { transform: translate(10px, -15px); }
}

// 快捷功能卡片
.quick-actions {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
  gap: 20px;
  
  .action-card {
    background: #fff;
    border-radius: 16px;
    padding: 24px;
    display: flex;
    align-items: center;
    gap: 20px;
    cursor: pointer;
    transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
    
    &:hover {
      transform: translateY(-5px);
      box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
      
      .card-icon {
        transform: scale(1.1) rotate(5deg);
      }
    }
    
    .card-icon {
      width: 60px;
      height: 60px;
      border-radius: 14px;
      display: flex;
      align-items: center;
      justify-content: center;
      flex-shrink: 0;
      transition: all 0.3s ease;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
      
      svg {
        width: 30px;
        height: 30px;
        color: #fff;
      }
    }
    
    .card-content {
      h3 {
        font-size: 17px;
        font-weight: 600;
        color: #2d3748;
        margin: 0 0 6px 0;
      }
      
      p {
        font-size: 13px;
        color: #718096;
        margin: 0;
      }
    }
  }
}

// 图表区域
.chart-section {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 20px;
  margin-top: 30px;
  
  .chart-card {
    background: #fff;
    border-radius: 16px;
    padding: 24px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
    
    .chart-header {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-bottom: 16px;
    }
  }
}

// 响应式
@media (max-width: 768px) {
  .dashboard-container {
    padding: 16px;
  }
  
  .welcome-section {
    padding: 30px 20px;
    
    .welcome-title {
      font-size: 24px;
    }
  }
  
  .quick-actions {
    grid-template-columns: 1fr;
  }
  
  .chart-section {
    grid-template-columns: 1fr;
  }
}
</style>