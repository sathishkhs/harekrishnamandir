
<!-- Footer Scripts -->
<script src="assets/js/glightbox.min.js"></script>

<!-- JS | Custom script for all pages -->
<script src="assets/js/custom.js"></script>
<script>
let images = document.querySelectorAll(".lazyload");
lazyload(images);


$('input').focus((e) => {
    alert('focus')
  e.preventDefault();
  e.target.focus({preventScroll: true});
})

</script>