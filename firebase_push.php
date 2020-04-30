<?php
function push($title,$message,$topic){
//$message = generateRandomString(6);
$path_to_fcm = "https://fcm.googleapis.com/fcm/send";
$server_key = "AAAATklzvKg:APA91bEDr9RxNKj3Dut7TjHac39IBQfMI2gQCmN9PPGX8dZB4yG4MbRuZQ0SP4mHnYfuToDSdudzzQ1tl3GEz05-tmDV-pQ6UExitnU7MzXTq6lbgGDZlITcs-tJShddJtd_19Xx_OGf";

$headers = array(
    'Authorization:key=' .$server_key,
    'Content-Type:application/json'
    );
    
    
    $fields = array('to'=>'/topics/'.$topic,'notification'=>array('title'=>$title,'body'=>$message));
    
    $payload = json_encode($fields);
    
    $curl_session = curl_init();
    curl_setopt($curl_session, CURLOPT_URL, $path_to_fcm);
    curl_setopt($curl_session, CURLOPT_POST, true);
    curl_setopt($curl_session, CURLOPT_HTTPHEADER, $headers);
    curl_setopt($curl_session, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($curl_session, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($curl_session, CURLOPT_IPRESOLVE, CURL_IPRESOLVE_V4 );
    curl_setopt($curl_session, CURLOPT_POSTFIELDS, $payload);
    
    $result = curl_exec($curl_session);
   // echo $result;
    if ($result === FALSE) {
        die('Problem occurred: ' . curl_error($result));
    }
    
    curl_close($curl_session);
}

    function generateRandomString($length = 10) {
        $characters = '0123456789';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }

function push_notification_android($device_id,$message){

    //API URL of FCM
    $url = 'https://fcm.googleapis.com/fcm/send';

    /*api_key available in:
    Firebase Console -> Project Settings -> CLOUD MESSAGING -> Server key*/
    $api_key = 'AAAATklzvKg:APA91bEDr9RxNKj3Dut7TjHac39IBQfMI2gQCmN9PPGX8dZB4yG4MbRuZQ0SP4mHnYfuToDSdudzzQ1tl3GEz05-tmDV-pQ6UExitnU7MzXTq6lbgGDZlITcs-tJShddJtd_19Xx_OGf';

    $fields = array (
        'registration_ids' => array (
            $device_id
        ),
        'data' => array (
            "message" => $message
        )
    );

    //header includes Content type and api key
    $headers = array(
        'Content-Type:application/json',
        'Authorization:key='.$api_key
    );

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
    $result = curl_exec($ch);
    if ($result === FALSE) {
        die('FCM Send Error: ' . curl_error($ch));
    }
    curl_close($ch);
   // return $result;
}
?>