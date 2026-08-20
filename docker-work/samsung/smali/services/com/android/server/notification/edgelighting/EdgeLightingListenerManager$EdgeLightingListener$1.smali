.class public Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;
.super Landroid/os/Handler;
.source "EdgeLightingListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;Landroid/os/Looper;)V
    .registers 3

    .line 152
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;->this$1:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 156
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 157
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    goto :goto_17

    .line 162
    :cond_c
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;->this$1:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    invoke-static {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->-$$Nest$m_onEdgeLightingStopped(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)V

    goto :goto_17

    .line 159
    :cond_12
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;->this$1:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    invoke-static {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->-$$Nest$m_onEdgeLightingStarted(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)V

    :goto_17
    return-void
.end method
