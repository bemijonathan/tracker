<template>
    <section style="text-align:center; margin-top:45px">
        <button class="button is-medium is-primary" @click="prompt">
            Search Tracking Number
        </button>
    </section>
</template>

<script>
    export default {
        methods: {
            prompt() {
                this.$buefy.dialog.prompt({
                    message: `What's your name?`,
                    inputAttrs: {
                        placeholder: '12345ACB',
                    },
                    trapFocus: true,
                    onConfirm(value){ 
                        window.location.assign('/search?q='+value)
                    }
                })
            },
        }
    }
</script>