<script lang="ts">
  // import { router } from "@inertiajs/svelte";
  import { getCookie } from "../../lib/utils";
  import { onMount } from "svelte";

  let csrfToken = "";

  onMount(() => {
    csrfToken = getCookie("XSRF-TOKEN");
  });

  // const submit = (e) => {
  //   const target = e.target;
  //   const form = target.closest("form");
  //   let formData = new FormData(form);
  //   const cookie = getCookie("XSRF-TOKEN");
  //   formData.append("authenticity_token", cookie);
  //   const jsonObject = Object.fromEntries(formData);
  //   const data = JSON.stringify(jsonObject);
  //   router.post("/employees/sign_in", data);
  // };
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
