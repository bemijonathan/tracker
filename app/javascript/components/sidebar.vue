<template>
  <section style="background:azure; height:100vh" class="sideNav">
    <b-sidebar
      position="static"
      :expand-on-hover="expandOnHover"
      :reduce="reduce"
      type="is-dark"
      :open="open"
    >
      <div class="p-1">
        <div class="block" style="text-align:center">
            <a href="/">
          <img
            src="https://raw.githubusercontent.com/buefy/buefy/dev/static/img/buefy-logo.png"
            alt="Lightweight UI components for Vue.js based on Bulma"
            width="100px"
          />
            </a>
        </div>
        <b-menu class="is-custom-mobile">
          <b-menu-list>
            <b-menu-item label="Profile" :href=" '/users/'+ user.user.id + '/edit' "></b-menu-item>
            <b-menu-item  label="Add New Parcel" href="/transactions/new"></b-menu-item>
            <b-menu-item  label="Shipments" class="is-active" href="/dashboard"></b-menu-item>
            <b-menu-item  label="Orders (comming soon)" disabled></b-menu-item>   
            <b-menu-item  label="All Users" href="/users" v-if="user.user.admin"></b-menu-item>            
            <b-menu-item  label="All Transactions" href="/transactions" v-if="user.user.admin"></b-menu-item>   
          </b-menu-list>
          <div style="margin-top:50px;">
            <b-menu-list >
            <b-menu-item label="Logout" href="/logout"></b-menu-item>
          </b-menu-list>
          </div>
          
        </b-menu>
      </div>
    </b-sidebar>
  </section>
</template>

<script>
export default {
  props:["user"],
  data() {
    return {
      expandOnHover: false,
      mobile: "reduce",
      reduce: false,
      open:false
    };
  }
};
</script>

<style lang="scss">
.p-1 {
  padding: 1em;
}
@media screen and (max-width: 1023px) {
    .b-sidebar {
        .sidebar-content {
            &.is-mini-mobile {
                &:not(.is-mini-expand),
                &.is-mini-expand:not(:hover) {
                    .menu-list {
                        li {
                            a {
                            span:nth-child(2) {
                                display: none;
                            }
                            }
                            ul {
                            padding-left: 0;
                            li {
                                a {
                                display: inline-block;
                                }
                            }
                            }
                        }
                    }
                    .menu-label:not(:last-child) {
                        margin-bottom: 0;
                    }
                }
            }
        }
    }
}
@media screen and (min-width: 1024px) {
    .b-sidebar {
        .sidebar-content {
            &.is-mini {
                &:not(.is-mini-expand),
                &.is-mini-expand:not(:hover) {
                    .menu-list {
                        li {
                            a {
                            span:nth-child(2) {
                                display: none;
                            }
                            }
                            ul {
                            padding-left: 0;
                            li {
                                a {
                                display: inline-block;
                                }
                            }
                            }
                        }
                    }
                    .menu-label:not(:last-child) {
                        margin-bottom: 0;
                    }
                }
            }
        }
    }
}
</style>