.class public Lcom/samsung/ucm/ucmservice/EFSPropertiesHelper;
.super Ljava/lang/Object;
.source "EFSPropertiesHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EFSPropertiesHelper"

.field public static final UCM_ODE_MODE_FILE_PATH:Ljava/lang/String; = "/efs/sec_efs/ucm_ode_mode"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getODESettingsConfiguration()Landroid/os/Bundle;
    .registers 7

    const-string v0, "EFSPropertiesHelper"

    const-string v1, "getODESettingsConfiguration"

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 27
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v2

    if-nez v2, :cond_13

    return-object v1

    :cond_13
    const/4 v3, 0x0

    .line 36
    :try_start_14
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/efs/sec_efs/ucm_ode_mode"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_20} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_20} :catch_3c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_20} :catch_38

    .line 37
    :try_start_20
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const-string v6, "2"

    .line 38
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2e

    .line 41
    :try_start_2a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2d} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_2d} :catch_3c
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_38

    goto :goto_3c

    :catchall_2e
    move-exception v5

    .line 36
    :try_start_2f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v4

    :try_start_34
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_37
    throw v5
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_38} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_34 .. :try_end_38} :catch_3c
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_38} :catch_38

    :catch_38
    move-exception v4

    .line 44
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :catch_3c
    :goto_3c
    if-eqz v3, :cond_49

    const-string v3, "Device is encrypted as UCM"

    .line 48
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const-string v4, "odeEnabled"

    .line 49
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    :cond_49
    iget-object v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    if-eqz v3, :cond_8a

    .line 53
    array-length v4, v3

    if-lez v4, :cond_8a

    .line 55
    :try_start_50
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "agentId : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "id"

    .line 57
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_50 .. :try_end_70} :catch_71

    goto :goto_8a

    :catch_71
    move-exception v3

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The exception occurs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_8a
    :goto_8a
    iget-object v0, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    const-string v3, "odeSignature"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 63
    iget-object v0, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    const-string v3, "aid"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 64
    iget v0, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSPropertiesHelper;->isVaildStorageType(I)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 65
    sget-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    iget v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    aget-object v0, v0, v3

    const-string/jumbo v3, "storagetype"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_ac
    iget v0, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSPropertiesHelper;->isVaildSCPType(I)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 67
    sget-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    iget v2, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    aget-object v0, v0, v2

    const-string/jumbo v2, "scptype"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c0
    return-object v1
.end method

.method public static isVaildSCPType(I)Z
    .registers 2

    if-ltz p0, :cond_9

    .line 79
    sget-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static isVaildStorageType(I)Z
    .registers 2

    if-ltz p0, :cond_9

    .line 73
    sget-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method
