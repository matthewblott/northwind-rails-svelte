<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  export let employees = [];
  export let pagy = {};

  import Pager from "../../components/Pager.svelte";
</script>

<h1>Employees</h1>
<Pager {pagy} baseUrl="/employees" />

<ul>
  {#each employees as employee}
    <li>
      <a href={`/employees/${employee.id}`} use:inertia
        >{employee.first_name} {employee.last_name}</a
      >
    </li>
  {/each}
</ul>
