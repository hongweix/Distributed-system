<%-- 
    Document   : result
    Created on : Feb 2, 2016, 3:37:11 PM
    Author     : Hongwei Xie
--%>
<%-- This is the result page. --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%= request.getAttribute("doctype") %>

<html>
    <head>
        <title>Bird Picture</title>
    </head>
    <body>
        <%-- Get bird name. --%>
        <p>Here is an interesting picture of a <%= request.getAttribute("pictureTag")%></p>
        <%-- Set the link of a web page. --%>
        <p>from the <a href="http://nationalzoo.si.edu/scbi/migratorybirds/featured_photo/" target="_blank">
            Smithsonian Migratory Bird Center Bird Photo Gallery
                </a></p>
        <%-- Output a bird image with specific picture url. --%>
        <img src="<%= request.getAttribute("pictureURL")%>"><br><br>
        <%-- Output the author name. --%>
        <p><%= request.getAttribute("pictureAU")%></p>
        <%--  Connect to SearchBird servelet and call doGet method. --%>
         <form action="getAnBirdPicture" method="GET" >
            <%--  Drop box code from migratorybirds web page. --%>
            <div class="form-group">  
                <label for="tags" class="sr-only">Select a bird to display: </label>
                <select name="pix" class="form-control">
                    <option disabled="" selected="">Select a bird</option>
                        <option value="Abert's Towhee">Abert's Towhee</option>
                        
                        <option value="Acadian Flycatcher">Acadian Flycatcher</option>
                        
                        <option value="Acorn Woodpecker">Acorn Woodpecker</option>
                        
                        <option value="Adelie Penguin">Adelie Penguin</option>
                        
                        <option value="African Blue Tit">African Blue Tit</option>
                        
                        <option value="African Collared-Dove">African Collared-Dove</option>
                        
                        <option value="Alder Flycatcher">Alder Flycatcher</option>
                        
                        <option value="Allen's Hummingbird">Allen's Hummingbird</option>
                        
                        <option value="Altamira Oriole">Altamira Oriole</option>
                        
                        <option value="American Avocet">American Avocet</option>
                        
                        <option value="American Bittern">American Bittern</option>
                        
                        <option value="American Black Duck">American Black Duck</option>
                        
                        <option value="American Coot">American Coot</option>
                        
                        <option value="American Crow">American Crow</option>
                        
                        <option value="American Dipper">American Dipper</option>
                        
                        <option value="American Golden-Plover">American Golden-Plover</option>
                        
                        <option value="American Goldfinch">American Goldfinch</option>
                        
                        <option value="American Kestrel">American Kestrel</option>
                    
                        <option value="American Oystercatcher">American Oystercatcher</option>
                    
                        <option value="American Pipit">American Pipit</option>
                    
                        <option value="American Redstart">American Redstart</option>
                    
                        <option value="American Robin">American Robin</option>
                    
                        <option value="American Tree Sparrow">American Tree Sparrow</option>
                    
                        <option value="American White Pelican">American White Pelican</option>
                    
                        <option value="American Wigeon">American Wigeon</option>
                    
                        <option value="American Woodcock">American Woodcock</option>
                    
                        <option value="Anhinga">Anhinga</option>
                    
                        <option value="Anna's Hummingbird">Anna's Hummingbird</option>
                    
                        <option value="Antarctic Shag">Antarctic Shag</option>
                    
                        <option value="Antillean Mango">Antillean Mango</option>
                    
                        <option value="Aplomado Falcon">Aplomado Falcon</option>
                    
                        <option value="Arctic Tern">Arctic Tern</option>
                    
                        <option value="Arizona Woodpecker">Arizona Woodpecker</option>
                    
                        <option value="Ash-throated Flycatcher">Ash-throated Flycatcher</option>
                    
                        <option value="Asian Openbill">Asian Openbill</option>
                    
                        <option value="Atlantic Puffin">Atlantic Puffin</option>
                    
                        <option value="Audubon's Oriole">Audubon's Oriole</option>
                    
                        <option value="Australian Darter">Australian Darter</option>
                    
                        <option value="Australian King-Parrot">Australian King-Parrot</option>
                    
                        <option value="Australian Magpie">Australian Magpie</option>
                    
                        <option value="Azure-shouldered Tanager">Azure-shouldered Tanager</option>
                    
                        <option value="Bachman's Sparrow">Bachman's Sparrow</option>
                    
                        <option value="Bahama Mockingbird">Bahama Mockingbird</option>
                    
                        <option value="Bahama Woodstar">Bahama Woodstar</option>
                    
                        <option value="Baird's Sandpiper">Baird's Sandpiper</option>
                    
                        <option value="Baird's Sparrow">Baird's Sparrow</option>
                    
                        <option value="Bald Eagle">Bald Eagle</option>
                    
                        <option value="Baltimore Oriole">Baltimore Oriole</option>
                    
                        <option value="Bananaquit">Bananaquit</option>
                    
                        <option value="Band-tailed Pigeon">Band-tailed Pigeon</option>
                    
                        <option value="Bank Swallow">Bank Swallow</option>
                    
                        <option value="Bar-headed Goose">Bar-headed Goose</option>
                    
                        <option value="Bare-eyed Thrush">Bare-eyed Thrush</option>
                    
                        <option value="Bare-faced Curassow">Bare-faced Curassow</option>
                    
                        <option value="Bare-throated Tiger-Heron">Bare-throated Tiger-Heron</option>
                    
                        <option value="Barn Owl">Barn Owl</option>
                    
                        <option value="Barn Swallow">Barn Swallow</option>
                    
                        <option value="Barred Owl">Barred Owl</option>
                    
                        <option value="Barred Puffbird">Barred Puffbird</option>
                    
                        <option value="Barrow's Goldeneye">Barrow's Goldeneye</option>
                    
                        <option value="Bay-breasted Warbler">Bay-breasted Warbler</option>
                    
                        <option value="Bay-headed Tanager">Bay-headed Tanager</option>
                    
                        <option value="Bay-winged Cowbird">Bay-winged Cowbird</option>
                    
                        <option value="Bell Miner">Bell Miner</option>
                    
                        <option value="Bell's Vireo">Bell's Vireo</option>
                    
                        <option value="Belted Kingfisher">Belted Kingfisher</option>
                    
                        <option value="Bendire's Thrasher">Bendire's Thrasher</option>
                    
                        <option value="Bewick's Wren">Bewick's Wren</option>
                    
                        <option value="Black Crowned-Crane">Black Crowned-Crane</option>
                    
                        <option value="Black Grouse">Black Grouse</option>
                    
                        <option value="Black Guillemot">Black Guillemot</option>
                    
                        <option value="Black Kite">Black Kite</option>
                    
                        <option value="Black Oystercatcher">Black Oystercatcher</option>
                    
                        <option value="Black Phoebe">Black Phoebe</option>
                    
                        <option value="Black Rosy-Finch">Black Rosy-Finch</option>
                    
                        <option value="Black Scoter">Black Scoter</option>
                    
                        <option value="Black Skimmer">Black Skimmer</option>
                    
                        <option value="Black Stork">Black Stork</option>
                    
                        <option value="Black Swan">Black Swan</option>
                    
                        <option value="Black Swift">Black Swift</option>
                    
                        <option value="Black Tern">Black Tern</option>
                    
                        <option value="Black Turnstone">Black Turnstone</option>
                    
                        <option value="Black Vulture">Black Vulture</option>
                    
                        <option value="Black-and-white Warbler">Black-and-white Warbler</option>
                    
                        <option value="Black-backed Woodpecker">Black-backed Woodpecker</option>
                    
                        <option value="Black-bellied Hummingbird">Black-bellied Hummingbird</option>
                    
                        <option value="Black-bellied Plover">Black-bellied Plover</option>
                    
                        <option value="Black-bellied Whistling-Duck">Black-bellied Whistling-Duck</option>
                    
                        <option value="Black-billed Cuckoo">Black-billed Cuckoo</option>
                    
                        <option value="Black-billed Magpie">Black-billed Magpie</option>
                    
                        <option value="Black-capped Chickadee">Black-capped Chickadee</option>
                    
                        <option value="Black-chinned Hummingbird">Black-chinned Hummingbird</option>
                    
                        <option value="Black-crowned Night-Heron">Black-crowned Night-Heron</option>
                    
                        <option value="Black-faced Dacnis">Black-faced Dacnis</option>
                    
                        <option value="Black-headed Grosbeak">Black-headed Grosbeak</option>
                    
                        <option value="Black-headed Gull">Black-headed Gull</option>
                    
                        <option value="Black-headed Ibis">Black-headed Ibis</option>
                    
                        <option value="Black-legged Kittiwake">Black-legged Kittiwake</option>
                    
                        <option value="Black-necked Crane">Black-necked Crane</option>
                    
                        <option value="Black-necked Grebe">Black-necked Grebe</option>
                    
                        <option value="Black-necked Stilt">Black-necked Stilt</option>
                    
                        <option value="Black-necked Swan">Black-necked Swan</option>
                    
                        <option value="Black-tailed Godwit">Black-tailed Godwit</option>
                    
                        <option value="Black-throated Blue Warbler">Black-throated Blue Warbler</option>
                    
                        <option value="Black-throated Gray Warbler">Black-throated Gray Warbler</option>
                    
                        <option value="Black-throated Green Warbler">Black-throated Green Warbler</option>
                    
                        <option value="Black-throated Sparrow">Black-throated Sparrow</option>
                    
                        <option value="Black-throated Trogon">Black-throated Trogon</option>
                    
                        <option value="Black-whiskered Vireo">Black-whiskered Vireo</option>
                    
                        <option value="Blackburnian Warbler">Blackburnian Warbler</option>
                    
                        <option value="Blackcap">Blackcap</option>
                    
                        <option value="Blackpoll Warbler">Blackpoll Warbler</option>
                    
                        <option value="Blue Crane">Blue Crane</option>
                    
                        <option value="Blue Dacnis">Blue Dacnis</option>
                    
                        <option value="Blue Grosbeak">Blue Grosbeak</option>
                    
                        <option value="Blue Jay">Blue Jay</option>
                    
                        <option value="Blue-and-yellow Macaw">Blue-and-yellow Macaw</option>
                    
                        <option value="Blue-black Grassquit">Blue-black Grassquit</option>
                    
                        <option value="Blue-fronted Parrot">Blue-fronted Parrot</option>
                    
                        <option value="Blue-gray Gnatcatcher">Blue-gray Gnatcatcher</option>
                    
                        <option value="Blue-gray Tanager">Blue-gray Tanager</option>
                    
                        <option value="Blue-headed Vireo">Blue-headed Vireo</option>
                    
                        <option value="Blue-throated Goldentail">Blue-throated Goldentail</option>
                    
                        <option value="Blue-throated Hummingbird">Blue-throated Hummingbird</option>
                    
                        <option value="Blue-throated Toucanet">Blue-throated Toucanet</option>
                    
                        <option value="Blue-winged Parrot">Blue-winged Parrot</option>
                    
                        <option value="Blue-winged Teal">Blue-winged Teal</option>
                    
                        <option value="Blue-winged Warbler">Blue-winged Warbler</option>
                    
                        <option value="Boat-billed Heron">Boat-billed Heron</option>
                    
                        <option value="Boat-tailed Grackle">Boat-tailed Grackle</option>
                    
                        <option value="Bobolink">Bobolink</option>
                    
                        <option value="Bohemian Waxwing">Bohemian Waxwing</option>
                    
                        <option value="Bonaparte's Gull">Bonaparte's Gull</option>
                    
                        <option value="Boreal Chickadee">Boreal Chickadee</option>
                    
                        <option value="Boreal Owl">Boreal Owl</option>
                    
                        <option value="Brahminy Kite">Brahminy Kite</option>
                    
                        <option value="Brandt's Cormorant">Brandt's Cormorant</option>
                    
                        <option value="Brant">Brant</option>
                    
                        <option value="Brewer's Blackbird">Brewer's Blackbird</option>
                    
                        <option value="Brewer's Sparrow">Brewer's Sparrow</option>
                    
                        <option value="Brewster's Warbler">Brewster's Warbler</option>
                    
                        <option value="Broad-billed Hummingbird">Broad-billed Hummingbird</option>
                    
                        <option value="Broad-billed Motmot">Broad-billed Motmot</option>
                    
                        <option value="Broad-billed Roller">Broad-billed Roller</option>
                    
                        <option value="Broad-tailed Hummingbird">Broad-tailed Hummingbird</option>
                    
                        <option value="Broad-winged Hawk">Broad-winged Hawk</option>
                    
                        <option value="Bronze-tailed Plumeleteer">Bronze-tailed Plumeleteer</option>
                    
                        <option value="Bronze-winged Jacana">Bronze-winged Jacana</option>
                    
                        <option value="Bronzed Cowbird">Bronzed Cowbird</option>
                    
                        <option value="Brown Booby">Brown Booby</option>
                    
                        <option value="Brown Creeper">Brown Creeper</option>
                    
                        <option value="Brown Jay">Brown Jay</option>
                    
                        <option value="Brown Pelican">Brown Pelican</option>
                    
                        <option value="Brown Shrike">Brown Shrike</option>
                    
                        <option value="Brown Skua">Brown Skua</option>
                    
                        <option value="Brown Thrasher">Brown Thrasher</option>
                    
                        <option value="Brown-capped Rosy-Finch">Brown-capped Rosy-Finch</option>
                    
                        <option value="Brown-crested Flycatcher">Brown-crested Flycatcher</option>
                    
                        <option value="Brown-headed Cowbird">Brown-headed Cowbird</option>
                    
                        <option value="Brown-headed Nuthatch">Brown-headed Nuthatch</option>
                    
                        <option value="Buff-bellied Hummingbird">Buff-bellied Hummingbird</option>
                    
                        <option value="Buff-breasted Sandpiper">Buff-breasted Sandpiper</option>
                    
                        <option value="Bufflehead">Bufflehead</option>
                    
                        <option value="Bullock's Oriole">Bullock's Oriole</option>
                    
                        <option value="Burnished-buff Tanager">Burnished-buff Tanager</option>
                    
                        <option value="Burrowing Owl">Burrowing Owl</option>
                    
                        <option value="Bushtit">Bushtit</option>
                    
                        <option value="Cackling Goose">Cackling Goose</option>
                    
                        <option value="Cactus Wren">Cactus Wren</option>
                    
                        <option value="California Condor">California Condor</option>
                    
                        <option value="California Gnatcatcher">California Gnatcatcher</option>
                    
                        <option value="California Gull">California Gull</option>
                    
                        <option value="California Quail">California Quail</option>
                    
                        <option value="California Thrasher">California Thrasher</option>
                    
                        <option value="California Towhee">California Towhee</option>
                    
                        <option value="Calliope Hummingbird">Calliope Hummingbird</option>
                    
                        <option value="Canada Goose">Canada Goose</option>
                    
                        <option value="Canada Warbler">Canada Warbler</option>
                    
                        <option value="Canivet's Emerald">Canivet's Emerald</option>
                    
                        <option value="Canvasback">Canvasback</option>
                    
                        <option value="Canyon Towhee">Canyon Towhee</option>
                    
                        <option value="Canyon Wren">Canyon Wren</option>
                    
                        <option value="Cape Barren Goose">Cape Barren Goose</option>
                    
                        <option value="Cape May Warbler">Cape May Warbler</option>
                    
                        <option value="Cape Petrel">Cape Petrel</option>
                    
                        <option value="Carmine Bee-eater">Carmine Bee-eater</option>
                    
                        <option value="Carolina Chickadee">Carolina Chickadee</option>
                    
                        <option value="Carolina Wren">Carolina Wren</option>
                    
                        <option value="Caspian Tern">Caspian Tern</option>
                    
                        <option value="Cassin's Finch">Cassin's Finch</option>
                    
                        <option value="Cassin's Kingbird">Cassin's Kingbird</option>
                    
                        <option value="Cassin's Sparrow">Cassin's Sparrow</option>
                    
                        <option value="Cassin's Vireo">Cassin's Vireo</option>
                    
                        <option value="Cattle Egret">Cattle Egret</option>
                    
                        <option value="Cedar Waxwing">Cedar Waxwing</option>
                    
                        <option value="Cerulean Warbler">Cerulean Warbler</option>
                    
                        <option value="Chaffinch">Chaffinch</option>
                    
                        <option value="Chalk-browed Oriole">Chalk-browed Oriole</option>
                    
                        <option value="Chestnut-backed Chickadee">Chestnut-backed Chickadee</option>
                    
                        <option value="Chestnut-breasted Cuckoo">Chestnut-breasted Cuckoo</option>
                    
                        <option value="Chestnut-mandibled Toucan">Chestnut-mandibled Toucan</option>
                    
                        <option value="Chestnut-sided Warbler">Chestnut-sided Warbler</option>
                    
                        <option value="Chihuahuan Raven">Chihuahuan Raven</option>
                    
                        <option value="Chimney Swift">Chimney Swift</option>
                    
                        <option value="Chinstrap Penguin">Chinstrap Penguin</option>
                    
                        <option value="Chipping Sparrow">Chipping Sparrow</option>
                    
                        <option value="Chuck-will's-widow">Chuck-will's-widow</option>
                    
                        <option value="Chukar">Chukar</option>
                    
                        <option value="Cinnamon Hummingbird">Cinnamon Hummingbird</option>
                    
                        <option value="Cinnamon Teal">Cinnamon Teal</option>
                    
                        <option value="Clapper Rail">Clapper Rail</option>
                    
                        <option value="Clark's Grebe">Clark's Grebe</option>
                    
                        <option value="Clark's Nutcracker">Clark's Nutcracker</option>
                    
                        <option value="Clay-colored Robin">Clay-colored Robin</option>
                    
                        <option value="Clay-colored Sparrow">Clay-colored Sparrow</option>
                    
                        <option value="Cliff Swallow">Cliff Swallow</option>
                    
                        <option value="Common Bulbul">Common Bulbul</option>
                    
                        <option value="Common Buzzard">Common Buzzard</option>
                    
                        <option value="Common Chlorospingus">Common Chlorospingus</option>
                    
                        <option value="Common Coot">Common Coot</option>
                    
                        <option value="Common Eider">Common Eider</option>
                    
                        <option value="Common Gallinule">Common Gallinule</option>
                    
                        <option value="Common Goldeneye">Common Goldeneye</option>
                    
                        <option value="Common Grackle">Common Grackle</option>
                    
                        <option value="Common Ground-Dove">Common Ground-Dove</option>
                    
                        <option value="Common Indian Myna">Common Indian Myna</option>
                    
                        <option value="Common Kingfisher">Common Kingfisher</option>
                    
                        <option value="Common Loon">Common Loon</option>
                    
                        <option value="Common Merganser">Common Merganser</option>
                    
                        <option value="Common Moorhen">Common Moorhen</option>
                    
                        <option value="Common Murre">Common Murre</option>
                    
                        <option value="Common Myna">Common Myna</option>
                    
                        <option value="Common Nighthawk">Common Nighthawk</option>
                    
                        <option value="Common Pauraque">Common Pauraque</option>
                    
                        <option value="Common Poorwill">Common Poorwill</option>
                    
                        <option value="Common Raven">Common Raven</option>
                    
                        <option value="Common Redpoll">Common Redpoll</option>
                    
                        <option value="Common Redstart">Common Redstart</option>
                    
                        <option value="Common Shelduck">Common Shelduck</option>
                    
                        <option value="Common Tailorbird">Common Tailorbird</option>
                    
                        <option value="Common Teal">Common Teal</option>
                    
                        <option value="Common Tern">Common Tern</option>
                    
                        <option value="Common Waxbill">Common Waxbill</option>
                    
                        <option value="Common Yellowthroat">Common Yellowthroat</option>
                    
                        <option value="Connecticut Warbler">Connecticut Warbler</option>
                    
                        <option value="Cooper's Hawk">Cooper's Hawk</option>
                    
                        <option value="Coppery-headed Emerald">Coppery-headed Emerald</option>
                    
                        <option value="Cordilleran Flycatcher">Cordilleran Flycatcher</option>
                    
                        <option value="Coscoroba Swan">Coscoroba Swan</option>
                    
                        <option value="Costa's Hummingbird">Costa's Hummingbird</option>
                    
                        <option value="Costa's/Anna's Hummingbird/Hybrid?">Costa's/Anna's Hummingbird/Hybrid?</option>
                    
                        <option value="Costa's/Black-chinned Hummingbird">Costa's/Black-chinned Hummingbird</option>
                    
                        <option value="Couch's Kingbird">Couch's Kingbird</option>
                    
                        <option value="Creamy-bellied Thrush">Creamy-bellied Thrush</option>
                    
                        <option value="Crested Caracara">Crested Caracara</option>
                    
                        <option value="Crested Lark">Crested Lark</option>
                    
                        <option value="Crested Pigeon">Crested Pigeon</option>
                    
                        <option value="Crimson Rosella">Crimson Rosella</option>
                    
                        <option value="Crimson-collared Tanager">Crimson-collared Tanager</option>
                    
                        <option value="Crissal Thrasher">Crissal Thrasher</option>
                    
                        <option value="Cuban Grassquit">Cuban Grassquit</option>
                    
                        <option value="Curve-billed Thrasher">Curve-billed Thrasher</option>
                    
                        <option value="Dark-eyed Junco">Dark-eyed Junco</option>
                    
                        <option value="Darter">Darter</option>
                    
                        <option value="Dartford Warbler">Dartford Warbler</option>
                    
                        <option value="Demoiselle Crane">Demoiselle Crane</option>
                    
                        <option value="Dickcissel">Dickcissel</option>
                    
                        <option value="Double-collared Seedeater">Double-collared Seedeater</option>
                    
                        <option value="Double-crested Cormorant">Double-crested Cormorant</option>
                    
                        <option value="Double-striped Thick-knee">Double-striped Thick-knee</option>
                    
                        <option value="Downy Woodpecker">Downy Woodpecker</option>
                    
                        <option value="Dunlin">Dunlin</option>
                    
                        <option value="Dusky Flycatcher">Dusky Flycatcher</option>
                    
                        <option value="Dusky Grouse">Dusky Grouse</option>
                    
                        <option value="Dusky Moorhen">Dusky Moorhen</option>
                    
                        <option value="Dusky Woodswallow">Dusky Woodswallow</option>
                    
                        <option value="Dusky-capped Flycatcher">Dusky-capped Flycatcher</option>
                    
                        <option value="Eared Grebe">Eared Grebe</option>
                    
                        <option value="Eastern Bluebird">Eastern Bluebird</option>
                    
                        <option value="Eastern Kingbird">Eastern Kingbird</option>
                    
                        <option value="Eastern Meadowlark">Eastern Meadowlark</option>
                    
                        <option value="Eastern Phoebe">Eastern Phoebe</option>
                    
                        <option value="Eastern Rosella">Eastern Rosella</option>
                    
                        <option value="Eastern Screech-Owl">Eastern Screech-Owl</option>
                    
                        <option value="Eastern Spinebill">Eastern Spinebill</option>
                    
                        <option value="Eastern Towhee">Eastern Towhee</option>
                    
                        <option value="Eastern Whip-poor-will">Eastern Whip-poor-will</option>
                    
                        <option value="Eastern Wood-Pewee">Eastern Wood-Pewee</option>
                    
                        <option value="Egyptian Goose">Egyptian Goose</option>
                    
                        <option value="Egyptian Vulture">Egyptian Vulture</option>
                    
                        <option value="Elegant Tern">Elegant Tern</option>
                    
                        <option value="Elegant Trogon">Elegant Trogon</option>
                    
                        <option value="Emerald Toucanet">Emerald Toucanet</option>
                    
                        <option value="Emperor Penguin">Emperor Penguin</option>
                    
                        <option value="Emu">Emu</option>
                    
                        <option value="Epaulet Oriole">Epaulet Oriole</option>
                    
                        <option value="Eurasian Bullfinch">Eurasian Bullfinch</option>
                    
                        <option value="Eurasian Collared-Dove">Eurasian Collared-Dove</option>
                    
                        <option value="Eurasian Dotterel">Eurasian Dotterel</option>
                    
                        <option value="Eurasian Eagle-Owl">Eurasian Eagle-Owl</option>
                    
                        <option value="Eurasian Green Woodpecker">Eurasian Green Woodpecker</option>
                    
                        <option value="Eurasian Hoopoe">Eurasian Hoopoe</option>
                    
                        <option value="Eurasian Siskin">Eurasian Siskin</option>
                    
                        <option value="Eurasian Spoonbill">Eurasian Spoonbill</option>
                    
                        <option value="Eurasian Tree Sparrow">Eurasian Tree Sparrow</option>
                    
                        <option value="Eurasian Wigeon">Eurasian Wigeon</option>
                    
                        <option value="European Bee-eater">European Bee-eater</option>
                    
                        <option value="European Golden-Plover">European Golden-Plover</option>
                    
                        <option value="European Goldfinch">European Goldfinch</option>
                    
                        <option value="European Oystercatcher">European Oystercatcher</option>
                    
                        <option value="European Robin">European Robin</option>
                    
                        <option value="European Starling">European Starling</option>
                    
                        <option value="Evening Grosbeak">Evening Grosbeak</option>
                    
                        <option value="Ferruginous Hawk">Ferruginous Hawk</option>
                    
                        <option value="Ferruginous Pygmy-Owl">Ferruginous Pygmy-Owl</option>
                    
                        <option value="Festive Coquette">Festive Coquette</option>
                    
                        <option value="Field Sparrow">Field Sparrow</option>
                    
                        <option value="Fiery-throated Hummingbird">Fiery-throated Hummingbird</option>
                    
                        <option value="Fire-billed Aracari">Fire-billed Aracari</option>
                    
                        <option value="Fish Crow">Fish Crow</option>
                    
                        <option value="Flame-throated Warbler">Flame-throated Warbler</option>
                    
                        <option value="Flammulated Owl">Flammulated Owl</option>
                    
                        <option value="Florida Scrub-Jay">Florida Scrub-Jay</option>
                    
                        <option value="Fork-tailed Flycatcher">Fork-tailed Flycatcher</option>
                    
                        <option value="Forster's Tern">Forster's Tern</option>
                    
                        <option value="Fox Sparrow">Fox Sparrow</option>
                    
                        <option value="Franklin's Gull">Franklin's Gull</option>
                    
                        <option value="Fulvous Whistling-Duck">Fulvous Whistling-Duck</option>
                    
                        <option value="Gadwall">Gadwall</option>
                    
                        <option value="Galah">Galah</option>
                    
                        <option value="Gambel's Quail">Gambel's Quail</option>
                    
                        <option value="Garden Emerald">Garden Emerald</option>
                    
                        <option value="Giant Cowbird">Giant Cowbird</option>
                    
                        <option value="Gila Woodpecker">Gila Woodpecker</option>
                    
                        <option value="Gilded Flicker">Gilded Flicker</option>
                    
                        <option value="Glaucous Gull">Glaucous Gull</option>
                    
                        <option value="Glaucous-winged Gull">Glaucous-winged Gull</option>
                    
                        <option value="Glossy Ibis">Glossy Ibis</option>
                    
                        <option value="Golden Eagle">Golden Eagle</option>
                    
                        <option value="Golden Oriole">Golden Oriole</option>
                    
                        <option value="Golden-crowned Kinglet">Golden-crowned Kinglet</option>
                    
                        <option value="Golden-crowned Sparrow">Golden-crowned Sparrow</option>
                    
                        <option value="Golden-fronted Woodpecker">Golden-fronted Woodpecker</option>
                    
                        <option value="Golden-headed Manakin">Golden-headed Manakin</option>
                    
                        <option value="Golden-hooded Tanager">Golden-hooded Tanager</option>
                    
                        <option value="Golden-winged Warbler">Golden-winged Warbler</option>
                    
                        <option value="Gouldian Finch">Gouldian Finch</option>
                    
                        <option value="Grasshopper Sparrow">Grasshopper Sparrow</option>
                    
                        <option value="Gray Catbird">Gray Catbird</option>
                    
                        <option value="Gray Flycatcher">Gray Flycatcher</option>
                    
                        <option value="Gray Hawk">Gray Hawk</option>
                    
                        <option value="Gray Jay">Gray Jay</option>
                    
                        <option value="Gray Kingbird">Gray Kingbird</option>
                    
                        <option value="Gray Partridge">Gray Partridge</option>
                    
                        <option value="Gray-cheeked Thrush">Gray-cheeked Thrush</option>
                    
                        <option value="Gray-crowned Rosy-Finch">Gray-crowned Rosy-Finch</option>
                    
                        <option value="Gray-headed Chachalaca">Gray-headed Chachalaca</option>
                    
                        <option value="Graylag Goose">Graylag Goose</option>
                    
                        <option value="Great Black-backed Gull">Great Black-backed Gull</option>
                    
                        <option value="Great Blue Heron">Great Blue Heron</option>
                    
                        <option value="Great Cormorant">Great Cormorant</option>
                    
                        <option value="Great Crested Flycatcher">Great Crested Flycatcher</option>
                    
                        <option value="Great Egret">Great Egret</option>
                    
                        <option value="Great Frigatebird">Great Frigatebird</option>
                    
                        <option value="Great Gray Owl">Great Gray Owl</option>
                    
                        <option value="Great Horned Owl">Great Horned Owl</option>
                    
                        <option value="Great Kiskadee">Great Kiskadee</option>
                    
                        <option value="Great Spotted Woodpecker">Great Spotted Woodpecker</option>
                    
                        <option value="Great-tailed Grackle">Great-tailed Grackle</option>
                    
                        <option value="Greater Flamingo">Greater Flamingo</option>
                    
                        <option value="Greater Prairie-Chicken">Greater Prairie-Chicken</option>
                    
                        <option value="Greater Rhea">Greater Rhea</option>
                    
                        <option value="Greater Roadrunner">Greater Roadrunner</option>
                    
                        <option value="Greater Sage-Grouse">Greater Sage-Grouse</option>
                    
                        <option value="Greater Scaup">Greater Scaup</option>
                    
                        <option value="Greater Yellowlegs">Greater Yellowlegs</option>
                    
                        <option value="Green Heron">Green Heron</option>
                    
                        <option value="Green Honeycreeper">Green Honeycreeper</option>
                    
                        <option value="Green Jay">Green Jay</option>
                    
                        <option value="Green Kingfisher">Green Kingfisher</option>
                    
                        <option value="Green Thorntail">Green Thorntail</option>
                    
                        <option value="Green Violet-ear">Green Violet-ear</option>
                    
                        <option value="Green Violetear">Green Violetear</option>
                    
                        <option value="Green-breasted Mango">Green-breasted Mango</option>
                    
                        <option value="Green-crowned Brilliant">Green-crowned Brilliant</option>
                    
                        <option value="Green-headed Tanager">Green-headed Tanager</option>
                    
                        <option value="Green-tailed Towhee">Green-tailed Towhee</option>
                    
                        <option value="Green-winged (Eurasian) Teal">Green-winged (Eurasian) Teal</option>
                    
                        <option value="Green-winged Teal">Green-winged Teal</option>
                    
                        <option value="Grey Butcherbird">Grey Butcherbird</option>
                    
                        <option value="Grey Heron">Grey Heron</option>
                    
                        <option value="Grey-backed Camaroptera">Grey-backed Camaroptera</option>
                    
                        <option value="Greylag Goose">Greylag Goose</option>
                    
                        <option value="Groove-billed Ani">Groove-billed Ani</option>
                    
                        <option value="Guinian Trogon">Guinian Trogon</option>
                    
                        <option value="Gull-billed Tern">Gull-billed Tern</option>
                    
                        <option value="Gyrfalcon">Gyrfalcon</option>
                    
                        <option value="Hairy Woodpecker">Hairy Woodpecker</option>
                    
                        <option value="Hammond's Flycatcher">Hammond's Flycatcher</option>
                    
                        <option value="Harlequin Duck">Harlequin Duck</option>
                    
                        <option value="Harris's Hawk">Harris's Hawk</option>
                    
                        <option value="Harris's Sparrow">Harris's Sparrow</option>
                    
                        <option value="Hawaiian Coot">Hawaiian Coot</option>
                    
                        <option value="Hawaiian Duck">Hawaiian Duck</option>
                    
                        <option value="Hawfinch">Hawfinch</option>
                    
                        <option value="Heerman's Gull">Heerman's Gull</option>
                    
                        <option value="Helmeted Guineafowl">Helmeted Guineafowl</option>
                    
                        <option value="Henslow's Sparrow">Henslow's Sparrow</option>
                    
                        <option value="Hepatic Tanager">Hepatic Tanager</option>
                    
                        <option value="Hermit Thrush">Hermit Thrush</option>
                    
                        <option value="Herring Gull">Herring Gull</option>
                    
                        <option value="Hispaniolan Lizard-Cuckoo">Hispaniolan Lizard-Cuckoo</option>
                    
                        <option value="Hoary Redpoll">Hoary Redpoll</option>
                    
                        <option value="Hooded Merganser">Hooded Merganser</option>
                    
                        <option value="Hooded Oriole">Hooded Oriole</option>
                    
                        <option value="Hooded Warbler">Hooded Warbler</option>
                    
                        <option value="Horned Grebe">Horned Grebe</option>
                    
                        <option value="Horned Lark">Horned Lark</option>
                    
                        <option value="Horned Puffin">Horned Puffin</option>
                    
                        <option value="House Finch">House Finch</option>
                    
                        <option value="House Sparrow">House Sparrow</option>
                    
                        <option value="House Wren">House Wren</option>
                    
                        <option value="Hudsonian Godwit">Hudsonian Godwit</option>
                    
                        <option value="Hutton's Vireo">Hutton's Vireo</option>
                    
                        <option value="Hyacinth Macaw">Hyacinth Macaw</option>
                    
                        <option value="Iceland Gull">Iceland Gull</option>
                    
                        <option value="Inca Dove">Inca Dove</option>
                    
                        <option value="Indian Peafowl">Indian Peafowl</option>
                    
                        <option value="Indian Robin">Indian Robin</option>
                    
                        <option value="Indigo Bunting">Indigo Bunting</option>
                    
                        <option value="Indigu Bunting">Indigu Bunting</option>
                    
                        <option value="Island Scrub-Jay">Island Scrub-Jay</option>
                    
                        <option value="Ivory Gull">Ivory Gull</option>
                    
                        <option value="Jamaican Tody">Jamaican Tody</option>
                    
                        <option value="Jandaya Parakeet">Jandaya Parakeet</option>
                    
                        <option value="Japanese White-eye">Japanese White-eye</option>
                    
                        <option value="Java Sparrow">Java Sparrow</option>
                    
                        <option value="Juniper Titmouse">Juniper Titmouse</option>
                    
                        <option value="Karoo Prinia">Karoo Prinia</option>
                    
                        <option value="Kelp Gull">Kelp Gull</option>
                    
                        <option value="Kentucky Warbler">Kentucky Warbler</option>
                    
                        <option value="Killdeer">Killdeer</option>
                    
                        <option value="King Eider">King Eider</option>
                    
                        <option value="King Penguin">King Penguin</option>
                    
                        <option value="King Rail">King Rail</option>
                    
                        <option value="King Vulture">King Vulture</option>
                    
                        <option value="Kirtland's Warbler">Kirtland's Warbler</option>
                    
                        <option value="Ladder-backed Woodpecker">Ladder-backed Woodpecker</option>
                    
                        <option value="Lapland Longspur">Lapland Longspur</option>
                    
                        <option value="Lark Bunting">Lark Bunting</option>
                    
                        <option value="Lark Sparrow">Lark Sparrow</option>
                    
                        <option value="LaSagra's Flycatcher">LaSagra's Flycatcher</option>
                    
                        <option value="Laughing Falcon">Laughing Falcon</option>
                    
                        <option value="Laughing Gull">Laughing Gull</option>
                    
                        <option value="Laughing Kookaburra">Laughing Kookaburra</option>
                    
                        <option value="Lawrence's Goldfinch">Lawrence's Goldfinch</option>
                    
                        <option value="Lawrence's Warbler">Lawrence's Warbler</option>
                    
                        <option value="Laysan Albatross">Laysan Albatross</option>
                    
                        <option value="Lazuli Bunting">Lazuli Bunting</option>
                    
                        <option value="Le Conte's Sparrow">Le Conte's Sparrow</option>
                    
                        <option value="Le Conte's Thrasher">Le Conte's Thrasher</option>
                    
                        <option value="Least Bittern">Least Bittern</option>
                    
                        <option value="Least Flycatcher">Least Flycatcher</option>
                    
                        <option value="Least Grebe">Least Grebe</option>
                    
                        <option value="Least Sandpiper">Least Sandpiper</option>
                    
                        <option value="Least Tern">Least Tern</option>
                    
                        <option value="Lesser Goldfinch">Lesser Goldfinch</option>
                    
                        <option value="Lesser Nighthawk">Lesser Nighthawk</option>
                    
                        <option value="Lesser Scaup">Lesser Scaup</option>
                    
                        <option value="Lesser Whistling-Duck">Lesser Whistling-Duck</option>
                    
                        <option value="Lesser Yellowlegs">Lesser Yellowlegs</option>
                    
                        <option value="Lessser Scaup">Lessser Scaup</option>
                    
                        <option value="Lewis's Woodpecker">Lewis's Woodpecker</option>
                    
                        <option value="Lilac-breasted Roller">Lilac-breasted Roller</option>
                    
                        <option value="Lilac-crowned Parrot">Lilac-crowned Parrot</option>
                    
                        <option value="Limpkin">Limpkin</option>
                    
                        <option value="Lincoln's Sparrow">Lincoln's Sparrow</option>
                    
                        <option value="Little Bee-eater">Little Bee-eater</option>
                    
                        <option value="Little Blue Heron">Little Blue Heron</option>
                    
                        <option value="Little Cormorant">Little Cormorant</option>
                    
                        <option value="Little Egret">Little Egret</option>
                    
                        <option value="Loggerhead Shrike">Loggerhead Shrike</option>
                    
                        <option value="Long-billed Corella">Long-billed Corella</option>
                    
                        <option value="Long-billed Curlew">Long-billed Curlew</option>
                    
                        <option value="Long-billed Dowitcher">Long-billed Dowitcher</option>
                    
                        <option value="Long-billed Hermit">Long-billed Hermit</option>
                    
                        <option value="Long-billed Thrasher">Long-billed Thrasher</option>
                    
                        <option value="Long-eared Owl">Long-eared Owl</option>
                    
                        <option value="Long-tailed Duck">Long-tailed Duck</option>
                    
                        <option value="Long-tailed Jaeger">Long-tailed Jaeger</option>
                    
                        <option value="Long-tailed Meadowlark">Long-tailed Meadowlark</option>
                    
                        <option value="Louisiana Waterthrush">Louisiana Waterthrush</option>
                    
                        <option value="Lucifer Hummingbird">Lucifer Hummingbird</option>
                    
                        <option value="Macaroni Penguin">Macaroni Penguin</option>
                    
                        <option value="MacGillivray's Warbler">MacGillivray's Warbler</option>
                    
                        <option value="Magellanic Penguin">Magellanic Penguin</option>
                    
                        <option value="Magnificent Frigatebird">Magnificent Frigatebird</option>
                    
                        <option value="Magnificent Hummingbird">Magnificent Hummingbird</option>
                    
                        <option value="Magnolia Warbler">Magnolia Warbler</option>
                    
                        <option value="Magpie-lark">Magpie-lark</option>
                    
                        <option value="Mallard">Mallard</option>
                    
                        <option value="Mandarin Duck">Mandarin Duck</option>
                    
                        <option value="Maned Duck">Maned Duck</option>
                    
                        <option value="Mangrove Cuckoo">Mangrove Cuckoo</option>
                    
                        <option value="Many-colored Rush-Tyrant">Many-colored Rush-Tyrant</option>
                    
                        <option value="Marbled Godwit">Marbled Godwit</option>
                    
                        <option value="Marsh Wren">Marsh Wren</option>
                    
                        <option value="Masked Duck">Masked Duck</option>
                    
                        <option value="Masked Lapwing">Masked Lapwing</option>
                    
                        <option value="Masked Trogon">Masked Trogon</option>
                    
                        <option value="Masked Yellowthroat">Masked Yellowthroat</option>
                    
                        <option value="McCown's Longspur">McCown's Longspur</option>
                    
                        <option value="Meadow Pipit">Meadow Pipit</option>
                    
                        <option value="Mealy Parrot">Mealy Parrot</option>
                    
                        <option value="Merlin">Merlin</option>
                    
                        <option value="Mew Gull">Mew Gull</option>
                    
                        <option value="Mexican Jay">Mexican Jay</option>
                    
                        <option value="Mississippi Kite">Mississippi Kite</option>
                    
                        <option value="Mitred Parakeet">Mitred Parakeet</option>
                    
                        <option value="Monk Parakeet">Monk Parakeet</option>
                    
                        <option value="Montezuma Oropendola">Montezuma Oropendola</option>
                    
                        <option value="Mottled Duck">Mottled Duck</option>
                    
                        <option value="Mottled Owl">Mottled Owl</option>
                    
                        <option value="Mountain Bluebird">Mountain Bluebird</option>
                    
                        <option value="Mountain Chickadee">Mountain Chickadee</option>
                    
                        <option value="Mountain Quail">Mountain Quail</option>
                    
                        <option value="Mourning Dove">Mourning Dove</option>
                    
                        <option value="Muscovy Duck">Muscovy Duck</option>
                    
                        <option value="Mute Swan">Mute Swan</option>
                    
                        <option value="Nanday Parakeet">Nanday Parakeet</option>
                    
                        <option value="Nashville Warbler">Nashville Warbler</option>
                    
                        <option value="Nelson's Sparrow">Nelson's Sparrow</option>
                    
                        <option value="Nene">Nene</option>
                    
                        <option value="Neotropic Cormorant">Neotropic Cormorant</option>
                    
                        <option value="Noisy Miner">Noisy Miner</option>
                    
                        <option value="Northern Bobwhite">Northern Bobwhite</option>
                    
                        <option value="Northern Cardinal">Northern Cardinal</option>
                    
                        <option value="Northern Flicker">Northern Flicker</option>
                    
                        <option value="Northern Gannet">Northern Gannet</option>
                    
                        <option value="Northern Goshawk">Northern Goshawk</option>
                    
                        <option value="Northern Harrier">Northern Harrier</option>
                    
                        <option value="Northern Hawk-Owl">Northern Hawk-Owl</option>
                    
                        <option value="Northern Jacana">Northern Jacana</option>
                    
                        <option value="Northern Lapwing">Northern Lapwing</option>
                    
                        <option value="Northern Mockingbird">Northern Mockingbird</option>
                    
                        <option value="Northern Parula">Northern Parula</option>
                    
                        <option value="Northern Pintail">Northern Pintail</option>
                    
                        <option value="Northern Pygmy-Owl">Northern Pygmy-Owl</option>
                    
                        <option value="Northern Rough-winged Swallow">Northern Rough-winged Swallow</option>
                    
                        <option value="Northern Saw-whet Owl">Northern Saw-whet Owl</option>
                    
                        <option value="Northern Shoveler">Northern Shoveler</option>
                    
                        <option value="Northern Shrike">Northern Shrike</option>
                    
                        <option value="Northern Waterthrush">Northern Waterthrush</option>
                    
                        <option value="Northern Wheatear">Northern Wheatear</option>
                    
                        <option value="Northwestern Crow">Northwestern Crow</option>
                    
                        <option value="Nuttall's Woodpecker">Nuttall's Woodpecker</option>
                    
                        <option value="Oak Titmouse">Oak Titmouse</option>
                    
                        <option value="Olive-green Tanager">Olive-green Tanager</option>
                    
                        <option value="Olive-sided Flycatcher">Olive-sided Flycatcher</option>
                    
                        <option value="Orange Bishop">Orange Bishop</option>
                    
                        <option value="Orange-crowned Warbler">Orange-crowned Warbler</option>
                    
                        <option value="Orange-fronted Parrot">Orange-fronted Parrot</option>
                    
                        <option value="Orchard Oriole">Orchard Oriole</option>
                    
                        <option value="Orchard Oriole and Blue Grosbeak">Orchard Oriole and Blue Grosbeak</option>
                    
                        <option value="Oriental Magpie-Robin">Oriental Magpie-Robin</option>
                    
                        <option value="Oriental White-eye">Oriental White-eye</option>
                    
                        <option value="Osprey">Osprey</option>
                    
                        <option value="Ovenbird">Ovenbird</option>
                    
                        <option value="Pacific Black Duck">Pacific Black Duck</option>
                    
                        <option value="Pacific Golden-Plover">Pacific Golden-Plover</option>
                    
                        <option value="Pacific Loon">Pacific Loon</option>
                    
                        <option value="Pacific Wren">Pacific Wren</option>
                    
                        <option value="Pacific-slope Flycatcher">Pacific-slope Flycatcher</option>
                    
                        <option value="Painted Bunting">Painted Bunting</option>
                    
                        <option value="Painted Stork">Painted Stork</option>
                    
                        <option value="Palm Tanager">Palm Tanager</option>
                    
                        <option value="Palm Warbler">Palm Warbler</option>
                    
                        <option value="Palmchat">Palmchat</option>
                    
                        <option value="Parasitic Jaeger">Parasitic Jaeger</option>
                    
                        <option value="Passerini's Tanager">Passerini's Tanager</option>
                    
                        <option value="Peach-fronted Parakeet">Peach-fronted Parakeet</option>
                    
                        <option value="Pectoral Sandpiper">Pectoral Sandpiper</option>
                    
                        <option value="Pelagic Cormorant">Pelagic Cormorant</option>
                    
                        <option value="Peregrine Falcon">Peregrine Falcon</option>
                    
                        <option value="Phainopepla">Phainopepla</option>
                    
                        <option value="Philadelphia Vireo">Philadelphia Vireo</option>
                    
                        <option value="Pied Bushchat">Pied Bushchat</option>
                    
                        <option value="Pied Flycatcher">Pied Flycatcher</option>
                    
                        <option value="Pied Wagtail">Pied Wagtail</option>
                    
                        <option value="Pied-billed Grebe">Pied-billed Grebe</option>
                    
                        <option value="Pigeon Guillemot">Pigeon Guillemot</option>
                    
                        <option value="Pileated Woodpecker">Pileated Woodpecker</option>
                    
                        <option value="Pin-tailed Whydah">Pin-tailed Whydah</option>
                    
                        <option value="Pine Grosbeak">Pine Grosbeak</option>
                    
                        <option value="Pine Siskin">Pine Siskin</option>
                    
                        <option value="Pine Warbler">Pine Warbler</option>
                    
                        <option value="Pinyon Jay">Pinyon Jay</option>
                    
                        <option value="Piping Plover">Piping Plover</option>
                    
                        <option value="Plain Chachalaca">Plain Chachalaca</option>
                    
                        <option value="Plain Parakeet">Plain Parakeet</option>
                    
                        <option value="Plumbeous Vireo">Plumbeous Vireo</option>
                    
                        <option value="Prairie Falcon">Prairie Falcon</option>
                    
                        <option value="Prairie Warbler">Prairie Warbler</option>
                    
                        <option value="Prong-billed Barbet">Prong-billed Barbet</option>
                    
                        <option value="Prothonotary Warbler">Prothonotary Warbler</option>
                    
                        <option value="Puerto Rican Tody">Puerto Rican Tody</option>
                    
                        <option value="Purple Finch">Purple Finch</option>
                    
                        <option value="Purple Gallinule">Purple Gallinule</option>
                    
                        <option value="Purple Martin">Purple Martin</option>
                    
                        <option value="Purple Sandpiper">Purple Sandpiper</option>
                    
                        <option value="Purple Sunbird">Purple Sunbird</option>
                    
                        <option value="Purple Swamphen">Purple Swamphen</option>
                    
                        <option value="Purple-throated Euphonia">Purple-throated Euphonia</option>
                    
                        <option value="Purple-throated Mountain-gem">Purple-throated Mountain-gem</option>
                    
                        <option value="Pygmy Nuthatch">Pygmy Nuthatch</option>
                    
                        <option value="Pyrrhuloxia">Pyrrhuloxia</option>
                    
                        <option value="Rainbow Lorikeet">Rainbow Lorikeet</option>
                    
                        <option value="Razorbill">Razorbill</option>
                    
                        <option value="Red Crossbill">Red Crossbill</option>
                    
                        <option value="Red Jungle Fowl">Red Jungle Fowl</option>
                    
                        <option value="Red Knot">Red Knot</option>
                    
                        <option value="Red Phalarope">Red Phalarope</option>
                    
                        <option value="Red Siskin">Red Siskin</option>
                    
                        <option value="Red Wattlebird">Red Wattlebird</option>
                    
                        <option value="Red-and-green Macaw">Red-and-green Macaw</option>
                    
                        <option value="Red-bellied Woodpecker">Red-bellied Woodpecker</option>
                    
                        <option value="Red-billed Firefinch">Red-billed Firefinch</option>
                    
                        <option value="Red-breasted Merganser">Red-breasted Merganser</option>
                    
                        <option value="Red-breasted Nuthatch">Red-breasted Nuthatch</option>
                    
                        <option value="Red-breasted Sapsucker">Red-breasted Sapsucker</option>
                    
                        <option value="Red-browed Firetail">Red-browed Firetail</option>
                    
                        <option value="Red-capped Manakin">Red-capped Manakin</option>
                    
                        <option value="Red-cockaded Woodpecker">Red-cockaded Woodpecker</option>
                    
                        <option value="Red-crested Cardinal">Red-crested Cardinal</option>
                    
                        <option value="Red-crowned Parrot">Red-crowned Parrot</option>
                    
                        <option value="Red-eared Parrotfinch">Red-eared Parrotfinch</option>
                    
                        <option value="Red-eyed Vireo">Red-eyed Vireo</option>
                    
                        <option value="Red-footed Booby">Red-footed Booby</option>
                    
                        <option value="Red-gartered Coot">Red-gartered Coot</option>
                    
                        <option value="Red-headed Woodpecker">Red-headed Woodpecker</option>
                    
                        <option value="Red-legged Honeycreeper">Red-legged Honeycreeper</option>
                    
                        <option value="Red-legged Partridge">Red-legged Partridge</option>
                    
                        <option value="Red-lored Parrot">Red-lored Parrot</option>
                    
                        <option value="Red-naped Sapsucker">Red-naped Sapsucker</option>
                    
                        <option value="Red-necked Grebe">Red-necked Grebe</option>
                    
                        <option value="Red-necked Phalarope">Red-necked Phalarope</option>
                    
                        <option value="Red-necked Tanager">Red-necked Tanager</option>
                    
                        <option value="Red-rumped Parrot">Red-rumped Parrot</option>
                    
                        <option value="Red-shouldered Hawk">Red-shouldered Hawk</option>
                    
                        <option value="Red-shouldered Macaw">Red-shouldered Macaw</option>
                    
                        <option value="Red-tailed Hawk">Red-tailed Hawk</option>
                    
                        <option value="Red-tailed Hawk/Common Raven">Red-tailed Hawk/Common Raven</option>
                    
                        <option value="Red-tailed Tropicbird">Red-tailed Tropicbird</option>
                    
                        <option value="Red-throated Loon">Red-throated Loon</option>
                    
                        <option value="Red-vented Bulbul">Red-vented Bulbul</option>
                    
                        <option value="Red-whiskered Bulbul">Red-whiskered Bulbul</option>
                    
                        <option value="Red-winged Blackbird">Red-winged Blackbird</option>
                    
                        <option value="Reddish Egret">Reddish Egret</option>
                    
                        <option value="Redhead">Redhead</option>
                    
                        <option value="Redshank">Redshank</option>
                    
                        <option value="Reed Bunting">Reed Bunting</option>
                    
                        <option value="Resplendent Quetzal">Resplendent Quetzal</option>
                    
                        <option value="Ridgway's Rail">Ridgway's Rail</option>
                    
                        <option value="Ring-billed Gull">Ring-billed Gull</option>
                    
                        <option value="Ring-necked Duck">Ring-necked Duck</option>
                    
                        <option value="Ring-necked Pheasant">Ring-necked Pheasant</option>
                    
                        <option value="Ringed Plover">Ringed Plover</option>
                    
                        <option value="River Tern">River Tern</option>
                    
                        <option value="Rock Pigeon">Rock Pigeon</option>
                    
                        <option value="Rock Pipit">Rock Pipit</option>
                    
                        <option value="Rock Wren">Rock Wren</option>
                    
                        <option value="Rockhopper Penguin">Rockhopper Penguin</option>
                    
                        <option value="Rose-breasted Grosbeak">Rose-breasted Grosbeak</option>
                    
                        <option value="Rose-ringed Parakeet">Rose-ringed Parakeet</option>
                    
                        <option value="Roseate Spoonbill">Roseate Spoonbill</option>
                    
                        <option value="Ross's Goose">Ross's Goose</option>
                    
                        <option value="Rough-legged Hawk">Rough-legged Hawk</option>
                    
                        <option value="Royal Tern">Royal Tern</option>
                    
                        <option value="Ruby-crowned Kinglet">Ruby-crowned Kinglet</option>
                    
                        <option value="Ruby-throated Hummingbird">Ruby-throated Hummingbird</option>
                    
                        <option value="Ruddy Duck">Ruddy Duck</option>
                    
                        <option value="Ruddy Ground-Dove">Ruddy Ground-Dove</option>
                    
                        <option value="Ruddy Turnstone">Ruddy Turnstone</option>
                    
                        <option value="Ruff">Ruff</option>
                    
                        <option value="Ruffed Grouse">Ruffed Grouse</option>
                    
                        <option value="Rufous Hornero">Rufous Hornero</option>
                    
                        <option value="Rufous Hummingbird">Rufous Hummingbird</option>
                    
                        <option value="Rufous-capped Warbler">Rufous-capped Warbler</option>
                    
                        <option value="Rufous-collared Sparrow">Rufous-collared Sparrow</option>
                    
                        <option value="Rufous-crowned Sparrow">Rufous-crowned Sparrow</option>
                    
                        <option value="Rufous-tailed Hummingbird">Rufous-tailed Hummingbird</option>
                    
                        <option value="Rufous-tailed Jacamar">Rufous-tailed Jacamar</option>
                    
                        <option value="Rufous-winged Sparrow">Rufous-winged Sparrow</option>
                    
                        <option value="Rusty Blackbird">Rusty Blackbird</option>
                    
                        <option value="Sabine's Gull">Sabine's Gull</option>
                    
                        <option value="Sacred Kingfisher">Sacred Kingfisher</option>
                    
                        <option value="Saffron Finch">Saffron Finch</option>
                    
                        <option value="Sage Sparrow">Sage Sparrow</option>
                    
                        <option value="Sage Thrasher">Sage Thrasher</option>
                    
                        <option value="Saltmarsh Sparrow">Saltmarsh Sparrow</option>
                    
                        <option value="Sanderling">Sanderling</option>
                    
                        <option value="Sandhill Crane">Sandhill Crane</option>
                    
                        <option value="Sandwich Tern">Sandwich Tern</option>
                    
                        <option value="Sardinian Warbler">Sardinian Warbler</option>
                    
                        <option value="Savanna Hawk">Savanna Hawk</option>
                    
                        <option value="Savannah Sparrow">Savannah Sparrow</option>
                    
                        <option value="Say's Phoebe">Say's Phoebe</option>
                    
                        <option value="Sayaca Tanager">Sayaca Tanager</option>
                    
                        <option value="Scaled Quail">Scaled Quail</option>
                    
                        <option value="Scaly-breasted Munia">Scaly-breasted Munia</option>
                    
                        <option value="Scarlet Macaw">Scarlet Macaw</option>
                    
                        <option value="Scarlet Tanager">Scarlet Tanager</option>
                    
                        <option value="Scissor-tailed Flycatcher">Scissor-tailed Flycatcher</option>
                    
                        <option value="Scott's Oriole">Scott's Oriole</option>
                    
                        <option value="Seaside Sparrow">Seaside Sparrow</option>
                    
                        <option value="Sedge Wren">Sedge Wren</option>
                    
                        <option value="Semipalmated Plover">Semipalmated Plover</option>
                    
                        <option value="Semipalmated Sandpiper">Semipalmated Sandpiper</option>
                    
                        <option value="Shag">Shag</option>
                    
                        <option value="Sharp-shinned Hawk">Sharp-shinned Hawk</option>
                    
                        <option value="Sharp-tailed Grouse">Sharp-tailed Grouse</option>
                    
                        <option value="Shikra">Shikra</option>
                    
                        <option value="Shiny Cowbird">Shiny Cowbird</option>
                    
                        <option value="Short-billed Dowitcher">Short-billed Dowitcher</option>
                    
                        <option value="Short-eared Owl">Short-eared Owl</option>
                    
                        <option value="Silver Gull">Silver Gull</option>
                    
                        <option value="Silver-beaked Tanager">Silver-beaked Tanager</option>
                    
                        <option value="Silver-throated Tanager">Silver-throated Tanager</option>
                    
                        <option value="Skylark">Skylark</option>
                    
                        <option value="Smew">Smew</option>
                    
                        <option value="Smooth-billed Ani">Smooth-billed Ani</option>
                    
                        <option value="Snail Kite">Snail Kite</option>
                    
                        <option value="Snow Bunting">Snow Bunting</option>
                    
                        <option value="Snow Goose">Snow Goose</option>
                    
                        <option value="Snowy Egret">Snowy Egret</option>
                    
                        <option value="Snowy Owl">Snowy Owl</option>
                    
                        <option value="Snowy Plover">Snowy Plover</option>
                    
                        <option value="Snowy Sheathbill">Snowy Sheathbill</option>
                    
                        <option value="Social Flycatcher">Social Flycatcher</option>
                    
                        <option value="Solitary Sandpiper">Solitary Sandpiper</option>
                    
                        <option value="Song Sparrow">Song Sparrow</option>
                    
                        <option value="Sooty Grouse">Sooty Grouse</option>
                    
                        <option value="Sora">Sora</option>
                    
                        <option value="Southern Boobook">Southern Boobook</option>
                    
                        <option value="Southern Double-collared Sunbird">Southern Double-collared Sunbird</option>
                    
                        <option value="Southern Lapwing">Southern Lapwing</option>
                    
                        <option value="Spot-billed Duck">Spot-billed Duck</option>
                    
                        <option value="Spot-breasted Oriole">Spot-breasted Oriole</option>
                    
                        <option value="Spotted Dove">Spotted Dove</option>
                    
                        <option value="Spotted Nutcracker">Spotted Nutcracker</option>
                    
                        <option value="Spotted Owl">Spotted Owl</option>
                    
                        <option value="Spotted Sandpiper">Spotted Sandpiper</option>
                    
                        <option value="Spotted Towhee">Spotted Towhee</option>
                    
                        <option value="Spruce Grouse">Spruce Grouse</option>
                    
                        <option value="Squirrel Cuckoo">Squirrel Cuckoo</option>
                    
                        <option value="Star Finch">Star Finch</option>
                    
                        <option value="Steely-vented Hummingbird">Steely-vented Hummingbird</option>
                    
                        <option value="Steller's Jay">Steller's Jay</option>
                    
                        <option value="Stilt Sandpiper">Stilt Sandpiper</option>
                    
                        <option value="Striated Heron">Striated Heron</option>
                    
                        <option value="Stripe-headed Sparrow">Stripe-headed Sparrow</option>
                    
                        <option value="Stripe-tailed Hummingbird">Stripe-tailed Hummingbird</option>
                    
                        <option value="Sulphur-bellied Flycatcher">Sulphur-bellied Flycatcher</option>
                    
                        <option value="Sulphur-crested Cockatoo">Sulphur-crested Cockatoo</option>
                    
                        <option value="Summer Tanager">Summer Tanager</option>
                    
                        <option value="Superb Fairywren">Superb Fairywren</option>
                    
                        <option value="Superb Lyrebird">Superb Lyrebird</option>
                    
                        <option value="Superb Starling">Superb Starling</option>
                    
                        <option value="Surf Scoter">Surf Scoter</option>
                    
                        <option value="Surfbird">Surfbird</option>
                    
                        <option value="Swainson's Hawk">Swainson's Hawk</option>
                    
                        <option value="Swainson's Thrush">Swainson's Thrush</option>
                    
                        <option value="Swainson's Warbler">Swainson's Warbler</option>
                    
                        <option value="Swallow-tailed Hummingbird">Swallow-tailed Hummingbird</option>
                    
                        <option value="Swallow-tailed Kite">Swallow-tailed Kite</option>
                    
                        <option value="Swamp Sparrow">Swamp Sparrow</option>
                    
                        <option value="Swan Goose">Swan Goose</option>
                    
                        <option value="Tawny Antpitta">Tawny Antpitta</option>
                    
                        <option value="Tennessee Warbler">Tennessee Warbler</option>
                    
                        <option value="Thayer's Gull">Thayer's Gull</option>
                    
                        <option value="Thick-billed Euphonia">Thick-billed Euphonia</option>
                    
                        <option value="Three-toed Woodpecker">Three-toed Woodpecker</option>
                    
                        <option value="Three-wattled Bellbird">Three-wattled Bellbird</option>
                    
                        <option value="Townsend's Solitaire">Townsend's Solitaire</option>
                    
                        <option value="Townsend's Warbler">Townsend's Warbler</option>
                    
                        <option value="Tree Swallow">Tree Swallow</option>
                    
                        <option value="Tricolored Blackbird">Tricolored Blackbird</option>
                    
                        <option value="Tricolored Heron">Tricolored Heron</option>
                    
                        <option value="Tropical Kingbird">Tropical Kingbird</option>
                    
                        <option value="Tropical Mockingbird">Tropical Mockingbird</option>
                    
                        <option value="Tropical Parula">Tropical Parula</option>
                    
                        <option value="Trumpeter Swan">Trumpeter Swan</option>
                    
                        <option value="Trumpeter/Tundra Swan">Trumpeter/Tundra Swan</option>
                    
                        <option value="Tufted Duck">Tufted Duck</option>
                    
                        <option value="Tufted Puffin">Tufted Puffin</option>
                    
                        <option value="Tufted Titmouse">Tufted Titmouse</option>
                    
                        <option value="Tundra (Bewick's) Swan">Tundra (Bewick's) Swan</option>
                    
                        <option value="Tundra Bean Goose">Tundra Bean Goose</option>
                    
                        <option value="Tundra Swan">Tundra Swan</option>
                    
                        <option value="Turkey Vulture">Turkey Vulture</option>
                    
                        <option value="Turquoise-browed Motmot">Turquoise-browed Motmot</option>
                    
                        <option value="Upland Sandpiper">Upland Sandpiper</option>
                    
                        <option value="Varied Thrush">Varied Thrush</option>
                    
                        <option value="Vaux's Swift">Vaux's Swift</option>
                    
                        <option value="Veery">Veery</option>
                    
                        <option value="Verdin">Verdin</option>
                    
                        <option value="Vermilion Flycatcher">Vermilion Flycatcher</option>
                    
                        <option value="Vesper Sparrow">Vesper Sparrow</option>
                    
                        <option value="Violaceous Euphonia">Violaceous Euphonia</option>
                    
                        <option value="Violet Sabrewing">Violet Sabrewing</option>
                    
                        <option value="Violet-crowned Hummingbird">Violet-crowned Hummingbird</option>
                    
                        <option value="Violet-crowned Woodnymph">Violet-crowned Woodnymph</option>
                    
                        <option value="Violet-green Swallow">Violet-green Swallow</option>
                    
                        <option value="Virginia Rail">Virginia Rail</option>
                    
                        <option value="Volcano Hummingbird">Volcano Hummingbird</option>
                    
                        <option value="Volcano Junco">Volcano Junco</option>
                    
                        <option value="Wandering Tattler">Wandering Tattler</option>
                    
                        <option value="Warbling Vireo">Warbling Vireo</option>
                    
                        <option value="Water Rail">Water Rail</option>
                    
                        <option value="Wattled Crane">Wattled Crane</option>
                    
                        <option value="Wedge-tailed Shearwater">Wedge-tailed Shearwater</option>
                    
                        <option value="Western Bluebird">Western Bluebird</option>
                    
                        <option value="Western Grebe">Western Grebe</option>
                    
                        <option value="Western Gull">Western Gull</option>
                    
                        <option value="Western Kingbird">Western Kingbird</option>
                    
                        <option value="Western Meadowlark">Western Meadowlark</option>
                    
                        <option value="Western Sandpiper">Western Sandpiper</option>
                    
                        <option value="Western Screech-Owl">Western Screech-Owl</option>
                    
                        <option value="Western Scrub-Jay">Western Scrub-Jay</option>
                    
                        <option value="Western Tanager">Western Tanager</option>
                    
                        <option value="Western Wood-Pewee">Western Wood-Pewee</option>
                    
                        <option value="Whimbrel">Whimbrel</option>
                    
                        <option value="Whinchat">Whinchat</option>
                    
                        <option value="White Ibis">White Ibis</option>
                    
                        <option value="White Stork">White Stork</option>
                    
                        <option value="White Woodpecker">White Woodpecker</option>
                    
                        <option value="White-backed Stilt">White-backed Stilt</option>
                    
                        <option value="White-breasted Nuthatch">White-breasted Nuthatch</option>
                    
                        <option value="White-browed Blackbird">White-browed Blackbird</option>
                    
                        <option value="White-browed Scrubwren">White-browed Scrubwren</option>
                    
                        <option value="White-browed Wagtail">White-browed Wagtail</option>
                    
                        <option value="White-cheeked Pintail">White-cheeked Pintail</option>
                    
                        <option value="White-crowned Sparrow">White-crowned Sparrow</option>
                    
                        <option value="White-eared Hummingbird">White-eared Hummingbird</option>
                    
                        <option value="White-eyed Parakeet">White-eyed Parakeet</option>
                    
                        <option value="White-eyed Vireo">White-eyed Vireo</option>
                    
                        <option value="White-faced Heron">White-faced Heron</option>
                    
                        <option value="White-faced Ibis">White-faced Ibis</option>
                    
                        <option value="White-fronted Goose">White-fronted Goose</option>
                    
                        <option value="White-fronted Nunbird">White-fronted Nunbird</option>
                    
                        <option value="White-headed Woodpecker">White-headed Woodpecker</option>
                    
                        <option value="White-lined Tanager">White-lined Tanager</option>
                    
                        <option value="White-necked Jacobin">White-necked Jacobin</option>
                    
                        <option value="White-necked Mountain-Jay">White-necked Mountain-Jay</option>
                    
                        <option value="White-necked Puffbird">White-necked Puffbird</option>
                    
                        <option value="White-rumped Sandpiper">White-rumped Sandpiper</option>
                    
                        <option value="White-rumped Shama">White-rumped Shama</option>
                    
                        <option value="White-tailed Hawk">White-tailed Hawk</option>
                    
                        <option value="White-tailed Kite">White-tailed Kite</option>
                    
                        <option value="White-tailed Tropicbird">White-tailed Tropicbird</option>
                    
                        <option value="White-throated Dipper">White-throated Dipper</option>
                    
                        <option value="White-throated Mountain-gem">White-throated Mountain-gem</option>
                    
                        <option value="White-throated Sparrow">White-throated Sparrow</option>
                    
                        <option value="White-throated Swift">White-throated Swift</option>
                    
                        <option value="White-tipped Dove">White-tipped Dove</option>
                    
                        <option value="White-tipped Sicklebill">White-tipped Sicklebill</option>
                    
                        <option value="White-whiskered Puffbird">White-whiskered Puffbird</option>
                    
                        <option value="White-winged Crossbill">White-winged Crossbill</option>
                    
                        <option value="White-winged Dove">White-winged Dove</option>
                    
                        <option value="White-winged Scoter">White-winged Scoter</option>
                    
                        <option value="Whooper Swan">Whooper Swan</option>
                    
                        <option value="Whooping Crane">Whooping Crane</option>
                    
                        <option value="Wild Turkey">Wild Turkey</option>
                    
                        <option value="Willet">Willet</option>
                    
                        <option value="Williamson's Sapsucker">Williamson's Sapsucker</option>
                    
                        <option value="Willie-wagtail">Willie-wagtail</option>
                    
                        <option value="Willow Flycatcher">Willow Flycatcher</option>
                    
                        <option value="Willow Ptarmigan">Willow Ptarmigan</option>
                    
                        <option value="Wilson's Phalarope">Wilson's Phalarope</option>
                    
                        <option value="Wilson's Plover">Wilson's Plover</option>
                    
                        <option value="Wilson's Snipe">Wilson's Snipe</option>
                    
                        <option value="Wilson's Warbler">Wilson's Warbler</option>
                    
                        <option value="Winter Wren">Winter Wren</option>
                    
                        <option value="Wood Duck">Wood Duck</option>
                    
                        <option value="Wood Stork">Wood Stork</option>
                    
                        <option value="Wood Thrush">Wood Thrush</option>
                    
                        <option value="Woodland Kingfisher">Woodland Kingfisher</option>
                    
                        <option value="Worm-eating Warbler">Worm-eating Warbler</option>
                    
                        <option value="Yellow Robin">Yellow Robin</option>
                    
                        <option value="Yellow Warbler">Yellow Warbler</option>
                    
                        <option value="Yellow-bellied Flycatcher">Yellow-bellied Flycatcher</option>
                    
                        <option value="Yellow-bellied Sapsucker">Yellow-bellied Sapsucker</option>
                    
                        <option value="Yellow-billed Chough">Yellow-billed Chough</option>
                    
                        <option value="Yellow-billed Cuckoo">Yellow-billed Cuckoo</option>
                    
                        <option value="Yellow-billed Magpie">Yellow-billed Magpie</option>
                    
                        <option value="Yellow-billed Spoonbill">Yellow-billed Spoonbill</option>
                    
                        <option value="Yellow-breasted Chat">Yellow-breasted Chat</option>
                    
                        <option value="Yellow-chevroned Parakeet">Yellow-chevroned Parakeet</option>
                    
                        <option value="Yellow-chinned Spinetail">Yellow-chinned Spinetail</option>
                    
                        <option value="Yellow-crowned Euphonia">Yellow-crowned Euphonia</option>
                    
                        <option value="Yellow-crowned Night-Heron">Yellow-crowned Night-Heron</option>
                    
                        <option value="Yellow-faced Parrot">Yellow-faced Parrot</option>
                    
                        <option value="Yellow-faced Siskin">Yellow-faced Siskin</option>
                    
                        <option value="Yellow-headed Blackbird">Yellow-headed Blackbird</option>
                    
                        <option value="Yellow-headed Caracara">Yellow-headed Caracara</option>
                    
                        <option value="Yellow-naped Parrot">Yellow-naped Parrot</option>
                    
                        <option value="Yellow-rumped Warbler">Yellow-rumped Warbler</option>
                    
                        <option value="Yellow-tailed Black-Cockatoo">Yellow-tailed Black-Cockatoo</option>
                    
                        <option value="Yellow-thighed Finch">Yellow-thighed Finch</option>
                    
                        <option value="Yellow-throated Vireo">Yellow-throated Vireo</option>
                    
                        <option value="Yellow-throated Warbler">Yellow-throated Warbler</option>
                    
                        <option value="Yellow-winged Blackbird">Yellow-winged Blackbird</option>
                    
                        <option value="Zebra Dove">Zebra Dove</option>
                    
                        <option value="Zebra Finch">Zebra Finch</option>
                    
                        <option value="Zenaida Dove">Zenaida Dove</option>
                    
                        <option value="Zone-tailed Hawk">Zone-tailed Hawk</option>
                    
                </select>
            </div>
            <div class="form-group">    
                <button type="submit" class="btn btn-default">Click Here</button>
            </div>
        </form>
    </body>
</html>

