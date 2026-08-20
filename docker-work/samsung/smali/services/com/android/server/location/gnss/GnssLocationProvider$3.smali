.class public Lcom/android/server/location/gnss/GnssLocationProvider$3;
.super Landroid/content/BroadcastReceiver;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/gnss/GnssLocationProvider;->handleInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method public static synthetic $r8$lambda$7-AuBmNzyqJlRRMt_59gPryyUAM(Lcom/android/server/location/gnss/GnssLocationProvider$3;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider$3;->lambda$onReceive$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 2

    .line 578
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .registers 4

    .line 604
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM_SLOT_ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 581
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 582
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "receive broadcast intent, action: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GnssLocationProvider"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1e

    return-void

    :cond_1e
    const-string p2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 587
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c8

    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto/16 :goto_cd

    .line 589
    :cond_30
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object p1, p1, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p1

    if-eqz p1, :cond_c8

    .line 591
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    .line 592
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$fgetmSubscriptionManager(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/telephony/SubscriptionManager;

    move-result-object p2

    const/4 v1, 0x0

    .line 594
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 593
    invoke-virtual {p2, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-eqz p1, :cond_6f

    .line 596
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1

    iput p1, p2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 597
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Get sim slot ID : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget p2, p2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_6f
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget p1, p1, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 600
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "persist.sys.gps.dds.subId"

    .line 599
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    new-instance p2, Lcom/android/server/location/gnss/GnssLocationProvider$3$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider$3;)V

    invoke-virtual {p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 605
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object p1, p1, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x1e

    if-le p1, p2, :cond_9e

    .line 606
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object p1, p1, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 608
    :cond_9e
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object p1, p1, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 609
    invoke-static {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$mgetTimestamp(Lcom/android/server/location/gnss/GnssLocationProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": sim slot changed to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 608
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_c8
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$msubscriptionOrCarrierConfigChanged(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    :goto_cd
    return-void
.end method
