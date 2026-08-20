.class public Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UidDefaultNetworkCallback"
.end annotation


# instance fields
.field public mBlockedReasons:I

.field public mDefaultNetwork:Landroid/net/Network;

.field public mUid:I

.field public final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBlockedReasons(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;)I
    .registers 1

    iget p0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mBlockedReasons:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultNetwork(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;)Landroid/net/Network;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDefaultNetwork(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;Landroid/net/Network;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclear(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->clear()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpLocked(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;Landroid/util/IndentingPrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetUid(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->setUid(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .registers 2

    .line 1310
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    const/4 v0, 0x0

    .line 1322
    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    const/16 v0, -0x2710

    .line 1323
    iput v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    return-void
.end method

.method public final dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .registers 3

    const-string v0, "UID: "

    .line 1397
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1398
    iget v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, "; "

    .line 1399
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1400
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    if-nez v0, :cond_19

    const-string p0, "No network"

    .line 1401
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_36

    :cond_19
    const-string v0, "Network: "

    .line 1403
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1404
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " (blocked="

    .line 1405
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1406
    iget p0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mBlockedReasons:I

    invoke-static {p0}, Landroid/net/NetworkPolicyManager;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p0, ")"

    .line 1407
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1409
    :goto_36
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public onAvailable(Landroid/net/Network;)V
    .registers 4

    .line 1328
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default-onAvailable("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "): "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler.Connectivity"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return-void
.end method

.method public onBlockedStatusChanged(Landroid/net/Network;I)V
    .registers 6

    .line 1333
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "JobScheduler.Connectivity"

    .line 1334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default-onBlockedStatusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_2e
    iget v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_35

    return-void

    .line 1340
    :cond_35
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1341
    :try_start_3a
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    .line 1342
    iput p2, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mBlockedReasons:I

    .line 1343
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget p0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    invoke-static {p2, p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mupdateTrackedJobsLocked(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    .line 1344
    monitor-exit v0

    return-void

    :catchall_47
    move-exception p0

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3a .. :try_end_49} :catchall_47

    throw p0
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 5

    .line 1377
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "JobScheduler.Connectivity"

    .line 1378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default-onLost("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_26
    iget v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_2d

    return-void

    .line 1383
    :cond_2d
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1384
    :try_start_32
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v1, 0x0

    .line 1385
    iput-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    .line 1386
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget v2, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    invoke-static {v1, v2, p1}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mupdateTrackedJobsLocked(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    .line 1391
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const-wide/16 v1, 0x3e8

    invoke-static {p0, v1, v2}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mpostAdjustCallbacks(Lcom/android/server/job/controllers/ConnectivityController;J)V

    .line 1393
    :cond_4b
    monitor-exit v0

    return-void

    :catchall_4d
    move-exception p0

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_32 .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public final setUid(I)V
    .registers 2

    .line 1317
    iput p1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    const/4 p1, 0x0

    .line 1318
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    return-void
.end method
