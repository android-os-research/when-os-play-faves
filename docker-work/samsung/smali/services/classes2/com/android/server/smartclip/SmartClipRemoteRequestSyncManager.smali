.class public Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mNextRequestId:I

.field public mRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 2265
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 2264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2274
    iput v0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mNextRequestId:I

    .line 2275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public allocateNewRequestId(Z)I
    .registers 5

    .line 2328
    iget v0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mNextRequestId:I

    add-int/lit8 v1, v0, 0x1

    .line 2329
    iput v1, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mNextRequestId:I

    if-eqz p1, :cond_20

    .line 2332
    new-instance p1, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    invoke-direct {p1}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;-><init>()V

    .line 2333
    iput v0, p1, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mRequestId:I

    .line 2334
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2335
    :try_start_12
    iget-object p0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2336
    monitor-exit v1

    goto :goto_20

    :catchall_1d
    move-exception p0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    throw p0

    :cond_20
    :goto_20
    return v0
.end method

.method public getRequestItem(I)Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;
    .registers 3

    .line 2321
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2322
    :try_start_3
    iget-object p0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    .line 2323
    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public notifyResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V
    .registers 4

    .line 2306
    iget v0, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mRequestId:I

    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->getRequestItem(I)Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    move-result-object p0

    if-nez p0, :cond_21

    .line 2308
    sget-object p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyResult : Could not find request information. id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mRequestId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2311
    :cond_21
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2312
    :try_start_24
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResultData:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    const/4 p1, 0x1

    .line 2313
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResponseArrived:Z

    .line 2314
    iget-object p0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2315
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public waitResult(II)Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    .registers 9

    .line 2278
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->getRequestItem(I)Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 2280
    sget-object p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "waitResult : Could not find request info!! id = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2284
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2286
    iget-object v3, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    monitor-enter v3

    .line 2287
    :try_start_26
    iget-boolean v4, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResponseArrived:Z
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_89

    if-nez v4, :cond_49

    .line 2290
    :try_start_2a
    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    int-to-long v4, p2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_30} :catch_31
    .catchall {:try_start_2a .. :try_end_30} :catchall_89

    goto :goto_49

    :catch_31
    move-exception p2

    .line 2292
    :try_start_32
    sget-object v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "waitResult : e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    :cond_49
    :goto_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_32 .. :try_end_4a} :catchall_89

    .line 2297
    sget-object p2, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "waitResult : Unlocked. Id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Elapsed = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    iget-object p2, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    monitor-enter p2

    .line 2300
    :try_start_76
    iget-object p0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    .line 2301
    monitor-exit p2
    :try_end_83
    .catchall {:try_start_76 .. :try_end_83} :catchall_86

    .line 2302
    iget-object p0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResultData:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    return-object p0

    :catchall_86
    move-exception p0

    .line 2301
    :try_start_87
    monitor-exit p2
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw p0

    :catchall_89
    move-exception p0

    .line 2295
    :try_start_8a
    monitor-exit v3
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw p0
.end method
