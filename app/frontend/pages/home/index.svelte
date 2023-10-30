<script lang="ts">
  // export let employee = {};
  import { onMount } from "svelte";
  import * as s from "@inertiajs/svelte";
  import * as i from "@inertiajs/inertia";
  import { router } from "@inertiajs/svelte";

  const submit = () => {
    const employee = {
      _token: document.cookie.substr(11, 86),
    };

    router.delete(`/employees/sign_out`, { employee });
  };

  // onMount(() => {
  //   console.log(employee);
  // });
</script>

<h1>Home</h1>

<form on:submit|preventDefault={submit}>
  <input type="hidden" name="_method" value="delete" /><button type="submit"
    >Sign out</button
  >

  <input name="authenticity_token" />
</form>
