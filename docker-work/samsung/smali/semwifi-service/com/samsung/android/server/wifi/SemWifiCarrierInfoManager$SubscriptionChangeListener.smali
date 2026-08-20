.class Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SemWifiCarrierInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscriptionChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener;->this$0:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener;-><init>(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener;->this$0:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->-$$Nest$fgetmSubscriptionManager(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->-$$Nest$fputmActiveSubInfos(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;Ljava/util/List;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener;->this$0:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->-$$Nest$fgetmSubIdToSimInfoSparseArray(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener;->this$0:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->-$$Nest$fgetmSubscriptionGroupMap(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener;->this$0:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->-$$Nest$fgetmVerboseLogEnabled(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->-$$Nest$sfgetDBG_PRODUCT_DEV()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "active subscription changes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SubscriptionChangeListener;->this$0:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->-$$Nest$fgetmActiveSubInfos(Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifiCarrierInfoManager"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    return-void
.end method
