<script lang="ts">
  import { getCookie } from "../lib/utils";
  import { onMount } from "svelte";

  let csrfToken = "";

  onMount(() => {
    csrfToken = getCookie("XSRF-TOKEN");
  });
</script>

<form action="/employees/sign_out" method="post">
  <input type="hidden" name="_method" value="delete" />
  <input type="hidden" name="authenticity_token" value={csrfToken} />
  <button>Logout</button>
</form>

<style>
  button {
    border: none;
    padding: 0;

    &:hover {
      cursor: pointer;
      text-decoration: underline;
    }
  }
</style>
