.class public Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;
.super Landroid/content/IClipboard$Stub;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboard/ClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClipboardImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;
    }
.end annotation


# instance fields
.field public final mClipboardClearHandler:Landroid/os/Handler;

.field public final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;


# direct methods
.method public constructor <init>(Lcom/android/server/clipboard/ClipboardService;)V
    .registers 3

    .line 383
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    .line 385
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;

    invoke-static {p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmWorkerHandler(Lcom/android/server/clipboard/ClipboardService;)Landroid/os/Handler;

    move-result-object p1

    .line 386
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;-><init>(Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->mClipboardClearHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$ClipboardImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    return-void
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;I)V
    .registers 7

    .line 649
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result p3

    .line 650
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 651
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 652
    :try_start_11
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, v0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v2, p0, p3, p2}, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 654
    monitor-exit v1

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final checkAndSetPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    if-eqz p1, :cond_10e

    .line 417
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_10e

    .line 420
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 421
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 422
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v3, 0x1e

    invoke-static {v2, v3, p2, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result p2

    if-nez p2, :cond_1d

    return-void

    .line 427
    :cond_1d
    iget-object p2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetSemClipboardService(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/semclipboard/SemClipboardService;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz p2, :cond_52

    .line 428
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p2

    if-eqz p2, :cond_52

    .line 429
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p2

    const-string v3, "direct_clip"

    invoke-virtual {p2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_52

    .line 430
    invoke-static {}, Landroid/sec/clipboard/util/SemClipboardPolicy;->getInstance()Landroid/sec/clipboard/util/SemClipboardPolicy;

    move-result-object p2

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmContext(Lcom/android/server/clipboard/ClipboardService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p2, v3, p4}, Landroid/sec/clipboard/util/SemClipboardPolicy;->canAccessSemClipboard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_52

    const/4 p2, 0x1

    goto :goto_53

    :cond_52
    move p2, v2

    :goto_53
    if-eqz p2, :cond_5f

    .line 432
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetSemClipboardService(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/semclipboard/SemClipboardService;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/semclipboard/SemClipboardService;->setPrimaryClip(Landroid/content/ClipData;I)V

    return-void

    .line 437
    :cond_5f
    iget-object p2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 439
    :try_start_66
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3, v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    .line 440
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getPersonaId()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->isClipboardAllowed(ZI)I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_93

    .line 442
    iput-object v4, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 443
    iput-object v4, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 444
    iget-object p1, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 445
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 446
    new-instance p3, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$1;

    invoke-direct {p3, p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$1;-><init>(Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 453
    monitor-exit p2

    return-void

    .line 455
    :cond_93
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getPersonaId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->isClipboardShareAllowed(I)I

    move-result v2

    if-nez v2, :cond_a2

    .line 457
    iput-object v4, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 458
    iput-object v4, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_a7

    .line 460
    :cond_a2
    iget-object v2, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 463
    :goto_a7
    monitor-exit p2
    :try_end_a8
    .catchall {:try_start_66 .. :try_end_a8} :catchall_10b

    .line 465
    iget-object p2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p2, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mcheckDataOwner(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;I)V

    .line 467
    iget-object p2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 469
    :try_start_b4
    iget-object p2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p2, v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object p2

    .line 470
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getPersonaId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->isClipboardShareAllowed(I)I

    move-result v1

    if-nez v1, :cond_d3

    .line 471
    iget-object p0, p2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    monitor-exit v2

    return-void

    .line 474
    :cond_d3
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmContainerID(Lcom/android/server/clipboard/ClipboardService;)I

    move-result v1

    if-eqz v1, :cond_de

    .line 475
    iput-object p1, p2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_e2

    .line 477
    :cond_de
    iput-object p1, p2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 478
    iput-object p1, p2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 482
    :goto_e2
    monitor-exit v2
    :try_end_e3
    .catchall {:try_start_b4 .. :try_end_e3} :catchall_108

    .line 484
    iget-object p2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 485
    :try_start_ea
    invoke-virtual {p0, p3, v0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->scheduleAutoClear(II)V

    .line 486
    iget-object p3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p3, p1, v0, p4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$msetPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 489
    iget-object p3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetSemClipboardService(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/semclipboard/SemClipboardService;

    move-result-object p3

    if-eqz p3, :cond_103

    .line 490
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetSemClipboardService(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/semclipboard/SemClipboardService;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/semclipboard/SemClipboardService;->setPrimaryClip(Landroid/content/ClipData;I)V

    .line 493
    :cond_103
    monitor-exit p2

    return-void

    :catchall_105
    move-exception p0

    monitor-exit p2
    :try_end_107
    .catchall {:try_start_ea .. :try_end_107} :catchall_105

    throw p0

    :catchall_108
    move-exception p0

    .line 482
    :try_start_109
    monitor-exit v2
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_108

    throw p0

    :catchall_10b
    move-exception p0

    .line 463
    :try_start_10c
    monitor-exit p2
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_10b

    throw p0

    .line 418
    :cond_10e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No items"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearPrimaryClip(Ljava/lang/String;I)V
    .registers 7

    .line 521
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 522
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 523
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v3, 0x1e

    invoke-static {v2, v3, p1, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_15

    return-void

    .line 527
    :cond_15
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 528
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->mClipboardClearHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    .line 529
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 528
    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 530
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/4 p2, 0x0

    invoke-static {p0, p2, v0, p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$msetPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 531
    monitor-exit v1

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public getPersonaId()I
    .registers 2

    .line 738
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->KNOX_V2_ENABLED:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getPersonaManager()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 739
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmPersonaManager(Lcom/android/server/clipboard/ClipboardService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v0

    if-nez v0, :cond_1f

    .line 741
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getUserId()I

    move-result v0

    goto :goto_1f

    .line 744
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getUserId()I

    move-result v0

    :cond_1f
    :goto_1f
    return v0
.end method

.method public final getPersonaManager()Z
    .registers 4

    .line 750
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmContext(Lcom/android/server/clipboard/ClipboardService;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmPersonaManager(Lcom/android/server/clipboard/ClipboardService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    if-nez v0, :cond_22

    .line 751
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmContext(Lcom/android/server/clipboard/ClipboardService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {v0, v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fputmPersonaManager(Lcom/android/server/clipboard/ClipboardService;Lcom/samsung/android/knox/SemPersonaManager;)V

    .line 754
    :cond_22
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmPersonaManager(Lcom/android/server/clipboard/ClipboardService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object p0

    if-eqz p0, :cond_2c

    const/4 p0, 0x1

    return p0

    :cond_2c
    const-string p0, "ClipboardService"

    const-string/jumbo v0, "personaManager is null!"

    .line 757
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getPrimaryClip(Ljava/lang/String;I)Landroid/content/ClipData;
    .registers 9

    .line 536
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 537
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 538
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v3, 0x1d

    invoke-static {v2, v3, p1, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e0

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 540
    invoke-static {v2, v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto/16 :goto_e0

    .line 543
    :cond_1f
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v4, 0x1

    .line 546
    :try_start_27
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getPersonaId()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->isClipboardAllowed(ZI)I

    move-result v4

    if-nez v4, :cond_4e

    .line 548
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p1, v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object p1

    iput-object v3, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 549
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p1, v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object p1

    iput-object v3, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 550
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p0, v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 551
    monitor-exit v2

    return-object v3

    .line 554
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getPersonaId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->isClipboardShareAllowed(I)I

    move-result v4

    if-eqz v4, :cond_64

    .line 556
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v4, v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    goto :goto_74

    .line 558
    :cond_64
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v4, v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v4

    iput-object v3, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 559
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v4, v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v4

    iput-object v3, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;
    :try_end_74
    .catchall {:try_start_27 .. :try_end_74} :catchall_dd

    .line 564
    :goto_74
    :try_start_74
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v4, v0, p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$maddActiveOwnerLocked(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/SecurityException; {:try_start_74 .. :try_end_79} :catch_cf
    .catchall {:try_start_74 .. :try_end_79} :catchall_dd

    .line 574
    :try_start_79
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getPersonaId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->isClipboardShareAllowed(I)I

    move-result v3

    if-nez v3, :cond_9b

    .line 576
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p0, v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipData;

    monitor-exit v2

    return-object p0

    .line 579
    :cond_9b
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmContainerID(Lcom/android/server/clipboard/ClipboardService;)I

    move-result v3

    if-eqz v3, :cond_b4

    const-string p1, "ClipboardService"

    const-string p2, "getPrimaryClip knox return!!!"

    .line 580
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p0, v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    monitor-exit v2

    return-object p0

    .line 585
    :cond_b4
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3, v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    .line 586
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v4, p1, v0, v1, v3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mshowAccessNotificationLocked(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    .line 587
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1, v3, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mnotifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Ljava/lang/String;I)V

    .line 588
    iget-object p1, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz p1, :cond_cb

    .line 589
    invoke-virtual {p0, p2, v0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->scheduleAutoClear(II)V

    .line 591
    :cond_cb
    iget-object p0, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    monitor-exit v2

    return-object p0

    :catch_cf
    const-string p2, "ClipboardService"

    const-string v1, "Could not grant permission to primary clip. Clearing clipboard."

    .line 567
    invoke-static {p2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p0, v3, v0, p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$msetPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 569
    monitor-exit v2

    return-object v3

    :catchall_dd
    move-exception p0

    .line 592
    monitor-exit v2
    :try_end_df
    .catchall {:try_start_79 .. :try_end_df} :catchall_dd

    throw p0

    :cond_e0
    :goto_e0
    return-object v3
.end method

.method public getPrimaryClipDescription(Ljava/lang/String;I)Landroid/content/ClipDescription;
    .registers 10

    .line 598
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v4

    .line 599
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 600
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    const/4 v6, 0x0

    move-object v3, p1

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;IIZ)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 602
    invoke-static {p1, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_3b

    .line 605
    :cond_21
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 606
    :try_start_28
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p0, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object p0

    .line 607
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz p0, :cond_36

    .line 608
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    :cond_36
    monitor-exit p1

    return-object v0

    :catchall_38
    move-exception p0

    .line 609
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_38

    throw p0

    :cond_3b
    :goto_3b
    return-object v0
.end method

.method public getPrimaryClipSource(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    .line 687
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SET_CLIP_SOURCE"

    const-string v2, "Requires SET_CLIP_SOURCE permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v4

    .line 690
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 691
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    const/4 v6, 0x0

    move-object v3, p1

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;IIZ)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 693
    invoke-static {p1, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_48

    .line 696
    :cond_2e
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 697
    :try_start_35
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p0, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object p0

    .line 698
    iget-object p2, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz p2, :cond_43

    .line 699
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mPrimaryClipPackage:Ljava/lang/String;

    monitor-exit p1

    return-object p0

    .line 701
    :cond_43
    monitor-exit p1

    return-object v0

    :catchall_45
    move-exception p0

    .line 702
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_35 .. :try_end_47} :catchall_45

    throw p0

    :cond_48
    :goto_48
    return-object v0
.end method

.method public final getTimeoutForAutoClear()J
    .registers 4

    const-string p0, "clipboard"

    const-string v0, "auto_clear_timeout"

    const-wide/32 v1, 0x36ee80

    .line 514
    invoke-static {p0, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getUserId()I
    .registers 1

    .line 732
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    return p0
.end method

.method public hasClipboardText(Ljava/lang/String;I)Z
    .registers 10

    .line 668
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v4

    .line 669
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 670
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    const/4 v6, 0x0

    move-object v3, p1

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;IIZ)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 672
    invoke-static {p1, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_4a

    .line 675
    :cond_21
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 676
    :try_start_28
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p0, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object p0

    .line 677
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz p0, :cond_45

    .line 678
    invoke-virtual {p0, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_43

    .line 679
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_43

    const/4 v0, 0x1

    :cond_43
    monitor-exit p1

    return v0

    .line 681
    :cond_45
    monitor-exit p1

    return v0

    :catchall_47
    move-exception p0

    .line 682
    monitor-exit p1
    :try_end_49
    .catchall {:try_start_28 .. :try_end_49} :catchall_47

    throw p0

    :cond_4a
    :goto_4a
    return v0
.end method

.method public hasPrimaryClip(Ljava/lang/String;I)Z
    .registers 10

    .line 614
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v4

    .line 615
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 616
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    const/4 v6, 0x0

    move-object v3, p1

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;IIZ)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7b

    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 618
    invoke-static {p1, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_7b

    .line 621
    :cond_21
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 624
    :try_start_28
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v1

    .line 625
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getPersonaId()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->isClipboardAllowed(ZI)I

    move-result v2

    .line 626
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getPersonaId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->isClipboardShareAllowed(I)I

    move-result v3

    const/4 v4, 0x0

    if-nez v2, :cond_4c

    .line 628
    iput-object v4, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 629
    iput-object v4, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 630
    iget-object p0, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 631
    monitor-exit p1

    return v0

    :cond_4c
    const/4 v2, 0x1

    if-eqz v3, :cond_61

    .line 634
    iget-object v1, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 642
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p0, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz p0, :cond_5f

    move v0, v2

    :cond_5f
    monitor-exit p1

    return v0

    .line 636
    :cond_61
    iput-object v4, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 637
    iput-object v4, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 638
    iget-object p0, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_76

    move v0, v2

    :cond_76
    monitor-exit p1

    return v0

    :catchall_78
    move-exception p0

    .line 643
    monitor-exit p1
    :try_end_7a
    .catchall {:try_start_28 .. :try_end_7a} :catchall_78

    throw p0

    :cond_7b
    :goto_7b
    return v0
.end method

.method public final isClipboardAllowed(ZI)I
    .registers 3

    .line 710
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmContext(Lcom/android/server/clipboard/ClipboardService;)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p0, -0x1

    return p0

    .line 714
    :cond_a
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmContext(Lcom/android/server/clipboard/ClipboardService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isClipboardAllowed(I)Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmContext(Lcom/android/server/clipboard/ClipboardService;)Landroid/content/Context;

    move-result-object p0

    .line 715
    invoke-static {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isPackageAllowed(I)Z

    move-result p0

    if-eqz p0, :cond_2c

    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    return p0
.end method

.method public final isClipboardShareAllowed(I)I
    .registers 3

    .line 723
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmContext(Lcom/android/server/clipboard/ClipboardService;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 727
    :cond_a
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmContext(Lcom/android/server/clipboard/ClipboardService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isClipboardSharedAllowed(I)Z

    move-result p0

    return p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 392
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 394
    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_11

    const-string p1, "clipboard"

    const-string p2, "Exception: "

    .line 395
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    :cond_11
    throw p0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;I)V
    .registers 5

    .line 660
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUserId(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result p2

    .line 661
    iget-object p3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 662
    :try_start_d
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p0, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 663
    monitor-exit p3

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit p3
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final scheduleAutoClear(II)V
    .registers 8

    .line 497
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string v2, "clipboard"

    const-string v3, "auto_clear_enabled"

    const/4 v4, 0x1

    .line 499
    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 501
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->mClipboardClearHandler:Landroid/os/Handler;

    .line 502
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x65

    .line 501
    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 503
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->mClipboardClearHandler:Landroid/os/Handler;

    .line 504
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 503
    invoke-static {v2, v4, p1, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 505
    iget-object p2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->mClipboardClearHandler:Landroid/os/Handler;

    .line 506
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getTimeoutForAutoClear()J

    move-result-wide v2

    .line 505
    invoke-virtual {p2, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_31

    .line 509
    :cond_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_31
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 510
    throw p0
.end method

.method public setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;I)V
    .registers 4

    .line 404
    invoke-virtual {p0, p1, p2, p3, p2}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->checkAndSetPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setPrimaryClipAsPackage(Landroid/content/ClipData;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    .line 410
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SET_CLIP_SOURCE"

    const-string v2, "Requires SET_CLIP_SOURCE permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->checkAndSetPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
