.class Lcom/android/internal/telephony/MultiSimSettingController$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiSimSettingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MultiSimSettingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/MultiSimSettingController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/MultiSimSettingController;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController$1;->this$0:Lcom/android/internal/telephony/MultiSimSettingController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const-string p1, "android.telephony.extra.SLOT_INDEX"

    const/4 v0, -0x1

    .line 177
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 179
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 181
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController$1;->this$0:Lcom/android/internal/telephony/MultiSimSettingController;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/MultiSimSettingController;->notifyCarrierConfigChanged(II)V

    :cond_1e
    return-void
.end method
