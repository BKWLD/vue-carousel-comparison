# vue-carousel-comparison

Comparing Vue carousel options for performance, DX, and ADA.

Check it out at https://vue-carousel-comparison.netlify.app

## vue-slick-carousel

- Default dot/arrow styling not consistent with treatment of dark and light and dots container doesn't take up height.
- Slide components needed wrapping in a simple div.  I couldn't use Vue-Visual directly.
- Using `responsive` prop causes "The client-side rendered virtual DOM tree is not matching server-rendered content" warning.
- Poor handling of slides that are wider than the viewport.
- Need to add css rulees to make draggable
