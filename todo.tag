<todo>
    <ol>
      <li each={ items.filter(whatShow) }>
      { title } <input type="checkbox" checked={ done } onclick={ parent.toggle } class={ completed: done }>    
      </li>
    </ol>

    <form onsubmit={ add }>
      <input type="text" name='input' onkeyup={ edit }>
      <button disabled={ !text } class="button">Add #{ items.filter(whatShow).length + 1 }</button>

      <button class="button button-outline" disabled={ items.filter(onlyDone).length == 0 } onclick={ remmoveAllDone }>
      x{ items.filter(onlyDone).length } </button>
    </form>

    <!-- optional script tag -->
    <script>
      this.items = opts.items

      edit(e) {
        this.text = e.target.value
      }

      add(e) {
        if (this.text) {
          this.items.push({ title: this.text })
          this.text = this.input.value = ''
        }
      }

      removeAllDone(e) {
        this.items = this.items.filter(function(item) {
          return !item.done
        })
      }

      // an example showing how to filter items on a list
      whatShow(item){
        return !item.hidden
      }

      onlyDone(item) {
        return item.done
      }

      toggle(e) {
        var item = e.item
        item.done = !item.done
        return true
      }
    </script>
</todo>