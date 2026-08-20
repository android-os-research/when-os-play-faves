.class public Lcom/att/iqi/libs/IQIServiceBroker$BinderService;
.super Lcom/att/iqi/IIQIBroker$Stub;
.source "IQIServiceBroker.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/libs/IQIServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BinderService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/att/iqi/libs/IQIServiceBroker;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-direct {p0}, Lcom/att/iqi/IIQIBroker$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public disableService()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 528
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmContext(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/att/iqi/libs/IQIServiceBroker$BinderService$1;

    invoke-direct {v2, p0, v0}, Lcom/att/iqi/libs/IQIServiceBroker$BinderService$1;-><init>(Lcom/att/iqi/libs/IQIServiceBroker$BinderService;Landroid/os/Message;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.att.iqi.action.UPLOAD_COMPLETE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 536
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 538
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object p0

    invoke-interface {p0}, Lcom/att/iqi/IIQIService;->disableService()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_41

    :catch_35
    move-exception p0

    .line 541
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "disableService failed"

    invoke-static {v0, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_41
    :goto_41
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 547
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "IQIServiceBroker"

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    if-nez p0, :cond_f

    return-void

    .line 549
    :cond_f
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p0

    if-nez p0, :cond_16

    return-void

    .line 551
    :cond_16
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6b

    const/4 p0, 0x0

    move p1, p0

    .line 553
    :goto_1e
    array-length v0, p3

    if-ge p1, v0, :cond_6b

    .line 554
    aget-object v0, p3, p1

    const-string v1, "-h"

    .line 555
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 556
    invoke-static {p2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$smdumpHelp(Ljava/io/PrintWriter;)V

    goto :goto_46

    :cond_2f
    const-string v1, "--concierge"

    .line 557
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 558
    invoke-static {p2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$smprintConciergeVersion(Ljava/io/PrintWriter;)V

    goto :goto_46

    :cond_3b
    const-string v1, "-v"

    .line 559
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 560
    invoke-static {p2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$smprintArtifactsVersion(Ljava/io/PrintWriter;)V

    :goto_46
    add-int/lit8 p1, p1, 0x1

    goto :goto_1e

    .line 561
    :cond_49
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6b

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x2d

    if-ne p0, p1, :cond_6b

    .line 562
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown option: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6b
    return-void
.end method

.method public finalize()V
    .registers 1

    .line 305
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "Finalize BinderService"

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public forceStopService()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    invoke-interface {v0}, Lcom/att/iqi/IIQIService;->forceStopService()V

    .line 515
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x1

    .line 516
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0xfa0

    .line 515
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_2c

    :catch_20
    move-exception p0

    .line 520
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "forceStopService failed"

    invoke-static {v0, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public getTimestamp()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    :try_start_0
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object p0

    invoke-interface {p0}, Lcom/att/iqi/IIQIService;->getTimestamp()J

    move-result-wide v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-wide v0

    :catch_b
    move-exception p0

    .line 471
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "getTimestamp failed"

    invoke-static {v0, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 334
    :try_start_1
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMetricQueryCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_4c

    .line 335
    :try_start_8
    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMetricQueryCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v2

    .line 336
    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    if-nez v2, :cond_2c

    .line 339
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 340
    iget-object v3, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v3}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMetricQueryCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 342
    :cond_2c
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v3

    .line 343
    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 346
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    if-ne v2, v3, :cond_3c

    move v0, v4

    .line 349
    :cond_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_49

    if-eqz v0, :cond_59

    .line 351
    :try_start_3f
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/att/iqi/IIQIService;->registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_48} :catch_4c

    goto :goto_59

    :catchall_49
    move-exception p0

    .line 349
    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    :try_start_4b
    throw p0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4c} :catch_4c

    :catch_4c
    move-exception p0

    .line 355
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_59

    const-string/jumbo p1, "registerMetricQueryCallback failed"

    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_59
    :goto_59
    return-void
.end method

.method public registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 383
    :try_start_1
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMetricSourcingCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_4c

    .line 384
    :try_start_8
    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMetricSourcingCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v2

    .line 385
    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    if-nez v2, :cond_2c

    .line 388
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 389
    iget-object v3, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v3}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMetricSourcingCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 391
    :cond_2c
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v3

    .line 392
    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 395
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    if-ne v2, v3, :cond_3c

    move v0, v4

    .line 398
    :cond_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_49

    if-eqz v0, :cond_59

    .line 400
    :try_start_3f
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/att/iqi/IIQIService;->registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_48} :catch_4c

    goto :goto_59

    :catchall_49
    move-exception p0

    .line 398
    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    :try_start_4b
    throw p0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4c} :catch_4c

    :catch_4c
    move-exception p0

    .line 404
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_59

    const-string/jumbo p1, "registerMetricSourcingCallback failed"

    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_59
    :goto_59
    return-void
.end method

.method public registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 432
    :try_start_1
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmProfileChangeCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_3a

    .line 433
    :try_start_8
    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmProfileChangeCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    .line 434
    iget-object v3, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v3}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmProfileChangeCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 437
    iget-object v3, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v3}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmProfileChangeCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    if-ne v3, v2, :cond_2a

    move v0, v4

    .line 441
    :cond_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_37

    if-eqz v0, :cond_47

    .line 443
    :try_start_2d
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIService;->registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_36} :catch_3a

    goto :goto_47

    :catchall_37
    move-exception p0

    .line 441
    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    :try_start_39
    throw p0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3a} :catch_3a

    :catch_3a
    move-exception p0

    .line 447
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_47

    const-string/jumbo p1, "registerProfileChangedCallback failed"

    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_47
    :goto_47
    return-void
