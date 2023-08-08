const dailyProgramComp = {
    props: ['snippets'],
    template:
        `
      <!--デイリープログラム-->
      <div class="daily-program-comp">
        {{text}}
      </div>
    `,
    data() {
        return {
            text: '新しいシステム',
        }
    },
    components: {},
    computed: {},
    created() {},
    methods: {},
}

export default dailyProgramComp