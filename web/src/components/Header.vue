<template>
    <a-layout-header class="header">
        <div class="logo"/>
        <a-menu
                theme="dark"
                mode="horizontal"
                :style="{ lineHeight: '64px' }"
        >
            <a-menu-item key="/">
                <router-link to="/">
                      网上选课
                </router-link>
            </a-menu-item>

            <!--不知道为什么，只要我这里隐藏一个子元素，后面的元素就跟着一起消失-->
            <a-menu-item key="/download" :style="1==1?{}:{display:'none'}">
                <router-link to="/download">
                    资源下载
                </router-link>
            </a-menu-item>

            <a-menu-item key="/about">
                <router-link to="/about">
                    关于我们
                </router-link>
            </a-menu-item>

            <a-menu-item key="/comment">
                <router-link to="/comment">
                    讨论天地
                </router-link>
            </a-menu-item>



            <!--学生操作下拉框-->
            <a-sub-menu key="stu" :style="user.role=='student'?{}:{visibility:'hidden'}">
                <template #title>
            <span>
              <span>学生</span>
            </span>
                </template>
                <a-menu-item key="s1">
                    <router-link to="/studentClassList">
                        学生选课
                    </router-link>
                </a-menu-item>
                <a-menu-item key="s2">
                    <router-link to="/studentChosenList">
                        选课结果查询
                    </router-link>
                </a-menu-item>
                <a-menu-item key="s3">
                    <router-link to="/studentScore">
                        我的成绩
                    </router-link>
                </a-menu-item>

            </a-sub-menu>

            <!--老师操作下拉框-->
            <a-sub-menu key="tea"  :style="user.role=='teacher'?{}:{visibility:'hidden'}">
                <template #title>
                    <span>
                      <span>老师</span>
                    </span>
                </template>
                <!--点开来后，显示该教师所需要教授的全部课程-->
                <a-menu-item key="t1">
                    <router-link to="/teacherClassList">
                        成绩管理
                    </router-link>
                </a-menu-item>
                <!--展示老师对学生的评价信息-->
                <a-menu-item key="t2">
                    <router-link to="/teacherComment">
                        我的评价
                    </router-link>
                </a-menu-item>
                <!--<a-menu-item key="t3">成绩预警</a-menu-item>-->
                <!--<a-menu-item key="t4">成绩通知</a-menu-item>-->
            </a-sub-menu>


            <!--管理员操作下拉框-->
            <a-sub-menu key="admin" :style="user.role=='admin'?{}:{visibility:'hidden'}">
                <template #title>
                    <span>
                      <span>管理员</span>
                    </span>
                </template>
                <a-menu-item key="a1">学生管理</a-menu-item>
                <a-menu-item key="a2">教师管理</a-menu-item>
                <a-menu-item key="a3">
                    <router-link to="/adminClassList">
                        课程管理
                    </router-link>
                </a-menu-item>
                <a-menu-item key="a4">
                    <router-link to="/adminFile">
                        资源管理
                    </router-link>
                </a-menu-item>
                <a-menu-item key="a5">
                    <router-link to="/adminComment">
                        评论管理
                    </router-link>
                </a-menu-item>
            </a-sub-menu>


            <!--登录/注册下拉框-->
            <a-sub-menu key="login/register" :style="user.id?{visibility:'hidden'}:{}">
                <template #title>
                    <span>
                      <span>登录/注册</span>
                    </span>
                </template>
                <a-menu-item key="l1" :onclick="showLogin">登录</a-menu-item>
                <a-menu-item key="l2" :onclick="showRegister">注册</a-menu-item>
            </a-sub-menu>


            <!--用户下拉框下拉框-->
            <a-sub-menu key="user" :style="user.id?{}:{visibility:'hidden'}">
                <template #title>
                    <span>
                      <span>欢迎您: {{user.realname}}</span>
                    </span>
                </template>
                <a-menu-item key="u1" :onclick="logout">注销登录</a-menu-item>
                <a-menu-item key="u2">
                    <router-link to="/resetPassword">
                        密码重置
                    </router-link>
                </a-menu-item>
                <!--<a-menu-item key="u3">个人信息</a-menu-item>-->
            </a-sub-menu>



        </a-menu>
    </a-layout-header>


    <a-modal
            v-model:visible="loginVisible"
            title="登录"
            ok-text="确认"
            cancel-text="取消"
            @ok="login">
        <a-form :model="loginUser" :label-col="{ span: 6 }" :wrapper-col="{ span: 18 }">
            <a-form-item label="用户名">
                <a-input v-model:value="loginUser.loginname" />
            </a-form-item>
            <a-form-item label="密码">
                <a-input v-model:value="loginUser.password" type="password"/>
            </a-form-item>
            <a-form-item label="身份选择">
                    <a-radio-group v-model:value="loginUser.role" button-style="solid">
                    <a-radio-button value="student">学生</a-radio-button>
                    <a-radio-button value="teacher">老师</a-radio-button>
                    <a-radio-button value="admin">管理员</a-radio-button>
                </a-radio-group>
            </a-form-item>
        </a-form>
    </a-modal>



    <a-modal
            v-model:visible="registerVisible"
            title="学生注册"
            ok-text="确认"
            cancel-text="取消"
            @ok="register">
        <a-form :model="registerUser" :label-col="{ span: 6 }" :wrapper-col="{ span: 18 }">
            <a-form-item label="登录名">
                <a-input v-model:value="registerUser.loginname" />
            </a-form-item>
            <a-form-item label="真实姓名">
                <a-input v-model:value="registerUser.realname" />
            </a-form-item>
            <a-form-item label="密码">
                <a-input v-model:value="registerUser.password" type="password"/>
            </a-form-item>
        </a-form>
    </a-modal>

