.class public final Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;
.super Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;
.source "ContentCapturePerUserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/contentcapture/ContentCapturePerUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ContentCaptureServiceRemoteCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;


# direct methods
.method public constructor <init>(Lcom/android/server/contentcapture/ContentCapturePerUserService;)V
    .registers 2

    .line 603
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-direct {p0}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/contentcapture/ContentCapturePerUserService;Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;-><init>(Lcom/android/server/contentcapture/ContentCapturePerUserService;)V

    return-void
.end method


# virtual methods
.method public disableSelf()V
    .registers 7

    .line 678
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    # getter for: Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;
    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$1100(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disableSelf()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 682
    :try_start_19
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    # invokes: Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$1200(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content_capture_enabled"

    const-string v4, "0"

    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 683
    # getter for: Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I
    invoke-static {v5}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$1300(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I

    move-result v5

    .line 682
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_3e

    .line 685
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x4

    .line 687
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 688
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object p0

    .line 687
    invoke-static {v0, p0}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILandroid/content/ComponentName;)V

    return-void

    :catchall_3e
    move-exception p0

    .line 685
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 686
    throw p0
.end method

.method public setContentCaptureConditions(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/contentcapture/ContentCaptureCondition;",
            ">;)V"
        }
    .end annotation

    .line 663
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    # getter for: Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;
    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$1000(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_48

    .line 664
    invoke-static {}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setContentCaptureConditions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_29

    const-string/jumbo v2, "null"

    goto :goto_3e

    .line 665
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " conditions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 664
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_48
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p2, :cond_59

    .line 669
    :try_start_4f
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->-$$Nest$fgetmConditionsByPkg(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_67

    .line 671
    :cond_59
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->-$$Nest$fgetmConditionsByPkg(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/util/ArrayMap;

    move-result-object p0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    :goto_67
    monitor-exit v0

    return-void

    :catchall_69
    move-exception p0

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_4f .. :try_end_6b} :catchall_69

    throw p0
.end method

.method public setContentCaptureWhitelist(Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    # getter for: Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;
    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$000(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_71

    .line 611
    invoke-static {}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setContentCaptureWhitelist("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_21

    const-string/jumbo v2, "null_packages"

    goto :goto_36

    .line 612
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packages"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_44

    const-string/jumbo v2, "null_activities"

    goto :goto_59

    .line 614
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " activities"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 615
    # getter for: Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I
    invoke-static {v2}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$100(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 611
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_71
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 619
    # getter for: Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;
    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$300(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    # getter for: Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I
    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$200(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/GlobalWhitelistState;->getWhitelistedPackages(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 621
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    # getter for: Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;
    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$500(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    # getter for: Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I
    invoke-static {v2}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$400(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/infra/GlobalWhitelistState;->setWhitelist(ILjava/util/List;Ljava/util/List;)V

    .line 622
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSetWhitelistEvent(Landroid/content/ComponentName;Ljava/util/List;Ljava/util/List;)V

    .line 624
    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->updateContentCaptureOptions(Landroid/util/ArraySet;)V

    .line 627
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->-$$Nest$fgetmSessions(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-gtz p1, :cond_b1

    return-void

    .line 631
    :cond_b1
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2, p1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_b8
    if-ge v1, p1, :cond_123

    .line 634
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v2}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->-$$Nest$fgetmSessions(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 635
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    # getter for: Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;
    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$700(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v3, v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 636
    # getter for: Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I
    invoke-static {v4}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$600(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I

    move-result v4

    iget-object v5, v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;->appComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/infra/GlobalWhitelistState;->isWhitelisted(ILandroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_120

    .line 638
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->-$$Nest$fgetmSessions(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 639
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    # getter for: Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;
    invoke-static {v4}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$800(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v4, v4, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v4, :cond_11c

    .line 640
    invoke-static {}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "marking session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;->appComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") for un-whitelisting"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11c
    const/4 v2, 0x1

    .line 643
    invoke-virtual {p2, v3, v2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_120
    add-int/lit8 v1, v1, 0x1

    goto :goto_b8

    .line 646
    :cond_123
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-gtz p1, :cond_12a

    return-void

    .line 650
    :cond_12a
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    move v2, v0

    :goto_130
    if-ge v2, p1, :cond_16d

    .line 652
    :try_start_132
    invoke-virtual {p2, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 653
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    # getter for: Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;
    invoke-static {v4}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$900(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v4, v4, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v4, :cond_15b

    invoke-static {}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "un-whitelisting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_15b
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v4}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->-$$Nest$fgetmSessions(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 655
    invoke-virtual {v3, v0}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->setContentCaptureEnabledLocked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_130

    .line 657
    :cond_16d
    monitor-exit v1

    return-void

    :catchall_16f
    move-exception p0

    monitor-exit v1
    :try_end_171
    .catchall {:try_start_132 .. :try_end_171} :catchall_16f

    throw p0
.end method

.method public final updateContentCaptureOptions(Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 700
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    # getter for: Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;
    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$1500(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 701
    # getter for: Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I
    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$1400(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/GlobalWhitelistState;->getWhitelistedPackages(I)Landroid/util/ArraySet;

    move-result-object v0

    if-eqz p1, :cond_1b

    if-eqz v0, :cond_1b

    .line 704
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    :cond_1b
    const/4 p1, 0x0

    if-eqz v0, :cond_23

    .line 707
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    goto :goto_24

    :cond_23
    move v1, p1

    :goto_24
    if-ge p1, v1, :cond_4e

    .line 709
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 710
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    # getter for: Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;
    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$1700(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v3, v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 711
    # getter for: Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I
    invoke-static {v4}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$1600(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->getOptions(ILjava/lang/String;)Landroid/content/ContentCaptureOptions;

    move-result-object v3

    .line 712
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    # getter for: Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;
    invoke-static {v4}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$1800(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->updateOptions(Ljava/lang/String;Landroid/content/ContentCaptureOptions;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_24

    :cond_4e
    return-void
.end method

.method public writeSessionFlush(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V
    .registers 6

    .line 694
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p1, p0, p3, p4, p5}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionFlush(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V

    return-void
.end method
