<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let product = {};
  export let errors = {};

  const create = () => {
    router.post("/products", product, {
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

<h1>New Product</h1>
<Form {product} {errors} />
<controls>
  <button on:click={create}>Create</button>
  <a role="button" href={`/products`} use:inertia>Back</a>
</controls>
