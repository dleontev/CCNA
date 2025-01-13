# Chapter 3: Securing Wireless Networks

## Anatomy of a Secure Connection

### Authentication

*   Before a wireless client can use a WLAN, it must be authenticated. 
*   Authentication can be done using a static key or a username and password. 
*   The client should also authenticate the AP to prevent man-in-the-middle attacks. 

### Message Privacy

*   Wireless data should be encrypted to protect it from eavesdroppers. 
*   The encryption key should be unique to each client. 
*   The AP also uses a group key to encrypt broadcast and multicast messages. 

### Message Integrity

*   A message integrity check (MIC) can be used to protect against data tampering. 
*   The MIC is a secret stamp that is added to the data. 
*   The recipient can verify the MIC to ensure that the data has not been modified. 

## Wireless Client Authentication Methods

### Open Authentication

*   Open authentication offers no security. 
*   It is used to validate that a client is a valid 802.11 device. 
*   It is often used with web authentication. 

### WEP

*   WEP is an older encryption method that is no longer considered secure. 
*   It uses a shared key that is known to all clients and APs. 
*   It has been deprecated and should not be used. 

### 802.1x/EAP

*   802.1x/EAP is a more secure authentication method that uses an authentication server. 
*   The client must provide credentials to the authentication server. 
*   EAP is a framework that supports a variety of authentication methods. 

### LEAP

*   LEAP is a Cisco proprietary authentication method that has been deprecated. 

### EAP-FAST

*   EAP-FAST is a Cisco proprietary authentication method that uses a protected access credential (PAC). 

### PEAP

*   PEAP is an authentication method that uses a TLS tunnel to protect credentials. 

### EAP-TLS

*   EAP-TLS is the most secure authentication method, but it requires certificates on both the client and the server. 

## Wireless Privacy and Integrity Methods

### TKIP

*   TKIP is an older encryption method that has been deprecated. 

### CCMP

*   CCMP is a more secure encryption method that uses AES. 

### GCMP

*   GCMP is the most secure encryption method, and it is used in WPA3. 

## WPA, WPA2, and WPA3

*   WPA, WPA2, and WPA3 are industry certifications from the Wi-Fi Alliance that define a suite of security mechanisms. 
*   WPA2 is the most commonly used version today. 
*   WPA3 is the most secure version, but it is not yet widely supported. 
*   Each WPA version supports two authentication modes: personal and enterprise. 
*   Personal mode uses a pre-shared key (PSK). 
*   Enterprise mode uses 802.1x/EAP.