.class public final Lcom/android/server/pm/ProcessLoggingHandler;
.super Landroid/os/Handler;
.source "ProcessLoggingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;
    }
.end annotation


# static fields
.field public static final CHECKSUM_TYPE:I = 0x8

.field public static final TAG:Ljava/lang/String; = "ProcessLoggingHandler"


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mLoggingInfo:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-7ROvAhLmSsDIAdIAY4j6ORQcWs(Lcom/android/server/pm/ProcessLoggingHandler;Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/ProcessLoggingHandler;->lambda$enqueueProcessChecksum$0(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4JnJOVokmeNmhzgra67CruA1fA4(Lcom/android/server/pm/ProcessLoggingHandler;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ProcessLoggingHandler;->lambda$enqueueSecurityLogEvent$1(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mExecutor:Ljava/util/concurrent/Executor;

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mLoggingInfo:Landroid/util/ArrayMap;

    return-void
.end method

.method private synthetic lambda$enqueueProcessChecksum$0(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;)V
    .registers 3

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ProcessLoggingHandler;->processChecksum(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;[B)V

    return-void
.end method

.method private synthetic lambda$enqueueSecurityLogEvent$1(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProcessLoggingHandler;->logSecurityLogEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public enqueueProcessChecksum(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;[B)V
    .registers 3

    .line 133
    new-instance p2, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/ProcessLoggingHandler;Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public enqueueSecurityLogEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4

    .line 173
    new-instance v0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ProcessLoggingHandler;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public invalidateBaseApkHash(Ljava/lang/String;)V
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mLoggingInfo:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 168
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mLoggingInfo:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public logAppProcessStart(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 22

    move-object v11, p0

    move-object/from16 v0, p3

    .line 61
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "startTimestamp"

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v2, "processName"

    move-object/from16 v3, p5

    .line 63
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "uid"

    move/from16 v3, p6

    .line 64
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "seinfo"

    move-object/from16 v3, p7

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "pid"

    move/from16 v3, p8

    .line 66
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-nez v0, :cond_3a

    const-string v0, "No APK"

    .line 69
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/ProcessLoggingHandler;->enqueueSecurityLogEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_3a
    iget-object v2, v11, Lcom/android/server/pm/ProcessLoggingHandler;->mLoggingInfo:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 77
    :try_start_3d
    iget-object v3, v11, Lcom/android/server/pm/ProcessLoggingHandler;->mLoggingInfo:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;

    if-nez v3, :cond_49

    const/4 v4, 0x1

    goto :goto_4a

    :cond_49
    const/4 v4, 0x0

    :goto_4a
    if-eqz v4, :cond_56

    .line 81
    new-instance v3, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;

    invoke-direct {v3}, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;-><init>()V

    .line 82
    iget-object v5, v11, Lcom/android/server/pm/ProcessLoggingHandler;->mLoggingInfo:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_56
    move-object v12, v3

    .line 85
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_3d .. :try_end_58} :catchall_9a

    .line 87
    monitor-enter v12

    .line 89
    :try_start_59
    iget-object v0, v12, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->apkHash:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 90
    iget-object v0, v12, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->apkHash:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/ProcessLoggingHandler;->enqueueSecurityLogEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 91
    monitor-exit v12

    return-void

    .line 94
    :cond_68
    iget-object v0, v12, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->pendingLogEntries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    monitor-exit v12
    :try_end_6e
    .catchall {:try_start_59 .. :try_end_6e} :catchall_97

    if-nez v4, :cond_71

    return-void

    :cond_71
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 104
    :try_start_76
    new-instance v7, Lcom/android/server/pm/ProcessLoggingHandler$1;

    invoke-direct {v7, p0, v12}, Lcom/android/server/pm/ProcessLoggingHandler$1;-><init>(Lcom/android/server/pm/ProcessLoggingHandler;Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;)V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v8

    iget-object v9, v11, Lcom/android/server/pm/ProcessLoggingHandler;->mExecutor:Ljava/util/concurrent/Executor;

    move-object v1, p2

    move-object/from16 v2, p4

    move-object v10, p0

    .line 104
    invoke-virtual/range {v1 .. v10}, Landroid/content/pm/PackageManagerInternal;->requestChecksums(Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;ILjava/util/concurrent/Executor;Landroid/os/Handler;)V
    :try_end_88
    .catchall {:try_start_76 .. :try_end_88} :catchall_89

    goto :goto_96

    :catchall_89
    move-exception v0

    const-string v1, "ProcessLoggingHandler"

    const-string/jumbo v2, "requestChecksums() failed"

    .line 114
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, v12, v0}, Lcom/android/server/pm/ProcessLoggingHandler;->enqueueProcessChecksum(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;[B)V

    :goto_96
    return-void

    :catchall_97
    move-exception v0

    .line 95
    :try_start_98
    monitor-exit v12
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw v0

    :catchall_9a
    move-exception v0

    .line 85
    :try_start_9b
    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v0
.end method

.method public logSecurityLogEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 9

    const-string/jumbo p0, "startTimestamp"

    .line 177
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string/jumbo p0, "processName"

    .line 178
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "uid"

    .line 179
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "seinfo"

    .line 180
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pid"

    .line 181
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    .line 183
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v4, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x2

    aput-object p0, v4, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v4, p1

    const/4 p0, 0x4

    aput-object v3, v4, p0

    const/4 p0, 0x5

    aput-object p2, v4, p0

    const p0, 0x33455

    .line 182
    invoke-static {p0, v4}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public processChecksum(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;[B)V
    .registers 9

    if-eqz p2, :cond_28

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 140
    :goto_9
    array-length v3, p2

    if-ge v2, v3, :cond_23

    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 141
    aget-byte v5, p2, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 143
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2a

    :cond_28
    const-string p2, "Failed to count APK hash"

    .line 149
    :goto_2a
    monitor-enter p1

    .line 150
    :try_start_2b
    iget-object v0, p1, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->apkHash:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 151
    monitor-exit p1

    return-void

    .line 153
    :cond_35
    iput-object p2, p1, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->apkHash:Ljava/lang/String;

    .line 155
    iget-object v0, p1, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->pendingLogEntries:Ljava/util/List;

    const/4 v1, 0x0

    .line 156
    iput-object v1, p1, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->pendingLogEntries:Ljava/util/List;

    .line 157
    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_54

    if-eqz v0, :cond_53

    .line 160
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_43
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 161
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/ProcessLoggingHandler;->logSecurityLogEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_43

    :cond_53
    return-void

    :catchall_54
    move-exception p0

    .line 157
    :try_start_55
    monitor-exit p1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public processChecksums(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApkChecksum;",
            ">;)V"
        }
    .end annotation

    .line 120
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_20

    .line 121
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApkChecksum;

    .line 122
    invoke-virtual {v2}, Landroid/content/pm/ApkChecksum;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1d

    .line 123
    invoke-virtual {v2}, Landroid/content/pm/ApkChecksum;->getValue()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProcessLoggingHandler;->processChecksum(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;[B)V

    return-void

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_20
    const-string p2, "ProcessLoggingHandler"

    const-string/jumbo v0, "requestChecksums() failed to return SHA256, see logs for details."

    .line 128
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProcessLoggingHandler;->processChecksum(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;[B)V

    return-void
.end method
