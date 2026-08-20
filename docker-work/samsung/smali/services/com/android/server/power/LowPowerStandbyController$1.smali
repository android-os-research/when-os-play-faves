.class public Lcom/android/server/power/LowPowerStandbyController$1;
.super Landroid/content/BroadcastReceiver;
.source "LowPowerStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LowPowerStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LowPowerStandbyController;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_46

    goto :goto_30

    :sswitch_10
    const-string p2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_30

    :cond_19
    const/4 v0, 0x2

    goto :goto_30

    :sswitch_1b
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto :goto_30

    :cond_24
    const/4 v0, 0x1

    goto :goto_30

    :sswitch_26
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    packed-switch v0, :pswitch_data_54

    goto :goto_45

    .line 102
    :pswitch_34
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$monDeviceIdleModeChanged(Lcom/android/server/power/LowPowerStandbyController;)V

    goto :goto_45

    .line 99
    :pswitch_3a
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$monInteractive(Lcom/android/server/power/LowPowerStandbyController;)V

    goto :goto_45

    .line 96
    :pswitch_40
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$monNonInteractive(Lcom/android/server/power/LowPowerStandbyController;)V

    :goto_45
    return-void

    :sswitch_data_46
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_26
        -0x56ac2893 -> :sswitch_1b
        0x33e5d967 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3a
        :pswitch_34
    .end packed-switch
.end method
