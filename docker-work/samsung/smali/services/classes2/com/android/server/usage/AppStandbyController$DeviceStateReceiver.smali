.class public Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceStateReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method public static synthetic $r8$lambda$syA3iqAJNmNp4QI-JtYPahoOdIo(Lcom/android/server/usage/AppStandbyController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->lambda$onReceive$0(Lcom/android/server/usage/AppStandbyController;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usage/AppStandbyController;)V
    .registers 2

    .line 2843
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcom/android/server/usage/AppStandbyController;)V
    .registers 1

    .line 2855
    invoke-static {p0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mupdatePowerWhitelistCache(Lcom/android/server/usage/AppStandbyController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 2846
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p2, :sswitch_data_5c

    goto :goto_32

    :sswitch_12
    const-string p2, "android.os.action.CHARGING"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_32

    :cond_1b
    const/4 v2, 0x2

    goto :goto_32

    :sswitch_1d
    const-string p2, "android.os.action.DISCHARGING"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_32

    :cond_26
    move v2, v0

    goto :goto_32

    :sswitch_28
    const-string p2, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_32

    :cond_31
    move v2, v1

    :goto_32
    packed-switch v2, :pswitch_data_6a

    goto :goto_5a

    .line 2848
    :pswitch_36
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    goto :goto_5a

    .line 2851
    :pswitch_3c
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p0, v1}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    goto :goto_5a

    .line 2854
    :pswitch_42
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {p1}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmSystemServicesReady(Lcom/android/server/usage/AppStandbyController;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 2855
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {p1}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmHandler(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    new-instance p2, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5a
    :goto_5a
    return-void

    nop

    :sswitch_data_5c
    .sparse-switch
        -0x3e97d1f -> :sswitch_28
        -0x3465cce -> :sswitch_1d
        0x388694fe -> :sswitch_12
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_42
        :pswitch_3c
        :pswitch_36
    .end packed-switch
.end method
