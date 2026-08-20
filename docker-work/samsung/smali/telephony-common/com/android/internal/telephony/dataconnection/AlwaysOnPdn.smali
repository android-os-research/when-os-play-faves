.class public Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;
.super Ljava/lang/Object;
.source "AlwaysOnPdn.java"


# instance fields
.field private final blacklist mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field private final blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected blacklist mIsSetAlwaysOnPdn:Z

.field private blacklist mIsWifiConnected:Z

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mSupportVowifi:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDct(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsWifiConnected(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mIsWifiConnected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportVowifi(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mSupportVowifi:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsWifiConnected(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mIsWifiConnected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSupportVowifi(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mSupportVowifi:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSecActionIntentNetworkStateChangedAction(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->onSecActionIntentNetworkStateChangedAction()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .registers 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mIsWifiConnected:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mSupportVowifi:Z

    .line 74
    new-instance v0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn$1;-><init>(Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 60
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 62
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.net.wifi.STATE_CHANGE"

    .line 63
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.samsung.intent.action.SIMHOTSWAP"

    .line 64
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.sec.epdg.action.EPDG_CONFIGURATION_UPDATED"

    .line 65
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 66
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist isConnected()Z
    .registers 3

    .line 271
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v1, "default"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object p0

    if-ne v0, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private blacklist isDataDisabled()Z
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 266
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRoamingEnabledInternal()Z

    move-result p0

    if-nez p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method private blacklist isDefaultDataSubId()Z
    .registers 3

    .line 275
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 276
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result p0

    if-eq v0, p0, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 4

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AOP-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist notifyAlwaysOnPdnToRIL(Z)V
    .registers 7

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    if-eqz p1, :cond_20

    .line 299
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->isDataDisabled()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string p1, "notifyAlwaysOnPdnToRIL: not executed because data is disabled"

    .line 300
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->log(Ljava/lang/String;)V

    return-void

    .line 311
    :cond_20
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 312
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x9

    .line 314
    :try_start_2c
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x10

    .line 315
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x5

    .line 316
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-eqz p1, :cond_3c

    const/4 v2, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    .line 318
    :goto_3d
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 319
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set AlwaysOnPdn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_59

    const-string v3, "Enabled"

    goto :goto_5b

    :cond_59
    const-string v3, "Disabled"

    :goto_5b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->log(Ljava/lang/String;)V

    .line 323
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_67} :catch_68

    goto :goto_7d

    :catch_68
    move-exception p1

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAlwaysOnPdnToRIL: exception occured: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->log(Ljava/lang/String;)V

    .line 329
    :goto_7d
    :try_start_7d
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 330
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_83} :catch_84

    goto :goto_99

    :catch_84
    move-exception p1

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAlwaysOnPdnToRIL: close failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->log(Ljava/lang/String;)V

    :goto_99
    return-void
.end method

.method private blacklist onSecActionIntentNetworkStateChangedAction()V
    .registers 6

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlwaysOnPdn sent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z

    const-string v2, "true"

    const-string v3, "false"

    if-eqz v1, :cond_14

    move-object v1, v2

    goto :goto_15

    :cond_14
    move-object v1, v3

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->log(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_40

    .line 204
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z

    if-nez v0, :cond_de

    .line 205
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->notifyAlwaysOnPdnToRIL(Z)V

    const-string v0, "send SetAlwaysOnPdn for USC "

    .line 206
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->log(Ljava/lang/String;)V

    goto/16 :goto_de

    .line 208
    :cond_40
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "DCM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "Once Wi-Fi is conncted, send SetAlwaysOnPdn"

    if-eqz v0, :cond_64

    .line 209
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mIsWifiConnected:Z

    if-eqz v0, :cond_de

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z

    if-nez v0, :cond_de

    .line 210
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->log(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->notifyAlwaysOnPdnToRIL(Z)V

    goto/16 :goto_de

    .line 213
    :cond_64
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->isAlwaysOnPdnSupported()Z

    move-result v0

    if-eqz v0, :cond_de

    .line 214
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mIsWifiConnected:Z

    if-eqz v0, :cond_7a

    .line 215
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z

    if-nez v0, :cond_de

    .line 216
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->log(Ljava/lang/String;)V

    .line 217
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->notifyAlwaysOnPdnToRIL(Z)V

    goto/16 :goto_de

    .line 220
    :cond_7a
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z

    if-eqz v0, :cond_de

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDataDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->isDataDisabled()Z

    move-result v1

    if-eqz v1, :cond_90

    move-object v1, v2

    goto :goto_91

    :cond_90
    move-object v1, v3

    :goto_91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_a1

    move-object v1, v2

    goto :goto_a2

    :cond_a1
    move-object v1, v3

    :goto_a2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isDefaultDataSubId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->isDefaultDataSubId()Z

    move-result v1

    if-eqz v1, :cond_b1

    goto :goto_b2

    :cond_b1
    move-object v2, v3

    :goto_b2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->log(Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->isDataDisabled()Z

    move-result v0

    if-nez v0, :cond_d5

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->isConnected()Z

    move-result v0

    if-nez v0, :cond_d5

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->isDefaultDataSubId()Z

    move-result v0

    if-nez v0, :cond_cf

    goto :goto_d5

    :cond_cf
    const-string v0, "Once Wi-Fi is disconncted, but defer sending TearDownAlwaysOnPdn"

    .line 234
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->log(Ljava/lang/String;)V

    goto :goto_de

    :cond_d5
    :goto_d5
    const-string v0, "Once Wi-Fi is disconncted, send TearDownAlwaysOnPdn"

    .line 231
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->notifyAlwaysOnPdnToRIL(Z)V

    :cond_de
    :goto_de
    return-void
.end method


# virtual methods
.method public blacklist handleAlwaysOnPdn(Z)V
    .registers 6

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->isAlwaysOnPdnSupported()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 246
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAlwaysOnPdn sent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z

    const-string v2, "true"

    const-string v3, "false"

    if-eqz v1, :cond_1b

    move-object v1, v2

    goto :goto_1c

    :cond_1b
    move-object v1, v3

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIsWifiConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mIsWifiConnected:Z

    if-eqz v1, :cond_29

    goto :goto_2a

    :cond_29
    move-object v2, v3

    :goto_2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->log(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_54

    .line 250
    iget-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z

    if-nez p1, :cond_7a

    .line 251
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->notifyAlwaysOnPdnToRIL(Z)V

    const-string p1, "send SetAlwaysOnPdn for USC "

    .line 252
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->log(Ljava/lang/String;)V

    goto :goto_7a

    :cond_54
    if-eqz p1, :cond_67

    .line 254
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mIsWifiConnected:Z

    if-eqz v0, :cond_67

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z

    if-nez v0, :cond_67

    const-string p1, "Wi-Fi is connected but SetAlwaysOnPdn is not sent, send it now"

    .line 255
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->log(Ljava/lang/String;)V

    .line 256
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->notifyAlwaysOnPdnToRIL(Z)V

    goto :goto_7a

    :cond_67
    if-nez p1, :cond_7a

    .line 257
    iget-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z

    if-eqz p1, :cond_7a

    iget-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mIsWifiConnected:Z

    if-nez p1, :cond_7a

    const-string p1, "onDataSetupComplete: Wi-Fi is disconnected and default is connected,send TearDownAlwaysOnPdn"

    .line 258
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 260
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->notifyAlwaysOnPdnToRIL(Z)V

    :cond_7a
    :goto_7a
    return-void
.end method

.method public blacklist isAlwaysOnPdnRequiredByModem()Z
    .registers 6

    const-string v0, "ro.boot.hardware"

    const-string v1, ""

    .line 148
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qcom"

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "EUR"

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 152
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 153
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "LTN"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    :cond_35
    return v2

    :cond_36
    const-string v1, "mt"

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 160
    :cond_4e
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->isSupportingVoWIFI()Z

    move-result p0

    if-eqz p0, :cond_56

    const/4 p0, 0x1

    return p0

    :cond_56
    return v2
.end method

.method public blacklist isAlwaysOnPdnRequiredByOperator()Z
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    .line 134
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    .line 137
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCellcomSim()Z

    move-result v0

    if-eqz v0, :cond_28

    return v1

    .line 141
    :cond_28
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "USC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    return v1

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isAlwaysOnPdnSupported()Z
    .registers 4

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isTmoSim()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DSG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_4f

    .line 174
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "USC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    return v1

    .line 178
    :cond_2f
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->isSupportingVoWIFI()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_37

    return v2

    .line 184
    :cond_37
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isVzwSim()Z

    move-result v0

    if-eqz v0, :cond_40

    return v1

    .line 189
    :cond_40
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->isAlwaysOnPdnRequiredByOperator()Z

    move-result v0

    if-eqz v0, :cond_47

    return v1

    .line 192
    :cond_47
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->isAlwaysOnPdnRequiredByModem()Z

    move-result p0

    if-eqz p0, :cond_4e

    return v1

    :cond_4e
    return v2

    :cond_4f
    :goto_4f
    return v1
.end method

.method public blacklist isSupportingVoWIFI()Z
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 122
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 121
    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mSupportVowifi:Z

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSupportVowifi : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mSupportVowifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->log(Ljava/lang/String;)V

    .line 124
    iget-boolean p0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mSupportVowifi:Z

    return p0
.end method

.method public blacklist isWifiConnected()Z
    .registers 1

    .line 128
    iget-boolean p0, p0, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->mIsWifiConnected:Z

    return p0
.end method
