<?php 

// connection to the database
function getConnection() {

    // if you have others informations for your database, enter it below. It's an example here :
   return new PDO("mysql:host=localhost; dbname=beethoven'sworks; charset=utf8;", "root", "");
}

// function for send a json file
function sendJSON($infos) {

    header('Access-Control-Allow-Origin: *');
    header('Content-Type: application/json');
    echo json_encode($infos, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);
}

// function that return all the works
function getWorks() {

    $pdo = getConnection();
    $req = "SELECT f.id, f.opus, f.title, f.tone, f.instruments, f.years, c.title as 'category' 
    from works f inner join categories c on f.category_id = c.id";

    $stmt = $pdo -> prepare($req);
    $stmt -> execute();
    $works = $stmt -> fetchAll(PDO::FETCH_ASSOC);
    $stmt -> closeCursor();

    sendJSON($works);
}


// function that return a work base on its category
function getWorksByCategories($category) {

    $pdo = getConnection();
    $req = "SELECT f.id, f.opus, f.title, f.tone, f.instruments, f.years, c.title as 'category' 
    from works f inner join categories c on f.category_id = c.id where c.title = :category";

    $stmt = $pdo -> prepare($req);
    $stmt -> bindValue(":category", $category, PDO::PARAM_STR);
    $stmt -> execute();
    $works = $stmt -> fetchAll(PDO::FETCH_ASSOC);
    $stmt -> closeCursor();

    sendJSON($works);
}

// function that returns a work based on its id
function getWorkById($id) {

    $pdo = getConnection();
    $req = "SELECT f.id, f.opus, f.title, f.tone, f.instruments, f.years, c.title as 'category' 
    from works f inner join categories c on f.category_id = c.id where f.id = :id";

    $stmt = $pdo -> prepare($req);
    $stmt -> bindValue(":id", $id, PDO::PARAM_INT);
    $stmt -> execute();
    $works = $stmt -> fetchAll(PDO::FETCH_ASSOC);
    $stmt -> closeCursor();

    sendJSON($works);
}

?>
