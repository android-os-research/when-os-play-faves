.class public Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;
.super Ljava/lang/Object;
.source "DisplayHashController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayHashController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayHashingServiceConnection"
.end annotation


# instance fields
.field public mQueuedCommands:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mServiceConnectionLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DisplayHashController$Command;",
            ">;"
        }
    .end annotation
.end field

.field public mRemoteService:Landroid/service/displayhash/IDisplayHashingService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mServiceConnectionLock"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/wm/DisplayHashController;


# direct methods
.method public static bridge synthetic -$$Nest$mrunCommandLocked(Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;Lcom/android/server/wm/DisplayHashController$Command;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->runCommandLocked(Lcom/android/server/wm/DisplayHashController$Command;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayHashController;)V
    .registers 2

    .line 462
    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->this$0:Lcom/android/server/wm/DisplayHashController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayHashController;Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;-><init>(Lcom/android/server/wm/DisplayHashController;)V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 3

    .line 504
    iget-object p1, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->this$0:Lcom/android/server/wm/DisplayHashController;

    invoke-static {p1}, Lcom/android/server/wm/DisplayHashController;->-$$Nest$fgetmServiceConnectionLock(Lcom/android/server/wm/DisplayHashController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 v0, 0x0

    .line 505
    :try_start_8
    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mRemoteService:Landroid/service/displayhash/IDisplayHashingService;

    .line 506
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 3

    .line 512
    iget-object p1, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->this$0:Lcom/android/server/wm/DisplayHashController;

    invoke-static {p1}, Lcom/android/server/wm/DisplayHashController;->-$$Nest$fgetmServiceConnectionLock(Lcom/android/server/wm/DisplayHashController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 v0, 0x0

    .line 513
    :try_start_8
    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mRemoteService:Landroid/service/displayhash/IDisplayHashingService;

    .line 514
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9

    .line 472
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->this$0:Lcom/android/server/wm/DisplayHashController;

    invoke-static {v0}, Lcom/android/server/wm/DisplayHashController;->-$$Nest$fgetmServiceConnectionLock(Lcom/android/server/wm/DisplayHashController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 473
    :try_start_7
    invoke-static {p2}, Landroid/service/displayhash/IDisplayHashingService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/displayhash/IDisplayHashingService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mRemoteService:Landroid/service/displayhash/IDisplayHashingService;

    .line 474
    iget-object p2, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mQueuedCommands:Ljava/util/ArrayList;

    if-eqz p2, :cond_4b

    .line 475
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_16
    if-ge v1, p2, :cond_48

    .line 478
    iget-object v2, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mQueuedCommands:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayHashController$Command;
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_4d

    .line 481
    :try_start_20
    iget-object v3, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mRemoteService:Landroid/service/displayhash/IDisplayHashingService;

    invoke-interface {v2, v3}, Lcom/android/server/wm/DisplayHashController$Command;->run(Landroid/service/displayhash/IDisplayHashingService;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26
    .catchall {:try_start_20 .. :try_end_25} :catchall_4d

    goto :goto_45

    :catch_26
    move-exception v2

    :try_start_27
    const-string v3, "WindowManager"

    .line 483
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception calling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_48
    const/4 p1, 0x0

    .line 486
    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mQueuedCommands:Ljava/util/ArrayList;

    .line 490
    :cond_4b
    monitor-exit v0

    return-void

    :catchall_4d
    move-exception p0

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_27 .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 496
    iget-object p1, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->this$0:Lcom/android/server/wm/DisplayHashController;

    invoke-static {p1}, Lcom/android/server/wm/DisplayHashController;->-$$Nest$fgetmServiceConnectionLock(Lcom/android/server/wm/DisplayHashController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 v0, 0x0

    .line 497
    :try_start_8
    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mRemoteService:Landroid/service/displayhash/IDisplayHashingService;

    .line 498
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final runCommandLocked(Lcom/android/server/wm/DisplayHashController$Command;)V
    .registers 4

    .line 521
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mRemoteService:Landroid/service/displayhash/IDisplayHashingService;

    if-nez v0, :cond_16

    .line 523
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mQueuedCommands:Ljava/util/ArrayList;

    if-nez v0, :cond_10

    .line 524
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mQueuedCommands:Ljava/util/ArrayList;

    .line 526
    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mQueuedCommands:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 530
    :cond_16
    :try_start_16
    invoke-interface {p1, v0}, Lcom/android/server/wm/DisplayHashController$Command;->run(Landroid/service/displayhash/IDisplayHashingService;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_31

    :catch_1a
    move-exception p0

    .line 532
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception calling service: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    return-void
.end method
