.class public final Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;
.super Landroid/view/autofill/IAutoFillManager$Stub;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AutoFillManagerServiceStub"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .registers 2

    .line 1409
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-direct {p0}, Landroid/view/autofill/IAutoFillManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addClient(Landroid/view/autofill/IAutoFillManagerClient;Landroid/content/ComponentName;ILcom/android/internal/os/IResultReceiver;)V
    .registers 7

    .line 1414
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1415
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v1, p3}, Lcom/android/server/autofill/AutofillManagerService;->access$700(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p3

    check-cast p3, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->addClientLocked(Landroid/view/autofill/IAutoFillManagerClient;Landroid/content/ComponentName;)I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_17

    or-int/2addr p2, p1

    .line 1420
    :cond_17
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_1d

    or-int/lit8 p2, p2, 0x2

    .line 1423
    :cond_1d
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_23

    or-int/lit8 p2, p2, 0x4

    .line 1426
    :cond_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_2a

    .line 1427
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p4, p2}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;I)V

    return-void

    :catchall_2a
    move-exception p0

    .line 1426
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public cancelSession(II)V
    .registers 5

    .line 1719
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$4300(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1720
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p2}, Lcom/android/server/autofill/AutofillManagerService;->access$4400(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz p0, :cond_19

    .line 1722
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->cancelSessionLocked(II)V

    goto :goto_33

    .line 1723
    :cond_19
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_33

    const-string p0, "AutofillManagerService"

    .line 1724
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelSession(): no service for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    :cond_33
    :goto_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public disableOwnedAutofillServices(I)V
    .registers 5

    .line 1731
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$4500(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1732
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->access$4600(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz p0, :cond_19

    .line 1734
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableOwnedAutofillServicesLocked(I)V

    goto :goto_33

    .line 1735
    :cond_19
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_33

    const-string p0, "AutofillManagerService"

    .line 1736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelSession(): no service for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :cond_33
    :goto_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    .line 1778
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AutofillManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_6f

    .line 1783
    array-length v2, p3

    move v3, v0

    move v4, v3

    move v5, v1

    :goto_17
    if-ge v3, v2, :cond_6d

    aget-object v6, p3, v3

    .line 1784
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_192

    goto :goto_47

    :sswitch_27
    const-string v8, "--help"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_30

    goto :goto_47

    :cond_30
    const/4 v7, 0x2

    goto :goto_47

    :sswitch_32
    const-string v8, "--no-history"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3b

    goto :goto_47

    :cond_3b
    move v7, v1

    goto :goto_47

    :sswitch_3d
    const-string v8, "--ui-only"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_46

    goto :goto_47

    :cond_46
    move v7, v0

    :goto_47
    packed-switch v7, :pswitch_data_1a0

    const-string v7, "AutofillManagerService"

    .line 1795
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring invalid dump arg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    :pswitch_61
    const-string p0, "Usage: dumpsys autofill [--ui-only|--no-history]"

    .line 1792
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :pswitch_67
    move v5, v0

    goto :goto_6a

    :pswitch_69
    move v4, v1

    :goto_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_6d
    move v0, v4

    goto :goto_70

    :cond_6f
    move v5, v1

    :goto_70
    if-eqz v0, :cond_7c

    .line 1801
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmUi(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->dump(Ljava/io/PrintWriter;)V

    return-void

    .line 1806
    :cond_7c
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1807
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1809
    :try_start_80
    sput-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    sput-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1810
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$5300(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_8b
    .catchall {:try_start_80 .. :try_end_8b} :catchall_18b

    :try_start_8b
    const-string/jumbo v3, "sDebug: "

    .line 1811
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " sVerbose: "

    .line 1812
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1814
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    const-string v4, ""

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    invoke-static {v3, v4, p2}, Lcom/android/server/autofill/AutofillManagerService;->access$5400(Lcom/android/server/autofill/AutofillManagerService;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1815
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-object v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-virtual {v3, p2}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->dumpShort(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "Max partitions per session: "

    .line 1816
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$sfgetsPartitionMaxCount()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string v3, "Max visible datasets: "

    .line 1817
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$sfgetsVisibleDatasetsMaxCount()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1818
    sget-object v3, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    if-eqz v3, :cond_d3

    const-string v3, "Overridden full-screen mode: "

    .line 1819
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_d3
    const-string v3, "User data constraints: "

    .line 1821
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-static {v3, p2}, Landroid/service/autofill/UserData;->dumpConstraints(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1822
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmUi(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->dump(Ljava/io/PrintWriter;)V

    const-string v3, "Autofill Compat State: "

    .line 1823
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1824
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmAutofillCompatState(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    move-result-object v3

    const-string v4, "  "

    invoke-static {v3, v4, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->-$$Nest$mdump(Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;Ljava/lang/String;Ljava/io/PrintWriter;)V

    const-string v3, "from device config: "

    .line 1825
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1826
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mgetAllowedCompatModePackagesFromDeviceConfig(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1827
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmSupportedSmartSuggestionModes(Lcom/android/server/autofill/AutofillManagerService;)I

    move-result v3

    if-eqz v3, :cond_11e

    const-string v3, "Smart Suggestion modes: "

    .line 1828
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1829
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmSupportedSmartSuggestionModes(Lcom/android/server/autofill/AutofillManagerService;)I

    move-result v3

    invoke-static {v3}, Landroid/view/autofill/AutofillManager;->getSmartSuggestionModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11e
    const-string v3, "Augmented Service Idle Unbind Timeout: "

    .line 1831
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1832
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceIdleUnbindTimeoutMs:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string v3, "Augmented Service Request Timeout: "

    .line 1833
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1834
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceRequestTimeoutMs:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    if-eqz v5, :cond_174

    .line 1836
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "Requests history:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1837
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmRequestsHistory(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1838
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "UI latency history:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1839
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmUiLatencyHistory(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1840
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "WTF history:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1841
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmWtfHistory(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_174
    const-string p1, "Augmented Autofill State: "

    .line 1843
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1844
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    const-string p1, "  "

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1845
    monitor-exit v1
    :try_end_183
    .catchall {:try_start_8b .. :try_end_183} :catchall_188

    .line 1847
    sput-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1848
    sput-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    return-void

    :catchall_188
    move-exception p0

    .line 1845
    :try_start_189
    monitor-exit v1
    :try_end_18a
    .catchall {:try_start_189 .. :try_end_18a} :catchall_188

    :try_start_18a
    throw p0
    :try_end_18b
    .catchall {:try_start_18a .. :try_end_18b} :catchall_18b

    :catchall_18b
    move-exception p0

    .line 1847
    sput-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1848
    sput-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1849
    throw p0

    nop

    :sswitch_data_192
    .sparse-switch
        0x35b095a5 -> :sswitch_3d
        0x417d0228 -> :sswitch_32
        0x4f7504e1 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_1a0
    .packed-switch 0x0
        :pswitch_69
        :pswitch_67
        :pswitch_61
    .end packed-switch
.end method

.method public finishSession(III)V
    .registers 5

    .line 1707
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$4100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1708
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p2}, Lcom/android/server/autofill/AutofillManagerService;->access$4200(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz p0, :cond_19

    .line 1710
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->finishSessionLocked(III)V

    goto :goto_33

    .line 1711
    :cond_19
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_33

    const-string p0, "AutofillManagerService"

    .line 1712
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "finishSession(): no service for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    :cond_33
    :goto_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public getAutofillServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1643
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1646
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$3300(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1647
    :try_start_b
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$3400(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz v2, :cond_1a

    .line 1649
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_35

    .line 1650
    :cond_1a
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_34

    const-string v2, "AutofillManagerService"

    .line 1651
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAutofillServiceComponentName(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    const/4 v0, 0x0

    .line 1653
    :goto_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_b .. :try_end_36} :catchall_3c

    .line 1654
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p1, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    return-void

    :catchall_3c
    move-exception p0

    .line 1653
    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public getAvailableFieldClassificationAlgorithms(Lcom/android/internal/os/IResultReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1624
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1627
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$3100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1628
    :try_start_b
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$3200(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz v2, :cond_1e

    .line 1630
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getAvailableFieldClassificationAlgorithms(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 1632
    :cond_1e
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_38

    const-string v2, "AutofillManagerService"

    .line 1633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAvailableFcAlgorithms(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    const/4 v0, 0x0

    .line 1636
    :goto_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_b .. :try_end_3a} :catchall_40

    .line 1637
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p1, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;[Ljava/lang/String;)V

    return-void

    :catchall_40
    move-exception p0

    .line 1636
    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public getDefaultFieldClassificationAlgorithm(Lcom/android/internal/os/IResultReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1582
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1585
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$2700(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1586
    :try_start_b
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$2800(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz v2, :cond_1e

    .line 1588
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getDefaultFieldClassificationAlgorithm(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 1590
    :cond_1e
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_38

    const-string v2, "AutofillManagerService"

    .line 1591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultFcAlgorithm(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    const/4 v0, 0x0

    .line 1594
    :goto_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_b .. :try_end_3a} :catchall_40

    .line 1595
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p1, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V

    return-void

    :catchall_40
    move-exception p0

    .line 1594
    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public getFillEventHistory(Lcom/android/internal/os/IResultReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1501
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1504
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$1700(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1505
    :try_start_b
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$1800(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz v2, :cond_1e

    .line 1507
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getFillEventHistory(I)Landroid/service/autofill/FillEventHistory;

    move-result-object v0

    goto :goto_39

    .line 1508
    :cond_1e
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_38

    const-string v2, "AutofillManagerService"

    .line 1509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFillEventHistory(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    const/4 v0, 0x0

    .line 1511
    :goto_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_b .. :try_end_3a} :catchall_40

    .line 1512
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p1, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    return-void

    :catchall_40
    move-exception p0

    .line 1511
    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public getUserData(Lcom/android/internal/os/IResultReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1517
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1520
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$1900(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1521
    :try_start_b
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$2000(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz v2, :cond_1e

    .line 1523
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData(I)Landroid/service/autofill/UserData;

    move-result-object v0

    goto :goto_3a

    .line 1524
    :cond_1e
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_39

    const-string v2, "AutofillManagerService"

    .line 1525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUserData(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    const/4 v0, 0x0

    .line 1527
    :goto_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_41

    .line 1528
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p1, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    return-void

    :catchall_41
    move-exception p0

    .line 1527
    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public getUserDataId(Lcom/android/internal/os/IResultReceiver;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1533
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1536
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$2100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1537
    :try_start_b
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$2200(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    .line 1539
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData(I)Landroid/service/autofill/UserData;

    move-result-object v0

    goto :goto_3b

    .line 1540
    :cond_1f
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_3a

    const-string v2, "AutofillManagerService"

    .line 1541
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getUserDataId(): no service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    move-object v0, v3

    .line 1543
    :goto_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_49

    if-nez v0, :cond_3f

    goto :goto_43

    .line 1544
    :cond_3f
    invoke-virtual {v0}, Landroid/service/autofill/UserData;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1545
    :goto_43
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p1, v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V

    return-void

    :catchall_49
    move-exception p0

    .line 1543
    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public isFieldClassificationEnabled(Lcom/android/internal/os/IResultReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1565
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1568
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$2500(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1569
    :try_start_b
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$2600(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz v2, :cond_1e

    .line 1571
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabled(I)Z

    move-result v0

    goto :goto_3a

    .line 1572
    :cond_1e
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_39

    const-string v2, "AutofillManagerService"

    .line 1573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFieldClassificationEnabled(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    const/4 v0, 0x0

    .line 1575
    :goto_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_41

    .line 1576
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p1, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V

    return-void

    :catchall_41
    move-exception p0

    .line 1575
    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public isServiceEnabled(ILjava/lang/String;Lcom/android/internal/os/IResultReceiver;)V
    .registers 6

    .line 1754
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$4900(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1755
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v1, p1}, Lcom/android/server/autofill/AutofillManagerService;->access$5000(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p1

    check-cast p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1756
    invoke-virtual {p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 1757
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1e

    .line 1758
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p3, p1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V

    return-void

    :catchall_1e
    move-exception p0

    .line 1757
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public isServiceSupported(ILcom/android/internal/os/IResultReceiver;)V
    .registers 5

    .line 1744
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$4700(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1745
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z
    invoke-static {v1, p1}, Lcom/android/server/autofill/AutofillManagerService;->access$4800(Lcom/android/server/autofill/AutofillManagerService;I)Z

    move-result p1

    if-nez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 1746
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_19

    .line 1747
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p2, p1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V

    return-void

    :catchall_19
    move-exception p0

    .line 1746
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public onPendingSaveUi(ILandroid/os/IBinder;)V
    .registers 8

    const-string/jumbo v0, "token"

    .line 1763
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_10

    const/4 v2, 0x2

    if-ne p1, v2, :cond_e

    goto :goto_10

    :cond_e
    move v2, v0

    goto :goto_11

    :cond_10
    :goto_10
    move v2, v1

    :goto_11
    const-string/jumbo v3, "invalid operation: %d"

    new-array v1, v1, [Ljava/lang/Object;

    .line 1766
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    .line 1764
    invoke-static {v2, v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1767
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$5100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1768
    :try_start_26
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1769
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1768
    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, v1}, Lcom/android/server/autofill/AutofillManagerService;->access$5200(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz p0, :cond_37

    .line 1771
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->onPendingSaveUi(ILandroid/os/IBinder;)V

    .line 1773
    :cond_37
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_26 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 1855
    new-instance v0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

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

.method public removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V
    .registers 5

    .line 1432
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$800(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1433
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p2}, Lcom/android/server/autofill/AutofillManagerService;->access$900(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz p0, :cond_15

    .line 1435
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->removeClientLocked(Landroid/view/autofill/IAutoFillManagerClient;)V

    goto :goto_30

    .line 1436
    :cond_15
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_30

    const-string p0, "AutofillManagerService"

    .line 1437
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeClient(): no service for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_30
    :goto_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public restoreSession(ILandroid/os/IBinder;Landroid/os/IBinder;Lcom/android/internal/os/IResultReceiver;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1661
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v1, "activityToken"

    .line 1662
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "appCallback"

    .line 1663
    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1666
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$3500(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1667
    :try_start_15
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$3600(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz v2, :cond_28

    .line 1669
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {v2, p1, v0, p2, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->restoreSession(IILandroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result p1

    goto :goto_44

    .line 1671
    :cond_28
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_43

    const-string p1, "AutofillManagerService"

    .line 1672
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "restoreSession(): no service for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    const/4 p1, 0x0

    .line 1674
    :goto_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_15 .. :try_end_45} :catchall_4b

    .line 1675
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p4, p1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V

    return-void

    :catchall_4b
    move-exception p0

    .line 1674
    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public setAugmentedAutofillWhitelist(Ljava/util/List;Ljava/util/List;Lcom/android/internal/os/IResultReceiver;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/android/internal/os/IResultReceiver;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1602
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1605
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$2900(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1606
    :try_start_b
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$3000(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    .line 1609
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v0

    .line 1608
    invoke-virtual {v2, p1, p2, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAugmentedAutofillWhitelistLocked(Ljava/util/List;Ljava/util/List;I)Z

    move-result p1

    goto :goto_3b

    .line 1611
    :cond_1f
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_3a

    const-string p1, "AutofillManagerService"

    .line 1612
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAugmentedAutofillWhitelist(): no service for "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    move p1, v3

    .line 1616
    :goto_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_46

    .line 1617
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    if-eqz p1, :cond_41

    goto :goto_42

    :cond_41
    const/4 v3, -0x1

    :goto_42
    invoke-static {p0, p3, v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;I)V

    return-void

    :catchall_46
    move-exception p0

    .line 1616
    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public setAuthenticationResult(Landroid/os/Bundle;III)V
    .registers 6

    .line 1445
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$1000(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1446
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p4}, Lcom/android/server/autofill/AutofillManagerService;->access$1100(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1448
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result p4

    .line 1447
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAuthenticationResultLocked(Landroid/os/Bundle;III)V

    .line 1449
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public setAutofillFailure(ILjava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;I)V"
        }
    .end annotation

    .line 1694
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$3900(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1695
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p3}, Lcom/android/server/autofill/AutofillManagerService;->access$4000(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz p0, :cond_19

    .line 1697
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result p3

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAutofillFailureLocked(IILjava/util/List;)V

    goto :goto_34

    .line 1698
    :cond_19
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_34

    const-string p0, "AutofillManagerService"

    .line 1699
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setAutofillFailure(): no service for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public setHasCallback(IIZ)V
    .registers 5

    .line 1454
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$1200(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1455
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p2}, Lcom/android/server/autofill/AutofillManagerService;->access$1300(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1456
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setHasCallback(IIZ)V

    .line 1457
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public setUserData(Landroid/service/autofill/UserData;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1550
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1552
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$2300(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1553
    :try_start_b
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$2400(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz p0, :cond_1d

    .line 1555
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setUserData(ILandroid/service/autofill/UserData;)V

    goto :goto_38

    .line 1556
    :cond_1d
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_38

    const-string p0, "AutofillManagerService"

    .line 1557
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserData(): no service for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :cond_38
    :goto_38
    monitor-exit v1

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;ZLcom/android/internal/os/IResultReceiver;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v1, p6

    move-object/from16 v14, p11

    const-string v3, "activityToken"

    .line 1466
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "clientCallback"

    move-object/from16 v5, p2

    .line 1467
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "autofillId"

    move-object/from16 v6, p3

    .line 1468
    invoke-static {v6, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "clientActivity"

    move-object/from16 v10, p9

    .line 1469
    invoke-static {v10, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1470
    invoke-virtual/range {p9 .. p9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/4 v7, 0x0

    if-ne v1, v4, :cond_36

    const/4 v4, 0x1

    goto :goto_37

    :cond_36
    move v4, v7

    :goto_37
    const-string/jumbo v8, "userId"

    invoke-static {v4, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1475
    :try_start_3d
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v7, v1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3d .. :try_end_4a} :catch_9a

    .line 1482
    iget-object v3, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmAm(Lcom/android/server/autofill/AutofillManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v2, v7}, Landroid/app/ActivityManagerInternal;->getTaskIdForActivity(Landroid/os/IBinder;Z)I

    move-result v3

    .line 1484
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/autofill/AutofillManagerService;->access$1400(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 1485
    :try_start_5b
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v4, v1}, Lcom/android/server/autofill/AutofillManagerService;->access$1500(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1486
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v4

    iget-object v7, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1488
    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z
    invoke-static {v7}, Lcom/android/server/autofill/AutofillManagerService;->access$1600(Lcom/android/server/autofill/AutofillManagerService;)Z

    move-result v12

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v13, p8

    .line 1486
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->startSessionLocked(Landroid/os/IBinder;IILandroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;ZLandroid/content/ComponentName;ZZI)J

    move-result-wide v1

    .line 1489
    monitor-exit v15
    :try_end_84
    .catchall {:try_start_5b .. :try_end_84} :catchall_97

    long-to-int v3, v1

    const/16 v4, 0x20

    shr-long/2addr v1, v4

    long-to-int v1, v1

    if-eqz v1, :cond_91

    .line 1493
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0, v14, v3, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;II)V

    goto :goto_96

    .line 1495
    :cond_91
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0, v14, v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;I)V

    :goto_96
    return-void

    :catchall_97
    move-exception v0

    .line 1489
    :try_start_98
    monitor-exit v15
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw v0

    :catch_9a
    move-exception v0

    .line 1477
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not a valid package"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateSession(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V
    .registers 19

    move-object v0, p0

    move/from16 v1, p7

    .line 1681
    iget-object v2, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$3700(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1682
    :try_start_a
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v0, v1}, Lcom/android/server/autofill/AutofillManagerService;->access$3800(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz v3, :cond_25

    .line 1684
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v5

    move v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateSessionLocked(IILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)Z

    goto :goto_40

    .line 1686
    :cond_25
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_40

    const-string v0, "AutofillManagerService"

    .line 1687
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSession(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    :cond_40
    :goto_40
    monitor-exit v2

    return-void

    :catchall_42
    move-exception v0

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_a .. :try_end_44} :catchall_42

    throw v0
.end method
