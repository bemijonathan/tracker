<template>
  <div class="columns">
      <sidenav class="column is-one-fifth" :user="$props"> </sidenav>
      <div class="is-full">
          <Table class="" expanded :props="$props"></Table>
      </div>
  </div>
</template>

<script>
import sidenav from './components/sidebar'
import Table from './components/table'
export default {
    props:["user", "transactions"],
    components:{
        sidenav,
        Table
    }
}
</script>

<style>
.is-full{
    width:100%;
    margin-top: 35px;
}

</style>