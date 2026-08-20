.class public Lcom/android/server/power/batterysaver/BatterySaverController$1;
.super Landroid/content/BroadcastReceiver;
.source "BatterySaverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySaverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 182
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_86

    goto :goto_48

    :sswitch_12
    const-string v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_48

    :cond_1b
    const/4 v3, 0x4

    goto :goto_48

    :sswitch_1d
    const-string v0, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_48

    :cond_26
    const/4 v3, 0x3

    goto :goto_48

    :sswitch_28
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_48

    :cond_31
    const/4 v3, 0x2

    goto :goto_48

    :sswitch_33
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto :goto_48

    :cond_3c
    move v3, v1

    goto :goto_48

    :sswitch_3e
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto :goto_48

    :cond_47
    move v3, v2

    :goto_48
    packed-switch v3, :pswitch_data_9c

    goto :goto_85

    .line 195
    :pswitch_4c
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->-$$Nest$fgetmLock(Lcom/android/server/power/batterysaver/BatterySaverController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 196
    :try_start_53
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    const-string/jumbo v3, "plugged"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_5f

    goto :goto_60

    :cond_5f
    move v1, v2

    :goto_60
    invoke-static {v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->-$$Nest$fputmIsPluggedIn(Lcom/android/server/power/batterysaver/BatterySaverController;Z)V

    .line 197
    monitor-exit p1
    :try_end_64
    .catchall {:try_start_53 .. :try_end_64} :catchall_6a

    .line 201
    :pswitch_64
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->-$$Nest$mupdateBatterySavingStats(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    goto :goto_85

    :catchall_6a
    move-exception p0

    .line 197
    :try_start_6b
    monitor-exit p1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw p0

    .line 185
    :pswitch_6d
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->-$$Nest$misPolicyEnabled(Lcom/android/server/power/batterysaver/BatterySaverController;)Z

    move-result p1

    if-nez p1, :cond_7b

    .line 186
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->-$$Nest$mupdateBatterySavingStats(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    return-void

    .line 191
    :cond_7b
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->-$$Nest$fgetmHandler(Lcom/android/server/power/batterysaver/BatterySaverController;)Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, v2, p1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    :goto_85
    return-void

    :sswitch_data_86
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_3e
        -0x5bb23923 -> :sswitch_33
        -0x56ac2893 -> :sswitch_28
        0x1dbb32d0 -> :sswitch_1d
        0x33e5d967 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_4c
        :pswitch_6d
        :pswitch_64
        :pswitch_64
    .end packed-switch
.end method
