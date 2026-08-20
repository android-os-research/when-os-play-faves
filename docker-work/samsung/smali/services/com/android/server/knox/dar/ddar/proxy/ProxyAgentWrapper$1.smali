.class public Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;
.super Ljava/lang/Object;
.source "ProxyAgentWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 5

    const-string p1, "KnoxService::ProxyAgentWrapper"

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBindingDied : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fgetmInfo(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 188
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter p1

    .line 190
    :try_start_29
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fputmProxyAgent(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;)V

    .line 191
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v0, v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fputmBindPending(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Z)V

    .line 192
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$mtriggerRestart(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V

    .line 194
    monitor-exit p1

    return-void

    :catchall_3b
    move-exception p0

    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_29 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 5

    const-string p1, "KnoxService::ProxyAgentWrapper"

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNullBinding : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fgetmInfo(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 176
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter p1

    .line 178
    :try_start_29
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fputmProxyAgent(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;)V

    .line 179
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v0, v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fputmBindPending(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Z)V

    .line 180
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$mtriggerRestart(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V

    .line 182
    monitor-exit p1

    return-void

    :catchall_3b
    move-exception p0

    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_29 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const-string p1, "KnoxService::ProxyAgentWrapper"

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Knox Proxy Agent started : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fgetmInfo(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 142
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fgetmService(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter p1

    .line 145
    :try_start_36
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p2}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fputmProxyAgent(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;)V

    .line 146
    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p2}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fgetmProxyAgent(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    move-result-object p2

    if-nez p2, :cond_53

    const-string p0, "KnoxService::ProxyAgentWrapper"

    const-string/jumbo p2, "onServiceConnected: Unable to find Knox Proxy Agent!"

    new-array v0, v1, [Ljava/lang/Object;

    .line 147
    invoke-static {p0, p2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 148
    monitor-exit p1

    return-void

    .line 150
    :cond_53
    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p2, v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fputmBindPending(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Z)V

    .line 151
    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p2, v0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fputmIsNotify(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Z)V

    .line 152
    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object p2, p2, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 153
    monitor-exit p1
    :try_end_65
    .catchall {:try_start_36 .. :try_end_65} :catchall_78

    .line 155
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fgetmIsReconnection(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)Z

    move-result p1

    if-eqz p1, :cond_77

    .line 156
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$monAgentReconnected(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V

    .line 157
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p0, v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fputmIsReconnection(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Z)V

    :cond_77
    return-void

    :catchall_78
    move-exception p0

    .line 153
    :try_start_79
    monitor-exit p1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    const-string p1, "KnoxService::ProxyAgentWrapper"

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Knox Proxy Agent disconnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fgetmInfo(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 164
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter p1

    .line 166
    :try_start_28
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fputmProxyAgent(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;)V

    .line 167
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v0, v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fputmBindPending(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Z)V

    .line 168
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$mtriggerRestart(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V

    .line 170
    monitor-exit p1

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_28 .. :try_end_3c} :catchall_3a

    throw p0
.end method
