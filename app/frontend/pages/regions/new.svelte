<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let region = {};
  export let errors = {};

  const create = () => {
    router.post("/regions", region, {
      onBefore: (visit) => {
        console.log(visit);
      },
      onStart: (visit) => {
        console.log(visit);
      },
      onProgress: (progress) => {
        console.log(progress);
      },
      onSuccess: (page) => {
        console.log(page);
      },
      onError: (errors) => {
        console.log(errors);
      },
      onCancel: () => {
        console.log("cancel");
      },
      onFinish: (visit) => {
        console.log(visit);
      },
    });
  };
</script>

<h1>New Region</h1>
<Form {region} {errors} />
<controls>
  <button on:click={create}>Create</button>
  <a href={`/regions`} use:inertia>Back</a>
</controls>
