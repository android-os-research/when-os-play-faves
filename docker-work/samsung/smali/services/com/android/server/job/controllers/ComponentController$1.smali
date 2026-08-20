.class public Lcom/android/server/job/controllers/ComponentController$1;
.super Landroid/content/BroadcastReceiver;
.source "ComponentController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ComponentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/ComponentController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ComponentController;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/android/server/job/controllers/ComponentController$1;->this$0:Lcom/android/server/job/controllers/ComponentController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    const-string p0, "JobScheduler.Component"

    const-string p1, "Intent action was null"

    .line 59
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 62
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_9e

    :goto_17
    move p1, v2

    goto :goto_44

    :sswitch_19
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_17

    :cond_22
    const/4 p1, 0x3

    goto :goto_44

    :sswitch_24
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_17

    :cond_2d
    const/4 p1, 0x2

    goto :goto_44

    :sswitch_2f
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    goto :goto_17

    :cond_38
    const/4 p1, 0x1

    goto :goto_44

    :sswitch_3a
    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    goto :goto_17

    :cond_43
    move p1, v1

    :goto_44
    const-string v0, "android.intent.extra.UID"

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_b0

    goto :goto_9d

    :pswitch_4b
    const-string p1, "android.intent.extra.REPLACING"

    .line 64
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5d

    .line 68
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    :cond_5d
    if-eqz v3, :cond_9d

    .line 70
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 71
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 72
    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController$1;->this$0:Lcom/android/server/job/controllers/ComponentController;

    invoke-static {p0, p1, v3}, Lcom/android/server/job/controllers/ComponentController;->-$$Nest$mupdateComponentStateForPackage(Lcom/android/server/job/controllers/ComponentController;ILjava/lang/String;)V

    goto :goto_9d

    .line 77
    :pswitch_6d
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_77

    .line 78
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    :cond_77
    const-string p1, "android.intent.extra.changed_component_name_list"

    .line 79
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz v3, :cond_9d

    if-eqz p1, :cond_9d

    .line 81
    array-length p1, p1

    if-lez p1, :cond_9d

    .line 82
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 83
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 84
    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController$1;->this$0:Lcom/android/server/job/controllers/ComponentController;

    invoke-static {p0, p1, v3}, Lcom/android/server/job/controllers/ComponentController;->-$$Nest$mupdateComponentStateForPackage(Lcom/android/server/job/controllers/ComponentController;ILjava/lang/String;)V

    goto :goto_9d

    :pswitch_92
    const-string p1, "android.intent.extra.user_handle"

    .line 89
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 90
    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController$1;->this$0:Lcom/android/server/job/controllers/ComponentController;

    invoke-static {p0, p1}, Lcom/android/server/job/controllers/ComponentController;->-$$Nest$mupdateComponentStateForUser(Lcom/android/server/job/controllers/ComponentController;I)V

    :cond_9d
    :goto_9d
    return-void

    :sswitch_data_9e
    .sparse-switch
        -0x2c3dc982 -> :sswitch_3a
        0xa480416 -> :sswitch_2f
        0x31af1c32 -> :sswitch_24
        0x5c1076e2 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_92
        :pswitch_6d
        :pswitch_92
        :pswitch_4b
    .end packed-switch
.end method
