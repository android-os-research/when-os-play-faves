.class public final Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InputServiceConnection"
.end annotation


# instance fields
.field public final mComponent:Landroid/content/ComponentName;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .registers 4

    .line 3082
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3083
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    .line 3084
    iput p3, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$InputServiceConnection-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11

    .line 3092
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3093
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 3096
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3097
    monitor-exit v0

    return-void

    .line 3099
    :cond_1c
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 3100
    invoke-static {p2}, Landroid/media/tv/ITvInputService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputService;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;Landroid/media/tv/ITvInputService;)V

    .line 3103
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result p2

    if-eqz p2, :cond_5d

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcallback(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object p2

    if-nez p2, :cond_5d

    .line 3104
    new-instance p2, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    iget v5, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-direct {p2, v3, v4, v5}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    invoke-static {v2, p2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputcallback(Lcom/android/server/tv/TvInputManagerService$ServiceState;Lcom/android/server/tv/TvInputManagerService$ServiceCallback;)V
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_144

    .line 3106
    :try_start_49
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object p2

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcallback(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v3

    invoke-interface {p2, v3}, Landroid/media/tv/ITvInputService;->registerCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_54} :catch_55
    .catchall {:try_start_49 .. :try_end_54} :catchall_144

    goto :goto_5d

    :catch_55
    move-exception p2

    :try_start_56
    const-string v3, "TvInputManagerService"

    const-string v4, "error in registerCallback"

    .line 3108
    invoke-static {v3, v4, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3112
    :cond_5d
    :goto_5d
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3115
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6a
    :goto_6a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 3116
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v6

    iget v7, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-static {v5, v6, v4, v7}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mcreateSessionInternalLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z

    move-result v5

    if-nez v5, :cond_6a

    .line 3117
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 3121
    :cond_88
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 3122
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v5, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-static {v4, v3, v5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mremoveSessionStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V

    goto :goto_8c

    .line 3125
    :cond_a0
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_ac
    :goto_ac
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_df

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 3126
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ac

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetstate(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v4

    if-eqz v4, :cond_ac

    .line 3128
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetstate(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v3

    const/4 v6, 0x0

    invoke-static {v4, v1, v5, v3, v6}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mnotifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    goto :goto_ac

    .line 3133
    :cond_df
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result p1

    if-eqz p1, :cond_142

    .line 3134
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgethardwareInputMap(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 3135
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmTvInputHardwareManager(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager;->getHardwareList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_fa
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_117

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/tv/TvInputHardwareInfo;
    :try_end_106
    .catchall {:try_start_56 .. :try_end_106} :catchall_144

    .line 3137
    :try_start_106
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/media/tv/ITvInputService;->notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_10d
    .catch Landroid/os/RemoteException; {:try_start_106 .. :try_end_10d} :catch_10e
    .catchall {:try_start_106 .. :try_end_10d} :catchall_144

    goto :goto_fa

    :catch_10e
    move-exception p2

    :try_start_10f
    const-string v1, "TvInputManagerService"

    const-string v3, "error in notifyHardwareAdded"

    .line 3139
    invoke-static {v1, v3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fa

    .line 3142
    :cond_117
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmTvInputHardwareManager(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager;->getHdmiDeviceList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_125
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_142

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;
    :try_end_131
    .catchall {:try_start_10f .. :try_end_131} :catchall_144

    .line 3144
    :try_start_131
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_138
    .catch Landroid/os/RemoteException; {:try_start_131 .. :try_end_138} :catch_139
    .catchall {:try_start_131 .. :try_end_138} :catchall_144

    goto :goto_125

    :catch_139
    move-exception p1

    :try_start_13a
    const-string p2, "TvInputManagerService"

    const-string v1, "error in notifyHdmiDeviceAdded"

    .line 3146
    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_125

    .line 3150
    :cond_142
    monitor-exit v0

    return-void

    :catchall_144
    move-exception p0

    monitor-exit v0
    :try_end_146
    .catchall {:try_start_13a .. :try_end_146} :catchall_144

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 3158
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 3162
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3163
    :try_start_f
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-static {p1, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p1

    .line 3164
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-eqz p1, :cond_3b

    const/4 v1, 0x1

    .line 3166
    invoke-static {p1, v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputreconnecting(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)V

    const/4 v1, 0x0

    .line 3167
    invoke-static {p1, v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputbound(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)V

    const/4 v1, 0x0

    .line 3168
    invoke-static {p1, v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;Landroid/media/tv/ITvInputService;)V

    .line 3169
    invoke-static {p1, v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputcallback(Lcom/android/server/tv/TvInputManagerService$ServiceState;Lcom/android/server/tv/TvInputManagerService$ServiceCallback;)V

    .line 3171
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-static {v2, p1, v1, p0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mabortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    .line 3173
    :cond_3b
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p0

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_f .. :try_end_3f} :catchall_3d

    throw p0

    .line 3159
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched ComponentName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (expected), "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (actual)."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
