# jQuery

For several weeks now I have been revamping my personal website, jameswmoody.com which has included designing a new navigation bar that transitions from transparent to a visible background based on the user scrolling via jQuery. I've gotten things about 98% of how I want them to behave with the exception of one thing. I've added a light grey border to the navbar when it is visible but when it first appears, it shows as black until a slit second later it transitions to light grey. If I could get this figured out, I'd be very happy.

## Plan

I intend to study up more on jQuery to get a better understanding of how it's controlling the styling of my navbar. I will mostly look through quick articles rather than full tutorials to keep the information relevant to the task at hand.

## Result

After a intense session of digging through StackOverflow while messing around with Chrome's dev tools, I was finally able to get the desired result. Originally, I was rendering a navbar with no border-bottom and using jQuery to add a border on scroll. The problem is that since I had a fade in transition on the navbar, jQuery was adding a border a split second before the transition finished taking effect. Since Chrome has some default CSS for certain elements, the default color of black was added when the border first rendered. This is why no CSS overrides I tried would work. It finally dawned on me to change the initial navbar state of no border to having a transparent navbar to start off with. Then jQuery can do it's thing when the user scrolls to make the border visible at the same time as the navbar itself.
