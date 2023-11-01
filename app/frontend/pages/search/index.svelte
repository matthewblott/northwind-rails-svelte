<script lang="ts">
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  let count = 0;

  const keyup = (e) => {
    const search = e.target.value;

    const data = {
      search,
    };

    const timeout = setTimeout(() => {
      if (search.length < 2) {
        count = 0;
        return;
      }

      router.post("/search", data, {
        onSuccess: (page) => {
          console.log(page);
          count = page.props.employees.length;
        },
        onError: (errors) => {
          console.log(errors);
        },
      });
    }, 500);
  };
</script>

<input on:keyup={keyup} placeholder="search" />
<div>
  <span>Number of records: {count}</span>
</div>
