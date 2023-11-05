<script lang="ts">
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";
  import { getCookie } from "../lib/utils";

  export let path = "";
  export let returnPath = "";
  let id = "";
  let records = [];
  let component;

  const keyup = (e) => {
    const search = e.target.value;

    const data = {
      search,
      returnPath,
    };

    const timeout = setTimeout(() => {
      if (search.length === 0) {
        records = [];
        return;
      }

      if (search.length < 2) {
        return;
      }

      const cookie = getCookie("XSRF-TOKEN");

      fetch(`${path}`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          "X-Inertia": true,
          "X-XSRF-TOKEN": cookie,
        },
        body: JSON.stringify(data),
      })
        .then((response) => response.json())
        .then((page) => {
          console.log(page);
          records = page;
          // records = page.props.records;
        })
        .catch((error) => {
          console.log(error);
        });

      // router.post(path, data, {
      //   onSuccess: (page) => {
      //     records = page.props.records;
      //   },
      //   onError: (errors) => {
      //     console.log(errors);
      //   },
      // });
    }, 500);
  };

  const click = (e) => {
    component.querySelector('input[placeholder="search"]').value =
      e.target.innerText;

    id = e.target.querySelector("span[hidden]").innerText;

    records = [];
  };
</script>

<div bind:this={component}>
  <div>
    <input on:keyup={keyup} placeholder="search" title={id} />
    <input type="hidden" {id} />
    <span class="id">{id}</span>
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
</div>

<style>
  li {
    padding-right: 5px;
    cursor: pointer;
  }
</style>
