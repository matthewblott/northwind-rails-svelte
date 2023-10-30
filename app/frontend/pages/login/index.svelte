<script lang="ts">
  import { router } from "@inertiajs/svelte";

  const submit = () => {
    const email = document.querySelector('[name="email"]').value;
    const password = document.querySelector('input[name="password"]').value;

    const employee = {
      email: email,
      password: password,
      _token: document.cookie.substr(11, 86),
    };

    router.post(`/employees/sign_in`, { employee });
  };
</script>

<div>Login</div>

<form on:submit|preventDefault={submit}>
  <div>
    <label>Email <input name="email" value="admin@example.com" /></label>
  </div>
  <div>
    <label>Password <input name="password" type="password" /></label>
  </div>
  <div>
    <button on:click|preventDefault={submit}>Login</button>
  </div>
</form>
