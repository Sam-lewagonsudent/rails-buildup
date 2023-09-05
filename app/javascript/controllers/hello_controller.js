import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  connect() {
    const labelboxes = document.querySelectorAll('.category_checkbox');

    labelboxes.forEach((label) => {
      const box = label.nextElementSibling;
      const updateCheckboxColor = (bx) => {
        if (bx.checked) {
          label.style.backgroundColor = "var(--category_checkbox)";
        } else {
          label.style.backgroundColor = "white";
        }
      };

      label.addEventListener('click', (event) => {
        event.preventDefault();
        box.checked = !box.checked;
        updateCheckboxColor(box);
      });

      updateCheckboxColor(box);
    });
  }




}



//   search(event) {
//     event.preventDefault(); // Prevent default form submission.

//       let url = new URL(this.element.action);
//       let params = new URLSearchParams(new FormData(this.element));
//       url.search = params.toString();
// console.log('test');
//       fetch(url, {
//           method: this.element.method,
//           headers: {
//             'X-Requested-With': 'XMLHttpRequest',
//             'Accept': 'text/javascript'
//           },
//       })
//       .then(response => response.text())
//       .then(data => {
//           // Handle the returned data
//       })
//       .catch(error => console.error('Error:', error));
//   }
  // search() {
  //   this.element.requestSubmit()
  //   console.log('test');
  // }
