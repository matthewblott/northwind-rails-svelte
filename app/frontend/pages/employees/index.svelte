<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  export let employees = [];
  export let pagy = {};
</script>

<h1>Employees</h1>

<nav>
  <ul>
    <li>
      <a href={`/employees/?page=1`} use:inertia>First</a>
    </li>
    <li>
      <a href={`/employees/?page=` + (pagy.page - 1)} use:inertia>Previous</a>
    </li>
    <li>
      <a href={`/employees/?page=` + pagy.next} use:inertia>Next</a>
    </li>
    <li>
      <a href={`/employees/?page=` + pagy.last} use:inertia>Last</a>
    </li>
    <li><a href="/employees/new" use:inertia>New</a></li>
  </ul>
</nav>
<ul>
  {#each employees as employee}
    <li>
      <a href={`/employees/${employee.id}`} use:inertia
        >{employee.first_name} {employee.last_name}</a
      >
    </li>
  {/each}
</ul>

<style>
  nav ul {
    display: flex;
  }

  li {
    padding-right: 5px;
  }
</style>
