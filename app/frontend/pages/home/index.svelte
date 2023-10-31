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

<h1>Home</h1>

<!-- <form action="/employees/sign_out" method="post"> -->
<!--   <input type="hidden" name="_method" value="delete" /> -->
<!--   <input type="hidden" name="authenticity_token" value={csrfToken} /> -->
<!--   <div> -->
<!--     <button>Sign Out</button> -->
<!--   </div> -->
<!-- </form> -->
