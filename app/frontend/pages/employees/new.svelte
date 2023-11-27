<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let employee = {};
  export let errors = {};

  const create = () => {
    router.post(
      `/employees/new`,
      { employee },
      {
        replace: false,
        only: ["errors"],
        onError: (errors) => {
          console.log(errors);
        },
      }
    );
  };
</script>

<h1>New Employee</h1>
<controls>
  <button on:click={create}>Create</button>
  <a role="button" href={`/employees`} use:inertia>Back</a>
</controls>
<spacer data-xs />
<Form {employee} {errors} />
