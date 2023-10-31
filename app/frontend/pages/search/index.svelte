<script lang="ts">
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  let search = "";

  export let props = {};

  const keyup = (e) => {
    //
    search = e.target.value;

    // router.post(`search?q=${search}`);

    const data = {
      search,
    };

    router.post("/search", data, {
      onBefore: (visit) => {},
      onStart: (visit) => {},
      onProgress: (progress) => {},
      onSuccess: (page) => {
        console.log(page);
      },
      onError: (errors) => {
        console.log(errors);
      },
      onCancel: () => {},
      onFinish: (visit) => {
        console.log(visit);
      },
    });

    // console.log(e);
  };
</script>

<input on:keyup={keyup} name="q" placeholder="search" />
<div>
  <span>{search}</span>
</div>
