<script lang="ts">
  import { getCookie } from "../../lib/utils";
  import { onMount } from "svelte";

  let csrfToken = "";

  onMount(() => {
    csrfToken = getCookie("XSRF-TOKEN");
  });
</script>

<h1>Northwind</h1>
