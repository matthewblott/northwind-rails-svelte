<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import Layout from "../../components/Layout.svelte";
  export let employees = [];
</script>

<Layout>
  <h1>Employees</h1>

  <ul>
    {#each employees as employee}
      <li>
        <a href={`/employees/${employee.id}`} use:inertia
          >{employee.first_name} {employee.last_name}</a
        >
      </li>
    {/each}
  </ul>
</Layout>
