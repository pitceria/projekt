<?php

?>
<?php
// @$conn = new mysqli("localhost",'root','','mydb');
// if ($conn->connect_error) {
//     die("Connection failed: " . $conn->connect_error);
//   }



// $handle = @fopen("pizze.txt", "r");
// if ($handle) {
//     $pizzacount = 0 ;
//     while (($buffer = fgets($handle, 4096)) !== false) {
//         // echo $buffer."<br/>";
//         $tablica = ["XS","S","M","L","XL","XXL"];
//         echo $tablica[1];
        
//         for($i = 0 ;$i<=5;$i++){ 
//         $arr = explode(":",$buffer);
//         // print_r($arr);
//         // echo "<br/>";
//         $arr2 = explode(",", $arr[1]);
//         // print_r($arr2);
//         echo "<br/>";
//             $json = "'".json_encode($arr2)."'";
//             print_r($json);
//             $cena = $i*5+10.5;
//             $rozmiar = "'".$tablica[$i]."'";
//             $nazwa = "'".$arr[0]."'";
//             $sciezka = "'".$pizzacount.".jpg'";
//             $sql="insert into pizza values(null,$nazwa,$json,$cena,$rozmiar,$sciezka)";
//             echo "<br/>";
//             echo "$sql";
//             print_r($sql);
//             $bufor =$conn->query($sql);
            

//         }
//         $pizzacount++;
//         // break;
//         // $arr = explode(":",$buffer);
//         // print_r($arr[1]);
        
//         // echo "<br/>";
//         // $arr2 = explode(",", $arr[1]);
//         // echo json_encode($arr2);
//         // // print_r($arr2);
//         // echo "<br/>";
        
       
//     }
//     if (!feof($handle)) {
//         echo "Error: unexpected fgets() fail\n";
//     }
//     fclose($handle);
// }
?>


<?php

?>
<?php
@$conn = new mysqli("localhost",'root','','mydb');
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }



$handle = @fopen("pizze.txt", "r");
if ($handle) {
    $pizzacount = 0 ;
    while (($buffer = fgets($handle, 4096)) !== false) {
        // echo $buffer."<br/>";
        $tablica = ["XS","S","M","L","XL","XXL"];
        echo $tablica[1];
        
        for($i = 0 ;$i<=5;$i++){ 
        $arr = explode(":",$buffer);
        // print_r($arr);
        // echo "<br/>";
        $arr2 = explode(",", $arr[1]);
        // print_r($arr2);
        echo "<br/>";
            // $json = "'".json_encode(serialize($arr2))."'";
            // $json = json_encode(serialize($arr2));
            // $json = "'".base64_encode(serialize($arr2))."'";
            $json = "'".serialize($arr2)."'";
            print_r($json);
            $cena = $i*5+10.5;
            $rozmiar = "'".$tablica[$i]."'";
            $nazwa = "'".$arr[0]."'";
            $sciezka = "'".$pizzacount.".jpg'";
            $sql="insert into pizza values(null,$nazwa,$json,$cena,$rozmiar,$sciezka)";
            echo "<br/>";
            echo "$sql";
            print_r($sql);
            $bufor =$conn->query($sql);
            

        }
        $pizzacount++;
        // break;
        // $arr = explode(":",$buffer);
        // print_r($arr[1]);
        
        // echo "<br/>";
        // $arr2 = explode(",", $arr[1]);
        // echo json_encode($arr2);
        // // print_r($arr2);
        // echo "<br/>";
        
       
    }
    if (!feof($handle)) {
        echo "Error: unexpected fgets() fail\n";
    }
    fclose($handle);
}
?>