</template>

<script>
    import { defineComponent,ref } from 'vue';
    import {Tool} from "@/util/Tool";
    import { message } from 'ant-design-vue';
    import {computed} from "@vue/reactivity";
    import axios from 'axios';
    import store from "@/store";
    import router from '../router';

    export default {
        name: "Header",
        setup() {
            /**
             * 登录的用户信息
             */
            const user = computed(() => store.state.user);

            /**
             * 登录框
             * @type {Ref<UnwrapRef<boolean>>}
             */
            const loginVisible = ref(false);
            const registerVisible = ref(false);

            const loginUser = ref({
                loginname:"",
                password:"",
                role:"student"
            });

            /**
             * 需要加入邮箱验证
             */
            const registerUser = ref({
                loginname:"",
                realname:"",
                password:"",
                //...
            })

            const showLogin = () => {
                loginVisible.value = true;
            };

            const hideLogin = () => {
                loginUser.value.loginname="";
                loginUser.value.password="";
                loginVisible.value = false;
            };

            const showRegister = () => {
                registerVisible.value = true;
            };

            const hideRegister = () => {
                registerUser.value.loginname="";
                registerUser.value.realname="";
                registerUser.value.password="";
                registerVisible.value = false;
            };

            const login = () => {
                console.log("点击登录按钮");
                if (Tool.isEmpty(loginUser.value.loginname) ||
                    Tool.isEmpty(loginUser.value.password)) {
                    message.error("请输入完整信息");
                    return false;
                }

                axios.post("/user/login",loginUser.value).then(resp=> {
                    const data=resp.data;
                    if (data.success) {
                        message.success("登录成功！");
                        /**
                         * 登录成功，将用户信息存入vuex
                         */
                        store.commit("setUser",data.content);
                        hideLogin();
                    } else {
                        message.error(data.message);
                    }
                })
            }

            /**
             * 注册
             */
            const register = () => {
                if (Tool.isEmpty(registerUser.value.loginname) ||
                    Tool.isEmpty(registerUser.value.password) ||
                    Tool.isEmpty(registerUser.value.realname)) {
                    message.error("请输入完整信息");
                    return false;
                }
                axios.post("/user/register",registerUser.value).then(resp=> {
                    const data = resp.data;
                    hideRegister();
                    if (data.success) {
                        message.success("注册成功");
                    } else {
                        message.error("注册失败！");
                    }
                })
            }


            /**
             * 登出框
             */
            const logout = () => {
                axios.post("/user/logout/"+user.token).then(resp=>{
                    const data = resp.data;
                    if(data.success) {
                        store.commit("setUser",{});
                        message.success("退出成功！");
                        router.push("/");
                    } else {
                        message.error(data.message);
                    }
                })
            }





            return {
                loginVisible,
                loginUser,
                user,
                showLogin,
                hideLogin,
                login,
                logout,
                registerUser,
                showRegister,
                hideRegister,
                registerVisible,
                register
            }
        }
    }
</script>

<style scoped>

</style>