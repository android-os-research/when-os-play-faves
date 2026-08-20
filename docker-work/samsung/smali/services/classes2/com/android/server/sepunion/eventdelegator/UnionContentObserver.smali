.class public Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;
.super Landroid/database/ContentObserver;
.source "UnionContentObserver.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 17
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V
    .registers 3

    .line 20
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 21
    iput-object p2, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 14

    .line 26
    sget-object v0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnionContentObserver onChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    iget-object v2, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 32
    :try_start_21
    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 33
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_103

    .line 34
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_fd

    .line 36
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_fd

    .line 37
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3a
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_102

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 39
    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 40
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v4, :cond_6c

    .line 42
    sget-object v2, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->TAG:Ljava/lang/String;

    const-string v3, "Uri matches exactly. Reporting chagnes..."

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v3, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    const/4 v8, 0x0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportUriChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ZLandroid/net/Uri;IZ)V

    goto :goto_3a

    .line 45
    :cond_6c
    sget-object v2, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item for uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 48
    :cond_88
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c6

    .line 53
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v5, :cond_a9

    .line 55
    iget-object v4, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    const/4 v9, 0x0

    move v6, p1

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportUriChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ZLandroid/net/Uri;IZ)V

    goto :goto_3a

    .line 57
    :cond_a9
    sget-object v2, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item for uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is null"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    .line 59
    :cond_c6
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 61
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v5, :cond_e0

    .line 63
    iget-object v4, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    const/4 v9, 0x1

    move v6, p1

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportUriChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ZLandroid/net/Uri;IZ)V

    goto/16 :goto_3a

    .line 65
    :cond_e0
    sget-object v2, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item for uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is null"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    :cond_fd
    const-string p0, "mUriEventMap has no item."

    .line 71
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_102
    return-void

    :catchall_103
    move-exception p0

    .line 33
    :try_start_104
    monitor-exit v2
    :try_end_105
    .catchall {:try_start_104 .. :try_end_105} :catchall_103

    throw p0
.end method
