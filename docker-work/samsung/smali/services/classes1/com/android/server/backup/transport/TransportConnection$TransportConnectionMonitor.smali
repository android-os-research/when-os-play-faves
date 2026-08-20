.class public Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;
.super Ljava/lang/Object;
.source "TransportConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/transport/TransportConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransportConnectionMonitor"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mTransportClientRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/backup/transport/TransportConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/backup/transport/TransportConnection;)V
    .registers 3

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput-object p1, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mContext:Landroid/content/Context;

    .line 668
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mTransportClientRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;-><init>(Landroid/content/Context;Lcom/android/server/backup/transport/TransportConnection;)V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    .line 697
    iget-object p1, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mTransportClientRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/backup/transport/TransportConnection;

    if-nez p1, :cond_10

    const-string p1, "TransportConnection.onBindingDied()"

    .line 699
    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->referenceLost(Ljava/lang/String;)V

    return-void

    .line 702
    :cond_10
    invoke-static {p1}, Lcom/android/server/backup/transport/TransportConnection;->-$$Nest$monBindingDied(Lcom/android/server/backup/transport/TransportConnection;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 673
    iget-object p1, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mTransportClientRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/backup/transport/TransportConnection;

    if-nez p1, :cond_10

    const-string p1, "TransportConnection.onServiceConnected()"

    .line 675
    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->referenceLost(Ljava/lang/String;)V

    return-void

    .line 681
    :cond_10
    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 682
    invoke-static {p1, p2}, Lcom/android/server/backup/transport/TransportConnection;->-$$Nest$monServiceConnected(Lcom/android/server/backup/transport/TransportConnection;Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 687
    iget-object p1, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mTransportClientRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/backup/transport/TransportConnection;

    if-nez p1, :cond_10

    const-string p1, "TransportConnection.onServiceDisconnected()"

    .line 689
    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->referenceLost(Ljava/lang/String;)V

    return-void

    .line 692
    :cond_10
    invoke-static {p1}, Lcom/android/server/backup/transport/TransportConnection;->-$$Nest$monServiceDisconnected(Lcom/android/server/backup/transport/TransportConnection;)V

    return-void
.end method

.method public final referenceLost(Ljava/lang/String;)V
    .registers 3

    .line 707
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 708
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " called but TransportClient reference has been GC\'ed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    const-string v0, "TransportConnection"

    invoke-static {p1, v0, p0}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
