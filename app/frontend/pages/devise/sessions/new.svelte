<script lang="ts">
  import { router } from "@inertiajs/svelte";

  const submit = () => {
    const employee = {
      email: document.querySelector('input[name="email"]').value,
      password: document.querySelector('input[name="password"]').value,
    };

    router.post("/employees/sign_in", employee);
  };
</script>

<h1>Log in</h1>

<form on:submit|preventDefault={submit}>
  <div>
    <label>Email <input name="email" /></label>
  </div>
  <div>
    <label>Password <input type="password" name="password" /></label>
  </div>
  <div>
    <button type="submit">Save</button>
  </div>
</form>

<h2>Log in 2</h2>

<form action="/employees/sign_in" method="post">
  <div>
    <label>Email <input name="email" value="admin@examle.com" /></label>
  </div>
  <div>
    <label
      >Password <input
        type="password"
        name="password"
        value="password"
      /></label
    >
  </div>
  <div>
    <button type="submit">Save</button>
  </div>
</form>

<style>
  form label {
    display: inline-block;
  }

  form input {
    display: block;
  }

  form button {
    display: block;
    margin-top: 3px;

    &:hover {
      cursor: pointer;
    }
  }

  label + div {
    color: red;
    display: inline;
  }
</style>
