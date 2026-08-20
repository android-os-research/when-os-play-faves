.class public Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;
.super Ljava/lang/Object;
.source "StartActivityInterceptNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;
    }
.end annotation


# static fields
.field public static final NAME_LIMIT:I = 0x64


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mStartActivityInterceptListeners:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStartActivityInterceptListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmStartActivityInterceptListeners(Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->mStartActivityInterceptListeners:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->mStartActivityInterceptListeners:Ljava/util/Map;

    .line 33
    iput-object p1, p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public notify(Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/content/pm/ActivityInfo;IZLandroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 21

    move-object v0, p0

    move-object/from16 v1, p6

    .line 66
    iget-object v2, v0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->mStartActivityInterceptListeners:Ljava/util/Map;

    monitor-enter v2

    .line 67
    :try_start_6
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->mStartActivityInterceptListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 68
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_4d

    .line 70
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;

    const/4 v3, 0x0

    if-eqz p2, :cond_2c

    .line 74
    :try_start_25
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_2c

    :catch_2a
    move-exception v0

    goto :goto_48

    :cond_2c
    :goto_2c
    move-object v6, v3

    const/4 v3, -0x1

    if-eqz v1, :cond_37

    .line 81
    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 82
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    move v10, v3

    move v11, v4

    goto :goto_39

    :cond_37
    move v10, v3

    move v11, v10

    .line 85
    :goto_39
    iget-object v4, v0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;

    move-object v5, p1

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v12, p7

    invoke-interface/range {v4 .. v12}, Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;->onStartActivityIntercepted(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/pm/ActivityInfo;IZIII)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_47} :catch_2a

    goto :goto_16

    .line 87
    :goto_48
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_16

    :cond_4c
    return-void

    :catchall_4d
    move-exception v0

    .line 68
    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0
.end method

.method public registerStartActivityInterceptListener(Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;Ljava/lang/String;)Z
    .registers 13

    .line 37
    iget-object v0, p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->mStartActivityInterceptListeners:Ljava/util/Map;

    monitor-enter v0

    .line 38
    :try_start_3
    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_32

    const/4 v2, 0x0

    .line 40
    :try_start_8
    new-instance v9, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;

    .line 41
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_16

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_16
    move-object v6, p2

    .line 42
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;-><init>(Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;Ljava/lang/String;II)V

    .line 44
    invoke-interface {v1, v9, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 45
    iget-object p0, p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->mStartActivityInterceptListeners:Ljava/util/Map;

    invoke-interface {p0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_2d} :catch_30
    .catchall {:try_start_8 .. :try_end_2d} :catchall_32

    const/4 p0, 0x1

    .line 46
    :try_start_2e
    monitor-exit v0

    return p0

    .line 48
    :catch_30
    monitor-exit v0

    return v2

    :catchall_32
    move-exception p0

    .line 50
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_32

    throw p0
.end method

.method public releaseAllListeners()V
    .registers 6

    .line 93
    iget-object v0, p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->mStartActivityInterceptListeners:Ljava/util/Map;

    monitor-enter v0

    .line 94
    :try_start_3
    iget-object v1, p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->mStartActivityInterceptListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_37

    .line 96
    :try_start_19
    iget-object v3, p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->mStartActivityInterceptListeners:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2a
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_2a} :catch_2b
    .catchall {:try_start_19 .. :try_end_2a} :catchall_37

    goto :goto_d

    :catch_2b
    move-exception v2

    .line 98
    :try_start_2c
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d

    .line 102
    :cond_30
    iget-object p0, p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->mStartActivityInterceptListeners:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 103
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_37

    throw p0
.end method

.method public unregisterStartActivityInterceptListener(Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;)Z
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->mStartActivityInterceptListeners:Ljava/util/Map;

    monitor-enter v0

    .line 55
    :try_start_3
    iget-object p0, p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->mStartActivityInterceptListeners:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;

    const/4 p1, 0x0

    if-eqz p0, :cond_1e

    .line 57
    iget-object v1, p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;

    invoke-interface {v1}, Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p0, 0x1

    .line 58
    monitor-exit v0

    return p0

    .line 60
    :cond_1e
    monitor-exit v0

    return p1

    :catchall_20
    move-exception p0

    .line 61
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method
