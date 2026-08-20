.class public Lcom/android/server/enterprise/mpos/MPOSService;
.super Lcom/samsung/android/knox/mpos/IMPOSService$Stub;
.source "MPOSService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final context:Landroid/content/Context;

.field public final mRegisteredTzNativeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/mpos/MposTZNative;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 46
    const-class v0, Lcom/android/server/enterprise/mpos/MPOSService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/mpos/MPOSService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/knox/mpos/IMPOSService$Stub;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/mpos/MPOSService;->mRegisteredTzNativeMap:Ljava/util/Map;

    .line 52
    sget-object v0, Lcom/android/server/enterprise/mpos/MPOSService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start MPOSService: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iput-object p1, p0, Lcom/android/server/enterprise/mpos/MPOSService;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final checkPermission()Z
    .registers 9

    const-string v0, ", name: "

    const/4 v1, 0x0

    .line 117
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    .line 118
    invoke-static {v2, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_11

    return v4

    .line 121
    :cond_11
    iget-object v3, p0, Lcom/android/server/enterprise/mpos/MPOSService;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 122
    sget-object v5, Lcom/android/server/enterprise/mpos/MPOSService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkSystemUid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p0, p0, Lcom/android/server/enterprise/mpos/MPOSService;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    const-string v6, "com.samsung.android.knox.mpos"

    .line 124
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result p0

    if-eqz p0, :cond_50

    return v4

    .line 127
    :cond_50
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSystemUid failed: callerUid: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6a} :catch_6b

    goto :goto_86

    :catch_6b
    move-exception p0

    .line 129
    sget-object v0, Lcom/android/server/enterprise/mpos/MPOSService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSystemUid failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_86
    return v1
.end method

.method public declared-synchronized loadTa(ILandroid/os/ParcelFileDescriptor;JJLcom/samsung/android/knox/mpos/MposTZServiceConfig;)Z
    .registers 23

    move-object v1, p0

    move-object/from16 v0, p7

    monitor-enter p0

    .line 58
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/mpos/MPOSService;->checkPermission()Z

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_9c

    if-nez v2, :cond_d

    const/4 v0, 0x0

    .line 59
    monitor-exit p0

    return v0

    :cond_d
    if-nez p2, :cond_11

    const/4 v2, -0x1

    goto :goto_15

    .line 62
    :cond_11
    :try_start_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    :goto_15
    move v5, v2

    .line 63
    sget-object v2, Lcom/android/server/enterprise/mpos/MPOSService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadTa: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", fdInt: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", offset: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", len: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p5

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_11 .. :try_end_4b} :catchall_9c

    .line 65
    :try_start_4b
    iget-object v2, v1, Lcom/android/server/enterprise/mpos/MPOSService;->mRegisteredTzNativeMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/mpos/MposTZNative;

    if-nez v2, :cond_76

    .line 67
    new-instance v2, Lcom/android/server/enterprise/mpos/MposTZNative;

    iget-object v8, v0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->taTechnology:Ljava/lang/String;

    iget-object v9, v0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->rootName:Ljava/lang/String;

    iget-object v10, v0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->processName:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->maxSendCmdSize:I

    iget v0, v0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->maxRecvRespSize:I

    move-object v6, v2

    move/from16 v7, p1

    move v11, v3

    move v12, v0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/enterprise/mpos/MposTZNative;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 68
    iget-object v0, v1, Lcom/android/server/enterprise/mpos/MPOSService;->mRegisteredTzNativeMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_76
    move-object v3, v2

    .line 70
    iget-object v4, v1, Lcom/android/server/enterprise/mpos/MPOSService;->context:Landroid/content/Context;

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/enterprise/mpos/MposTZNative;->loadTA(Landroid/content/Context;IJJ)Z

    move-result v2
    :try_end_81
    .catchall {:try_start_4b .. :try_end_81} :catchall_8e

    if-eqz p2, :cond_8c

    .line 74
    :try_start_83
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87
    .catchall {:try_start_83 .. :try_end_86} :catchall_9c

    goto :goto_8c

    :catch_87
    move-exception v0

    move-object v3, v0

    .line 76
    :try_start_89
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_9c

    .line 70
    :cond_8c
    :goto_8c
    monitor-exit p0

    return v2

    :catchall_8e
    move-exception v0

    move-object v2, v0

    if-eqz p2, :cond_9b

    .line 74
    :try_start_92
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96
    .catchall {:try_start_92 .. :try_end_95} :catchall_9c

    goto :goto_9b

    :catch_96
    move-exception v0

    move-object v3, v0

    .line 76
    :try_start_98
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 79
    :cond_9b
    :goto_9b
    throw v2
    :try_end_9c
    .catchall {:try_start_98 .. :try_end_9c} :catchall_9c

    :catchall_9c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public declared-synchronized processTACommand(ILcom/samsung/android/knox/mpos/TACommandRequest;)Lcom/samsung/android/knox/mpos/TACommandResponse;
    .registers 7

    monitor-enter p0

    .line 101
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/mpos/MPOSService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processTACommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/android/server/enterprise/mpos/MPOSService;->checkPermission()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_27

    const-string/jumbo p1, "processTACommand: permission error"

    .line 103
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_52

    .line 104
    monitor-exit p0

    return-object v2

    .line 107
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/android/server/enterprise/mpos/MPOSService;->mRegisteredTzNativeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/mpos/MposTZNative;

    if-nez v1, :cond_4c

    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processTACommand fail cause tzNative null for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_27 .. :try_end_4a} :catchall_52

    .line 110
    monitor-exit p0

    return-object v2

    .line 112
    :cond_4c
    :try_start_4c
    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/mpos/MposTZNative;->processTACommand(Lcom/samsung/android/knox/mpos/TACommandRequest;)Lcom/samsung/android/knox/mpos/TACommandResponse;

    move-result-object p1
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_52

    monitor-exit p0

    return-object p1

    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public declared-synchronized unloadTa(I)Z
    .registers 6

    monitor-enter p0

    .line 84
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/mpos/MPOSService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unloadTa: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/android/server/enterprise/mpos/MPOSService;->checkPermission()Z

    move-result v1
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_55

    const/4 v2, 0x0

    if-nez v1, :cond_21

    .line 86
    monitor-exit p0

    return v2

    .line 89
    :cond_21
    :try_start_21
    iget-object v1, p0, Lcom/android/server/enterprise/mpos/MPOSService;->mRegisteredTzNativeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/mpos/MposTZNative;

    if-nez v1, :cond_46

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unloadTa fail cause tzNative null for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_21 .. :try_end_44} :catchall_55

    .line 92
    monitor-exit p0

    return v2

    .line 94
    :cond_46
    :try_start_46
    invoke-virtual {v1}, Lcom/android/server/enterprise/mpos/MposTZNative;->unloadTA()V

    .line 95
    iget-object v0, p0, Lcom/android/server/enterprise/mpos/MPOSService;->mRegisteredTzNativeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_55

    const/4 p1, 0x1

    .line 96
    monitor-exit p0

    return p1

    :catchall_55
    move-exception p1

    monitor-exit p0

    throw p1
.end method
