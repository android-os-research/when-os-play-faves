.class public final Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;
.super Landroid/view/contentcapture/IContentCaptureManager$Stub;
.source "ContentCaptureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/contentcapture/ContentCaptureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ContentCaptureManagerServiceStub"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method public static synthetic $r8$lambda$F6sm9e6WidPy1blGJvVyzqUMg8o(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->lambda$getServiceSettingsActivity$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$PVP9GhAUJDKseU5bHS8l-OEyGPI(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->lambda$isContentCaptureFeatureEnabled$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$kuTjHEox79e2LoaLWXs075hPXBg(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->lambda$getContentCaptureConditions$2(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .registers 2

    .line 671
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-direct {p0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$getContentCaptureConditions$2(Ljava/lang/String;)V
    .registers 2

    .line 809
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getServiceSettingsActivity$1()V
    .registers 1

    .line 788
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->enforceCallingPermissionForManagement()V

    return-void
.end method

.method private synthetic lambda$isContentCaptureFeatureEnabled$0()V
    .registers 2

    .line 772
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    const-string/jumbo v0, "isContentCaptureFeatureEnabled()"

    invoke-static {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$massertCalledByServiceLocked(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    .line 849
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    const/4 v0, 0x1

    if-eqz p3, :cond_51

    .line 853
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_17
    if-ge v3, v1, :cond_51

    aget-object v4, p3, v3

    .line 854
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string v5, "--no-history"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    const-string v5, "--help"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 862
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring invalid dump arg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :cond_47
    const-string p0, "Usage: dumpsys content_capture [--no-history]"

    .line 859
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_4d
    move v0, v2

    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 867
    :cond_51
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 868
    :try_start_58
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    const-string v3, ""

    invoke-virtual {v2, v3, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 869
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_85

    const-string v1, "Requests history: "

    .line 870
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 871
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    if-nez v1, :cond_71

    const-string p0, "disabled by device config"

    .line 872
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_84

    :cond_71
    if-eqz v0, :cond_81

    .line 874
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 875
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 876
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_84

    .line 878
    :cond_81
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :goto_84
    return-void

    :catchall_85
    move-exception p0

    .line 869
    :try_start_86
    monitor-exit v1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw p0
.end method

.method public finishSession(I)V
    .registers 4

    .line 698
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 701
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$200(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 702
    :try_start_12
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$300(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 703
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->finishSessionLocked(I)V

    .line 704
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public getContentCaptureConditions(Ljava/lang/String;Lcom/android/internal/os/IResultReceiver;)V
    .registers 5

    .line 809
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    new-instance v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;Ljava/lang/String;)V

    invoke-static {v0, p2, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$mthrowsSecurityException(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 813
    :cond_e
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 815
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1400(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 816
    :try_start_19
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1500(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    if-nez p0, :cond_25

    const/4 p0, 0x0

    goto :goto_2d

    .line 818
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getContentCaptureConditionsLocked(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    invoke-static {p0}, Landroid/view/contentcapture/ContentCaptureHelper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p0

    .line 819
    :goto_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_51

    const/4 p1, 0x0

    .line 821
    :try_start_2f
    invoke-static {p0}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_36} :catch_37

    goto :goto_50

    :catch_37
    move-exception p0

    .line 823
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to send getServiceComponentName(): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_50
    return-void

    :catchall_51
    move-exception p0

    .line 819
    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public getServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V
    .registers 4

    .line 709
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 711
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$400(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 712
    :try_start_b
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$500(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 713
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object p0

    .line 714
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_3b

    const/4 v0, 0x0

    .line 716
    :try_start_19
    invoke-static {p0}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_20} :catch_21

    goto :goto_3a

    :catch_21
    move-exception p0

    .line 718
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to send service component name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void

    :catchall_3b
    move-exception p0

    .line 714
    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;)V
    .registers 4

    .line 788
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    new-instance v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;)V

    invoke-static {v0, p1, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$mthrowsSecurityException(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 792
    :cond_e
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 794
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1200(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 795
    :try_start_19
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1300(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    if-nez p0, :cond_25

    .line 796
    monitor-exit v1

    return-void

    .line 797
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getServiceSettingsActivityLocked()Landroid/content/ComponentName;

    move-result-object p0

    .line 798
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_4d

    const/4 v0, 0x0

    .line 800
    :try_start_2b
    invoke-static {p0}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_32} :catch_33

    goto :goto_4c

    :catch_33
    move-exception p0

    .line 802
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to send getServiceSettingsIntent(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4c
    return-void

    :catchall_4d
    move-exception p0

    .line 798
    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public isContentCaptureFeatureEnabled(Lcom/android/internal/os/IResultReceiver;)V
    .registers 6

    .line 770
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 771
    :try_start_7
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    new-instance v2, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;)V

    invoke-static {v1, p1, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$mthrowsSecurityException(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 773
    monitor-exit v0

    return-void

    .line 776
    :cond_16
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 777
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmDisabledByDeviceConfig(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2d

    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$misDisabledBySettingsLocked(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Z

    move-result p0

    if-nez p0, :cond_2d

    move p0, v3

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    .line 778
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_52

    if-eqz p0, :cond_32

    goto :goto_33

    :cond_32
    const/4 v3, 0x2

    :goto_33
    const/4 p0, 0x0

    .line 780
    :try_start_34
    invoke-interface {p1, v3, p0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_51

    :catch_38
    move-exception p0

    .line 782
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to send isContentCaptureFeatureEnabled(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_51
    return-void

    :catchall_52
    move-exception p0

    .line 778
    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 886
    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public registerContentCaptureOptionsCallback(Ljava/lang/String;Landroid/view/contentcapture/IContentCaptureOptionsCallback;)V
    .registers 4

    .line 830
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmCallbacks(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 835
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 836
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->getOptions(ILjava/lang/String;)Landroid/content/ContentCaptureOptions;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 840
    :try_start_1c
    invoke-interface {p2, p0}, Landroid/view/contentcapture/IContentCaptureOptionsCallback;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_39

    :catch_20
    move-exception p0

    .line 842
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to send setContentCaptureOptions(): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    :goto_39
    return-void
.end method

.method public removeData(Landroid/view/contentcapture/DataRemovalRequest;)V
    .registers 4

    .line 724
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p1}, Landroid/view/contentcapture/DataRemovalRequest;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    .line 727
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 728
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 729
    :try_start_17
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$700(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 730
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->removeDataLocked(Landroid/view/contentcapture/DataRemovalRequest;)V

    .line 731
    monitor-exit v1

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public resetTemporaryService(I)V
    .registers 2

    .line 892
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    return-void
.end method

.method public setDefaultServiceEnabled(IZ)V
    .registers 3

    .line 904
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->setDefaultServiceEnabled(IZ)Z

    return-void
.end method

.method public setTemporaryService(ILjava/lang/String;I)V
    .registers 4

    .line 898
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    return-void
.end method

.method public shareData(Landroid/view/contentcapture/DataShareRequest;Landroid/view/contentcapture/IDataShareWriteAdapter;)V
    .registers 8

    .line 737
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p1}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    .line 742
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 743
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 744
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$900(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 746
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmPackagesWithShareRequests(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_4d

    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmPackagesWithShareRequests(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object v3

    .line 747
    invoke-virtual {p1}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    goto :goto_4d

    .line 761
    :cond_41
    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;

    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;-><init>(Landroid/view/contentcapture/DataShareRequest;Landroid/view/contentcapture/IDataShareWriteAdapter;Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    invoke-virtual {v2, p1, v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onDataSharedLocked(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback$Stub;)V

    .line 764
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_1a .. :try_end_4c} :catchall_6c

    return-void

    .line 749
    :cond_4d
    :goto_4d
    :try_start_4d
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;
    invoke-static {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1000(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xe

    .line 750
    invoke-static {p1, p0}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILjava/lang/String;)V

    const/4 p0, 0x2

    .line 753
    invoke-interface {p2, p0}, Landroid/view/contentcapture/IDataShareWriteAdapter;->error(I)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_60} :catch_61
    .catchall {:try_start_4d .. :try_end_60} :catchall_6c

    goto :goto_6a

    .line 756
    :catch_61
    :try_start_61
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to send error message to client"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :goto_6a
    monitor-exit v1

    return-void

    :catchall_6c
    move-exception p0

    .line 764
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_61 .. :try_end_6e} :catchall_6c

    throw p0
.end method

.method public startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;IILcom/android/internal/os/IResultReceiver;)V
    .registers 16

    .line 677
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p3

    .line 682
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$mgetAmInternal(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v0

    .line 683
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getActivityPresentationInfo(Landroid/os/IBinder;)Landroid/content/pm/ActivityPresentationInfo;

    move-result-object v4

    .line 685
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$000(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 686
    :try_start_22
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v1, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$100(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 687
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$misDefaultServiceLocked(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Z

    move-result p3

    if-nez p3, :cond_44

    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    const-string/jumbo p3, "startSession()"

    invoke-static {p0, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$misCalledByServiceLocked(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_44

    const/4 p0, 0x4

    const/4 p1, 0x0

    .line 688
    invoke-static {p6, p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 689
    monitor-exit v0

    return-void

    .line 692
    :cond_44
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v7, p5

    move-object v8, p6

    .line 691
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->startSessionLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/pm/ActivityPresentationInfo;IIILcom/android/internal/os/IResultReceiver;)V

    .line 693
    monitor-exit v0

    return-void

    :catchall_52
    move-exception p0

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_22 .. :try_end_54} :catchall_52

    throw p0
.end method
