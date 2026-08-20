.class public Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;
.super Lcom/android/server/remoteappmode/ListenerInfo;
.source "RotationChangeNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/remoteappmode/RotationChangeNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RotationChangedListenerInfo"
.end annotation


# instance fields
.field public listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

.field public mWatcher:Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;

.field public final synthetic this$0:Lcom/android/server/remoteappmode/RotationChangeNotifier;


# direct methods
.method public static bridge synthetic -$$Nest$fgetlistener(Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;)Lcom/samsung/android/remoteappmode/IRotationChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/remoteappmode/RotationChangeNotifier;Lcom/samsung/android/remoteappmode/IRotationChangeListener;Ljava/lang/String;III)V
    .registers 7

    .line 65
    iput-object p1, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->this$0:Lcom/android/server/remoteappmode/RotationChangeNotifier;

    .line 66
    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/remoteappmode/ListenerInfo;-><init>(Ljava/lang/String;II)V

    .line 67
    iput-object p2, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    .line 72
    invoke-super {p0}, Lcom/android/server/remoteappmode/ListenerInfo;->binderDied()V

    .line 73
    iget-object v0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->this$0:Lcom/android/server/remoteappmode/RotationChangeNotifier;

    invoke-static {v0}, Lcom/android/server/remoteappmode/RotationChangeNotifier;->-$$Nest$fgetmRotationChangedListeners(Lcom/android/server/remoteappmode/RotationChangeNotifier;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 74
    :try_start_a
    iget-object v1, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->this$0:Lcom/android/server/remoteappmode/RotationChangeNotifier;

    invoke-static {v1}, Lcom/android/server/remoteappmode/RotationChangeNotifier;->-$$Nest$fgetmRotationChangedListeners(Lcom/android/server/remoteappmode/RotationChangeNotifier;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    invoke-interface {v2}, Lcom/samsung/android/remoteappmode/IRotationChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_46

    .line 76
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->unregisterRotationWatcher()V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1d
    .catchall {:try_start_19 .. :try_end_1c} :catchall_46

    goto :goto_3a

    :catch_1d
    move-exception v1

    .line 78
    :try_start_1e
    invoke-static {}, Lcom/android/server/remoteappmode/RotationChangeNotifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " binderDied: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_1e .. :try_end_3b} :catchall_46

    .line 81
    iget-object v0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    invoke-interface {v0}, Lcom/samsung/android/remoteappmode/IRotationChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_46
    move-exception p0

    .line 80
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public registerRotationWatcher(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->mWatcher:Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;

    if-nez v0, :cond_10

    .line 87
    new-instance v0, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;

    invoke-direct {v0}, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;-><init>()V

    iput-object v0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->mWatcher:Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;

    .line 88
    iget-object p0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;->setRotationChangeListener(ILcom/samsung/android/remoteappmode/IRotationChangeListener;)V

    :cond_10
    return-void
.end method

.method public unregisterRotationWatcher()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    iget-object p0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->mWatcher:Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;

    if-nez p0, :cond_5

    return-void

    .line 96
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;->removeRotationChangeListenr()V

    return-void
.end method
