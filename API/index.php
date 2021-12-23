<?php

require_once('./scripts/functions.php');

// root file

try {
    if (!empty($_GET['request'])) {
        $url = explode("/", filter_var($_GET['request'], FILTER_SANITIZE_URL));
        switch ($url[0]) {
            case "works" :
                if (empty($url[1])) {
                    getWorks();
                } else {
                    getWorksByCategories($url[1]);
                }
                break;
            case "work" : 
                if (!empty($url[1])) {
                    getWorkById($url[1]);
                } else {
                    throw new Exception("You did not fill in the work number");
                }
                break;
            default : throw new Exception("The request is not valid, check the URL");
        }
    } else {
        throw new Exception("Data recovery problem");
    }
} catch(Exception $e) {
    $error = [
        "message" => $e -> getMessage(),
        "code" => $e -> getCode()
    ];
    print_r($error);
}
 
?>