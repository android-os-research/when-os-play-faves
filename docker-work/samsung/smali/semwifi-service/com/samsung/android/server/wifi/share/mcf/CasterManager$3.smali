.class Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;
.super Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
.source "CasterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/CasterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;)V
    .registers 2

    .line 530
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceDiscovered(Lcom/samsung/android/mcf/McfDevice;I)V
    .registers 9

    const-string p2, "WifiProfileShare.McfCast"

    if-nez p1, :cond_a

    const-string p0, "-ME--- onDeviceDiscovered(pass) mcfDevice is null"

    .line 534
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 537
    :cond_a
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    .line 538
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getContentsByte()[B

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    .line 541
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createPasswordData([B)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object v2

    .line 544
    :cond_19
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getContentsJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 545
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " received message auth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getAdditionalAuthType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " contact : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->isInContact()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " json:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " content:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 545
    invoke-static {p2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    sget-object v3, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->NONE:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    if-eqz v1, :cond_71

    const-string v4, "state"

    .line 553
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 555
    :try_start_60
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 556
    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    move-result-object v3
    :try_end_6a
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_6a} :catch_6b

    goto :goto_7e

    :catch_6b
    const-string v4, "can not get state"

    .line 558
    invoke-static {p2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    :cond_71
    if-eqz v2, :cond_157

    .line 562
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->isPasswordCancelData()Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 563
    sget-object v3, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->CLOSE:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    goto :goto_7e

    .line 565
    :cond_7c
    sget-object v3, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->DEVICE_DETECTED:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 572
    :cond_7e
    :goto_7e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " process state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    sget-object v4, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$4;->$SwitchMap$com$samsung$android$server$wifi$share$mcf$AdvertiseState:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_149

    const/4 v2, 0x2

    if-eq v4, v2, :cond_132

    const/4 v2, 0x3

    if-eq v4, v2, :cond_d1

    const/4 p1, 0x4

    if-eq v4, p1, :cond_ca

    .line 609
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unhandled state: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_156

    .line 606
    :cond_ca
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-static {p0, v0, v5}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$mclosePasswordSession(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Ljava/lang/String;Z)V

    goto/16 :goto_156

    .line 588
    :cond_d1
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getAdditionalAuthType()I

    move-result v2

    if-ne v2, v5, :cond_11d

    if-eqz v1, :cond_11d

    .line 589
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createPasswordData(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object v1

    .line 590
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-static {v2, p1, v1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$misMatchedSharedData(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object v2

    if-nez v2, :cond_fa

    .line 591
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " config not matched"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_156

    .line 594
    :cond_fa
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-static {v2, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$mgetContactInfo(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/mcf/McfDevice;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_117

    .line 596
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " contact info is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_156

    .line 599
    :cond_117
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-static {p0, p1, v2, v1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$mshowPasswordConfirmPopup(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/mcf/McfDevice;Ljava/lang/String;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    goto :goto_156

    .line 601
    :cond_11d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed to show confirm dialog, unauthorized"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_156

    .line 581
    :cond_132
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$mgetContactInfo(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/mcf/McfDevice;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_156

    .line 582
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$mgetRequestData(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;

    move-result-object p2

    if-eqz p2, :cond_156

    .line 583
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendPasswordData(ZLjava/lang/String;)V

    goto :goto_156

    .line 575
    :cond_149
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-static {p2, p1, v2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$misMatchedSharedData(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object p2

    if-eqz p2, :cond_156

    .line 577
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$mstartAuthentication(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    :cond_156
    :goto_156
    return-void

    .line 568
    :cond_157
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " content bytes is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDeviceRemoved(Lcom/samsung/android/mcf/McfDevice;I)V
    .registers 5

    const-string p2, "WifiProfileShare.McfCast"

    if-nez p1, :cond_a

    const-string p0, "-ME---onDeviceRemoved(pass) McfDevice is null"

    .line 617
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 620
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onDeviceRemoved, dismiss dialog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getContactKey()[B

    move-result-object p2

    if-eqz p2, :cond_35

    .line 623
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$fgetmCallback(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;)Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;->onSessionClosed(Ljava/lang/String;)V

    .line 625
    :cond_35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$mclosePasswordSession(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Ljava/lang/String;Z)V

    return-void
.end method
