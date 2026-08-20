.class public Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;
.super Ljava/lang/Object;
.source "ActivityManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetaDataCollector"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MetaDataCollector"


# instance fields
.field public final mBooleanMetaDataKeys:[Ljava/lang/String;

.field public final mBooleanMetaDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mLoadRunnable:Ljava/lang/Runnable;

.field public mLoaded:Z

.field public final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field public final mStringMetaDataKeys:[Ljava/lang/String;

.field public final mStringMetaDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceExt;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLoaded(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoaded:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdumpLocked(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetStringMetaData(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->getStringMetaData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhasBooleanMetaData(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->hasBooleanMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mloadInternal(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->loadInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mloadMetaDataOnceLocked(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;Landroid/content/pm/ApplicationInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->loadMetaDataOnceLocked(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleLoad(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->scheduleLoad()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt;)V
    .registers 6

    .line 330
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mBooleanMetaDataMap:Ljava/util/Map;

    const-string p1, "android.supports_size_changes"

    const-string v0, "com.samsung.android.keepalive.density"

    const-string v1, "com.samsung.android.persistent.downloadable"

    const-string v2, "com.samsung.android.foldable.fit_to_display"

    const-string v3, "com.samsung.android.multidisplay.keep_process_alive"

    .line 337
    filled-new-array {p1, v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mBooleanMetaDataKeys:[Ljava/lang/String;

    .line 348
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mStringMetaDataMap:Ljava/util/Map;

    const-string p1, "com.samsung.android.multidisplay.primarydisplay"

    const-string v0, "com.samsung.android.dex.kill_process_timeout"

    .line 349
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mStringMetaDataKeys:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 354
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoaded:Z

    .line 486
    new-instance p1, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$1;

    invoke-direct {p1, p0}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$1;-><init>(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoadRunnable:Ljava/lang/Runnable;

    .line 511
    new-instance p1, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$2;

    invoke-direct {p1, p0}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$2;-><init>(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;)V

    return-void
.end method


# virtual methods
.method public final cacheMetaDataLocked(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 357
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mBooleanMetaDataMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_14

    .line 359
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 360
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mBooleanMetaDataMap:Ljava/util/Map;

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_14
    monitor-enter v0

    if-eqz p3, :cond_1b

    .line 364
    :try_start_17
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 366
    :cond_1b
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 368
    :goto_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public final cacheStringMetaDataLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_17

    if-nez p2, :cond_5

    goto :goto_17

    .line 376
    :cond_5
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p3, :cond_12

    .line 378
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mStringMetaDataMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 380
    :cond_12
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mStringMetaDataMap:Ljava/util/Map;

    invoke-interface {p0, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    :goto_17
    return-void
.end method

.method public final dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 9

    const-string p1, "ACTIVITY MANAGER META DATA COLLECTOR"

    .line 548
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    monitor-enter p0

    :try_start_6
    const-string p1, "  MetaData<Boolean>"

    .line 551
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mBooleanMetaDataMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    const-string p1, "  (nothing) "

    .line 553
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_84

    .line 556
    :cond_1a
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mBooleanMetaDataMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v0

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 559
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5d

    :cond_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 563
    :cond_81
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :goto_84
    const-string p1, "  MetaData<String>"

    .line 565
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mStringMetaDataMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_97

    const-string p1, "  (nothing) "

    .line 567
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e1

    .line 570
    :cond_97
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mStringMetaDataMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_de

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a1

    .line 574
    :cond_de
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 576
    :goto_e1
    monitor-exit p0

    return-void

    :catchall_e3
    move-exception p1

    monitor-exit p0
    :try_end_e5
    .catchall {:try_start_6 .. :try_end_e5} :catchall_e3

    throw p1
.end method

.method public final getStringMetaData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_68

    if-nez p2, :cond_6

    goto :goto_68

    .line 388
    :cond_6
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 390
    monitor-enter p0

    .line 391
    :try_start_c
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoaded:Z

    if-eqz v2, :cond_1a

    .line 392
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mStringMetaDataMap:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit p0

    return-object p1

    .line 394
    :cond_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_65

    .line 396
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 398
    :try_start_1f
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-wide/16 v4, 0x80

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    .line 399
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    .line 398
    invoke-interface {v3, p1, v4, v5, p0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_40

    .line 400
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_38

    goto :goto_40

    .line 403
    :cond_38
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_3c} :catch_46
    .catchall {:try_start_1f .. :try_end_3c} :catchall_44

    .line 407
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_40
    :goto_40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_44
    move-exception p0

    goto :goto_61

    :catch_46
    move-exception p0

    :try_start_47
    const-string p1, "MetaDataCollector"

    .line 405
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApplicationInfo failed: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_47 .. :try_end_5d} :catchall_44

    .line 407
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :goto_61
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 408
    throw p0

    :catchall_65
    move-exception p1

    .line 394
    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p1

    :cond_68
    :goto_68
    return-object v0
.end method

.method public final hasBooleanMetaData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .line 415
    monitor-enter p0

    .line 416
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoaded:Z

    .line 417
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mBooleanMetaDataMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 418
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_66

    const/4 v2, 0x0

    if-nez v0, :cond_59

    .line 420
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 422
    :try_start_13
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v5, 0x80

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    .line 423
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    .line 422
    invoke-interface {v0, p1, v5, v6, p0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 424
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_2c

    goto :goto_34

    .line 427
    :cond_2c
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_30} :catch_3a
    .catchall {:try_start_13 .. :try_end_30} :catchall_38

    .line 431
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_34
    :goto_34
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_38
    move-exception p0

    goto :goto_55

    :catch_3a
    move-exception p0

    :try_start_3b
    const-string p2, "MetaDataCollector"

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getApplicationInfo failed: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_38

    .line 431
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_59

    :goto_55
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 432
    throw p0

    :cond_59
    :goto_59
    if-nez v1, :cond_5c

    return v2

    .line 437
    :cond_5c
    monitor-enter v1

    .line 438
    :try_start_5d
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_63
    move-exception p0

    .line 439
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_63

    throw p0

    :catchall_66
    move-exception p1

    .line 418
    :try_start_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw p1
.end method

.method public final loadInternal()V
    .registers 8

    .line 460
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_12

    const-string p0, "MetaDataCollector"

    const-string v0, "PackageManager is not ready yet."

    .line 461
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 465
    :cond_12
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 466
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 467
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 468
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    .line 469
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mBgHandler:Landroid/os/Handler;

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v0, "MetaDataCollector"

    const-string v1, "begin"

    .line 473
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    .line 475
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 477
    monitor-enter p0

    .line 478
    :try_start_50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 479
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->loadMetaDataOnceLocked(Landroid/content/pm/ApplicationInfo;)V

    const/4 v1, 0x1

    .line 480
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoaded:Z

    goto :goto_54

    :cond_69
    const-string v0, "MetaDataCollector"

    const-string/jumbo v1, "loadInternal() done."

    .line 482
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    monitor-exit p0

    return-void

    :catchall_73
    move-exception v0

    monitor-exit p0
    :try_end_75
    .catchall {:try_start_50 .. :try_end_75} :catchall_73

    throw v0
.end method

.method public final loadMetaDataOnceLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 447
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mBooleanMetaDataKeys:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_1e

    aget-object v4, v0, v3

    .line 448
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v5, :cond_12

    move v5, v2

    goto :goto_16

    :cond_12
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 449
    :goto_16
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v6, v4, v5}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->cacheMetaDataLocked(Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 452
    :cond_1e
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mStringMetaDataKeys:[Ljava/lang/String;

    array-length v1, v0

    :goto_21
    if-ge v2, v1, :cond_37

    aget-object v3, v0, v2

    .line 453
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_2b

    const/4 v4, 0x0

    goto :goto_2f

    .line 454
    :cond_2b
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 455
    :goto_2f
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->cacheStringMetaDataLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_37
    return-void
.end method

.method public final scheduleLoad()V
    .registers 4

    .line 502
    monitor-enter p0

    .line 503
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoaded:Z

    .line 504
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_23

    .line 505
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v1, :cond_e

    if-nez v0, :cond_22

    .line 506
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 507
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mBgHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoadRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_22
    return-void

    :catchall_23
    move-exception v0

    .line 504
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method
