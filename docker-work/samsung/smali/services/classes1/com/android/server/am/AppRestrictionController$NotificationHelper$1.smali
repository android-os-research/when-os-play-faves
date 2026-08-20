.class public Lcom/android/server/am/AppRestrictionController$NotificationHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRestrictionController$NotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppRestrictionController$NotificationHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppRestrictionController$NotificationHelper;)V
    .registers 2

    .line 2433
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper$1;->this$0:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 2436
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2437
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "com.android.server.am.ACTION_FGS_MANAGER_TRAMPOLINE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_3c

    :cond_13
    const-string p1, "android.intent.extra.PACKAGE_NAME"

    .line 2439
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "android.intent.extra.UID"

    .line 2440
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 2441
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper$1;->this$0:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->cancelRequestBgRestrictedIfNecessary(Ljava/lang/String;I)V

    .line 2442
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SHOW_FOREGROUND_SERVICE_MANAGER"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x1000000

    .line 2443
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2445
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper$1;->this$0:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->-$$Nest$fgetmContext(Lcom/android/server/am/AppRestrictionController$NotificationHelper;)Landroid/content/Context;

    move-result-object p0

    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_3c
    return-void
.end method
