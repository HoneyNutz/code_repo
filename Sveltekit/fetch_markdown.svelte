<script>
  //Using Marked NPM repo
  //npm -i -g marked
  //WARNING for parsing dangerous code to use DOMPurify
  //https://github.com/cure53/DOMPurify

  import { marked } from "marked";
  const url = "https://raw.githubusercontent.com/sveltejs/kit/master/README.md";
</script>

{#await fetch(url).then((r) => r.text()) then text}
  {@html marked(text)}
{/await}
