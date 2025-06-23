# SSH Key Authentication and Configuration - Lab

This lab demonstrates how to set up SSH key-based authentication between two Linux systems and simplify SSH access using the SSH config file.

---

## **Lab Tasks:**

1. **Generate SSH Key Pair**
2. **Copy Public Key to Remote Server**
3. **Configure SSH Config File for Host Alias**
4. **Connect to Remote Server using Host Alias**

---

## **Steps:**

### 1. Generate SSH Key:

On the local machine, run:

```bash
ssh-keygen -t ed25519 -C "mahmoudabdelnaser309@gmail.com"
```
### 2. Copy Public Key to Remote Server
```bash
ssh-copy-id mahmoud@192.168.101.144
```
### 3. Configure SSH Client 
```bash
vim ~/.ssh/config

Host ivolve
    HostName 192.168.101.144
    User mahmoud
    IdentityFile ~/.ssh/id_ed25519
```
### 4. Connect Using the Alias
```bash
ssh ivolve
```





