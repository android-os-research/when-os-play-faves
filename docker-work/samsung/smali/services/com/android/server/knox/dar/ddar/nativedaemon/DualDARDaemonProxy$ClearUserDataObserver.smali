.class public Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "DualDARDaemonProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClearUserDataObserver"
.end annotation


# instance fields
.field public finished:Z

.field public packageName:Ljava/lang/String;

.field public success:Z

.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;)V
    .registers 2

    .line 613
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->this$0:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    const/4 p1, 0x0

    .line 614
    iput-boolean p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->finished:Z

    .line 616
    iput-boolean p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->success:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;-><init>(Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;)V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 4

    .line 619
    monitor-enter p0

    const/4 v0, 0x1

    .line 620
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->finished:Z

    .line 621
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->packageName:Ljava/lang/String;

    .line 622
    iput-boolean p2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->success:Z

    .line 623
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 624
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_d

    throw p1
.end method
