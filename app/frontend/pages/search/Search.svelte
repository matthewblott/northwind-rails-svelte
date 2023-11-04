<script lang="ts">
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";
  let id = 0;
  let records = [];

  const path = "/search/employee";

  const keyup = (e) => {
    const search = e.target.value;

    const data = {
      search,
    };

    const timeout = setTimeout(() => {
      if (search.length === 0) {
        records = [];
        return;
      }

      if (search.length < 2) {
        return;
      }

      router.post(path, data, {
        onSuccess: (page) => {
          records = page.props.records;
        },
        onError: (errors) => {
          console.log(errors);
        },
      });
    }, 500);
  };

  const click = (e) => {
    document.querySelector('input[placeholder="search"]').value =
      e.target.innerText;

    const key = e.target.querySelector("span[hidden]").innerText;

    document.querySelector("#id").innerText = key;

    records = [];
  };
</script>

<div>
  <input on:keyup={keyup} placeholder="search" />
  <span id="id">{id}</span>
</div>

<ul>
  {#each Object.entries(records) as [key, value]}
    <li on:click={click}>
      <span>
        {Object.values(value)}
        <span hidden>{Object.keys(value)}</span>
      </span>
    </li>
  {/each}
</ul>

<style>
  li {
    padding-right: 5px;
    cursor: pointer;
  }
</style>
