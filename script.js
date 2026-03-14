document.addEventListener("DOMContentLoaded", loadDisasters)

function loadDisasters(){

const disasters=[
{ id:1, type:"Flood", date:"12-07-2024", location:"Kolhapur"},
{ id:2, type:"Earthquake", date:"05-06-2023", location:"Pune"},
{ id:3, type:"Cyclone", date:"15-08-2022", location:"Mumbai"},
{ id:4, type:"Fire", date:"03-03-2023", location:"Nagpur"},
{ id:5, type:"Storm", date:"21-09-2023", location:"Satara"},
{ id:6, type:"Landslide", date:"11-07-2024", location:"Shimla"},
{ id:7, type:"Flood", date:"19-08-2022", location:"Kerala"},
{ id:8, type:"Cyclone", date:"02-10-2023", location:"Odisha"}
]

let table=document.getElementById("disasterTable")

disasters.forEach(d=>{

let row=`
<tr>
<td>${d.id}</td>
<td>${d.type}</td>
<td>${d.date}</td>
<td>${d.location}</td>
</tr>
`

table.innerHTML+=row

})

}

function searchDisaster(){

let input=document.getElementById("searchBox").value.toLowerCase()
let rows=document.querySelectorAll("#disasterTable tr")

rows.forEach((row,index)=>{

if(index===0) return

let text=row.innerText.toLowerCase()

if(text.includes(input))
row.style.display=""
else
row.style.display="none"

})

}

function refreshTable(){
location.reload()
}
