<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let address = {};
  export let errors = {};

  const create = () => {
    router.post("/addresses", address, {
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

<h1>New Address</h1>
<Form {address} {errors} />

<button on:click={create}>Create</button>

<a href={`/addresses`} use:inertia>Back</a>

<style>
  label {
    display: block;
  }

  input {
    display: block;
  }

  button {
    display: inline-block;
    margin-top: 3px;

    &:hover {
      cursor: pointer;
    }
  }

  a {
    border-color: var(--border-color);
    border-width: 1px;
    border-style: solid;
    border-radius: var(--radius);
    padding: 4px;
    &:hover {
      text-decoration: none;
    }
  }
</style>
