.class public Lcom/android/server/location/gnss/sec/SuplInitHandler;
.super Ljava/lang/Object;
.source "SuplInitHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SuplInitHandler"

.field public static mSubIdForSuplNi:I = -0x1


# instance fields
.field public mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mContext:Landroid/content/Context;

.field public final mEmergencyNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public mGnssProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

.field public mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

.field public mImsRegistered:[Z

.field public mIsOpenUdpPort:Z

.field public mIsUdpListen:Z

.field public mNiSessionStarted:Z

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$ACsAkh89fZ-Nusg0wwITW-ySW-k(Lcom/android/server/location/gnss/sec/SuplInitHandler;Ljava/net/DatagramPacket;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->lambda$sendUdpSuplInitData$3(Ljava/net/DatagramPacket;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LppH_6DjYOXYj0T4l_XpXY3YFko(Lcom/android/server/location/gnss/sec/SuplInitHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->lambda$checkUDPSuplInit$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$jnrcPq_zX1b-8ebBirEcpqZZ7LY(Lcom/android/server/location/gnss/sec/SuplInitHandler;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->lambda$handleWapPushReceived$1(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jyL9iPDBgAw95td7LQVeyL_B73o(Lcom/android/server/location/gnss/sec/SuplInitHandler;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->lambda$handleDataSmsReceived$0(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmIsOpenUdpPort(Lcom/android/server/location/gnss/sec/SuplInitHandler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsOpenUdpPort:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsUdpListen(Lcom/android/server/location/gnss/sec/SuplInitHandler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsUdpListen:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsUdpListen(Lcom/android/server/location/gnss/sec/SuplInitHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsUdpListen:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckUDPSuplInit(Lcom/android/server/location/gnss/sec/SuplInitHandler;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->checkUDPSuplInit()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/gnss/GnssLocationProviderSec;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .registers 5

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 65
    fill-array-data v0, :array_6c

    iput-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mImsRegistered:[Z

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mNiSessionStarted:Z

    .line 77
    new-instance v0, Lcom/android/server/location/gnss/sec/SuplInitHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler$1;-><init>(Lcom/android/server/location/gnss/sec/SuplInitHandler;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mEmergencyNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 108
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mContext:Landroid/content/Context;

    .line 109
    iput-object p3, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 110
    iput-object p2, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 111
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->getInstance()Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 112
    invoke-static {}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 113
    iget-object p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mContext:Landroid/content/Context;

    const-string p2, "connectivity"

    .line 114
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 115
    iget-object p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 118
    iget-object p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p1

    if-nez p1, :cond_6b

    iget-object p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isEPDNListenRequired()Z

    move-result p1

    if-eqz p1, :cond_6b

    const-string p1, "SuplInitHandler"

    const-string/jumbo p2, "register EmergencyNetworkConnectivityCallback"

    .line 119
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 p2, 0xa

    .line 121
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 122
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 123
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_6b
    return-void

    :array_6c
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static getSubIdForSuplNi()I
    .registers 1

    .line 129
    sget v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    return v0
.end method

.method private synthetic lambda$checkUDPSuplInit$2()V
    .registers 6

    .line 392
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 393
    :goto_c
    iget-boolean v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsUdpListen:Z

    if-eqz v0, :cond_4b

    const/4 v0, 0x0

    .line 394
    :try_start_11
    new-instance v1, Ljava/net/DatagramSocket;

    const/16 v2, 0x1c6b

    invoke-direct {v1, v2}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_18
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_18} :catch_48
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_41

    const/4 v2, 0x1

    .line 395
    :try_start_19
    iput-boolean v2, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsOpenUdpPort:Z

    .line 396
    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->getDatagramPacket(Ljava/net/DatagramSocket;)Ljava/net/DatagramPacket;

    move-result-object v2

    const-string v3, "SuplInitHandler"

    const-string/jumbo v4, "received data through 7275 UDP port"

    .line 397
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_37

    if-gtz v3, :cond_31

    .line 401
    :goto_2d
    :try_start_2d
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V
    :try_end_30
    .catch Ljava/net/SocketTimeoutException; {:try_start_2d .. :try_end_30} :catch_48
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_41

    goto :goto_c

    .line 399
    :cond_31
    :try_start_31
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->sendUdpSuplInitData(Ljava/net/DatagramPacket;)V

    .line 400
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsOpenUdpPort:Z
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_37

    goto :goto_2d

    :catchall_37
    move-exception v2

    .line 394
    :try_start_38
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v1

    :try_start_3d
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw v2
    :try_end_41
    .catch Ljava/net/SocketTimeoutException; {:try_start_3d .. :try_end_41} :catch_48
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_41} :catch_41

    :catch_41
    move-exception v1

    .line 404
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 405
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsOpenUdpPort:Z

    goto :goto_c

    .line 402
    :catch_48
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsOpenUdpPort:Z

    goto :goto_c

    .line 408
    :cond_4b
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-void
.end method

.method private synthetic lambda$handleDataSmsReceived$0(Landroid/content/Intent;)V
    .registers 10

    .line 146
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    const-string v1, "SuplInitHandler"

    if-nez v0, :cond_e

    const-string p0, "Message does not exist in the intent."

    .line 148
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 151
    :cond_e
    array-length v2, v0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_65

    aget-object v4, v0, v3

    if-eqz v4, :cond_62

    .line 152
    iget-object v5, v4, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-nez v5, :cond_1b

    goto :goto_62

    .line 153
    :cond_1b
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v4

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->getSimSubIdFromIntent(Landroid/content/Intent;)I

    move-result v5

    sput v5, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    if-nez v4, :cond_28

    goto :goto_62

    .line 157
    :cond_28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New NI received, Sim Sub id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", SimOperator="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget v7, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    .line 158
    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v5, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    iget-object v6, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget v7, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setSimOperator(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 160
    invoke-virtual {p0, v5}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->setNiSessionStarted(Z)V

    .line 161
    invoke-virtual {p0, v4}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->sendSmsSuplNiMessageToHal([B)V

    :cond_62
    :goto_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_65
    return-void
.end method

.method private synthetic lambda$handleWapPushReceived$1(Landroid/content/Intent;)V
    .registers 5

    const-string v0, "data"

    .line 168
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 170
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->getSimSubIdFromIntent(Landroid/content/Intent;)I

    move-result p1

    sput p1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New NI received, Sim Sub id="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SimOperator="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget v2, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    .line 173
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SuplInitHandler"

    .line 172
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget v2, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setSimOperator(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->setNiSessionStarted(Z)V

    .line 176
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->sendWapSuplInitMessageToHal([B)V

    return-void
.end method

.method private synthetic lambda$sendUdpSuplInitData$3(Ljava/net/DatagramPacket;)V
    .registers 4

    .line 423
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->onRequestSetID(I)V

    .line 424
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->sendSuplNiMessage([BI)V

    return-void
.end method


# virtual methods
.method public final checkAgpsSwitchMode()V
    .registers 5

    .line 270
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_function_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkWapSuplInit NI: isAgpsSwitchMode=AGPS_FUNCTION_SWITCH : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SuplInitHandler"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_49

    .line 275
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 276
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_43

    .line 278
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_66

    .line 279
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result p0

    if-eqz p0, :cond_66

    const-string p0, "checkWapSuplInit NI : agps on only for home network info.isRoaming() == true "

    .line 280
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    :cond_43
    const-string p0, "checkWapSuplInit NI :: agps on only for home network. PS error."

    .line 285
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    :cond_49
    const/4 p0, 0x2

    if-ne v0, p0, :cond_52

    const-string p0, "checkWapSuplInit NI :: agps on for all network. launch NI session"

    .line 288
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 290
    :cond_52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkWapSuplInit NI : agps off isAgpsSwitchMode : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    return-void
.end method

.method public final checkUDPSuplInit()V
    .registers 3

    const-string v0, "SuplInitHandler"

    const-string/jumbo v1, "start UDP socket"

    .line 390
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/sec/SuplInitHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 410
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final convertHashMapToStringBuilder(Ljava/util/HashMap;)Ljava/lang/StringBuilder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 324
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 326
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 327
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SuplInitHandler"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_4d
    return-object p0
.end method

.method public final getDatagramPacket(Ljava/net/DatagramSocket;)Ljava/net/DatagramPacket;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0x5dc

    new-array v0, p0, [B

    .line 415
    new-instance v1, Ljava/net/DatagramPacket;

    invoke-direct {v1, v0, p0}, Ljava/net/DatagramPacket;-><init>([BI)V

    const p0, 0xea60

    .line 416
    invoke-virtual {p1, p0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 417
    invoke-virtual {p1, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    return-object v1
.end method

.method public getImsRegistered(I)Z
    .registers 2

    .line 370
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mImsRegistered:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public getNiSessionStarted()Z
    .registers 1

    .line 137
    iget-boolean p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mNiSessionStarted:Z

    return p0
.end method

.method public getSimSubIdFromIntent(Landroid/content/Intent;)I
    .registers 2

    .line 181
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 182
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "subscription"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 183
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_18

    return p0

    :cond_18
    const/4 p0, -0x1

    return p0
.end method

.method public handleDataSmsReceived(Landroid/content/Intent;)V
    .registers 5

    .line 145
    new-instance v0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/sec/SuplInitHandler;Landroid/content/Intent;)V

    const-string v1, "android.telephony.extra.SLOT_INDEX"

    const/4 v2, -0x1

    .line 163
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 145
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->handleSuplInit(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public final handleSuplInit(Ljava/lang/Runnable;I)V
    .registers 6

    .line 189
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 190
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaMarket()Z

    move-result v0

    const-string v1, "SuplInitHandler"

    if-eqz v0, :cond_41

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSuplInit : slotId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NI_SUPL_SLOTID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 193
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_6f

    :cond_41
    if-ltz p2, :cond_51

    const/4 v0, 0x2

    if-le p2, v0, :cond_47

    goto :goto_51

    .line 199
    :cond_47
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mImsRegistered:[Z

    aget-boolean p0, p0, p2

    if-eqz p0, :cond_6f

    .line 200
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_6f

    .line 196
    :cond_51
    :goto_51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SUPL INIT is rejected, slotId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 204
    :cond_66
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->isSuplNiAvailable()Z

    move-result p0

    if-eqz p0, :cond_6f

    .line 205
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6f
    :goto_6f
    return-void
.end method

.method public handleUseUdpCommand(Landroid/os/Bundle;)V
    .registers 5

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set_use_udp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "use_udp"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SuplInitHandler"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_39

    .line 376
    iget-boolean p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsUdpListen:Z

    if-nez p1, :cond_3c

    .line 377
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsUdpListen:Z

    .line 378
    iget-boolean p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsOpenUdpPort:Z

    if-nez p1, :cond_33

    .line 379
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->checkUDPSuplInit()V

    goto :goto_3c

    :cond_33
    const-string p0, "UDP port is already opened."

    .line 381
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :cond_39
    const/4 p1, 0x0

    .line 385
    iput-boolean p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsUdpListen:Z

    :cond_3c
    :goto_3c
    return-void
.end method

.method public handleWapPushReceived(Landroid/content/Intent;)V
    .registers 5

    .line 167
    new-instance v0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/sec/SuplInitHandler;Landroid/content/Intent;)V

    const-string v1, "android.telephony.extra.SLOT_INDEX"

    const/4 v2, -0x1

    .line 177
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 167
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->handleSuplInit(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public isSuplNiAvailable()Z
    .registers 3

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isSuplNiAvailable(), mGpsEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuplInitHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isSupportSuplNiWithSettingOff()Z

    move-result p0

    if-eqz p0, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 p0, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 p0, 0x1

    :goto_31
    return p0
.end method

.method public final presetForChnNi()V
    .registers 3

    const-string v0, "SuplInitHandler"

    const-string v1, "checkWapSuplInit : WapPush Message for SUPL Init"

    .line 249
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->turnLcdOnForSuplNi()V

    .line 251
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->checkAgpsSwitchMode()V

    return-void
.end method

.method public presetWapSuplInit()V
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaSuplNiSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 242
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->presetForChnNi()V

    goto :goto_17

    .line 243
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKorSuplNiSupported()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 244
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->updateSuplConfigurationForKorNi()V

    :cond_17
    :goto_17
    return-void
.end method

.method public final sendSmsSuplNiMessageToHal([B)V
    .registers 4

    .line 216
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 217
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->updateConfigurationForSmsSuplInit()V

    .line 218
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->onRequestSetID(I)V

    .line 220
    :cond_11
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->sendSuplNiMessage([BI)V

    return-void
.end method

.method public final sendUdpSuplInitData(Ljava/net/DatagramPacket;)V
    .registers 4

    .line 422
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/sec/SuplInitHandler;Ljava/net/DatagramPacket;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendWapSuplInitMessageToHal([B)V
    .registers 4

    .line 224
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 225
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->presetWapSuplInit()V

    .line 226
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->onRequestSetID(I)V

    .line 228
    :cond_11
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->sendSuplNiMessage([BI)V

    return-void
.end method

.method public final setAgnssConstellation()V
    .registers 3

    .line 335
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaSktSim()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaKttSim()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_30

    .line 340
    :cond_11
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaLgu()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaLguSim()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 341
    :cond_21
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    const-string v1, "ENABLE_SUPL_AGNSS_BEIDOU=FALSE"

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 343
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    const-string v0, "ENABLE_SUPL_AGNSS_GALILEO=FALSE"

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    goto :goto_3e

    .line 336
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    const-string v1, "ENABLE_SUPL_AGNSS_BEIDOU=TRUE"

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 338
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    const-string v0, "ENABLE_SUPL_AGNSS_GALILEO=TRUE"

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public final setImsRegistered(IZ)V
    .registers 4

    .line 365
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mImsRegistered:[Z

    aput-boolean p2, p0, p1

    .line 366
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMS smsip["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] registered "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SuplInitHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setNiSessionStarted(Z)V
    .registers 2

    .line 141
    iput-boolean p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mNiSessionStarted:Z

    return-void
.end method

.method public setSubIdForSuplNi(I)V
    .registers 2

    .line 133
    sput p1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    return-void
.end method

.method public final setSuplConfiguration()V
    .registers 10

    .line 303
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaSktSim()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 304
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 305
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getConfigMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->convertHashMapToStringBuilder(Ljava/util/HashMap;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 306
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setSktSuplVer()V

    goto :goto_74

    .line 307
    :cond_21
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaKttSim()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 308
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 309
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getConfigMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->convertHashMapToStringBuilder(Ljava/util/HashMap;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    const/4 v3, 0x3

    const/16 v5, 0x1c6b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    const-string v4, "221.148.242.107"

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(ILjava/lang/String;IIII)V

    goto :goto_74

    .line 313
    :cond_4b
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaLguSim()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 314
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 315
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getConfigMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->convertHashMapToStringBuilder(Ljava/util/HashMap;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    const/4 v3, 0x3

    const/16 v5, 0x1c6b

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0xf

    const-string v4, "e-slp.uplus.co.kr"

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->updateSuplServerConfiguration(ILjava/lang/String;IIII)V

    :cond_74
    :goto_74
    return-void
.end method

.method public final turnLcdOnForSuplNi()V
    .registers 5

    .line 255
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_1f

    const v0, 0x1000001a

    const-string v1, "New message notification LCD on"

    .line 259
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 262
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-eqz v0, :cond_27

    const-wide/16 v1, 0x1388

    .line 265
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_27
    return-void
.end method

.method public updateConfigurationForSmsSuplInit()V
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaSuplNiSupported()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "SuplInitHandler"

    const-string v1, "checkSmsSuplInit : Sms Message for SUPL Init"

    .line 233
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_f
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKorSuplNiSupported()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 236
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->updateSuplConfigurationForKorNi()V

    :cond_1a
    return-void
.end method

.method public updateImsState(Landroid/content/Intent;)V
    .registers 9

    const-string v0, "PHONE_ID"

    const/4 v1, -0x1

    .line 349
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS_REGISTRATION SLOT_ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SuplInitHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_6a

    const/4 v1, 0x2

    if-le v0, v1, :cond_23

    goto :goto_6a

    :cond_23
    const-string v1, "REGISTERED"

    const/4 v3, 0x0

    .line 353
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "SERVICE"

    .line 354
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS service capabilities : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS registration error code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "SIP_ERROR"

    .line 357
    invoke-virtual {p1, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 356
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "smsip"

    .line 359
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 360
    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->setImsRegistered(IZ)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public updateSuplConfigurationForKorNi()V
    .registers 3

    const-string v0, "SuplInitHandler"

    const-string/jumbo v1, "updateSuplConfigurationForNI()"

    .line 296
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->setSuplConfiguration()V

    .line 298
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 299
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->setAgnssConstellation()V

    return-void
.end method
