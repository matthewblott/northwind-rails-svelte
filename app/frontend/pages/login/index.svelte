<script lang="ts">
  import { router } from "@inertiajs/svelte";

  const submit = () => {
    const email = document.querySelector('[name="email"]').value;
    const password = document.querySelector('input[name="password"]').value;

    const employee = {
      email: email,
      password: password,
    };

    router.post(`/employees/sign_in`, { employee });
    // router.get("/");
  };
</script>

<div>Login</div>

<form on:submit|preventDefault={submit}>
  <div>
    <label>Email <input name="email" /></label>
  </div>
  <div>
    <label>Password <input name="password" type="password" /></label>
  </div>
  <div>
    <button on:click|preventDefault={submit}>Login</button>
  </div>
</form>
