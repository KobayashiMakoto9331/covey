import * as Vue from "vue";
import dailyProgramComp from 'controllers/covey/pages/daily_program_comp'

// ここら辺でアプリに必要そうな設定を諸々読み込んでみる
const App = Vue.createApp(dailyProgramComp);


App.mount("#app");