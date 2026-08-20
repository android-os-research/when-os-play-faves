.class Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;
.super Landroid/os/Handler;
.source "CasterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/CasterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdvertiseHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiProfileShare.Handler"


# instance fields
.field private final mAuthDeviceData:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;

.field private mDelayRestartAuthAdvertise:Z

.field private mIsRestartAuthAdvertise:Z

.field private final mMcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

.field private mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

.field private final mSendPasswordDeviceData:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3

    .line 641
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 632
    new-instance p1, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler$1;-><init>(Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mMcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 637
    new-instance p1, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;-><init>(Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData-IA;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mAuthDeviceData:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;

    .line 638
    new-instance p1, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;

    invoke-direct {p1, v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;-><init>(Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData-IA;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mSendPasswordDeviceData:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;

    return-void
.end method


# virtual methods
.method delayRestartAuthAdvertiseForMultipleSendPassword(Z)V
    .registers 4

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayRestartAuthAdvertiseForMultipleSendPassword : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiProfileShare.Handler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mDelayRestartAuthAdvertise:Z

    return-void
.end method

.method getDeviceData(I)Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;
    .registers 2

    if-nez p1, :cond_5

    .line 665
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mAuthDeviceData:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;

    return-object p0

    .line 667
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mSendPasswordDeviceData:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg.what : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg.arg1 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiProfileShare.Handler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    if-nez v0, :cond_2c

    const-string p0, "MCFCaster is null !"

    .line 673
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 676
    :cond_2c
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v2, "sendPassword "

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_bb

    const-wide/16 v5, 0x3a98

    if-eq v0, v4, :cond_64

    const/4 v2, 0x2

    if-eq v0, v2, :cond_53

    .line 753
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unhandled message id "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_156

    .line 746
    :cond_53
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->removeMessages(I)V

    .line 747
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 748
    iput v4, p1, Landroid/os/Message;->what:I

    .line 749
    iput v3, p1, Landroid/os/Message;->arg1:I

    .line 750
    invoke-virtual {p0, p1, v5, v6}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_156

    .line 719
    :cond_64
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_69

    goto :goto_6b

    :cond_69
    const-string v2, "auth,  authentication timeout"

    :goto_6b
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-static {}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$sfgetmIsAuthAdvertiseTriggered()Z

    move-result v0

    if-nez v0, :cond_7a

    invoke-static {}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$sfgetmIsSendPasswordAdvertiseTriggered()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 721
    :cond_7a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mMcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    invoke-interface {v0, v2}, Lcom/samsung/android/mcf/McfCaster;->stopAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    .line 723
    :cond_81
    invoke-static {v3}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$sfputmIsSendPasswordAdvertiseTriggered(Z)V

    .line 724
    invoke-static {v3}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$sfputmIsAuthAdvertiseTriggered(Z)V

    .line 726
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_b6

    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mIsRestartAuthAdvertise:Z

    if-eqz p1, :cond_b6

    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mDelayRestartAuthAdvertise:Z

    if-nez p1, :cond_b6

    const-string p1, "restart authentication advertise ! "

    .line 727
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 730
    iput v3, p1, Landroid/os/Message;->what:I

    .line 731
    iput v3, p1, Landroid/os/Message;->arg1:I

    .line 732
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 734
    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$sfputmIsAuthAdvertiseTriggered(Z)V

    .line 736
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 737
    iput v4, p1, Landroid/os/Message;->what:I

    .line 738
    iput v3, p1, Landroid/os/Message;->arg1:I

    .line 739
    invoke-virtual {p0, p1, v5, v6}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 741
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->setRestartAuthAdvertise(Z)V

    .line 743
    :cond_b6
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->delayRestartAuthAdvertiseForMultipleSendPassword(Z)V

    goto/16 :goto_156

    .line 679
    :cond_bb
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_c4

    .line 680
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->getDeviceData(I)Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;

    move-result-object v0

    goto :goto_c8

    .line 683
    :cond_c4
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->getDeviceData(I)Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;

    move-result-object v0

    .line 686
    :goto_c8
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;->getTargetMcfDevice()Lcom/samsung/android/mcf/McfDevice;

    move-result-object v5

    .line 687
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;->getMcfData()Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object v6

    .line 688
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;->getPasswordCasterStartAt()J

    move-result-wide v7

    .line 690
    new-instance v0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;-><init>()V

    const/4 v9, 0x4

    .line 691
    invoke-virtual {v0, v9, v4, v3}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setAdvertiseData(IZZ)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    move-result-object v0

    .line 692
    invoke-virtual {v0, v4}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setAccessPermission(I)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    move-result-object v0

    .line 694
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v4, :cond_10b

    .line 695
    invoke-virtual {v0, v5}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setTargetDevice(Lcom/samsung/android/mcf/McfDevice;)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 696
    sget-object v3, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->ACCEPT:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 697
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->isPasswordCancelData()Z

    move-result v9

    if-eqz v9, :cond_fb

    .line 698
    sget-object v3, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->REJECT:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 701
    :cond_fb
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->isPasswordCancelData()Z

    move-result v9

    xor-int/2addr v9, v4

    .line 700
    invoke-virtual {v6, v3, v9, v7, v8}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getPasswordJsonData(Ljava/lang/String;ZJ)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setJsonContent(Lorg/json/JSONObject;)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 702
    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$sfputmIsSendPasswordAdvertiseTriggered(Z)V

    goto :goto_129

    .line 704
    :cond_10b
    invoke-static {}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$sfgetmHasMultipleConfigKey()Z

    move-result v9

    if-eqz v9, :cond_119

    .line 705
    invoke-static {}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$sfgetmMultipleConfigKeyJsonObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setJsonContent(Lorg/json/JSONObject;)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    goto :goto_126

    .line 707
    :cond_119
    sget-object v9, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->AUTHENTICATION:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 708
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    .line 707
    invoke-virtual {v6, v9, v3, v7, v8}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getPasswordJsonData(Ljava/lang/String;ZJ)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setJsonContent(Lorg/json/JSONObject;)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 711
    :goto_126
    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$sfputmIsAuthAdvertiseTriggered(Z)V

    .line 714
    :goto_129
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_12e

    goto :goto_148

    :cond_12e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auth, "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " start authentication"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_148
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->build()Lcom/samsung/android/mcf/discovery/McfAdvertiseData;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mMcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/mcf/McfCaster;->startAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    :goto_156
    return-void
.end method

.method setDeviceData(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;JZ)V
    .registers 8

    const-string v0, "WifiProfileShare.Handler"

    const-string v1, "set argument "

    .line 645
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_f

    .line 647
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mAuthDeviceData:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;->setDeviceData(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;J)V

    goto :goto_14

    .line 649
    :cond_f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mSendPasswordDeviceData:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;->setDeviceData(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;J)V

    :goto_14
    return-void
.end method

.method setMcfCaster(Lcom/samsung/android/mcf/McfCaster;)V
    .registers 2

    .line 653
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    return-void
.end method

.method setRestartAuthAdvertise(Z)V
    .registers 4

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRestartAuthAdvertise : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiProfileShare.Handler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mIsRestartAuthAdvertise:Z

    return-void
.end method
