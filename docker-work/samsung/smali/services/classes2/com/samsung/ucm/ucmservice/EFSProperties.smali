.class public Lcom/samsung/ucm/ucmservice/EFSProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;,
        Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    }
.end annotation


# static fields
.field public static final APPLET_PLUGINUID:Ljava/lang/String; = "ucm_applet_pluginuid"

.field public static final CONFIG_FILE_PATH:Ljava/lang/String; = "/efs/sec_efs"

.field public static final DELETE_APPLET_LCCMSCRIPT:Ljava/lang/String; = "ucm_delete_applet_lccmscript"

.field public static final KEYGUARD_CONFIG_NAME:Ljava/lang/String; = "keyguardConfig"

.field public static final ODE_CONFIG_NAME:Ljava/lang/String; = "odeConfig"

.field public static final SCP_NONE:Ljava/lang/String; = "NONE"

.field public static final SCP_TYPES:[Ljava/lang/String;

.field public static final SCP_TYPE_A:Ljava/lang/String; = "SCP11a"

.field public static final SCP_TYPE_B:Ljava/lang/String; = "SCP11b"

.field public static final SCP_TYPE_CUSTOM:Ljava/lang/String; = "SCPCustom"

.field public static final STORAGE_TYPES:[Ljava/lang/String;

.field public static final STORAGE_TYPE_ESE:I = 0x0

.field public static final STORAGE_TYPE_ESE_1:I = 0x3

.field public static final STORAGE_TYPE_ESE_1_NAME:Ljava/lang/String; = "eSE1"

.field public static final STORAGE_TYPE_ESE_2:I = 0x6

.field public static final STORAGE_TYPE_ESE_2_NAME:Ljava/lang/String; = "eSE2"

.field public static final STORAGE_TYPE_ESE_NAME:Ljava/lang/String; = "eSE"

.field public static final STORAGE_TYPE_ETC:I = 0x9

.field public static final STORAGE_TYPE_ETC_NAME:Ljava/lang/String; = "ETC"

.field public static final STORAGE_TYPE_MAX:I = 0xa

.field public static final STORAGE_TYPE_MICROSD:I = 0x2

.field public static final STORAGE_TYPE_MICROSD_1:I = 0x5

.field public static final STORAGE_TYPE_MICROSD_1_NAME:Ljava/lang/String; = "SD1"

.field public static final STORAGE_TYPE_MICROSD_2:I = 0x8

.field public static final STORAGE_TYPE_MICROSD_2_NAME:Ljava/lang/String; = "SD2"

.field public static final STORAGE_TYPE_MICROSD_NAME:Ljava/lang/String; = "SD"

.field public static final STORAGE_TYPE_NONE:I = -0x1

.field public static final STORAGE_TYPE_UICC:I = 0x1

.field public static final STORAGE_TYPE_UICC_1:I = 0x4

.field public static final STORAGE_TYPE_UICC_1_NAME:Ljava/lang/String; = "SIM1"

.field public static final STORAGE_TYPE_UICC_2:I = 0x7

.field public static final STORAGE_TYPE_UICC_2_NAME:Ljava/lang/String; = "SIM2"

.field public static final STORAGE_TYPE_UICC_NAME:Ljava/lang/String; = "SIM"

.field public static final TAG:Ljava/lang/String; = "EFSProperties"


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    const-string v0, "eSE"

    const-string v1, "SIM"

    const-string v2, "SD"

    const-string v3, "eSE1"

    const-string v4, "SIM1"

    const-string v5, "SD1"

    const-string v6, "eSE2"

    const-string v7, "SIM2"

    const-string v8, "SD2"

    const-string v9, "ETC"

    .line 51
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    const-string v0, "NONE"

    const-string v1, "SCP11a"

    const-string v2, "SCP11b"

    const-string v3, "SCPCustom"

    .line 52
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .registers 9

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 428
    fill-array-data v0, :array_32

    if-nez p0, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 436
    :cond_b
    array-length v1, p0

    shl-int/lit8 v2, v1, 0x1

    .line 437
    new-array v2, v2, [C

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v3, v1, :cond_2b

    add-int/lit8 v5, v4, 0x1

    .line 441
    aget-byte v6, p0, v3

    and-int/lit16 v7, v6, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    aget-char v7, v0, v7

    aput-char v7, v2, v4

    add-int/lit8 v4, v5, 0x1

    and-int/lit8 v6, v6, 0xf

    .line 442
    aget-char v6, v0, v6

    aput-char v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 445
    :cond_2b
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0

    nop

    :array_32
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static checkKeyguardProperty(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static clearAppletInfo()V
    .registers 4

    .line 55
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteStoredPluginUid()Z

    move-result v0

    .line 56
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteAppletDeletionLccmScript()Z

    move-result v1

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deletePluginUidResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", deleteLccmScript: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static deleteAppletDeletionLccmScript()Z
    .registers 1

    const-string v0, "deleteAppletDeletionLccmScript"

    .line 132
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->getLccmScriptFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .registers 2

    .line 137
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 138
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const-string p0, "failed to delete the existing file"

    .line 141
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static deleteKeyguardConfig()Z
    .registers 3

    .line 519
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs"

    const-string v2, "keyguardConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 523
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "failed to delete the existing keyguard config file"

    .line 525
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x1

    :cond_1d
    :goto_1d
    return v0
.end method

.method public static deleteODEConfig()Z
    .registers 3

    .line 277
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs"

    const-string v2, "odeConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 281
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "failed to delete the existing ODE config file"

    .line 283
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x1

    :cond_1d
    :goto_1d
    return v0
.end method

.method public static deleteStoredPluginUid()Z
    .registers 1

    const-string v0, "deleteStoredPluginUid"

    .line 93
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->getPluginUidFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static getAppletDeletionLccmScript()[B
    .registers 5

    const-string v0, "getAppletDeletionLccmScript"

    .line 120
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->isAppletDeletionLccmScriptExist()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_d
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->getLccmScriptFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v1, v0, [B

    .line 123
    :try_start_18
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->getLccmScriptFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_26} :catch_4d

    .line 124
    :try_start_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getByteArray read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_26 .. :try_end_3f} :catchall_43

    .line 125
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_4d

    goto :goto_51

    :catchall_43
    move-exception v0

    .line 123
    :try_start_44
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception v2

    :try_start_49
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4c
    throw v0
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4d} :catch_4d

    :catch_4d
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_51
    return-object v1
.end method

.method public static getLccmScriptFile()Ljava/io/File;
    .registers 3

    .line 98
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs"

    const-string/jumbo v2, "ucm_delete_applet_lccmscript"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPluginUidFile()Ljava/io/File;
    .registers 3

    .line 61
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs"

    const-string/jumbo v2, "ucm_applet_pluginuid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStoredPluginUid()I
    .registers 6

    const-string v0, "getStoredPluginUid"

    .line 80
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 82
    :try_start_6
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->getPluginUidFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_51

    .line 83
    :try_start_14
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->getPluginUidFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v3, v2, [B

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getByteArray read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 85
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_43
    .catchall {:try_start_14 .. :try_end_43} :catchall_47

    .line 86
    :try_start_43
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_51

    goto :goto_55

    :catchall_47
    move-exception v2

    .line 82
    :try_start_48
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_50

    :catchall_4c
    move-exception v1

    :try_start_4d
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_50
    throw v2
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_51} :catch_51

    :catch_51
    move-exception v1

    .line 87
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_55
    return v0
.end method

.method public static isAppletDeletionLccmScriptExist()Z
    .registers 1

    .line 102
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->getLccmScriptFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static isPluginUidStored()Z
    .registers 1

    .line 65
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->getPluginUidFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static loadKeyguardConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .registers 8

    const-string v0, "load Keyguard config"

    .line 449
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 450
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs"

    const-string v2, "keyguardConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    const-string v0, "Keyguard config file does not exist"

    .line 453
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return-object v2

    .line 460
    :cond_1b
    :try_start_1b
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_e0
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_cb
    .catchall {:try_start_1b .. :try_end_20} :catchall_c9

    .line 461
    :try_start_20
    new-instance v0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;-><init>()V

    .line 463
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v3
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_29} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_c5
    .catchall {:try_start_20 .. :try_end_29} :catchall_f5

    const-string v4, "EFSProperties"

    if-lez v3, :cond_b7

    .line 465
    :try_start_2d
    new-array v5, v3, [B

    const/4 v6, 0x0

    .line 467
    invoke-virtual {v1, v5, v6, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    if-eq v7, v3, :cond_44

    const-string v0, "csTemp length is not proper"

    .line 469
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3b} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3b} :catch_c5
    .catchall {:try_start_2d .. :try_end_3b} :catchall_f5

    .line 507
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception v0

    .line 509
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_43
    return-object v2

    .line 472
    :cond_44
    :try_start_44
    iput-object v5, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->csName:[B

    .line 477
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v3

    if-lez v3, :cond_a9

    .line 479
    new-array v5, v3, [B

    iput-object v5, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    .line 480
    invoke-virtual {v1, v5, v6, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    if-eq v5, v3, :cond_7c

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "read side mismatched, lengthAID : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", readByteSize : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_73} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_73} :catch_c5
    .catchall {:try_start_44 .. :try_end_73} :catchall_f5

    .line 507
    :try_start_73
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_7b

    :catch_77
    move-exception v0

    .line 509
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_7b
    return-object v2

    .line 489
    :cond_7c
    :try_start_7c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v3

    .line 490
    iput v3, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->storageType:I

    .line 491
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->enabledSCP:I

    .line 492
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMinLength:I

    .line 493
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMaxLength:I

    .line 494
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMinLength:I

    .line 495
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMaxLength:I
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_a0} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_a0} :catch_c5
    .catchall {:try_start_7c .. :try_end_a0} :catchall_f5

    .line 507
    :try_start_a0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a4

    goto :goto_a8

    :catch_a4
    move-exception v1

    .line 509
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_a8
    return-object v0

    :cond_a9
    :try_start_a9
    const-string v0, "AID length is not proper"

    .line 486
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ae} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ae} :catch_c5
    .catchall {:try_start_a9 .. :try_end_ae} :catchall_f5

    .line 507
    :try_start_ae
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b2

    goto :goto_b6

    :catch_b2
    move-exception v0

    .line 509
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_b6
    return-object v2

    :cond_b7
    :try_start_b7
    const-string v0, "CS Name length is not proper"

    .line 474
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_bc} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_bc} :catch_c5
    .catchall {:try_start_b7 .. :try_end_bc} :catchall_f5

    .line 507
    :try_start_bc
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_c0

    goto :goto_c4

    :catch_c0
    move-exception v0

    .line 509
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_c4
    return-object v2

    :catch_c5
    move-exception v0

    goto :goto_cd

    :catch_c7
    move-exception v0

    goto :goto_e2

    :catchall_c9
    move-exception v0

    goto :goto_f7

    :catch_cb
    move-exception v0

    move-object v1, v2

    :goto_cd
    :try_start_cd
    const-string v3, "loadKeyguardConfig : Exception"

    .line 501
    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d5
    .catchall {:try_start_cd .. :try_end_d5} :catchall_f5

    if-eqz v1, :cond_df

    .line 507
    :try_start_d7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_db

    goto :goto_df

    :catch_db
    move-exception v0

    .line 509
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_df
    :goto_df
    return-object v2

    :catch_e0
    move-exception v0

    move-object v1, v2

    :goto_e2
    :try_start_e2
    const-string v3, "loadKeyguardConfig : IOException"

    .line 497
    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ea
    .catchall {:try_start_e2 .. :try_end_ea} :catchall_f5

    if-eqz v1, :cond_f4

    .line 507
    :try_start_ec
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ef} :catch_f0

    goto :goto_f4

    :catch_f0
    move-exception v0

    .line 509
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_f4
    :goto_f4
    return-object v2

    :catchall_f5
    move-exception v0

    move-object v2, v1

    :goto_f7
    if-eqz v2, :cond_101

    .line 507
    :try_start_f9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_fd

    goto :goto_101

    :catch_fd
    move-exception v1

    .line 509
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 512
    :cond_101
    :goto_101
    throw v0
