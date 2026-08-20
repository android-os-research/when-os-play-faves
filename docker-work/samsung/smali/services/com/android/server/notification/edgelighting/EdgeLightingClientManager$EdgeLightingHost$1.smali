.class public Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;
.super Landroid/os/Handler;
.source "EdgeLightingClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Landroid/os/Looper;)V
    .registers 3

    .line 464
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;->this$1:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 468
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 469
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1b

    const/4 v2, 0x3

    if-eq v0, v2, :cond_f

    goto :goto_42

    .line 484
    :cond_f
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;->this$1:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    invoke-static {p0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->-$$Nest$m_onScreenChanged(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Z)V

    goto :goto_42

    .line 479
    :cond_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_42

    .line 480
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;->this$1:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->-$$Nest$m_onStopEdgeLighting(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;I)V

    goto :goto_42

    .line 471
    :cond_2b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;

    if-eqz v1, :cond_42

    .line 472
    check-cast v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;

    .line 473
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;->this$1:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 473
    invoke-static {p0, v1, v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->-$$Nest$m_onStartEdgeLighting(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    :cond_42
    :goto_42
    return-void
.end method
