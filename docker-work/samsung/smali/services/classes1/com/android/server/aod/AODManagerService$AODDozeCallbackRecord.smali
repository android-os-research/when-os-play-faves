.class public Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;
.super Ljava/lang/Object;
.source "AODManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AODDozeCallbackRecord"
.end annotation


# static fields
.field public static final MSG_AOD_DOZE_ACQUIRED:I = 0x1

.field public static final MSG_AOD_DOZE_RELEASED:I = 0x2

.field public static final MSG_AOD_TOAST_REQUESTED:I = 0x3


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/aod/AODManagerService;

.field public final token:Landroid/os/IBinder;

.field public final uid:I


# direct methods
.method public static bridge synthetic -$$Nest$fgettoken(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleAODDozeAcquired(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->handleAODDozeAcquired()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAODDozeReleased(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->handleAODDozeReleased()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAODToastRequested(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;Lcom/samsung/android/aod/AODToast;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->handleAODToastRequested(Lcom/samsung/android/aod/AODToast;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;II)V
    .registers 6

    .line 1562
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1540
    new-instance v0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;

    invoke-static {p1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmLooper(Lcom/android/server/aod/AODManagerService;)Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;-><init>(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Landroid/os/Handler;

    .line 1563
    iput-object p2, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    .line 1564
    iput p3, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->pid:I

    .line 1565
    iput p4, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->uid:I

    if-eqz p2, :cond_26

    const/4 p1, 0x0

    .line 1568
    :try_start_19
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_26

    .line 1571
    :catch_1d
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AODListenerRecord : linkToDeath error"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 1638
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1640
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmAODDozeLocks(Lcom/android/server/aod/AODManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 1641
    :try_start_16
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2, v1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fputmAODCallback(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)V

    .line 1642
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_23

    .line 1643
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_23
    move-exception p0

    .line 1642
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final handleAODDozeAcquired()V
    .registers 3

    .line 1605
    :try_start_0
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    invoke-static {p0}, Lcom/samsung/android/aod/IAODDozeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODDozeCallback;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 1607
    invoke-interface {p0}, Lcom/samsung/android/aod/IAODDozeCallback;->onDozeAcquired()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_17

    :catch_c
    move-exception p0

    .line 1610
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "handleAODDozeAcquired : RemoteException : "

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    :goto_17
    return-void
.end method

.method public final handleAODDozeReleased()V
    .registers 3

    .line 1616
    :try_start_0
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    invoke-static {p0}, Lcom/samsung/android/aod/IAODDozeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODDozeCallback;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 1618
    invoke-interface {p0}, Lcom/samsung/android/aod/IAODDozeCallback;->onDozeReleased()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_17

    :catch_c
    move-exception p0

    .line 1621
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "handleAODDozeReleased : RemoteException : "

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    :goto_17
    return-void
.end method

.method public final handleAODToastRequested(Lcom/samsung/android/aod/AODToast;)V
    .registers 3

    .line 1627
    :try_start_0
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    invoke-static {p0}, Lcom/samsung/android/aod/IAODDozeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODDozeCallback;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 1629
    invoke-interface {p0, p1}, Lcom/samsung/android/aod/IAODDozeCallback;->onAODToastRequested(Lcom/samsung/android/aod/AODToast;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_17

    :catch_c
    move-exception p0

    .line 1632
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "handleAODDozeReleased : RemoteException : "

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    :goto_17
    return-void
.end method

.method public onAODDozeAcquired()V
    .registers 3

    .line 1576
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    .line 1577
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "onAODDozeAcquired : token is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1580
    :cond_f
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1581
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAODDozeReleased()V
    .registers 3

    .line 1585
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    .line 1586
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "onAODDozeReleased : token is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1589
    :cond_f
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1590
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAODToastRequested(Lcom/samsung/android/aod/AODToast;)V
    .registers 4

    .line 1594
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    .line 1595
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onAODDozeReleased : token is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1598
    :cond_f
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1599
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1600
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[callback: pid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") uid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->uid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
