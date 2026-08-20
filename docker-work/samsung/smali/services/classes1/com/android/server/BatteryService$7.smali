.class public Lcom/android/server/BatteryService$7;
.super Landroid/os/Handler;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->startCallThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/os/Looper;)V
    .registers 3

    .line 835
    iput-object p1, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 837
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_12

    if-eq p1, v0, :cond_b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_12

    goto :goto_17

    .line 844
    :cond_b
    iget-object p0, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/BatteryService;->-$$Nest$msetCallWirelessPowerSharingExternelEvent(Lcom/android/server/BatteryService;Z)V

    goto :goto_17

    .line 840
    :cond_12
    iget-object p0, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0, v0}, Lcom/android/server/BatteryService;->-$$Nest$msetCallWirelessPowerSharingExternelEvent(Lcom/android/server/BatteryService;Z)V

    :goto_17
    return-void
.end method
