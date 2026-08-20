.class public Lcom/android/server/appwidget/AppWidgetServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 249
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    .line 250
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez p1, :cond_16

    const-string p0, "AppWidgetServiceImpl"

    const-string p1, "action is null"

    .line 253
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    const/4 v1, -0x1

    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_c8

    goto :goto_63

    :sswitch_22
    const-string v2, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_63

    :cond_2b
    move v1, v3

    goto :goto_63

    :sswitch_2d
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_63

    :cond_36
    const/4 v1, 0x4

    goto :goto_63

    :sswitch_38
    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    goto :goto_63

    :cond_41
    const/4 v1, 0x3

    goto :goto_63

    :sswitch_43
    const-string v2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4c

    goto :goto_63

    :cond_4c
    const/4 v1, 0x2

    goto :goto_63

    :sswitch_4e
    const-string v2, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_57

    goto :goto_63

    :cond_57
    move v1, v4

    goto :goto_63

    :sswitch_59
    const-string v2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_62

    goto :goto_63

    :cond_62
    move v1, v5

    :goto_63
    packed-switch v1, :pswitch_data_e2

    .line 294
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p0

    invoke-static {p1, p2, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$monPackageBroadcastReceived(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    goto :goto_c3

    .line 277
    :pswitch_70
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$monPackageBroadcastReceived(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    .line 278
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p0

    invoke-static {p1, p2, v5, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$mupdateWidgetPackageSuspensionMaskedState(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;ZI)V

    goto :goto_c3

    .line 263
    :pswitch_83
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$monConfigurationChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    goto :goto_c3

    .line 282
    :pswitch_89
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z

    if-eqz p1, :cond_c3

    const-string/jumbo p1, "reason"

    .line 283
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_9b

    .line 285
    iget-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fputmEmergencyState(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    :cond_9b
    if-ne p1, v3, :cond_c3

    .line 288
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$monEmergencyModeDisabled(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    goto :goto_c3

    .line 273
    :pswitch_a3
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$monPackageBroadcastReceived(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    .line 274
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p0

    invoke-static {p1, p2, v4, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$mupdateWidgetPackageSuspensionMaskedState(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;ZI)V

    goto :goto_c3

    .line 268
    :pswitch_b6
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 269
    :try_start_bd
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$mreloadWidgetsMaskedState(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 270
    monitor-exit p1

    :cond_c3
    :goto_c3
    return-void

    :catchall_c4
    move-exception p0

    monitor-exit p1
    :try_end_c6
    .catchall {:try_start_bd .. :try_end_c6} :catchall_c4

    throw p0

    nop

    :sswitch_data_c8
    .sparse-switch
        -0x49d08e2b -> :sswitch_59
        -0x3bb3e592 -> :sswitch_4e
        -0x33813a72 -> :sswitch_43
        -0x8cbe44f -> :sswitch_38
        0x9780086 -> :sswitch_2d
        0x4cef8b35 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_a3
        :pswitch_b6
        :pswitch_89
        :pswitch_83
        :pswitch_70
    .end packed-switch
.end method
