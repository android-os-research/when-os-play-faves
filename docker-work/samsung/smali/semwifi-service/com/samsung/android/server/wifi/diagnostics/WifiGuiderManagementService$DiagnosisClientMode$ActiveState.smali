.class Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;
.super Lcom/android/internal/util/State;
.source "WifiGuiderManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveState"
.end annotation


# static fields
.field static final SERVICE_ALIVE_TIME:J = 0xea60L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)V
    .registers 2

    .line 381
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private registerDelegation(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "WifiGuiderService"

    const-string v1, "registerDelegation "

    .line 473
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_e0

    .line 474
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_e0

    .line 479
    :cond_11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->-$$Nest$munregisterDelegationObservers(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)V

    .line 480
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->-$$Nest$munregisterDelegationBroadcast(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)V

    .line 482
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1f
    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cd

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "action"

    .line 483
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "issuedetector_report"

    .line 484
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 485
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->-$$Nest$fgetmDelegationReportIds(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    const-string v2, "report_ids"

    .line 486
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 488
    array-length v2, v1

    const/4 v3, 0x0

    :goto_4c
    if-ge v3, v2, :cond_1f

    aget v4, v1, v3

    .line 489
    iget-object v5, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->-$$Nest$fgetmDelegationReportIds(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_60
    const-string v3, "settings_observer"

    .line 492
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    const-string v2, "global_db_name"

    .line 493
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 494
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7e

    .line 495
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->-$$Nest$mregisterDelegationObserver(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1f

    :cond_7e
    const-string v2, "secure_db_name"

    .line 498
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 499
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_94

    .line 500
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->-$$Nest$mregisterDelegationObserver(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1f

    :cond_94
    const-string v2, "custom_uri_name"

    .line 503
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 504
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 505
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.samsung.server.wifi/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->-$$Nest$mregisterDelegationObserver(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 508
    :cond_bc
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 509
    iget-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->-$$Nest$fgetmDelegationBroadcasts(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1f

    .line 513
    :cond_cd
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->-$$Nest$mregisterDelegationBroadcast(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)V

    .line 514
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->this$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->-$$Nest$fputmIsRegistered(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;Z)V

    const-string p0, "registerDelegation success"

    .line 515
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e0
    :goto_e0
    const-string p0, "registerDelegation ignored, delegate action list is null"

    .line 475
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setServiceTimer()V
    .registers 5

    .line 468
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    const/4 v1, 0x5

    # invokes: Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->access$100(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;I)V

    .line 469
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->sendMessageDelayed(IJ)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 1

    .line 387
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    .line 388
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->setServiceTimer()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 394
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_ff

    const/4 v2, 0x2

    if-eq v0, v2, :cond_dd

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_a9

    const/4 v2, 0x4

    if-eq v0, v2, :cond_73

    const/4 p1, 0x5

    if-eq v0, p1, :cond_dd

    const/16 p1, 0x64

    if-eq v0, p1, :cond_ff

    const/16 p1, 0x65

    if-eq v0, p1, :cond_68

    const/16 p1, 0x68

    if-eq v0, p1, :cond_1f

    return v3

    .line 440
    :cond_1f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    iget-object v0, p1, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mClientService:Lcom/samsung/android/wifi/ISemWifiDiagnosticsClient;

    if-nez v0, :cond_37

    const-string p1, "WifiGuiderService"

    const-string v0, "unexpected state (diagnosis result), service is null"

    .line 441
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_ff

    .line 446
    :cond_37
    :try_start_37
    iget-object p1, p1, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->this$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->-$$Nest$fgetmResultLock(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3e} :catch_62
    .catch Ljava/lang/SecurityException; {:try_start_37 .. :try_end_3e} :catch_62

    .line 447
    :try_start_3e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->this$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->-$$Nest$fgetmCachedDiagnosisResults(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 448
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->this$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->-$$Nest$fgetmCachedDiagnosisResults(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mClientService:Lcom/samsung/android/wifi/ISemWifiDiagnosticsClient;

    .line 449
    invoke-interface {p0}, Lcom/samsung/android/wifi/ISemWifiDiagnosticsClient;->getDiagnosisResults()Ljava/util/List;

    move-result-object p0

    .line 448
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 450
    monitor-exit p1

    goto/16 :goto_ff

    :catchall_5f
    move-exception p0

    monitor-exit p1
    :try_end_61
    .catchall {:try_start_3e .. :try_end_61} :catchall_5f

    :try_start_61
    throw p0
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_62} :catch_62
    .catch Ljava/lang/SecurityException; {:try_start_61 .. :try_end_62} :catch_62

    :catch_62
    move-exception p0

    .line 452
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_ff

    .line 396
    :cond_68
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_ff

    .line 411
    :cond_73
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->setServiceTimer()V

    .line 412
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mClientService:Lcom/samsung/android/wifi/ISemWifiDiagnosticsClient;

    if-nez v0, :cond_8e

    const-string p1, "WifiGuiderService"

    const-string v0, "unexpected state (start diagnosis), service is null"

    .line 413
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_ff

    .line 418
    :cond_8e
    :try_start_8e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->this$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->-$$Nest$fgetmWifiIssueDetector(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;)Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    move-result-object p0

    const/16 v2, 0x1e

    .line 419
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->getRawData(I)Ljava/lang/String;

    move-result-object p0

    .line 418
    invoke-interface {v0, p1, p0}, Lcom/samsung/android/wifi/ISemWifiDiagnosticsClient;->runDiagnosis(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_a3} :catch_a4
    .catch Ljava/lang/SecurityException; {:try_start_8e .. :try_end_a3} :catch_a4

    goto :goto_ff

    :catch_a4
    move-exception p0

    .line 421
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ff

    .line 426
    :cond_a9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mClientService:Lcom/samsung/android/wifi/ISemWifiDiagnosticsClient;

    if-nez v0, :cond_c0

    const-string p1, "WifiGuiderService"

    const-string v0, "unexpected state (setup delegation), service is null"

    .line 427
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_ff

    .line 432
    :cond_c0
    :try_start_c0
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_c5

    move v3, v1

    .line 433
    :cond_c5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mClientService:Lcom/samsung/android/wifi/ISemWifiDiagnosticsClient;

    if-eqz v3, :cond_ce

    const-string v0, ""

    goto :goto_d0

    :cond_ce
    const-string v0, "2.2"

    :goto_d0
    invoke-interface {p1, v0}, Lcom/samsung/android/wifi/ISemWifiDiagnosticsClient;->setupDelegation(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->registerDelegation(Ljava/util/List;)V
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_d7} :catch_d8
    .catch Ljava/lang/SecurityException; {:try_start_c0 .. :try_end_d7} :catch_d8

    goto :goto_ff

    :catch_d8
    move-exception p0

    .line 435
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ff

    .line 402
    :cond_dd
    :try_start_dd
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->this$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->-$$Nest$fgetmServiceConnection(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_ee} :catch_ef

    goto :goto_f3

    :catch_ef
    move-exception p1

    .line 404
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 406
    :goto_f3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mClientService:Lcom/samsung/android/wifi/ISemWifiDiagnosticsClient;

    .line 407
    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_ff
    :goto_ff
    return v1
.end method
