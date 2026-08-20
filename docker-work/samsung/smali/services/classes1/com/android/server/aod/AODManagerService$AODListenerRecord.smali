.class public Lcom/android/server/aod/AODManagerService$AODListenerRecord;
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
    name = "AODListenerRecord"
.end annotation


# instance fields
.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/aod/AODManagerService;

.field public final token:Landroid/os/IBinder;

.field public final uid:I


# direct methods
.method public static bridge synthetic -$$Nest$fgettoken(Lcom/android/server/aod/AODManagerService$AODListenerRecord;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;II)V
    .registers 5

    .line 1484
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1485
    iput-object p2, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    .line 1486
    iput p3, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->pid:I

    .line 1487
    iput p4, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->uid:I

    if-eqz p2, :cond_1b

    const/4 p1, 0x0

    .line 1490
    :try_start_e
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_1b

    .line 1493
    :catch_12
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AODListenerRecord : linkToDeath error"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_1b
    return-void
.end method


# virtual methods
.method public final _onScreenTurningOn()V
    .registers 3

    .line 1516
    :try_start_0
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    invoke-static {p0}, Lcom/samsung/android/aod/IAODCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODCallback;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 1518
    invoke-interface {p0}, Lcom/samsung/android/aod/IAODCallback;->onScreenTurningOn()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_16

    :catch_c
    move-exception p0

    .line 1521
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_onScreenTurningOn : RemoteException : "

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    :goto_16
    return-void
.end method

.method public binderDied()V
    .registers 3

    .line 1499
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/aod/AODManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 1501
    :try_start_10
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/aod/AODManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1502
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_21

    .line 1503
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_21
    move-exception p0

    .line 1502
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public onScreenTurningOn()V
    .registers 2

    .line 1507
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    .line 1508
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "onScreenTurningOn : token is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1511
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->_onScreenTurningOn()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  [Listener: pid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") uid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->uid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
