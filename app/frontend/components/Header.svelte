<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import Logout from "./Logout.svelte";
  export let name = "";
</script>

<header>
  <ul>
    <li><a><a href="/" use:inertia>Home |</a> </a></li>
    <li><a><a href="/about" use:inertia>About |</a> </a></li>
    <li><a href="/customers" use:inertia>Customers |</a></li>
    <li><a href="/employees" use:inertia>Employees |</a></li>
    <li><a href="/products" use:inertia>Products</a></li>
  </ul>
  <ul>
    <li>
      <span>Hello {name} |</span>
    </li>
    <li>
      <Logout />
    </li>
  </ul>
</header>

<style>
  header {
    display: flex;
    justify-content: space-between;
  }

  ul {
    display: flex;
  }

  li {
    padding-right: 5px;
  }
</style>
