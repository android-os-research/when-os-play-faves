.class public Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
.super Ljava/lang/Object;
.source "BroadcastRadioService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BcRadio2Srv"


# instance fields
.field public mDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field public final mLock:Ljava/lang/Object;

.field public final mModules:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/broadcastradio/hal2/RadioModule;",
            ">;"
        }
    .end annotation
.end field

.field public mNextModuleId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mServiceListener:Landroid/hidl/manager/V1_0/IServiceNotification$Stub;

.field public final mServiceNameToModuleIdMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7Y2GW55ON2cznoNIqb00IC7HUvE(Lcom/android/server/broadcastradio/hal2/RadioModule;)Landroid/hardware/radio/RadioManager$ModuleProperties;
    .registers 1

    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->lambda$listModules$0(Lcom/android/server/broadcastradio/hal2/RadioModule;)Landroid/hardware/radio/RadioManager$ModuleProperties;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeathRecipient(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Landroid/os/IHwBinder$DeathRecipient;
    .registers 1

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModules(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNextModuleId(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceNameToModuleIdMap(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceNameToModuleIdMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmNextModuleId(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .registers 5

    const-string v0, "BcRadio2Srv"

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 47
    iput v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceNameToModuleIdMap:Ljava/util/Map;

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    .line 57
    new-instance v1, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;

    invoke-direct {v1, p0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;-><init>(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceListener:Landroid/hidl/manager/V1_0/IServiceNotification$Stub;

    .line 97
    new-instance v1, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;

    invoke-direct {v1, p0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;-><init>(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 120
    iput p1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    .line 121
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    .line 123
    :try_start_28
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object p1

    if-nez p1, :cond_34

    const-string p0, "failed to get HIDL Service Manager"

    .line 125
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_34
    const-string p2, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    const-string v1, ""

    .line 128
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceListener:Landroid/hidl/manager/V1_0/IServiceNotification$Stub;

    invoke-interface {p1, p2, v1, p0}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3d} :catch_3e

    goto :goto_44

    :catch_3e
    move-exception p0

    const-string p1, "failed to register for service notifications: "

    .line 130
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_44
    return-void
.end method

.method public static synthetic lambda$listModules$0(Lcom/android/server/broadcastradio/hal2/RadioModule;)Landroid/hardware/radio/RadioManager$ModuleProperties;
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    return-object p0
.end method


# virtual methods
.method public addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
    .registers 8

    .line 178
    new-instance v0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p2, v1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;-><init>(Landroid/hardware/radio/IAnnouncementListener;Ljava/lang/Object;)V

    .line 180
    iget-object p2, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 181
    :try_start_a
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/broadcastradio/hal2/RadioModule;
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_3a

    .line 183
    :try_start_21
    invoke-virtual {v0, v2, p1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->watchModule(Lcom/android/server/broadcastradio/hal2/RadioModule;[I)V
    :try_end_24
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_21 .. :try_end_24} :catch_26
    .catchall {:try_start_21 .. :try_end_24} :catchall_3a

    const/4 v1, 0x1

    goto :goto_15

    :catch_26
    move-exception v2

    :try_start_27
    const-string v3, "BcRadio2Srv"

    const-string v4, "Announcements not supported for this module"

    .line 186
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 189
    :cond_2f
    monitor-exit p2
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_3a

    if-nez v1, :cond_39

    const-string p0, "BcRadio2Srv"

    const-string p1, "There are no HAL modules that support announcements"

    .line 191
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-object v0

    :catchall_3a
    move-exception p0

    .line 189
    :try_start_3b
    monitor-exit p2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public hasAnyModules()Z
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_3
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 150
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public hasModule(I)Z
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_3
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 144
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public listModules()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_3
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 137
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    monitor-exit v0

    return-object p0

    :catchall_22
    move-exception p0

    .line 138
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public openSession(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2c

    .line 162
    iget-object p3, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 163
    :try_start_8
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/broadcastradio/hal2/RadioModule;

    if-eqz p0, :cond_21

    .line 167
    monitor-exit p3
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_29

    .line 169
    invoke-virtual {p0, p4}, Lcom/android/server/broadcastradio/hal2/RadioModule;->openSession(Landroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/hal2/TunerSession;

    move-result-object p0

    if-eqz p2, :cond_20

    .line 171
    invoke-virtual {p0, p2}, Lcom/android/server/broadcastradio/hal2/TunerSession;->setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V

    :cond_20
    return-object p0

    .line 165
    :cond_21
    :try_start_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid module ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_29
    move-exception p0

    .line 167
    monitor-exit p3
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_29

    throw p0

    .line 158
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-audio sessions not supported with HAL 2.x"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
