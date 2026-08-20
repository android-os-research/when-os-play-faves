.class public Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;
.super Landroid/hardware/radio/IRadioService$Stub;
.source "BroadcastRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/broadcastradio/BroadcastRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/BroadcastRadioService;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-direct {p0}, Landroid/hardware/radio/IRadioService$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;-><init>(Lcom/android/server/broadcastradio/BroadcastRadioService;)V

    return-void
.end method


# virtual methods
.method public addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
    .registers 5

    .line 107
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->enforcePolicyAccess()V

    .line 111
    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->-$$Nest$fgetmLock(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 112
    :try_start_10
    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->-$$Nest$fgetmHal2(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->hasAnyModules()Z

    move-result v1

    if-nez v1, :cond_30

    const-string p1, "BcRadioSrv"

    const-string v1, "There are no HAL 2.x modules registered"

    .line 113
    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance p1, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    iget-object p0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {p0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->-$$Nest$fgetmLock(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;-><init>(Landroid/hardware/radio/IAnnouncementListener;Ljava/lang/Object;)V

    monitor-exit v0

    return-object p1

    .line 117
    :cond_30
    iget-object p0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {p0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->-$$Nest$fgetmHal2(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_3c
    move-exception p0

    .line 118
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_10 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public final enforcePolicyAccess()V
    .registers 2

    .line 69
    iget-object p0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.ACCESS_BROADCAST_RADIO"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_f

    return-void

    .line 71
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "ACCESS_BROADCAST_RADIO permission not granted"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public listModules()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->enforcePolicyAccess()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->-$$Nest$fgetmV1Modules(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    iget-object p0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {p0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->-$$Nest$fgetmHal2(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->listModules()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->enforcePolicyAccess()V

    if-eqz p4, :cond_33

    .line 92
    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->-$$Nest$fgetmLock(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 93
    :try_start_c
    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->-$$Nest$fgetmHal2(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->hasModule(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 94
    iget-object p0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {p0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->-$$Nest$fgetmHal2(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->openSession(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 96
    :cond_24
    iget-object p0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {p0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->-$$Nest$fgetmHal1(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_30
    move-exception p0

    .line 98
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_30

    throw p0

    .line 90
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
