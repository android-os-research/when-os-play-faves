.class Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;
.super Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
.source "SubscriberManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V
    .registers 2

    .line 518
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceDiscovered(Lcom/samsung/android/mcf/McfDevice;I)V
    .registers 11

    if-nez p1, :cond_a

    const-string p0, "WifiProfileShare.McfSub"

    const-string p1, "-ME--- onDeviceDiscovered(pass), mcfDevice is null"

    .line 522
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 525
    :cond_a
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    move-result-object p2

    .line 526
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getContentsJson()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2b

    const-string p0, "WifiProfileShare.McfSub"

    .line 528
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " json is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 532
    :cond_2b
    sget-object v1, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->NONE:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    const-string v2, "state"

    .line 533
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    :try_start_35
    const-string v2, "state"

    .line 535
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 536
    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    move-result-object v1
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_41} :catch_42

    goto :goto_49

    :catch_42
    const-string v2, "WifiProfileShare.McfSub"

    const-string v3, "-ME--- can not get state"

    .line 538
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    :goto_49
    const-string v2, "WifiProfileShare.McfSub"

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " received(pass) message state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", postAdv:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmIsPostAdvertiseStarted(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    sget-object v2, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$7;->$SwitchMap$com$samsung$android$server$wifi$share$mcf$AdvertiseState:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2d1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_29f

    const/4 v5, 0x3

    if-eq v2, v5, :cond_a4

    const-string p0, "WifiProfileShare.McfSub"

    .line 655
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " unhandled state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2fb

    :cond_a4
    const-string v1, "configKey"

    .line 563
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2fb

    .line 564
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->isInContact()I

    move-result v1

    if-nez v1, :cond_c9

    const-string p0, "WifiProfileShare.McfSub"

    .line 565
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not exist in my contact list"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 567
    :cond_c9
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->isInContact()I

    move-result v1

    if-ne v1, v4, :cond_e6

    const-string p0, "WifiProfileShare.McfSub"

    .line 568
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is my device. please check samsung account"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 572
    :cond_e6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {v1, p2, v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$misAlreadyConfirmed(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_105

    const-string p0, "WifiProfileShare.McfSub"

    .line 573
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " already confirmed before"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 577
    :cond_105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_10a
    const-string v2, "configKey"

    .line 579
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "configKey_hotspot"

    .line 580
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_143

    const-string v2, "configKey_hotspot"

    .line 581
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12c
    .catch Lorg/json/JSONException; {:try_start_10a .. :try_end_12c} :catch_12d

    goto :goto_143

    :catch_12d
    const-string v0, "WifiProfileShare.McfSub"

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " json:configKey parsing error"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_143
    :goto_143
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_288

    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmPasswordData(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object v0

    if-nez v0, :cond_153

    goto/16 :goto_288

    .line 594
    :cond_153
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v4, v2

    :cond_159
    :goto_159
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_178

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 595
    iget-object v7, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmPasswordData(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getConfigKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_159

    add-int/lit8 v4, v4, 0x1

    goto :goto_159

    :cond_178
    if-nez v4, :cond_194

    const-string p0, "WifiProfileShare.McfSub"

    .line 601
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not matched configKey req:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_194
    const-string v0, "WifiProfileShare.McfSub"

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " hello my friend! authentication completed.authType:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getAdditionalAuthType()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 606
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 610
    :try_start_1b8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmKeepGattDeviceList(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lt v1, v5, :cond_1e9

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmKeepGattDeviceList(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Ljava/util/Map;

    move-result-object v1

    .line 611
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d1

    goto :goto_1e9

    :cond_1d1
    const-string p1, "WifiProfileShare.McfSub"

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " skip to add, keep device list is full"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26a

    .line 612
    :cond_1e9
    :goto_1e9
    new-instance v1, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6$1;-><init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;)V

    .line 629
    new-instance v4, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;

    invoke-direct {v4, p1, v1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;-><init>(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;)V

    .line 630
    iget-object v6, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmKeepGattDeviceList(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmMcfSubscriber(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Lcom/samsung/android/mcf/McfSubscriber;

    move-result-object v4

    invoke-interface {v4, p1, v3, v1}, Lcom/samsung/android/mcf/McfSubscriber;->keepDiscoveredDevice(Lcom/samsung/android/mcf/McfDevice;ZLcom/samsung/android/mcf/discovery/KeepDeviceCallback;)Z

    const-string p1, "WifiProfileShare.McfSub"

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " add to keep device list, size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmKeepGattDeviceList(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Ljava/util/Map;

    move-result-object v4

    .line 634
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 633
    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmCallback(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;

    move-result-object p1

    if-eqz p1, :cond_247

    .line 637
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmCallback(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmKeepGattDeviceList(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_243

    goto :goto_244

    :cond_243
    move v3, v2

    :goto_244
    invoke-interface {p1, v3}, Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;->onFoundDevicesForPassword(Z)V

    .line 640
    :cond_247
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmIsPostAdvertiseStarted(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Z

    move-result p1

    if-eqz p1, :cond_26a

    const-string p1, "WifiProfileShare.McfSub"

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " request password"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->postStartScanForPassword(Z)V

    .line 647
    :cond_26a
    :goto_26a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmIsPasswordAdvertiseTriggered(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Z

    move-result p1

    if-eqz p1, :cond_283

    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmKeepGattDeviceList(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Ljava/util/Map;

    move-result-object p1

    .line 648
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lt p1, v5, :cond_283

    .line 649
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$mstopAdvertise(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V

    .line 651
    :cond_283
    monitor-exit v0

    goto :goto_2fb

    :catchall_285
    move-exception p0

    monitor-exit v0
    :try_end_287
    .catchall {:try_start_1b8 .. :try_end_287} :catchall_285

    throw p0

    :cond_288
    :goto_288
    const-string p0, "WifiProfileShare.McfSub"

    .line 589
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " config key is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_29f
    const-string v1, "WifiProfileShare.McfSub"

    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rejected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$mremoveKeepDevice(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/mcf/McfDevice;)V

    .line 556
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmIsPasswordAdvertiseTriggered(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Z

    move-result p1

    if-nez p1, :cond_2cb

    .line 557
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmPasswordData(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$mstartAdvertise(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    .line 559
    :cond_2cb
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {p0, p2, v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$maddConfirmHistory(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2fb

    :cond_2d1
    const-string v1, "WifiProfileShare.McfSub"

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " delivered password data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fputmReceivedPasswordMcfDevice(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/mcf/McfDevice;)V

    .line 548
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$mcallbackToClientForPassword(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/mcf/McfDevice;)V

    .line 549
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$mstopScan(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V

    .line 550
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {p0, p2, v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$maddConfirmHistory(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2fb
    :goto_2fb
    return-void
.end method

.method public onDeviceRemoved(Lcom/samsung/android/mcf/McfDevice;I)V
    .registers 5

    const-string p2, "WifiProfileShare.McfSub"

    if-nez p1, :cond_a

    const-string p0, "-ME--- mPasswordDiscoverCallback::onDeviceRemoved mcf device is null"

    .line 663
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 666
    :cond_a
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onDeviceRemoved"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$mremoveKeepDevice(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/mcf/McfDevice;)V

    return-void
.end method
