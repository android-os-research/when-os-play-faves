.class public Lcom/android/server/tare/InternalResourceService$1;
.super Landroid/content/BroadcastReceiver;
.source "InternalResourceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/InternalResourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/tare/InternalResourceService;


# direct methods
.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 162
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 163
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_bc

    :goto_10
    move p1, v2

    goto :goto_5e

    :sswitch_12
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_10

    :cond_1b
    const/4 p1, 0x6

    goto :goto_5e

    :sswitch_1d
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_10

    :cond_26
    const/4 p1, 0x5

    goto :goto_5e

    :sswitch_28
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_10

    :cond_31
    const/4 p1, 0x4

    goto :goto_5e

    :sswitch_33
    const-string v0, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto :goto_10

    :cond_3c
    const/4 p1, 0x3

    goto :goto_5e

    :sswitch_3e
    const-string v0, "android.intent.action.BATTERY_LEVEL_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto :goto_10

    :cond_47
    const/4 p1, 0x2

    goto :goto_5e

    :sswitch_49
    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_52

    goto :goto_10

    :cond_52
    const/4 p1, 0x1

    goto :goto_5e

    :sswitch_54
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5d

    goto :goto_10

    :cond_5d
    move p1, v1

    :goto_5e
    const-string v0, "android.intent.extra.user_handle"

    const-string v3, "android.intent.extra.UID"

    packed-switch p1, :pswitch_data_da

    goto :goto_bb

    .line 173
    :pswitch_66
    invoke-virtual {p0, p2}, Lcom/android/server/tare/InternalResourceService$1;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 175
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/tare/InternalResourceService;->onPackageRemoved(ILjava/lang/String;)V

    goto :goto_bb

    :pswitch_74
    const-string p1, "android.intent.extra.REPLACING"

    .line 179
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_bb

    .line 180
    invoke-virtual {p0, p2}, Lcom/android/server/tare/InternalResourceService$1;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 182
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/tare/InternalResourceService;->onPackageAdded(ILjava/lang/String;)V

    goto :goto_bb

    .line 194
    :pswitch_8a
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 195
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0, p1}, Lcom/android/server/tare/InternalResourceService;->onUserAdded(I)V

    goto :goto_bb

    .line 204
    :pswitch_94
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->onExemptionListChanged()V

    goto :goto_bb

    .line 170
    :pswitch_9a
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->onBatteryLevelChanged()V

    goto :goto_bb

    .line 187
    :pswitch_a0
    invoke-virtual {p0, p2}, Lcom/android/server/tare/InternalResourceService$1;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 189
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 190
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/tare/InternalResourceService;->onPackageForceStopped(ILjava/lang/String;)V

    goto :goto_bb

    .line 199
    :pswitch_b2
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 200
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0, p1}, Lcom/android/server/tare/InternalResourceService;->onUserRemoved(I)V

    :cond_bb
    :goto_bb
    return-void

    :sswitch_data_bc
    .sparse-switch
        -0x7ad942ef -> :sswitch_54
        -0x2d2ad030 -> :sswitch_49
        -0x2545adbe -> :sswitch_3e
        -0x3e97d1f -> :sswitch_33
        0x42dd01f1 -> :sswitch_28
        0x5c1076e2 -> :sswitch_1d
        0x5e33a4ad -> :sswitch_12
    .end sparse-switch

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_b2
        :pswitch_a0
        :pswitch_9a
        :pswitch_94
        :pswitch_8a
        :pswitch_74
        :pswitch_66
    .end packed-switch
.end method
