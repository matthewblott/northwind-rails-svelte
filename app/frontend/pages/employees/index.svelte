<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  export let employees = [];
  export let pagy = {};

  import Pager from "../../components/Pager.svelte";
</script>

<h1>Employees</h1>
<Pager {pagy} baseUrl="/employees" />

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Reports To</th>
      <th>Hire Date</th>
    </tr>
  </thead>
  <tbody>
    {#each employees as employee}
      <tr>
        <td>
          <a href={`/employees/${employee.id}`} use:inertia
            >{employee.first_name} {employee.last_name}</a
          >
        </td>
        <td
          >{employee.manager_first_name || "N/A"}
          {employee.manager_last_name || ""}</td
        >
        <td>{employee.hire_date}</td>
      </tr>
    {/each}
  </tbody>
</table>
