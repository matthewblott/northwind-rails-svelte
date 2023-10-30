<script>
  import Header from "./Header.svelte";
  import Footer from "./Footer.svelte";

  export let employee = {};
</script>

<Header name={employee.first_name} />

<main>
  <slot />
</main>

<Footer />
