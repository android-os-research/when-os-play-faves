.class public final Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;
.super Ljava/lang/Object;
.source "DualDARComnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProxyAgentBindingChecker"
.end annotation


# static fields
.field public static final DELAY_MS:I = 0x3e8

.field public static final MSG_CHECK_BINDING:I = 0x2

.field public static final WAIT_FOR_MS:I = 0x7530


# instance fields
.field public final mCheckerLock:Ljava/lang/Object;

.field public final mHandler:Landroid/os/Handler;

.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Landroid/os/Handler;)V
    .registers 3

    .line 776
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 774
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mCheckerLock:Ljava/lang/Object;

    .line 777
    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getCheckerLock()Ljava/lang/Object;
    .registers 1

    .line 781
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mCheckerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public scheduleChecker(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_63

    .line 785
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_63

    :cond_a
    const-string v1, "DualDARComnService"

    .line 793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding Checker : Check binding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 794
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-static {v1, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->-$$Nest$mcheckProxyAgentBound(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 795
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mCheckerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2d
    const-string p1, "DualDARComnService"

    const-string v2, "Binding Checker : Found out bound agent"

    new-array v0, v0, [Ljava/lang/Object;

    .line 796
    invoke-static {p1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 797
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mCheckerLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 798
    monitor-exit v1

    goto :goto_62

    :catchall_3d
    move-exception p0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_2d .. :try_end_3f} :catchall_3d

    throw p0

    :cond_40
    const-string v1, "DualDARComnService"

    const-string v2, "Binding Checker : Maybe not bound yet"

    new-array v0, v0, [Ljava/lang/Object;

    .line 800
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 801
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 802
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 804
    :cond_57
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mHandler:Landroid/os/Handler;

    .line 805
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    .line 804
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_62
    return-void

    .line 786
    :cond_63
    :goto_63
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_66
    const-string v1, "DualDARComnService"

    const-string v2, "Binding Checker : Invalid agent... cancel scheduling"

    new-array v0, v0, [Ljava/lang/Object;

    .line 787
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 788
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mCheckerLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 789
    monitor-exit p1

    return-void

    :catchall_76
    move-exception p0

    .line 790
    monitor-exit p1
    :try_end_78
    .catchall {:try_start_66 .. :try_end_78} :catchall_76

    throw p0
.end method
