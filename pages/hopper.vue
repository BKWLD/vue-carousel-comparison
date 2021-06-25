<template lang='pug'>
  hooper
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