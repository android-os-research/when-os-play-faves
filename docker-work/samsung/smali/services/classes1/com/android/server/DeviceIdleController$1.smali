.class public Lcom/android/server/DeviceIdleController$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2

    .line 647
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 649
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_7c

    goto :goto_32

    :sswitch_12
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_32

    :cond_1b
    const/4 v3, 0x2

    goto :goto_32

    :sswitch_1d
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_32

    :cond_26
    move v3, v1

    goto :goto_32

    :sswitch_28
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_32

    :cond_31
    move v3, v2

    :goto_32
    packed-switch v3, :pswitch_data_8a

    goto :goto_78

    :pswitch_36
    const-string p1, "android.intent.extra.REPLACING"

    .line 661
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_78

    .line 662
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_78

    .line 664
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_78

    .line 665
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    goto :goto_78

    .line 651
    :pswitch_50
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p2}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    goto :goto_78

    :pswitch_56
    const-string/jumbo p1, "present"

    .line 654
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string/jumbo v0, "plugged"

    .line 655
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_68

    move p2, v1

    goto :goto_69

    :cond_68
    move p2, v2

    .line 656
    :goto_69
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 657
    :try_start_6c
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    if-eqz p1, :cond_73

    if-eqz p2, :cond_73

    goto :goto_74

    :cond_73
    move v1, v2

    :goto_74
    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->updateChargingLocked(Z)V

    .line 658
    monitor-exit v0

    :cond_78
    :goto_78
    return-void

    :catchall_79
    move-exception p0

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_6c .. :try_end_7b} :catchall_79

    throw p0

    :sswitch_data_7c
    .sparse-switch
        -0x5bb23923 -> :sswitch_28
        -0x45e5283a -> :sswitch_1d
        0x1f50b9c2 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_56
        :pswitch_50
        :pswitch_36
    .end packed-switch
.end method
