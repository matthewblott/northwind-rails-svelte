<script lang="ts">
  // import { router } from "@inertiajs/svelte";
  // import { inertia } from "@inertiajs/svelte";
  import { getCookie } from "../lib/utils";
  import { onMount } from "svelte";

  export let path = "";
  export let value = "";
  export let display = "";

  let records = [];
  let component;

  onMount(() => {
    if (display !== "") {
      component.querySelector('input[placeholder="search"]').value = display;
    }
  });

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

      const cookie = getCookie("XSRF-TOKEN");

      fetch(`${path}`, {
        method: "post",
        headers: {
          "Content-Type": "application/json",
          "X-Inertia": true,
          "X-XSRF-TOKEN": cookie,
        },
        body: JSON.stringify(data),
      })
        .then((response) => response.json())
        .then((page) => {
          records = page;
        })
        .catch((error) => {
          console.log(error);
        });
    }, 500);
  };

  const click = (e) => {
    component.querySelector('input[placeholder="search"]').value =
      e.target.innerText;

    value = e.target.querySelector("span[hidden]").innerText;

    records = [];
  };
</script>

<div bind:this={component}>
  <div>
    <input on:keyup={keyup} placeholder="search" title={value} />
    <input type="hidden" bind:value />
    <span>{value === null ? "" : value}</span>
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