.end method

.method public registerServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmServiceStateChangeList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/ArraySet;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 482
    :try_start_8
    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmServiceStateChangeList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_15
    .catchall {:try_start_8 .. :try_end_12} :catchall_13

    goto :goto_23

    :catchall_13
    move-exception p0

    goto :goto_4b

    :catch_15
    move-exception v2

    .line 487
    :try_start_16
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v3

    if-eqz v3, :cond_22

    const-string/jumbo v3, "registerServiceChangedCallback failed"

    invoke-static {v3, v2}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_22
    move v2, v1

    .line 489
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_13

    if-eqz v2, :cond_4a

    .line 491
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "Call service changed callback now"

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 493
    :cond_31
    :try_start_31
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmImplementingBinderInterface(Lcom/att/iqi/libs/IQIServiceBroker;)Lcom/att/iqi/IIQIService;

    move-result-object p0

    if-eqz p0, :cond_3a

    const/4 v1, 0x1

    :cond_3a
    invoke-interface {p1, v1}, Lcom/att/iqi/IServiceStateChangeCallback;->onServiceChange(Z)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3d} :catch_3e

    goto :goto_4a

    :catch_3e
    move-exception p0

    .line 495
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_4a

    const-string p1, "notifyServiceState failed"

    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4a
    :goto_4a
    return-void

    .line 489
    :goto_4b
    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_13

    throw p0
.end method

.method public shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    :try_start_0
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIService;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 314
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_18

    const-string/jumbo p1, "shouldSubmitMetric failed"

    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public submitMetric(Lcom/att/iqi/lib/Metric;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    :try_start_0
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIService;->submitMetric(Lcom/att/iqi/lib/Metric;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_17

    :catch_a
    move-exception p0

    .line 325
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_17

    const-string/jumbo p1, "submitMetric failed"

    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/att/iqi/IIQIService;->unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    .line 365
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMetricQueryCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_2a

    .line 366
    :try_start_10
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMetricQueryCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object p0

    .line 367
    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_25

    .line 369
    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 371
    :cond_25
    monitor-exit v0

    goto :goto_37

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    :try_start_29
    throw p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception p0

    .line 374
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_37

    const-string/jumbo p1, "unregisterMetricQueryCallback failed"

    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_37
    :goto_37
    return-void
.end method

.method public unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/att/iqi/IIQIService;->unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    .line 414
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMetricSourcingCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_2a

    .line 415
    :try_start_10
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMetricSourcingCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object p0

    .line 416
    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_25

    .line 418
    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 420
    :cond_25
    monitor-exit v0

    goto :goto_37

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    :try_start_29
    throw p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception p0

    .line 423
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_37

    const-string/jumbo p1, "unregisterMetricSourcingCallback failed"

    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_37
    :goto_37
    return-void
.end method

.method public unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/att/iqi/IIQIService;->unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V

    .line 456
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmProfileChangeCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_1e

    .line 457
    :try_start_10
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmProfileChangeCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 458
    monitor-exit v0

    goto :goto_2b

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception p0

    .line 461
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string/jumbo p1, "unregisterProfileChangedCallback failed"

    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public unregisterServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmServiceStateChangeList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/ArraySet;

    move-result-object v0

    monitor-enter v0

    .line 504
    :try_start_7
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmServiceStateChangeList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/ArraySet;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 505
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method
