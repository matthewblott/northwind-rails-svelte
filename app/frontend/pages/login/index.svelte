<script lang="ts">
  import { getCookie } from "../../lib/utils";
  import { onMount } from "svelte";

  let csrfToken = "";

  onMount(() => {
    csrfToken = getCookie("XSRF-TOKEN");
  });
</script>

<div>Login</div>

<form action="/employees/sign_in" method="post">
  <div>
    <label
      >email <input name="employee[email]" value="admin@example.com" /></label
    >
  </div>
  <div>
    <label
      >password <input
        name="employee[password]"
        type="password"
        value="password"
      /></label
    >
    <input type="hidden" name="authenticity_token" value={csrfToken} />
  </div>
  <div>
    <button>login</button>
  </div>
</form>
