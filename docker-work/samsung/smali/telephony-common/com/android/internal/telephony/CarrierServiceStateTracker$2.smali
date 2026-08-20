.class Lcom/android/internal/telephony/CarrierServiceStateTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "CarrierServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p2, "carrier_config"

    .line 361
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    .line 362
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 364
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$fgetmNotificationTypeMap(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_24
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 365
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;

    .line 366
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->setDelay(Landroid/os/PersistableBundle;)V

    goto :goto_24

    .line 368
    :cond_3a
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-$$Nest$mhandleConfigChanges(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V

    return-void
.end method
