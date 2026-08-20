.class public Lcom/android/server/blockchain/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final ACTION_SUI_ABORT_MSG:Ljava/lang/String; = "com.qualcomm.qti.services.secureui.action.ACTION_SUI_ABORT_MSG"

.field public static final QC_TUISERVICE_PROCESS_NAME:Ljava/lang/String; = "com.qualcomm.qti.services.secureui"

.field public static final TAG:Ljava/lang/String; = "com.android.server.blockchain.Utils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteDirectory(Ljava/io/File;)Z
    .registers 4

    .line 79
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 80
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 81
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_24

    .line 82
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 83
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/android/server/blockchain/Utils;->deleteDirectory(Ljava/io/File;)Z

    goto :goto_21

    .line 85
    :cond_1c
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 89
    :cond_24
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static readFile(Ljava/lang/String;)[B
    .registers 8

    const-string v0, "Error closing InputStream"

    .line 23
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In readFile - Path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.android.server.blockchain.Utils"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 29
    :try_start_1e
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_60
    .catchall {:try_start_1e .. :try_end_23} :catchall_5c

    .line 30
    :try_start_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File Read - Length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v1, v4

    new-array v4, v1, [B
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_42} :catch_59
    .catchall {:try_start_23 .. :try_end_42} :catchall_72

    .line 33
    :try_start_42
    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-eq v5, v1, :cond_4e

    const-string v1, "File Read Failed"

    .line 34
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4d} :catch_57
    .catchall {:try_start_42 .. :try_end_4d} :catchall_72

    goto :goto_4f

    :cond_4e
    move-object p0, v4

    .line 42
    :goto_4f
    :try_start_4f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_71

    .line 45
    :catch_53
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    :catch_57
    move-exception p0

    goto :goto_64

    :catch_59
    move-exception v1

    move-object v4, p0

    goto :goto_63

    :catchall_5c
    move-exception v1

    move-object v3, p0

    move-object p0, v1

    goto :goto_73

    :catch_60
    move-exception v1

    move-object v3, p0

    move-object v4, v3

    :goto_63
    move-object p0, v1

    .line 38
    :goto_64
    :try_start_64
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_72

    if-eqz v3, :cond_70

    .line 42
    :try_start_69
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_70

    .line 45
    :catch_6d
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    :goto_70
    move-object p0, v4

    :goto_71
    return-object p0

    :catchall_72
    move-exception p0

    :goto_73
    if-eqz v3, :cond_7c

    .line 42
    :try_start_75
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_7c

    .line 45
    :catch_79
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_7c
    :goto_7c
    throw p0
.end method

.method public static sendSecureUIAbortIntent(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "com.android.server.blockchain.Utils"

    const-string/jumbo v1, "sendSecureUIAbortIntent"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.qualcomm.qti.services.secureui.action.ACTION_SUI_ABORT_MSG"

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.qualcomm.qti.services.secureui"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static writeFile([BLjava/lang/String;)Z
    .registers 6

    const-string v0, "Error closing OutputStream"

    const-string v1, "com.android.server.blockchain.Utils"

    .line 56
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 59
    :try_start_a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_38
    .catchall {:try_start_a .. :try_end_f} :catchall_36

    .line 60
    :try_start_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File Write - Length = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_27} :catch_33
    .catchall {:try_start_f .. :try_end_27} :catchall_30

    const/4 p0, 0x1

    .line 68
    :try_start_28
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_46

    .line 71
    :catch_2c
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    :catchall_30
    move-exception p0

    move-object p1, v3

    goto :goto_47

    :catch_33
    move-exception p0

    move-object p1, v3

    goto :goto_39

    :catchall_36
    move-exception p0

    goto :goto_47

    :catch_38
    move-exception p0

    .line 64
    :goto_39
    :try_start_39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_36

    if-eqz p1, :cond_45

    .line 68
    :try_start_3e
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_45

    .line 71
    :catch_42
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    :goto_45
    const/4 p0, 0x0

    :goto_46
    return p0

    :goto_47
    if-eqz p1, :cond_50

    .line 68
    :try_start_49
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_50

    .line 71
    :catch_4d
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_50
    :goto_50
    throw p0
.end method
