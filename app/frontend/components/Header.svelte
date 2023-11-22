<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import Logout from "./Logout.svelte";
  export let name = "";
</script>

<header>
  <input id="menu" type="checkbox" />
  <span style="padding-right: 5px">
    <a href="/" use:inertia>Northwind</a>
  </span>
  <nav>
    <ul>
      <li><a href="/addresses" use:inertia>Addresses</a></li>
      <li><a href="/categories" use:inertia>Categories</a></li>
      <li><a href="/customers" use:inertia>Customers</a></li>
      <li><a href="/employees" use:inertia>Employees</a></li>
      <li><a href="/orders" use:inertia>Orders</a></li>
      <li><a href="/products" use:inertia>Products</a></li>
      <li><a href="/regions" use:inertia>Regions</a></li>
      <li><a href="/shippers" use:inertia>Shippers</a></li>
      <li><a href="/suppliers" use:inertia>Suppliers</a></li>
    </ul>
    <ul>
      <li>
        <span>Hello {name}</span>
      </li>
      <li>
        <Logout />
      </li>
    </ul>
  </nav>
  <label for="menu" />
</header>

<style>
  header {
    display: grid;
    grid-template-columns: max-content auto;
  }

  input {
    display: none;
  }

  span {
    grid-column: 1;
    grid-row: 1;
  }

  input:checked ~ span {
    display: none;
  }

  nav {
    display: grid;
    grid-column: 2;
    grid-row: 1;
    grid-template-columns: auto auto;
    justify-content: space-between;
  }

  input:checked ~ nav {
    grid-column: 1;
  }

  input:checked ~ nav ul:last-of-type {
    grid-column: 1;
  }

  li {
    display: inline;
  }

  input:checked ~ nav li {
    display: block;
  }

  label {
    display: none;
  }

  label {
    justify-self: end;
    font-size: 2rem;
    line-height: 0.5em;
    grid-column: 2;
    grid-row: 1;
    text-align: right;
  }

  label:after {
    content: "\2261";
  }

  input:checked ~ label {
    grid-column: 2;
  }

  @media (max-width: 600px) {
    label {
      display: block;
    }

    span {
      display: block;
    }

    input:not(:checked) ~ nav {
      display: none;
    }
  }
</style>
