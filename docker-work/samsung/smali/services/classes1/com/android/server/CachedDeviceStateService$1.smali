.class public Lcom/android/server/CachedDeviceStateService$1;
.super Landroid/content/BroadcastReceiver;
.source "CachedDeviceStateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CachedDeviceStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/CachedDeviceStateService;


# direct methods
.method public constructor <init>(Lcom/android/server/CachedDeviceStateService;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_60

    goto :goto_32

    :sswitch_12
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_32

    :cond_1b
    const/4 v3, 0x2

    goto :goto_32

    :sswitch_1d
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_32

    :cond_26
    move v3, v1

    goto :goto_32

    :sswitch_28
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_32

    :cond_31
    move v3, v2

    :goto_32
    packed-switch v3, :pswitch_data_6e

    goto :goto_5e

    .line 51
    :pswitch_36
    iget-object p0, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    invoke-static {p0}, Lcom/android/server/CachedDeviceStateService;->-$$Nest$fgetmDeviceState(Lcom/android/server/CachedDeviceStateService;)Lcom/android/internal/os/CachedDeviceState;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/internal/os/CachedDeviceState;->setScreenInteractive(Z)V

    goto :goto_5e

    .line 45
    :pswitch_40
    iget-object p0, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    invoke-static {p0}, Lcom/android/server/CachedDeviceStateService;->-$$Nest$fgetmDeviceState(Lcom/android/server/CachedDeviceStateService;)Lcom/android/internal/os/CachedDeviceState;

    move-result-object p0

    const-string/jumbo p1, "plugged"

    .line 46
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_50

    goto :goto_51

    :cond_50
    move v1, v2

    .line 45
    :goto_51
    invoke-virtual {p0, v1}, Lcom/android/internal/os/CachedDeviceState;->setCharging(Z)V

    goto :goto_5e

    .line 54
    :pswitch_55
    iget-object p0, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    invoke-static {p0}, Lcom/android/server/CachedDeviceStateService;->-$$Nest$fgetmDeviceState(Lcom/android/server/CachedDeviceStateService;)Lcom/android/internal/os/CachedDeviceState;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/internal/os/CachedDeviceState;->setScreenInteractive(Z)V

    :goto_5e
    return-void

    nop

    :sswitch_data_60
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_28
        -0x5bb23923 -> :sswitch_1d
        -0x56ac2893 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_55
        :pswitch_40
        :pswitch_36
    .end packed-switch
.end method
