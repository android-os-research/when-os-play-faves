.class public Lcom/samsung/android/camera/visionserver/VisionServerListManager;
.super Ljava/lang/Object;
.source "VisionServerListManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VisionServerListManager"

.field public static final mFileName:Ljava/lang/String; = "visionserverlist"


# instance fields
.field public mVersion:Ljava/lang/String;

.field public mVisonServerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 11

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->mVisonServerList:Ljava/util/ArrayList;

    const-string v0, "2022091505"

    .line 44
    iput-object v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->mVersion:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/samsung/android/camera/visionserver/VisionServerList;->DEFAULT_VISION_SERVER_LIST:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_2c

    aget-object v4, v0, v3

    .line 46
    iget-object v5, p0, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->mVisonServerList:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;

    aget-object v7, v4, v2

    const/4 v8, 0x1

    aget-object v8, v4, v8

    const/4 v9, 0x2

    aget-object v4, v4, v9

    invoke-direct {v6, v7, v8, v4}, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_2c
    return-void
.end method


# virtual methods
.method public final createFile()V
    .registers 5

    .line 114
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "visionserverlist"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->isDataFileExist()Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 121
    :cond_1d
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_38

    :catch_21
    move-exception p0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createFile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VisionServerListManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    return-void
.end method

.method public declared-synchronized getVersion()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 51
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->mVersion:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVisionServerList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->mVisonServerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final isDataFileExist()Z
    .registers 4

    .line 109
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v1, "visionserverlist"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public loadListFromFile()V
    .registers 9

    const-string v0, "loadListFromFile "

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->isDataFileExist()Z

    move-result v1

    const-string v2, "VisionServerListManager"

    if-nez v1, :cond_21

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadListFromFile list file is not stored. version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_21
    :try_start_21
    new-instance v1, Ljava/util/Scanner;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "system"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v5, "visionserverlist"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3a} :catch_99

    .line 69
    :try_start_3a
    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v3

    const-string v4, "20"

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_4f

    goto :goto_8b

    .line 76
    :cond_4f
    iput-object v3, p0, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->mVersion:Ljava/lang/String;

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->mVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v3, p0, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->mVisonServerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 80
    :goto_6a
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 81
    iget-object v3, p0, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->mVisonServerList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_86
    .catchall {:try_start_3a .. :try_end_86} :catchall_8f

    goto :goto_6a

    .line 83
    :cond_87
    :try_start_87
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    goto :goto_ac

    :cond_8b
    :goto_8b
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8e} :catch_99

    return-void

    :catchall_8f
    move-exception p0

    .line 68
    :try_start_90
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    goto :goto_98

    :catchall_94
    move-exception v1

    :try_start_95
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_98
    throw p0
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_99} :catch_99

    :catch_99
    move-exception p0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ac
    return-void
.end method

.method public final saveDataToFile()V
    .registers 8

    const-string v0, "VisionServerListManager"

    const-string/jumbo v1, "saveDataToFile"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->createFile()V

    .line 96
    :try_start_b
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "system"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v4, "visionserverlist"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_24} :catch_64

    .line 97
    :try_start_24
    iget-object v2, p0, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->mVisonServerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;

    const-string v3, "%s %s %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 100
    iget-object v6, v2, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->packageName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v2, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->value:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v2, v2, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->disallowUnihalVersion:Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 101
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V
    :try_end_55
    .catchall {:try_start_24 .. :try_end_55} :catchall_5a

    goto :goto_2f

    .line 103
    :cond_56
    :try_start_56
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_64

    goto :goto_7a

    :catchall_5a
    move-exception p0

    .line 96
    :try_start_5b
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_63

    :catchall_5f
    move-exception v1

    :try_start_60
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_63
    throw p0
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_64} :catch_64

    :catch_64
    move-exception p0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveDataFiles "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7a
    return-void
.end method

.method public setListFromVisionServer(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;",
            ">;)V"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->mVersion:Ljava/lang/String;

    .line 133
    iget-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->mVisonServerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 134
    iget-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->mVisonServerList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/camera/visionserver/VisionServerListManager;->saveDataToFile()V

    return-void
.end method
