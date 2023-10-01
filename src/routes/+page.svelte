<script lang="ts">
  export let data;
</script>

<main class="container grid gap-4">
  <h1 class="text-2xl">
    Data generated using <a href="https://www.fakepersongenerator.com">Fake Person Generator</a>
  </h1>
  {#each data.users as { id, firstName, lastName, email, profilePicture } (id)}
    <div class="flex gap-4 items-center">
      <img class="w-10 h-10 rounded-full" src={profilePicture} alt={`${firstName} ${lastName}`} />
      <span>{`${firstName} ${lastName}`}</span>
      <span>|</span>
      <span>{email}</span>
    </div>
  {/each}
</main>
