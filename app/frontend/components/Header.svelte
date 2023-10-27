<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";

  const submit = () => {
    router.delete("/employees/sign_out");
    router.get("/");
  };
</script>

<header>
  <ul>
    <li><a><a href="/" use:inertia>Home</a> </a></li>
    <li><a href="/customers" use:inertia>Customers</a></li>
    <li><a href="/employees" use:inertia>Employees</a></li>
    <li>
      <button on:click={submit}>Sign Out</button>
    </li>
  </ul>
</header>

<style>
  ul {
    display: flex;
  }

  li {
    padding-right: 5px;
  }

  button {
    border: none;
    padding: 0;

    &:hover {
      cursor: pointer;
      text-decoration: underline;
    }
  }
</style>
