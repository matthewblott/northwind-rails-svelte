<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  import Form from "./Form.svelte";
  export let employee = {};
  export let manager = {};
</script>

<h1>Employee</h1>
<controls>
  <a role="button" href={`/employees/${employee.id}/edit`} use:inertia>Edit</a>
  <a role="button" href={`/employees`} use:inertia>Back</a>
</controls>
<Form {employee} {manager} disabled="true" />
