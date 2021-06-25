<template lang='pug'>
.page
  h1 hopper

  h2 Full width slides
  hooper(:wheelControl="false")
    slide(v-for='num in 6' :key='num' :num='num')
      visual-slide(:num='num')
</template>

<script>
import { Hooper, Slide } from 'hooper';
import 'hooper/dist/hooper.css';

export default {
  name: 'App',
  components: {
    Hooper,
    Slide
  }
}
</script>

<style lang='stylus' scoped>
.hooper {
  height: auto;
}
</style>

