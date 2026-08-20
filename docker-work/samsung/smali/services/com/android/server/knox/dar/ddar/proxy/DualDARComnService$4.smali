.class public Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;
.super Ljava/lang/Object;
.source "DualDARComnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->relayAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

.field public final synthetic val$agentName:Ljava/lang/String;

.field public final synthetic val$command:Ljava/lang/String;

.field public final synthetic val$params:Landroid/os/Bundle;

.field public final synthetic val$svcName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 519
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$agentName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$svcName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$command:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$params:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "relayAsync from bg thread, relay start to System proxy agent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$agentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DualDARComnService"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 524
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-static {v0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->-$$Nest$fgetmContext(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$svcName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$command:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$params:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "relayAsync from bg thread, relay end to System proxy agent : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$agentName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
