title=Hashing and Checksum in Java
date=2011-08-22
tags=java, snippets
slug=hashing-and-checksum-in-java
summary=Implementing hashing and checksum in Java
category=Java
author=Senthilkumar Gopal
type=post
status=published
~~~~~~

### Checksum generation

```java
    public class SHACheckSumExample{
        public static void main(String[] args)throws Exception{
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            FileInputStream fis = new FileInputStream("c:loging.log");
            byte[] dataBytes = new byte[1024];   int nread = 0;
            while ((nread = fis.read(dataBytes)) != -1) {
              md.update(dataBytes, 0, nread);
            };
            //convert the byte to hex format method 1
            byte[] mdbytes = md.digest();
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < mdbytes.length; i++) {
              sb.append(Integer.toString((mdbytes[i] & 0xff) + 0x100, 16).substring(1));
            }
            //convert the byte to hex format method 2
            System.out.println("Hex format : " + sb.toString());
            StringBuffer hexString = new StringBuffer();
            for (int i=0;i<mdbytes.length;i++) {
              hexString.append(Integer.toHexString(0xFF & mdbytes[i]));
            }   System.out.println("Hex format : " + hexString.toString());
        }
    }
```

### Hashing of a String

```java
    public class SHAHashingExample{
        public static void main(String[] args)throws Exception    {
            String password = "123456";
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(password.getBytes());
            byte byteData[] = md.digest();   //convert the byte to hex format method 1
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < byteData.length; i++) {
             sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
            }
            //convert the byte to hex format method 2
            System.out.println("Hex format : " + sb.toString());
            StringBuffer hexString = new StringBuffer();
            for (int i=0;i<byteData.length;i++) {
                String hex=Integer.toHexString(0xff & byteData[i]);
                if(hex.length()==1) hexString.append('0');
                hexString.append(hex);
            }
            System.out.println("Hex format : " + hexString.toString());
        }
    }
```
