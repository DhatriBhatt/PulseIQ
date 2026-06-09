const currentPage = window.location.pathname.split("/").pop();
const navLinks = document.querySelectorAll("nav a");

navLinks.forEach(link => {
    if (link.getAttribute("href") === currentPage) {
        link.classList.add("active");
    }
});
const counters = document.querySelectorAll(".counter");

counters.forEach(counter => {
    counter.innerText = "0";

    const updateCounter = () => {
        const target = +counter.getAttribute("data-target");
        const current = +counter.innerText.replace(/[^0-9]/g, "");
        const increment = target / 100;

        if(current < target){
            let value = Math.ceil(current + increment);

            if(counter.dataset.type === "percent"){
                counter.innerText = value + "%";
            }else if(counter.dataset.type === "money"){
                counter.innerText = "$" + value + "K";
            }else if(counter.dataset.type === "number"){
                counter.innerText = value.toLocaleString();
            }

            setTimeout(updateCounter, 20);
        }else{
            if(counter.dataset.type === "percent"){
                counter.innerText = target + "%";
            }else if(counter.dataset.type === "money"){
                counter.innerText = "$" + target + "K";
            }else if(counter.dataset.type === "number"){
                counter.innerText = target.toLocaleString();
            }
        }
    };

    updateCounter();
});