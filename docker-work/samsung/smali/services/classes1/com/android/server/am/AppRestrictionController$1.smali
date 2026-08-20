.class public Lcom/android/server/am/AppRestrictionController$1;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRestrictionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppRestrictionController;)V
    .registers 2

    .line 352
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 355
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 356
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_108

    :goto_14
    move p1, v3

    goto/16 :goto_6e

    :sswitch_17
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_14

    :cond_20
    const/4 p1, 0x7

    goto :goto_6e

    :sswitch_22
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_14

    :cond_2b
    const/4 p1, 0x6

    goto :goto_6e

    :sswitch_2d
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_14

    :cond_36
    const/4 p1, 0x5

    goto :goto_6e

    :sswitch_38
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    goto :goto_14

    :cond_41
    const/4 p1, 0x4

    goto :goto_6e

    :sswitch_43
    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4c

    goto :goto_14

    :cond_4c
    const/4 p1, 0x3

    goto :goto_6e

    :sswitch_4e
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_57

    goto :goto_14

    :cond_57
    const/4 p1, 0x2

    goto :goto_6e

    :sswitch_59
    const-string v0, "android.intent.action.UID_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_62

    goto :goto_14

    :cond_62
    move p1, v1

    goto :goto_6e

    :sswitch_64
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6d

    goto :goto_14

    :cond_6d
    move p1, v2

    :goto_6e
    const-string v0, "android.intent.extra.REPLACING"

    const-string v4, "android.intent.extra.UID"

    const-string v5, "android.intent.extra.user_handle"

    packed-switch p1, :pswitch_data_12a

    goto/16 :goto_106

    .line 379
    :pswitch_79
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 380
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-ltz p1, :cond_106

    if-eqz p2, :cond_106

    .line 383
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_106

    .line 384
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0, p2, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monPackageRemoved(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;I)V

    goto/16 :goto_106

    .line 358
    :pswitch_92
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_b0

    .line 359
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_b0

    .line 361
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUidAdded(Lcom/android/server/am/AppRestrictionController;I)V

    goto :goto_b0

    .line 396
    :pswitch_a4
    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_106

    .line 398
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUserAdded(Lcom/android/server/am/AppRestrictionController;I)V

    goto :goto_106

    .line 367
    :cond_b0
    :goto_b0
    :pswitch_b0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.changed_component_name_list"

    .line 368
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_cb

    .line 373
    array-length v0, p2

    if-ne v0, v1, :cond_106

    aget-object p2, p2, v2

    .line 374
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_106

    .line 375
    :cond_cb
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$mclearCarrierPrivilegedApps(Lcom/android/server/am/AppRestrictionController;)V

    goto :goto_106

    .line 408
    :pswitch_d1
    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_106

    .line 410
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUserStopped(Lcom/android/server/am/AppRestrictionController;I)V

    goto :goto_106

    .line 402
    :pswitch_dd
    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_106

    .line 404
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUserStarted(Lcom/android/server/am/AppRestrictionController;I)V

    goto :goto_106

    .line 388
    :pswitch_e9
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_106

    .line 389
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_106

    .line 391
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUidRemoved(Lcom/android/server/am/AppRestrictionController;I)V

    goto :goto_106

    .line 414
    :pswitch_fb
    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_106

    .line 416
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUserRemoved(Lcom/android/server/am/AppRestrictionController;I)V

    :cond_106
    :goto_106
    return-void

    nop

    :sswitch_data_108
    .sparse-switch
        -0x7ad942ef -> :sswitch_64
        -0x6849e2b4 -> :sswitch_59
        -0x2d021ace -> :sswitch_4e
        -0x2c3dc982 -> :sswitch_43
        0xa480416 -> :sswitch_38
        0x42dd01f1 -> :sswitch_2d
        0x5c1076e2 -> :sswitch_22
        0x5e33a4ad -> :sswitch_17
    .end sparse-switch

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_fb
        :pswitch_e9
        :pswitch_dd
        :pswitch_d1
        :pswitch_b0
        :pswitch_a4
        :pswitch_92
        :pswitch_79
    .end packed-switch
.end method
