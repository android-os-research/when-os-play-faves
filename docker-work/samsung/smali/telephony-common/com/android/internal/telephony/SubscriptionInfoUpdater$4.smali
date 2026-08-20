.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$4;
.super Landroid/content/BroadcastReceiver;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;->initializeCarrierApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .registers 2

    .line 293
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$4;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 297
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    const-string p1, "android.intent.extra.USER"

    .line 298
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    .line 300
    iget-object p2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$4;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    invoke-static {p2, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-$$Nest$fputmCurrentlyActiveUserId(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V

    .line 301
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-$$Nest$sfgetsContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$4;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-$$Nest$fgetmCurrentlyActiveUserId(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I

    move-result p0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-$$Nest$sfgetsContext()Landroid/content/Context;

    move-result-object v0

    .line 301
    invoke-static {p1, p2, p0, v0}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;ILandroid/content/Context;)V

    :cond_3a
    return-void
.end method
