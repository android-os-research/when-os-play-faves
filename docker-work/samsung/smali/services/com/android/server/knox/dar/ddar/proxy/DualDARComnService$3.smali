.class public Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;
.super Landroid/os/Handler;
.source "DualDARComnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Landroid/os/Looper;)V
    .registers 3

    .line 144
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 147
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_20

    .line 153
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 154
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->-$$Nest$fgetmBindingChecker(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;)Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->scheduleChecker(Ljava/lang/String;)V

    goto :goto_20

    .line 149
    :cond_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 150
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->handleAgentDied(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)V

    :goto_20
    return-void
.end method
