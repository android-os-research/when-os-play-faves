.class public final Lcom/android/server/om/OverlayManagerService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PackageReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2

    .line 562
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$PackageReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;[I)V
    .registers 11

    const-wide/32 v0, 0x4000000

    .line 632
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageAdded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 633
    array-length v2, p2

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_5a

    aget v4, p2, v3

    .line 634
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_5e

    .line 635
    :try_start_24
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->onPackageAdded(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    if-eqz v6, :cond_53

    .line 637
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->isInstantApp(Ljava/lang/String;I)Z

    move-result v6
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_57

    if-nez v6, :cond_53

    .line 639
    :try_start_3c
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    .line 640
    invoke-virtual {v7, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageAdded(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v4

    .line 639
    invoke-static {v6, v4}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    :try_end_49
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_3c .. :try_end_49} :catch_4a
    .catchall {:try_start_3c .. :try_end_49} :catchall_57

    goto :goto_53

    :catch_4a
    move-exception v4

    :try_start_4b
    const-string v6, "OverlayManager"

    const-string/jumbo v7, "onPackageAdded internal error"

    .line 642
    invoke-static {v6, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 645
    :cond_53
    :goto_53
    monitor-exit v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :catchall_57
    move-exception p0

    monitor-exit v5
    :try_end_59
    .catchall {:try_start_4b .. :try_end_59} :catchall_57

    :try_start_59
    throw p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5e

    .line 648
    :cond_5a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_5e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 649
    throw p0
.end method

.method public final onPackageChanged(Ljava/lang/String;[I)V
    .registers 11

    const-wide/32 v0, 0x4000000

    .line 655
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 656
    array-length v2, p2

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_5a

    aget v4, p2, v3

    .line 657
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_5e

    .line 658
    :try_start_24
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->onPackageUpdated(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    if-eqz v6, :cond_53

    .line 660
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->isInstantApp(Ljava/lang/String;I)Z

    move-result v6
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_57

    if-nez v6, :cond_53

    .line 662
    :try_start_3c
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    .line 663
    invoke-virtual {v7, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageChanged(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v4

    .line 662
    invoke-static {v6, v4}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    :try_end_49
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_3c .. :try_end_49} :catch_4a
    .catchall {:try_start_3c .. :try_end_49} :catchall_57

    goto :goto_53

    :catch_4a
    move-exception v4

    :try_start_4b
    const-string v6, "OverlayManager"

    const-string/jumbo v7, "onPackageChanged internal error"

    .line 665
    invoke-static {v6, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    :cond_53
    :goto_53
    monitor-exit v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :catchall_57
    move-exception p0

    monitor-exit v5
    :try_end_59
    .catchall {:try_start_4b .. :try_end_59} :catchall_57

    :try_start_59
    throw p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5e

    .line 671
    :cond_5a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_5e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 672
    throw p0
.end method

.method public final onPackageRemoved(Ljava/lang/String;[I)V
    .registers 11

    const-wide/32 v0, 0x4000000

    .line 724
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageRemoved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 725
    array-length v2, p2

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_41

    aget v4, p2, v3

    .line 726
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_45

    .line 727
    :try_start_24
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->onPackageRemoved(Ljava/lang/String;I)V

    .line 728
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageRemoved(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V

    .line 729
    monitor-exit v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :catchall_3e
    move-exception p0

    monitor-exit v5
    :try_end_40
    .catchall {:try_start_24 .. :try_end_40} :catchall_3e

    :try_start_40
    throw p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_45

    .line 732
    :cond_41
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_45
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 733
    throw p0
.end method

.method public final onPackageReplaced(Ljava/lang/String;[I)V
    .registers 11

    const-wide/32 v0, 0x4000000

    .line 701
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageReplaced "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 702
    array-length v2, p2

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_5a

    aget v4, p2, v3

    .line 703
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_5e

    .line 704
    :try_start_24
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->onPackageUpdated(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    if-eqz v6, :cond_53

    .line 706
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->isInstantApp(Ljava/lang/String;I)Z

    move-result v6
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_57

    if-nez v6, :cond_53

    .line 708
    :try_start_3c
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    .line 709
    invoke-virtual {v7, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageReplaced(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v4

    .line 708
    invoke-static {v6, v4}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    :try_end_49
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_3c .. :try_end_49} :catch_4a
    .catchall {:try_start_3c .. :try_end_49} :catchall_57

    goto :goto_53

    :catch_4a
    move-exception v4

    :try_start_4b
    const-string v6, "OverlayManager"

    const-string/jumbo v7, "onPackageReplaced internal error"

    .line 711
    invoke-static {v6, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    :cond_53
    :goto_53
    monitor-exit v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :catchall_57
    move-exception p0

    monitor-exit v5
    :try_end_59
    .catchall {:try_start_4b .. :try_end_59} :catchall_57

    :try_start_59
    throw p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5e

    .line 717
    :cond_5a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_5e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 718
    throw p0
.end method

.method public final onPackageReplacing(Ljava/lang/String;[I)V
    .registers 11

    const-wide/32 v0, 0x4000000

    .line 678
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageReplacing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 679
    array-length v2, p2

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_5a

    aget v4, p2, v3

    .line 680
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_5e

    .line 681
    :try_start_24
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->onPackageUpdated(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    if-eqz v6, :cond_53

    .line 683
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->isInstantApp(Ljava/lang/String;I)Z

    move-result v6
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_57

    if-nez v6, :cond_53

    .line 685
    :try_start_3c
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    .line 686
    invoke-virtual {v7, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageReplacing(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v4

    .line 685
    invoke-static {v6, v4}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    :try_end_49
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_3c .. :try_end_49} :catch_4a
    .catchall {:try_start_3c .. :try_end_49} :catchall_57

    goto :goto_53

    :catch_4a
    move-exception v4

    :try_start_4b
    const-string v6, "OverlayManager"

    const-string/jumbo v7, "onPackageReplacing internal error"

    .line 688
    invoke-static {v6, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 691
    :cond_53
    :goto_53
    monitor-exit v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :catchall_57
    move-exception p0

    monitor-exit v5
    :try_end_59
    .catchall {:try_start_4b .. :try_end_59} :catchall_57

    :try_start_59
    throw p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5e

    .line 694
    :cond_5a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_5e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 695
    throw p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const-string p1, "SWT_OverlayManager"

    .line 565
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    if-nez v0, :cond_10

    const-string p0, "Cannot handle package broadcast with null action"

    .line 567
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 570
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1c

    const-string p0, "Cannot handle package broadcast with null data"

    .line 572
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 575
    :cond_1c
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    .line 577
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "android.intent.extra.UID"

    const/16 v5, -0x2710

    .line 580
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v5, :cond_3d

    .line 582
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmUserManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v4

    goto :goto_46

    :cond_3d
    new-array v5, v6, [I

    .line 584
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    aput v4, v5, v3

    move-object v4, v5

    :goto_46
    const/4 v5, -0x1

    .line 587
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_f4

    :goto_4e
    move v3, v5

    goto :goto_6f

    :sswitch_50
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_4e

    :cond_59
    const/4 v3, 0x2

    goto :goto_6f

    :sswitch_5b
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto :goto_4e

    :cond_64
    move v3, v6

    goto :goto_6f

    :sswitch_66
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto :goto_4e

    :cond_6f
    :goto_6f
    packed-switch v3, :pswitch_data_102

    goto/16 :goto_f3

    :pswitch_74
    if-eqz v2, :cond_7a

    .line 590
    invoke-virtual {p0, v1, v4}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageReplaced(Ljava/lang/String;[I)V

    goto :goto_7d

    .line 592
    :cond_7a
    invoke-virtual {p0, v1, v4}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageAdded(Ljava/lang/String;[I)V

    .line 595
    :goto_7d
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmWallpaperThemeManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->updateInstalledPackageMetadata(Ljava/lang/String;)V

    .line 596
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mgetColorThemeState(Lcom/android/server/om/OverlayManagerService;)I

    move-result p2

    .line 598
    :try_start_8c
    new-instance v0, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {v0}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    .line 599
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmWallpaperThemeManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->updateThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;Ljava/lang/String;I)V

    .line 600
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmService(Lcom/android/server/om/OverlayManagerService;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object p0

    .line 601
    invoke-virtual {v0}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object p2

    invoke-interface {p0, p2}, Landroid/content/om/IOverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_ab} :catch_c2
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_ab} :catch_ac

    goto :goto_f3

    :catch_ac
    move-exception p0

    .line 605
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FAILED at commit for packageAdded, e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f3

    :catch_c2
    move-exception p0

    .line 603
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed update color theme overlay, e = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f3

    :pswitch_d8
    if-eqz v2, :cond_de

    .line 618
    invoke-virtual {p0, v1, v4}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageReplacing(Ljava/lang/String;[I)V

    goto :goto_f3

    .line 620
    :cond_de
    invoke-virtual {p0, v1, v4}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageRemoved(Ljava/lang/String;[I)V

    goto :goto_f3

    :pswitch_e2
    const-string p1, "android.intent.extra.REASON"

    .line 612
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.OVERLAY_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f3

    .line 613
    invoke-virtual {p0, v1, v4}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageChanged(Ljava/lang/String;[I)V

    :cond_f3
    :goto_f3
    return-void

    :sswitch_data_f4
    .sparse-switch
        0xa480416 -> :sswitch_66
        0x1f50b9c2 -> :sswitch_5b
        0x5c1076e2 -> :sswitch_50
    .end sparse-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_e2
        :pswitch_d8
        :pswitch_74
    .end packed-switch
.end method
