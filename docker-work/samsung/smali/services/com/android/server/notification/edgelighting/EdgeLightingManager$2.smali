.class public Lcom/android/server/notification/edgelighting/EdgeLightingManager$2;
.super Landroid/content/BroadcastReceiver;
.source "EdgeLightingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 125
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 126
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    invoke-static {p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->-$$Nest$fgetmEdgeLightingClientManager(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->onScreenChanged(Z)V

    .line 127
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    const-wide/16 p1, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->-$$Nest$fputmScreenOnTimeStamp(Lcom/android/server/notification/edgelighting/EdgeLightingManager;J)V

    goto :goto_39

    :cond_1e
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 128
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 129
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    invoke-static {p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->-$$Nest$fgetmEdgeLightingClientManager(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->onScreenChanged(Z)V

    .line 130
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->-$$Nest$fputmScreenOnTimeStamp(Lcom/android/server/notification/edgelighting/EdgeLightingManager;J)V

    :cond_39
    :goto_39
    return-void
.end method
