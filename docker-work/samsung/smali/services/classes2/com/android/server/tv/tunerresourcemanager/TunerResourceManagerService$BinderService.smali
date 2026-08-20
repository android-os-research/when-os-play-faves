.class public final Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
.super Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;
.source "TunerResourceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BinderService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-direct {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)V

    return-void
.end method


# virtual methods
.method public acquireLock(IJ)Z
    .registers 12

    .line 590
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "acquireLock"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 592
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-wide/16 v6, 0x1f4

    move v3, p1

    move-wide v4, p2

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$macquireLockInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;IJJ)Z

    move-result p0

    return p0
.end method

.method public clearResourceMap(I)V
    .registers 4

    .line 574
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "clearResourceMap"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 576
    :try_start_e
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearResourceMapInternal(I)V

    .line 577
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 604
    new-instance p1, Landroid/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 606
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p2, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1b

    const-string p0, "Permission Denial: can\'t dump!"

    .line 608
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 612
    :cond_1b
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 613
    :try_start_22
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmClientProfiles(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "ClientProfiles:"

    const-string v2, "\n"

    invoke-static {p3, v0, v1, v2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 614
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmFrontendResources(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "FrontendResources:"

    const-string v2, "\n"

    invoke-static {p3, v0, v1, v2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 615
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmFrontendExistingNums(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    const-string v1, "FrontendExistingNums:"

    const-string v2, ", "

    invoke-static {p3, v0, v1, v2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 616
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmFrontendUsedNums(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    const-string v1, "FrontendUsedNums:"

    const-string v2, ", "

    invoke-static {p3, v0, v1, v2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 617
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmFrontendMaxUsableNums(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    const-string v1, "FrontendMaxUsableNums:"

    const-string v2, ", "

    invoke-static {p3, v0, v1, v2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 618
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmFrontendResourcesBackup(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "FrontendResourcesBackUp:"

    const-string v2, "\n"

    invoke-static {p3, v0, v1, v2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 619
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmFrontendExistingNumsBackup(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    const-string v1, "FrontendExistingNumsBackup:"

    const-string v2, ", "

    invoke-static {p3, v0, v1, v2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 620
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmFrontendUsedNumsBackup(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    const-string v1, "FrontendUsedNumsBackup:"

    const-string v2, ", "

    invoke-static {p3, v0, v1, v2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 621
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmFrontendMaxUsableNumsBackup(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    const-string v1, "FrontendUsedNumsBackup:"

    const-string v2, ", "

    invoke-static {p3, v0, v1, v2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 622
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLnbResources(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "LnbResource:"

    const-string v2, "\n"

    invoke-static {p3, v0, v1, v2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 623
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmCasResources(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "CasResource:"

    const-string v2, "\n"

    invoke-static {p3, v0, v1, v2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 624
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmCiCamResources(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "CiCamResource:"

    const-string v2, "\n"

    invoke-static {p3, v0, v1, v2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 625
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;

    move-result-object p3

    const-string v0, "Listners:"

    const-string v1, "\n"

    invoke-static {p0, p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    .line 626
    monitor-exit p2

    return-void

    :catchall_cd
    move-exception p0

    monitor-exit p2
    :try_end_cf
    .catchall {:try_start_22 .. :try_end_cf} :catchall_cd

    throw p0
.end method

.method public getClientPriority(II)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "getClientPriority"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 633
    :try_start_e
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 634
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    move-result p2

    .line 633
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    .line 635
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public getConfigPriority(IZ)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "getConfigPriority"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 641
    :try_start_e
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 642
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getMaxNumberOfFrontends(I)I
    .registers 4

    .line 301
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "requestFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "requestFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 304
    :try_start_17
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mgetMaxNumberOfFrontendsInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    .line 305
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public hasUnusedFrontend(I)Z
    .registers 4

    .line 211
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "hasUnusedFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 213
    :try_start_e
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->hasUnusedFrontendInternal(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 214
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw p0
.end method

.method public isHigherPriority(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "isHigherPriority"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p1, :cond_1d

    if-eqz p2, :cond_1d

    .line 559
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 560
    :try_start_12
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->isHigherPriorityInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    .line 561
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw p0

    .line 557
    :cond_1d
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Client profiles can\'t be null."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isLowestPriority(II)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "isLowestPriority"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 222
    :try_start_e
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 226
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->isLowestPriorityInternal(II)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 223
    :cond_1e
    new-instance p0, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLowestPriority called from unregistered client: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_35
    move-exception p0

    .line 227
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_35

    throw p0
.end method

.method public registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "registerClientProfile"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "registerClientProfile"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p1, :cond_5e

    if-eqz p3, :cond_56

    if-eqz p2, :cond_4e

    .line 180
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmPriorityCongfig(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    move-result-object v0

    iget v1, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->isDefinedUseCase(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 184
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 185
    :try_start_2b
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->registerClientProfileInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V

    .line 186
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_32

    throw p0

    .line 181
    :cond_35
    new-instance p0, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Use undefined client use case:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 177
    :cond_4e
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "IResourcesReclaimListener can\'t be null!"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 173
    :cond_56
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "clientId can\'t be null!"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 169
    :cond_5e
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "ResourceClientProfile can\'t be null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public releaseCasSession(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "releaseCasSession"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mvalidateResourceHandle(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z

    move-result p1

    if-eqz p1, :cond_71

    .line 483
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 484
    :try_start_18
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 487
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCasSystemId()I

    move-result v0

    .line 488
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 492
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 496
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseCasSessionInternal(Lcom/android/server/tv/tunerresourcemanager/CasResource;I)V

    .line 497
    monitor-exit p1

    return-void

    .line 493
    :cond_47
    new-instance p0, Landroid/os/RemoteException;

    const-string p2, "Client is not the current owner of the releasing cas."

    invoke-direct {p0, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 490
    :cond_4f
    new-instance p0, Landroid/os/RemoteException;

    const-string p2, "Releasing cas does not exist."

    invoke-direct {p0, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 485
    :cond_57
    new-instance p0, Landroid/os/RemoteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Release cas from unregistered client:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_6e
    move-exception p0

    .line 497
    monitor-exit p1
    :try_end_70
    .catchall {:try_start_18 .. :try_end_70} :catchall_6e

    throw p0

    .line 481
    :cond_71
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "casSessionHandle can\'t be invalid"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public releaseCiCam(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "releaseCiCam"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mvalidateResourceHandle(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 507
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 508
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 511
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCiCamId()I

    move-result v1

    .line 512
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getResourceIdFromHandle(I)I

    move-result p1

    if-ne v1, p1, :cond_5f

    .line 516
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 520
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 524
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseCiCamInternal(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;I)V

    .line 525
    monitor-exit v0

    return-void

    .line 521
    :cond_4f
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Client is not the current owner of the releasing ciCam."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 518
    :cond_57
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Releasing ciCam does not exist."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 513
    :cond_5f
    new-instance p0, Landroid/os/RemoteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The client "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not the owner of the releasing ciCam."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 509
    :cond_7b
    new-instance p0, Landroid/os/RemoteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Release ciCam from unregistered client:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_92
    move-exception p0

    .line 525
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_18 .. :try_end_94} :catchall_92

    throw p0

    .line 505
    :cond_95
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "ciCamHandle can\'t be invalid"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public releaseDemux(II)V
    .registers 4

    .line 460
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v0, "releaseDemux"

    invoke-static {p2, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 461
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 462
    invoke-static {}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 463
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "releaseDemux(demuxHandle="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TunerResourceManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return-void
.end method

.method public releaseDescrambler(II)V
    .registers 4

    .line 469
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v0, "releaseDescrambler"

    invoke-static {p2, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 470
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 471
    invoke-static {}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 472
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "releaseDescrambler(descramblerHandle="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TunerResourceManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return-void
.end method

.method public releaseFrontend(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "releaseFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "releaseFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mvalidateResourceHandle(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 437
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 438
    :try_start_20
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 442
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object p1

    if-eqz p1, :cond_5c

    .line 446
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v1

    .line 447
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v2

    if-eq v1, p2, :cond_55

    if-eqz v2, :cond_55

    .line 450
    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareFeClientIds()Ljava/util/Set;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto :goto_55

    .line 451
    :cond_4d
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Client is not the current owner of the releasing fe."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 454
    :cond_55
    :goto_55
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseFrontendInternal(Lcom/android/server/tv/tunerresourcemanager/FrontendResource;I)V

    .line 455
    monitor-exit v0

    return-void

    .line 444
    :cond_5c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Releasing frontend does not exist."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 439
    :cond_64
    new-instance p0, Landroid/os/RemoteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Release frontend from unregistered client:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_7b
    move-exception p0

    .line 455
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_20 .. :try_end_7d} :catchall_7b

    throw p0

    .line 435
    :cond_7e
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "frontendHandle can\'t be invalid"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public releaseLnb(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "releaseLnb"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "releaseLnb"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mvalidateResourceHandle(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 535
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 536
    :try_start_20
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 539
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object p1

    if-eqz p1, :cond_45

    .line 543
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v1

    if-ne v1, p2, :cond_3d

    .line 547
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseLnbInternal(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V

    .line 548
    monitor-exit v0

    return-void

    .line 544
    :cond_3d
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Client is not the current owner of the releasing lnb."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 541
    :cond_45
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Releasing lnb does not exist."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 537
    :cond_4d
    new-instance p0, Landroid/os/RemoteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Release lnb from unregistered client:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_64
    move-exception p0

    .line 548
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_20 .. :try_end_66} :catchall_64

    throw p0

    .line 533
    :cond_67
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "lnbHandle can\'t be invalid"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public releaseLock(I)Z
    .registers 10

    .line 597
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "releaseLock"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 599
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-wide/16 v4, 0x1f4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mreleaseLockInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;IJZZ)Z

    move-result p0

    return p0
.end method

.method public requestCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "requestCasSession"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p2, :cond_3f

    .line 387
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 388
    :try_start_11
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget v2, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 392
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestCasSessionInternal(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 389
    :cond_23
    new-instance p0, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request cas from unregistered client:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_3c
    move-exception p0

    .line 393
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_11 .. :try_end_3e} :catchall_3c

    throw p0

    .line 385
    :cond_3f
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "casSessionHandle can\'t be null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestCiCam(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "requestCiCam"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p2, :cond_3f

    .line 403
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 404
    :try_start_11
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget v2, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 408
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestCiCamInternal(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 405
    :cond_23
    new-instance p0, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request ciCam from unregistered client:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_3c
    move-exception p0

    .line 409
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_11 .. :try_end_3e} :catchall_3c

    throw p0

    .line 401
    :cond_3f
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "ciCamHandle can\'t be null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "requestDemux"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "requestDemux"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p2, :cond_47

    .line 354
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 355
    :try_start_19
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget v2, p1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 359
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestDemuxInternal(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 356
    :cond_2b
    new-instance p0, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request demux from unregistered client:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_44
    move-exception p0

    .line 360
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_19 .. :try_end_46} :catchall_44

    throw p0

    .line 352
    :cond_47
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "demuxHandle can\'t be null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestDescrambler(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "requestDescrambler"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceDescramblerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "requestDescrambler"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p2, :cond_47

    .line 371
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 372
    :try_start_19
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget v2, p1, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;->clientId:I

    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 376
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestDescramblerInternal(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 373
    :cond_2b
    new-instance p0, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request descrambler from unregistered client:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;->clientId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_44
    move-exception p0

    .line 377
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_19 .. :try_end_46} :catchall_44

    throw p0

    .line 369
    :cond_47
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "descramblerHandle can\'t be null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[I)Z
    .registers 7

    .line 263
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "requestFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "requestFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_1b

    const-string p0, "TunerResourceManagerService"

    const-string p1, "frontendHandle can\'t be null"

    .line 266
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 269
    :cond_1b
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 270
    :try_start_22
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget v3, p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v2

    if-nez v2, :cond_46

    const-string p0, "TunerResourceManagerService"

    .line 271
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request frontend from unregistered client: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    monitor-exit v1

    return v0

    .line 276
    :cond_46
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget v3, p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseFrontendHandles()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_72

    const-string p0, "TunerResourceManagerService"

    .line 277
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Release frontend before requesting another one. Client id: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    monitor-exit v1

    return v0

    .line 281
    :cond_72
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestFrontendInternal(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[I)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_7a
    move-exception p0

    .line 282
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_22 .. :try_end_7c} :catchall_7a

    throw p0
.end method

.method public requestLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "requestLnb"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "requestLnb"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p2, :cond_47

    .line 420
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 421
    :try_start_19
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget v2, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 425
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestLnbInternal(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 422
    :cond_2b
    new-instance p0, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request lnb from unregistered client:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_44
    move-exception p0

    .line 426
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_19 .. :try_end_46} :catchall_44

    throw p0

    .line 418
    :cond_47
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "lnbHandle can\'t be null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public restoreResourceMap(I)V
    .registers 4

    .line 582
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "restoreResourceMap"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 584
    :try_start_f
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->restoreResourceMapInternal(I)V

    .line 585
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw p0
.end method

.method public setFrontendInfoList([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "setFrontendInfoList"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p1, :cond_1b

    .line 236
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 237
    :try_start_11
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->setFrontendInfoListInternal([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V

    .line 238
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw p0

    .line 234
    :cond_1b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "TunerFrontendInfo can\'t be null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLnbInfoList([I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "setLnbInfoList"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p1, :cond_1b

    .line 255
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 256
    :try_start_11
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->setLnbInfoListInternal([I)V

    .line 257
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw p0

    .line 253
    :cond_1b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Lnb handle list can\'t be null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxNumberOfFrontends(II)Z
    .registers 5

    .line 287
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "requestFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "requestFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-gez p2, :cond_33

    const-string p0, "TunerResourceManagerService"

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaxNumberOfFrontends failed with maxUsableNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " frontendType:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 294
    :cond_33
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 295
    :try_start_3a
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$msetMaxNumberOfFrontendsInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_42
    move-exception p0

    .line 296
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_42

    throw p0
.end method

.method public shareFrontend(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "shareFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "shareFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 313
    :try_start_17
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 317
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 321
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseFrontendHandles()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 325
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->shareFrontendInternal(II)V

    .line 326
    monitor-exit v0

    return-void

    .line 322
    :cond_3e
    new-instance p0, Landroid/os/RemoteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request to share frontend with a client that has no frontend resources. Target client id:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 318
    :cond_55
    new-instance p0, Landroid/os/RemoteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request to share frontend with an unregistered client:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 314
    :cond_6c
    new-instance p0, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Share frontend request from an unregistered client:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_83
    move-exception p0

    .line 326
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_17 .. :try_end_85} :catchall_83

    throw p0
.end method

.method public storeResourceMap(I)V
    .registers 4

    .line 566
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "storeResourceMap"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 568
    :try_start_f
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->storeResourceMapInternal(I)V

    .line 569
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw p0
.end method

.method public transferOwner(III)Z
    .registers 7

    .line 331
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "transferOwner"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "transferOwner"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 334
    :try_start_17
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3d

    const-string p0, "TunerResourceManagerService"

    .line 335
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "currentOwnerId:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not exit"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    monitor-exit v0

    return v2

    .line 338
    :cond_3d
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-nez v1, :cond_62

    const-string p0, "TunerResourceManagerService"

    .line 339
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "newOwnerId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not exit"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    monitor-exit v0

    return v2

    .line 342
    :cond_62
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->transferOwnerInternal(III)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_6a
    move-exception p0

    .line 343
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_17 .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public unregisterClientProfile(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "unregisterClientProfile"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 193
    :try_start_f
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string p0, "TunerResourceManagerService"

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistering non exists client:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    monitor-exit v0

    return-void

    .line 197
    :cond_2f
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->unregisterClientProfileInternal(I)V

    .line 198
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_f .. :try_end_38} :catchall_36

    throw p0
.end method

.method public updateCasInfo(II)V
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "updateCasInfo"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 245
    :try_start_f
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCasInfoInternal(II)V

    .line 246
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw p0
.end method

.method public updateClientPriority(III)Z
    .registers 6

    .line 203
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "updateClientPriority"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 205
    :try_start_f
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateClientPriorityInternal(III)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    .line 206
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_17

    throw p0
.end method
