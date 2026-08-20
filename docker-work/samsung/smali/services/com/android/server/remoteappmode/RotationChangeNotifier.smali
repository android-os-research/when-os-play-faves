.class public Lcom/android/server/remoteappmode/RotationChangeNotifier;
.super Ljava/lang/Object;
.source "RotationChangeNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;
    }
.end annotation


# static fields
.field public static final NAME_LIMIT:I = 0x64

.field public static final TAG:Ljava/lang/String; = "RotationChangeNotifier"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mRotationChangedListeners:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRotationChangedListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmRotationChangedListeners(Lcom/android/server/remoteappmode/RotationChangeNotifier;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier;->mRotationChangedListeners:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/remoteappmode/RotationChangeNotifier;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier;->mRotationChangedListeners:Ljava/util/Map;

    .line 27
    iput-object p1, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public registerRotationChangeListener(Lcom/samsung/android/remoteappmode/IRotationChangeListener;Ljava/lang/String;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier;->mRotationChangedListeners:Ljava/util/Map;

    monitor-enter v0

    .line 32
    :try_start_3
    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/IRotationChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_36

    const/4 v2, 0x0

    .line 34
    :try_start_8
    new-instance v10, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;

    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_16

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_16
    move-object v6, p2

    .line 36
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object v3, v10

    move-object v4, p0

    move-object v5, p1

    move v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;-><init>(Lcom/android/server/remoteappmode/RotationChangeNotifier;Lcom/samsung/android/remoteappmode/IRotationChangeListener;Ljava/lang/String;III)V

    .line 38
    invoke-virtual {v10, p3}, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->registerRotationWatcher(I)V

    .line 39
    invoke-interface {v1, v10, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 40
    iget-object p0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier;->mRotationChangedListeners:Ljava/util/Map;

    invoke-interface {p0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_31} :catch_34
    .catchall {:try_start_8 .. :try_end_31} :catchall_36

    const/4 p0, 0x1

    .line 41
    :try_start_32
    monitor-exit v0

    return p0

    .line 43
    :catch_34
    monitor-exit v0

    return v2

    :catchall_36
    move-exception p0

    .line 45
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public unregisterRotationChangeListener(Lcom/samsung/android/remoteappmode/IRotationChangeListener;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier;->mRotationChangedListeners:Ljava/util/Map;

    monitor-enter v0

    .line 50
    :try_start_3
    iget-object p0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier;->mRotationChangedListeners:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/IRotationChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;

    const/4 p1, 0x0

    if-eqz p0, :cond_23

    .line 53
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->unregisterRotationWatcher()V

    .line 54
    invoke-static {p0}, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->-$$Nest$fgetlistener(Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;)Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/remoteappmode/IRotationChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p0, 0x1

    .line 55
    monitor-exit v0

    return p0

    .line 57
    :cond_23
    monitor-exit v0

    return p1

    :catchall_25
    move-exception p0

    .line 58
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method
