<template lang='pug'>
.page
  h1 hopper

  h2 Full width slides
  hooper(:wheelControl="false")
    slide(v-for='num in 6' :key='num' :num='num')
      visual-slide(:num='num')

  h2 Multiple slides per viewport with peeking
  hooper(
    :wheelControl="false"
    :itemsToShow="3"
    :centerMode="true"
    :infiniteScroll="true"
  )
    slide(v-for='num in 6' :key='num' :num='num')
      visual-slide(:num='num')

  h2 Less slides than pagination
  hooper(
    :wheelControl="false"
    :itemsToShow="3"
    :centerMode="true"
   )
    slide(v-for='num in 1' :key='num' :num='num')
      visual-slide(:num='num')

  h2 Variable aspect slides
  hooper(
    :wheelControl="false"
    :itemsToShow="3"
    :centerMode="true"
    :infiniteScroll="true"
  )
    slide(v-for='num in 6' :key='num' :num='num')
      visual-slide(:num='num' variable-width)


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

