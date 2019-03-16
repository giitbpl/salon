// JavaScript Document
var header = new Typed("#header", {
  strings: ["Scroll Down", "&amp; Watch the Paragraph", "Type Itself."],
  typeSpeed: 40,
  backSpeed: 20,
  backDelay: 1000,
  showCursor: false,
  loop: true,
  loopCount: 4,
});


// Typed Paragraph Lines 

function paragraphLine(lineNum, content, speed) {
  new Waypoint({
    element: document.getElementById(lineNum),
    handler: function(direction) {
      if(direction === 'down') {
        new Typed(`#${lineNum}`, {
            strings: [content],
            typeSpeed: speed,
            showCursor: false,
            loop: false,
            onComplete: function() {
              setTimeout(function() {
                $(`#${lineNum}`).removeClass('typed');
              }, 1600)
            }
        });
        
        this.disable();   // disable waypoint after typed init
      }
    },
    offset: 'bottom-in-view'
  })
} 

var paragraphContent = [
  "Lorem ipsum dolor sit, amet consectetur adipisicing elit.", 
  "Unde fugiat ratione aperiam tempora cum voluptate atque asperiores.", 
  "Inventore consectetur, officiis officia repellendus, ipsum ab quis maiores quas e!", 
  "Provident? Sed ut perspiciatis unde omnis iste natus error sit voluptatem.",
  "Accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae.", 
  "Ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
  "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.",
  "Sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.",
  "Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur.",
  "Adipisci velit, sed quia non numquam eius modi tempora incidunt.",
  "Ut labore et dolore magnam aliquam quaerat voluptatem. dolores eos qui.",
  "Veritatis et quasi architecto beatae vitae dicta sunt sed quia non!",
  "Consequuntur magni dolores eos?"
]

var typeSpeed = 40;

for(let i = 1; i <= 13; i++) {
  paragraphLine(`line${i}`, paragraphContent[i - 1], typeSpeed);
  typeSpeed += 6;
}