.end method

.method public static loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .registers 10

    const-string v0, "load ODE config"

    .line 147
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs"

    const-string v2, "odeConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v0, "ODE config file does not exist"

    .line 151
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 152
    new-instance v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>()V

    return-object v0

    .line 156
    :cond_1f
    :try_start_1f
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_22e

    .line 157
    :try_start_24
    new-instance v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>()V

    .line 158
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    iput v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    .line 159
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_224

    const-string v3, ", readByteSize : "

    const-string v4, "EFSProperties"

    const/4 v5, 0x0

    if-eqz v2, :cond_5f

    .line 161
    :try_start_3a
    new-array v6, v2, [B

    iput-object v6, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    .line 162
    invoke-virtual {v1, v6, v5, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    if-eq v6, v2, :cond_5f

    .line 164
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "read side mismatched, lengthAID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_5f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    iput v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    .line 168
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    iput v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    .line 169
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    iput v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    .line 170
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    iput v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    .line 171
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    iput v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    .line 172
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    iput v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    .line 173
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    iput v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    .line 174
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    iput v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    .line 175
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    iput v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    .line 177
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    if-eqz v2, :cond_c0

    .line 179
    new-array v6, v2, [B

    iput-object v6, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    .line 180
    invoke-virtual {v1, v6, v5, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    if-eq v6, v2, :cond_c0

    .line 182
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "read side mismatched, lengthCsName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_c0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    iput v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    .line 187
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    iput v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    .line 188
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    if-eqz v2, :cond_f7

    .line 190
    new-array v6, v2, [B

    iput-object v6, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    .line 191
    invoke-virtual {v1, v6, v5, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    if-eq v6, v2, :cond_f7

    .line 193
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "read side mismatched, lenCertAlias : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_f7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    if-eqz v2, :cond_122

    .line 198
    new-array v6, v2, [B

    iput-object v6, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    .line 199
    invoke-virtual {v1, v6, v5, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    if-eq v6, v2, :cond_122

    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "read side mismatched, lenCertLocation : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_122
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    if-eqz v2, :cond_14d

    .line 207
    new-array v6, v2, [B

    iput-object v6, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    .line 208
    invoke-virtual {v1, v6, v5, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    if-eq v6, v2, :cond_14d

    .line 210
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "read side mismatched, lenConfiguratorPkgLen : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_14d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    if-eqz v2, :cond_178

    .line 216
    new-array v6, v2, [B

    iput-object v6, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    .line 217
    invoke-virtual {v1, v6, v5, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    if-eq v6, v2, :cond_178

    .line 219
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "read side mismatched, lenConfiguratorDigestLen : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_178
    const/4 v2, 0x2

    new-array v6, v2, [B

    .line 224
    invoke-virtual {v1, v6, v5, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    if-lt v7, v2, :cond_21e

    aget-byte v2, v6, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v5

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    if-eqz v2, :cond_1b5

    .line 232
    new-array v6, v2, [B

    iput-object v6, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    .line 233
    invoke-virtual {v1, v6, v5, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    if-eq v6, v2, :cond_1b5

    .line 235
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "read side mismatched, lenScpParamLen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_1b5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    if-lez v2, :cond_1e0

    .line 241
    new-array v6, v2, [B

    iput-object v6, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    .line 242
    invoke-virtual {v1, v6, v5, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    if-eq v6, v2, :cond_1e0

    .line 244
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "read side mismatched, lenPluginSignatureHash : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1e0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_1ea

    .line 250
    iput v7, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    goto :goto_21a

    .line 253
    :cond_1ea
    iput v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    if-gt v2, v7, :cond_1ef

    goto :goto_21a

    .line 257
    :cond_1ef
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    if-lez v2, :cond_21a

    .line 259
    new-array v6, v2, [B

    iput-object v6, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    .line 260
    invoke-virtual {v1, v6, v5, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    if-eq v5, v2, :cond_21a

    .line 262
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "read side mismatched, lenDefaultLanguage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21a
    .catchall {:try_start_3a .. :try_end_21a} :catchall_224

    .line 267
    :cond_21a
    :goto_21a
    :try_start_21a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_21d
    .catch Ljava/io/IOException; {:try_start_21a .. :try_end_21d} :catch_22e

    goto :goto_237

    .line 225
    :cond_21e
    :try_start_21e
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_224
    .catchall {:try_start_21e .. :try_end_224} :catchall_224

    :catchall_224
    move-exception v0

    .line 156
    :try_start_225
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_228
    .catchall {:try_start_225 .. :try_end_228} :catchall_229

    goto :goto_22d

    :catchall_229
    move-exception v1

    :try_start_22a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_22d
    throw v0
    :try_end_22e
    .catch Ljava/io/IOException; {:try_start_22a .. :try_end_22e} :catch_22e

    :catch_22e
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 269
    new-instance v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>()V

    :goto_237
    return-object v0
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "EFSProperties"

    .line 761
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static saveAppletDeletionLccmScript([B)Z
    .registers 4

    const-string/jumbo v0, "saveAppletDeletionLccmScript"

    .line 106
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    .line 110
    :cond_a
    :try_start_a
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->getLccmScriptFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_25

    .line 111
    :try_start_13
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1b

    const/4 p0, 0x1

    .line 113
    :try_start_17
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_25

    return p0

    :catchall_1b
    move-exception p0

    .line 110
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v1

    :try_start_21
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_24
    throw p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_25

    :catch_25
    move-exception p0

    .line 114
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static saveKeyguardConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z
    .registers 5

    const-string/jumbo v0, "save Keyguard config"

    .line 533
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_f

    const-string p0, "KeyguardProperties is null"

    .line 537
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return v0

    .line 541
    :cond_f
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->checkKeyguardProperty(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string p0, "checkKeyguardProperty false"

    .line 542
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return v0

    .line 546
    :cond_1b
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string v3, "keyguardConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 549
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_36

    const-string p0, "failed to delete the existing Keyguard ODE config file"

    .line 551
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return v0

    :cond_36
    const/4 v2, 0x0

    .line 558
    :try_start_37
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3c} :catch_98
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_88
    .catchall {:try_start_37 .. :try_end_3c} :catchall_86

    .line 560
    :try_start_3c
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->csName:[B

    .line 561
    array-length v2, v1

    .line 562
    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 563
    invoke-virtual {v3, v1, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 564
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    if-eqz v1, :cond_56

    array-length v2, v1

    if-lez v2, :cond_56

    .line 565
    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 566
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_59

    .line 568
    :cond_56
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 570
    :goto_59
    iget v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->storageType:I

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 571
    iget v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->enabledSCP:I

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 572
    iget v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMinLength:I

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 573
    iget v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMaxLength:I

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 574
    iget v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMinLength:I

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 575
    iget p0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMaxLength:I

    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_77} :catch_83
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_77} :catch_80
    .catchall {:try_start_3c .. :try_end_77} :catchall_7d

    const/4 p0, 0x1

    .line 586
    :try_start_78
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_a8

    move v0, p0

    goto :goto_ac

    :catchall_7d
    move-exception p0

    move-object v2, v3

    goto :goto_ad

    :catch_80
    move-exception p0

    move-object v2, v3

    goto :goto_89

    :catch_83
    move-exception p0

    move-object v2, v3

    goto :goto_99

    :catchall_86
    move-exception p0

    goto :goto_ad

    :catch_88
    move-exception p0

    :goto_89
    :try_start_89
    const-string/jumbo v1, "saveKeyguardConfig : Exception"

    .line 581
    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_92
    .catchall {:try_start_89 .. :try_end_92} :catchall_86

    if-eqz v2, :cond_ac

    .line 586
    :try_start_94
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_a8

    goto :goto_ac

    :catch_98
    move-exception p0

    :goto_99
    :try_start_99
    const-string/jumbo v1, "saveKeyguardConfig : IOException"

    .line 578
    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a2
    .catchall {:try_start_99 .. :try_end_a2} :catchall_86

    if-eqz v2, :cond_ac

    .line 586
    :try_start_a4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_ac

    :catch_a8
    move-exception p0

    .line 588
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_ac
    :goto_ac
    return v0

    :goto_ad
    if-eqz v2, :cond_b7

    .line 586
    :try_start_af
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b3

    goto :goto_b7

    :catch_b3
    move-exception v0

    .line 588
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 592
    :cond_b7
    :goto_b7
    throw p0
.end method

.method public static saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z
    .registers 9

    const-string/jumbo v0, "save ODE config"

    .line 292
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_f

    const-string p0, "ODEProperties is null"

    .line 296
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return v0

    .line 302
    :cond_f
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string v3, "odeConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 305
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2a

    const-string p0, "failed to delete the existing ODE config file"

    .line 307
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return v0

    :cond_2a
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 319
    :try_start_2c
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_31} :catch_146
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_13e

    .line 321
    :try_start_31
    iget v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 323
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    if-eqz v2, :cond_47

    array-length v5, v2

    if-lez v5, :cond_47

    .line 324
    array-length v2, v2

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 325
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_4a

    .line 327
    :cond_47
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 330
    :goto_4a
    iget v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 331
    iget v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 332
    iget v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 334
    iget v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 335
    iget v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 336
    iget v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 337
    iget v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 338
    iget v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 339
    iget v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 341
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    if-eqz v2, :cond_88

    array-length v5, v2

    if-lez v5, :cond_88

    .line 342
    array-length v2, v2

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 343
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_8b

    .line 345
    :cond_88
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 348
    :goto_8b
    iget v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 349
    iget v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 350
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    if-eqz v2, :cond_a6

    array-length v5, v2

    if-lez v5, :cond_a6

    .line 351
    array-length v2, v2

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 352
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_a9

    .line 354
    :cond_a6
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 356
    :goto_a9
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    if-eqz v2, :cond_ba

    array-length v5, v2

    if-lez v5, :cond_ba

    .line 357
    array-length v2, v2

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 358
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_bd

    .line 360
    :cond_ba
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 363
    :goto_bd
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    if-eqz v2, :cond_ce

    array-length v5, v2

    if-lez v5, :cond_ce

    .line 364
    array-length v2, v2

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 365
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_d1

    .line 367
    :cond_ce
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 370
    :goto_d1
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    if-eqz v2, :cond_e2

    array-length v5, v2

    if-lez v5, :cond_e2

    .line 371
    array-length v2, v2

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 372
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_e5

    .line 374
    :cond_e2
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 377
    :goto_e5
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    if-eqz v2, :cond_108

    array-length v5, v2

    if-lez v5, :cond_108

    const/4 v5, 0x2

    new-array v5, v5, [B

    .line 379
    array-length v6, v2

    const v7, 0xff00

    and-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 380
    array-length v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v5, v3

    .line 381
    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 382
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_10e

    .line 385
    :cond_108
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 386
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 389
    :goto_10e
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    if-eqz v2, :cond_11f

    array-length v5, v2

    if-lez v5, :cond_11f

    .line 390
    array-length v2, v2

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 391
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_122

    .line 393
    :cond_11f
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 396
    :goto_122
    iget v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 397
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    if-eqz v2, :cond_14f

    array-length v5, v2

    if-lez v5, :cond_14f

    .line 398
    array-length v2, v2

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 399
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    invoke-virtual {v4, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_137
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_137} :catch_13b
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_137} :catch_138

    goto :goto_14f

    :catch_138
    move-exception p0

    move-object v2, v4

    goto :goto_13f

    :catch_13b
    move-exception p0

    move-object v2, v4

    goto :goto_147

    :catch_13e
    move-exception p0

    .line 409
    :goto_13f
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 410
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_14d

    :catch_146
    move-exception p0

    .line 404
    :goto_147
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 405
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :goto_14d
    move v3, v0

    move-object v4, v2

    :cond_14f
    :goto_14f
    if-eqz v4, :cond_15a

    .line 416
    :try_start_151
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_154
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_154} :catch_155

    goto :goto_15a

    :catch_155
    move-exception p0

    .line 419
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15b

    :cond_15a
    :goto_15a
    move v0, v3

    :goto_15b
    return v0
.end method

.method public static savePluginUid(I)Z
    .registers 3

    const-string/jumbo v0, "savePluginUid"

    .line 69
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 70
    :try_start_6
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->getPluginUidFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_2b

    .line 71
    :try_start_f
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_21

    const/4 p0, 0x1

    .line 73
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_2b

    return p0

    :catchall_21
    move-exception p0

    .line 70
    :try_start_22
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception v0

    :try_start_27
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw p0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method
