.class public Lcom/android/internal/telephony/SemGsmCdmaPhone;
.super Lcom/android/internal/telephony/GsmCdmaPhone;
.source "SemGsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemGsmCdmaPhone$InterceptMsg;,
        Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;
    }
.end annotation


# static fields
.field public static final blacklist LOG_TAG:Ljava/lang/String;

.field protected static final blacklist NETWORK_TYPE_REASON_CARRIER:Ljava/lang/String; = "carrier"

.field protected static final blacklist NETWORK_TYPE_REASON_ENABLE_2G:Ljava/lang/String; = "enable_2g"

.field protected static final blacklist NETWORK_TYPE_REASON_POWER:Ljava/lang/String; = "power"

.field protected static final blacklist NETWORK_TYPE_REASON_USER:Ljava/lang/String; = "user"


# instance fields
.field private blacklist mDeviceConfigFeature:I

.field private blacklist mDeviceConfigStatus:I

.field private blacklist mDomainNotificationController:Lcom/android/internal/telephony/SemDomainNotificationController;

.field private blacklist mDrxController:Lcom/android/internal/telephony/DrxController;

.field private blacklist mFdnRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImsPreference:Lcom/android/internal/telephony/ImsPreference;

.field private blacklist mIsVonrSupported:Z

.field private blacklist mKorRtsStatus:Lcom/android/internal/telephony/RtsStatus;

.field private blacklist mLastCwMode:Z

.field private blacklist mLastCwType:I

.field private blacklist mNeedCrossCW:Z

.field private blacklist mPrevSubId:I

.field private blacklist mSemCallTrackerHelper:Lcom/android/internal/telephony/SemCallTrackerHelper;

.field private blacklist mSemChameleonHelper:Lcom/android/internal/telephony/SemChameleonHelper;

.field private blacklist mSemTelephonyHelper:Lcom/android/internal/telephony/SemTelephonyHelper;

.field private blacklist mSemTelephonyTester:Lcom/android/internal/telephony/SemTelephonyTester;

.field private blacklist mSubIdVaildForNetworkModeUpdate:I

.field private blacklist mTelephonyDbHelper:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

.field private blacklist mTelephonyLogger:Lcom/android/internal/telephony/TelephonyLogger;

.field private blacklist mVendorBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mVendorConfigurationTracker:Lcom/android/internal/telephony/VendorConfigurationTracker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFdnRecords(Lcom/android/internal/telephony/SemGsmCdmaPhone;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mFdnRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVendorConfigurationTracker(Lcom/android/internal/telephony/SemGsmCdmaPhone;)Lcom/android/internal/telephony/VendorConfigurationTracker;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mVendorConfigurationTracker:Lcom/android/internal/telephony/VendorConfigurationTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFdnRecords(Lcom/android/internal/telephony/SemGsmCdmaPhone;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mFdnRecords:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/SemGsmCdmaPhone;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/SemGsmCdmaPhone;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    const-class v0, Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .registers 8

    .line 185
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/GsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V

    const/4 p2, 0x0

    .line 120
    iput-boolean p2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mNeedCrossCW:Z

    const/4 p3, 0x1

    .line 121
    iput-boolean p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mLastCwMode:Z

    .line 122
    iput p2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mLastCwType:I

    const/4 p5, 0x0

    .line 125
    iput-object p5, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mFdnRecords:Ljava/util/List;

    .line 128
    iput p2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigFeature:I

    .line 129
    iput p2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigStatus:I

    .line 156
    iput-boolean p2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsVonrSupported:Z

    const/4 p2, -0x1

    .line 162
    iput p2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSubIdVaildForNetworkModeUpdate:I

    .line 163
    iput p2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mPrevSubId:I

    .line 285
    new-instance p6, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;

    invoke-direct {p6, p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;-><init>(Lcom/android/internal/telephony/SemGsmCdmaPhone;)V

    iput-object p6, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mVendorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    iget-object p6, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 v0, 0x234

    invoke-interface {p6, p0, v0, p5}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForAcbInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 192
    new-instance p6, Lcom/android/internal/telephony/RtsStatus;

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-direct {p6, v0, p4}, Lcom/android/internal/telephony/RtsStatus;-><init>(Landroid/content/Context;I)V

    iput-object p6, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mKorRtsStatus:Lcom/android/internal/telephony/RtsStatus;

    .line 195
    new-instance p4, Lcom/android/internal/telephony/VendorConfigurationTracker;

    iget-object p6, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-direct {p4, p0, p6}, Lcom/android/internal/telephony/VendorConfigurationTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/SemCommandsInterface;)V

    iput-object p4, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mVendorConfigurationTracker:Lcom/android/internal/telephony/VendorConfigurationTracker;

    .line 198
    new-instance p4, Lcom/android/internal/telephony/SemCallTrackerHelper;

    invoke-direct {p4, p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p4, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemCallTrackerHelper:Lcom/android/internal/telephony/SemCallTrackerHelper;

    .line 201
    new-instance p4, Lcom/android/internal/telephony/TelephonyLogger;

    invoke-direct {p4, p0}, Lcom/android/internal/telephony/TelephonyLogger;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p4, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mTelephonyLogger:Lcom/android/internal/telephony/TelephonyLogger;

    .line 204
    new-instance p4, Lcom/android/internal/telephony/SemTelephonyHelper;

    invoke-direct {p4, p0}, Lcom/android/internal/telephony/SemTelephonyHelper;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p4, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemTelephonyHelper:Lcom/android/internal/telephony/SemTelephonyHelper;

    .line 207
    invoke-static {p0}, Lcom/android/internal/telephony/ImsPreference;->makeImsPreference(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/ImsPreference;

    move-result-object p4

    iput-object p4, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mImsPreference:Lcom/android/internal/telephony/ImsPreference;

    .line 208
    iget-object p4, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 p6, 0x238

    invoke-interface {p4, p0, p6, p5}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForImsPrefValue(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 211
    new-instance p4, Lcom/android/internal/telephony/SemDomainNotificationController;

    invoke-direct {p4, p0}, Lcom/android/internal/telephony/SemDomainNotificationController;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p4, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDomainNotificationController:Lcom/android/internal/telephony/SemDomainNotificationController;

    .line 214
    new-instance p4, Lcom/android/internal/telephony/DrxController;

    invoke-direct {p4, p0}, Lcom/android/internal/telephony/DrxController;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p4, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDrxController:Lcom/android/internal/telephony/DrxController;

    .line 221
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyTester;->isVendorTestEnabled()Z

    move-result p4

    if-eqz p4, :cond_75

    .line 222
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->makeSemTelephonyTester(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object p4

    iput-object p4, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemTelephonyTester:Lcom/android/internal/telephony/SemTelephonyTester;

    .line 226
    :cond_75
    new-instance p4, Lcom/android/internal/telephony/SemChameleonHelper;

    invoke-direct {p4, p0}, Lcom/android/internal/telephony/SemChameleonHelper;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p4, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemChameleonHelper:Lcom/android/internal/telephony/SemChameleonHelper;

    .line 228
    new-instance p4, Landroid/content/IntentFilter;

    invoke-direct {p4}, Landroid/content/IntentFilter;-><init>()V

    const-string p6, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    .line 230
    invoke-virtual {p4, p6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p6, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    .line 232
    invoke-virtual {p4, p6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p6, "com.samsung.carrier.action.CARRIER_CHANGED"

    .line 233
    invoke-virtual {p4, p6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget p6, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-ne p6, p3, :cond_9e

    const-string p6, "com.samsung.android.telecom.action.CURRENT_TTY_MODE_CHANGED_2"

    .line 236
    invoke-virtual {p4, p6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p6, "com.samsung.android.telecom.action.TTY_PREFERRED_MODE_CHANGED_2"

    .line 237
    invoke-virtual {p4, p6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    :cond_9e
    iget p6, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-nez p6, :cond_a7

    const-string p6, "com.samsung.android.mobiledoctor.DIAGTOOLEX"

    .line 241
    invoke-virtual {p4, p6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    :cond_a7
    iget-object p6, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mVendorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p6, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    sget-object p1, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    const-string p4, "makeSmsConfig on phone"

    invoke-static {p1, p4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-static {p0}, Lcom/android/internal/telephony/SmsConfig;->makeSmsConfig(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SmsConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSmsConfig:Lcom/android/internal/telephony/SmsConfig;

    const/16 p1, 0x235

    .line 255
    invoke-virtual {p0, p0, p1, p5}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 258
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 259
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 p4, 0x1e

    iget p6, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p1, p0, p4, p6}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 262
    iget-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 p4, 0x23d

    invoke-interface {p1, p0, p4, p5}, Lcom/android/internal/telephony/SemCommandsInterface;->setOnSimPbReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->initFdnList()V

    .line 269
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/16 p4, 0x14

    invoke-static {p1, p4}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result p1

    if-nez p1, :cond_f8

    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/16 p4, 0x16

    .line 270
    invoke-static {p1, p4}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result p1

    if-nez p1, :cond_f8

    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/16 p4, 0x17

    .line 271
    invoke-static {p1, p4}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result p1

    if-eqz p1, :cond_fb

    .line 272
    :cond_f8
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->forceNetworkMode()V

    .line 276
    :cond_fb
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserPreferredNetworkType(I)J

    move-result-wide p1

    const-wide/16 p4, -0x1

    cmp-long p1, p1, p4

    const-string p2, "0"

    if-eqz p1, :cond_117

    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->ril_preconfig()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p4, "3"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_130

    :cond_117
    const/16 p1, 0x239

    .line 277
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->getAllowedNetworkTypesBitmask(Landroid/os/Message;)V

    .line 279
    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p1

    sub-int/2addr p1, p3

    if-ne p0, p1, :cond_130

    .line 280
    invoke-static {p2}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->ril_preconfig(Ljava/lang/String;)V

    :cond_130
    return-void
.end method

.method private blacklist checkDeviceConfigForFeature(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    .line 985
    iput v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigFeature:I

    .line 986
    iput v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigStatus:I

    .line 988
    :goto_5
    array-length v1, p2

    if-ge v0, v1, :cond_2b

    .line 991
    aget-object v1, p2, v0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getDeviceConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 993
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 994
    iget v2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigFeature:I

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigFeature:I

    const-string v2, "true"

    .line 995
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 996
    iget v1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigStatus:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigStatus:I

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_2b
    return-void
.end method

.method private blacklist checkDeviceConfigListValue(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    .line 1003
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1004
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 1006
    :goto_c
    array-length v4, p2

    if-ge v3, v4, :cond_df

    .line 1007
    aget-object v4, p2, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    goto/16 :goto_d5

    :cond_19
    const/4 v4, 0x0

    .line 1015
    :try_start_1a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    aget-object v6, p2, v3

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->buildXPathExprUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_b3

    .line 1017
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 1018
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 1019
    invoke-interface {v4}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    move v7, v2

    :goto_3d
    if-ge v7, v5, :cond_b3

    .line 1022
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-eqz v8, :cond_4c

    .line 1023
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v1, v2, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_4c
    move v8, v2

    :goto_4d
    if-ge v8, v6, :cond_a6

    .line 1026
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    if-nez v8, :cond_76

    .line 1028
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_76

    const-string v11, "/"

    .line 1029
    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a3

    .line 1030
    array-length v11, v9

    sub-int/2addr v11, v10

    aget-object v11, v9, v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a3

    .line 1031
    array-length v11, v9

    sub-int/2addr v11, v10

    aget-object v9, v9, v11

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a3

    :cond_76
    if-ne v8, v10, :cond_a3

    .line 1033
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-eqz v10, :cond_a3

    .line 1034
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9e

    .line 1035
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a3

    :cond_9e
    const-string v9, ":Empty;"

    .line 1037
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a3
    :goto_a3
    add-int/lit8 v8, v8, 0x1

    goto :goto_4d

    .line 1041
    :cond_a6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1042
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b0
    .catch Landroid/database/SQLException; {:try_start_1a .. :try_end_b0} :catch_bb
    .catchall {:try_start_1a .. :try_end_b0} :catchall_b9

    add-int/lit8 v7, v7, 0x1

    goto :goto_3d

    :cond_b3
    if-eqz v4, :cond_d5

    .line 1049
    :goto_b5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_d5

    :catchall_b9
    move-exception p0

    goto :goto_d9

    :catch_bb
    move-exception v5

    .line 1046
    :try_start_bc
    sget-object v6, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkDeviceConfigListValue is fail. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d2
    .catchall {:try_start_bc .. :try_end_d2} :catchall_b9

    if-eqz v4, :cond_d5

    goto :goto_b5

    :cond_d5
    :goto_d5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_c

    :goto_d9
    if-eqz v4, :cond_de

    .line 1049
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1051
    :cond_de
    throw p0

    .line 1054
    :cond_df
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist checkNotAllowedNetmode(I)Z
    .registers 7

    .line 1722
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 1723
    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNotAllowedNetworkMode(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1725
    sget-object v2, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkNotAllowedNetmode netMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "24002"

    .line 1726
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3a

    if-ne p1, v2, :cond_3a

    return v2

    :cond_3a
    const/4 v0, 0x0

    move v3, v0

    .line 1730
    :goto_3c
    array-length v4, v1

    if-ge v3, v4, :cond_4b

    .line 1731
    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->networkmodeToInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, p1, :cond_48

    return v2

    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_4b
    return v0
.end method

.method private blacklist forceNetworkMode()V
    .registers 27

    move-object/from16 v0, p0

    .line 1096
    iget-object v1, v0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1102
    iget v2, v0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const-string v3, "ATT"

    const-string v4, "APP"

    const-string v5, "AIO"

    const-string v6, "TFC"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v2

    const-string v7, "DSG"

    const-string v8, "ASR"

    const-string v9, "TMK"

    const-string v10, "TMB"

    const-string v11, ""

    const-string v12, "dsg_default_enabled"

    const-string v13, "tmo_3g_4g_enabled"

    const-string v14, "att_2g_enabled"

    if-eqz v2, :cond_4a

    .line 1103
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserPreferredNetworkType()J

    move-result-wide v15

    const-wide/32 v17, 0x8000

    or-long v15, v15, v17

    const-wide/16 v17, 0x1

    or-long v15, v15, v17

    const-wide/16 v17, 0x2

    or-long v15, v15, v17

    const-string v11, "att_2g_enabled_simdb"

    move-object/from16 v17, v7

    move-object v2, v11

    move-object v11, v14

    :goto_43
    move-wide/from16 v24, v15

    move-object/from16 v16, v8

    move-wide/from16 v7, v24

    goto :goto_9a

    .line 1107
    :cond_4a
    iget v2, v0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    filled-new-array {v10, v9, v8}, [Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v15}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 1108
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserPreferredNetworkType()J

    move-result-wide v15

    const-wide/16 v17, 0x100

    or-long v15, v15, v17

    const-wide/16 v17, 0x80

    or-long v15, v15, v17

    const-wide/16 v17, 0x200

    or-long v15, v15, v17

    const-wide/16 v17, 0x4000

    or-long v15, v15, v17

    const-wide/16 v17, 0x4

    or-long v15, v15, v17

    const-wide/16 v17, 0x1000

    or-long v15, v15, v17

    const-wide/32 v17, 0x40000

    or-long v15, v15, v17

    const-string v11, "tmo_3g_4g_enabled_simdb"

    move-object/from16 v17, v7

    move-object v2, v11

    move-object v11, v13

    goto :goto_43

    .line 1113
    :cond_7e
    iget v2, v0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v15}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_94

    const-wide/32 v15, 0xcd387

    const-string v11, "dsg_default_enabled_simdb"

    move-object/from16 v17, v7

    move-object v2, v11

    move-object v11, v12

    goto :goto_43

    :cond_94
    const-wide/16 v15, 0x0

    move-object/from16 v17, v7

    move-object v2, v11

    goto :goto_43

    .line 1119
    :goto_9a
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v9

    iget v9, v0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x0

    invoke-interface {v1, v9, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v15, "allow_nettype_list"

    move-object/from16 v19, v10

    if-nez v9, :cond_184

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_184

    .line 1120
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v3

    iget v3, v0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x1

    invoke-interface {v9, v3, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v3, -0x1

    .line 1122
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserPreferredNetworkType(I)J

    move-result-wide v9

    const-wide/16 v21, -0x1

    cmp-long v3, v9, v21

    if-eqz v3, :cond_186

    .line 1124
    sget-object v3, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "forceNetworkMode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    iget v3, v0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, v3, v7, v8}, Lcom/android/internal/telephony/SemPhoneInternal;->putNetworkTypeinPreference(IJ)V

    .line 1126
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v9, ")"

    if-eqz v3, :cond_130

    const/4 v3, 0x1

    new-array v10, v3, [Ljava/lang/String;

    .line 1127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v14

    const-string v14, "ATT 2G enabled ("

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v14, v7

    .line 1128
    invoke-static {v14}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    aput-object v3, v10, v9

    .line 1127
    invoke-virtual {v0, v15, v10}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_188

    :cond_130
    move-object/from16 v21, v14

    .line 1129
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15b

    const/4 v3, 0x1

    new-array v10, v3, [Ljava/lang/String;

    .line 1130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TMO 3G/4G enabled ("

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v14, v7

    .line 1131
    invoke-static {v14}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    aput-object v3, v10, v9

    .line 1130
    invoke-virtual {v0, v15, v10}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_188

    .line 1132
    :cond_15b
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_188

    const/4 v3, 0x1

    new-array v10, v3, [Ljava/lang/String;

    .line 1133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DSG Default enabled ("

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v14, v7

    .line 1134
    invoke-static {v14}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    aput-object v3, v10, v9

    .line 1133
    invoke-virtual {v0, v15, v10}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_189

    :cond_184
    move-object/from16 v20, v3

    :cond_186
    move-object/from16 v21, v14

    :cond_188
    :goto_188
    const/4 v9, 0x0

    .line 1139
    :goto_189
    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_364

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_364

    .line 1140
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1144
    iget v1, v0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    move-object/from16 v2, v20

    filled-new-array {v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1bb

    .line 1145
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    const-string v3, "carrier_id IN (1187, 1964, 1955)"

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1ee

    .line 1147
    :cond_1bb
    iget v1, v0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    move-object/from16 v3, v16

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    filled-new-array {v5, v4, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d8

    .line 1148
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    const-string v3, "carrier_id IN (1, 1949, 2433)"

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1ee

    .line 1149
    :cond_1d8
    iget v1, v0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ee

    .line 1150
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    const-string v3, "carrier_id IN (2517, 2518, 2520, 2521, 2528)"

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_1ee
    :goto_1ee
    if-eqz v2, :cond_35f

    .line 1153
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1f8

    goto/16 :goto_35f

    .line 1158
    :cond_1f8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1fc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_364

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 1159
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    const-string v5, "allowed_network_types_for_reasons"

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/SubscriptionController;->getSubscriptionProperty(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1160
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_354

    .line 1161
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    const/4 v9, 0x0

    :goto_228
    if-ge v9, v6, :cond_354

    aget-object v10, v4, v9

    .line 1162
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v1

    const-string v1, "="

    invoke-virtual {v14, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1163
    array-length v14, v1

    move-object/from16 v17, v4

    const/4 v4, 0x2

    if-eq v14, v4, :cond_2d1

    move-object/from16 v4, v21

    .line 1164
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v14, ", value: "

    if-eqz v1, :cond_276

    move-object/from16 v21, v4

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v6

    const-string v6, "ATT 2G enabled in SIMDB : Invalid ALLOWED_NETWORK_TYPES from DB. subid: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v4, v6

    .line 1165
    invoke-virtual {v0, v15, v4}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_345

    :cond_276
    move-object/from16 v21, v4

    move/from16 v18, v6

    .line 1167
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a6

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    .line 1168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TMO 3G/4G enabled in SIMDB : Invalid ALLOWED_NETWORK_TYPES from DB. subid: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v4, v6

    .line 1168
    invoke-virtual {v0, v15, v4}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_345

    .line 1170
    :cond_2a6
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_345

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    .line 1171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DSG Default enabled enabled in SIMDB : Invalid ALLOWED_NETWORK_TYPES from DB. subid: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v4, v6

    .line 1171
    invoke-virtual {v0, v15, v4}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_345

    :cond_2d1
    move/from16 v18, v6

    const/4 v6, 0x0

    .line 1176
    aget-object v4, v1, v6

    const-string v10, "user"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_345

    const/4 v4, 0x1

    .line 1177
    aget-object v9, v1, v4

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    or-long/2addr v9, v7

    .line 1179
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user="

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v22, v7

    aget-object v7, v1, v4

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "forceNetworkMode - subid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", oldNetworkTypes: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    aget-object v1, v1, v6

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newNetworkTypes: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1181
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/internal/telephony/SubscriptionController;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_359

    :cond_345
    :goto_345
    move-wide/from16 v22, v7

    const/4 v6, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v16

    move-object/from16 v4, v17

    move/from16 v6, v18

    move-wide/from16 v7, v22

    goto/16 :goto_228

    :cond_354
    move-object/from16 v16, v1

    move-wide/from16 v22, v7

    const/4 v6, 0x1

    :goto_359
    move-object/from16 v1, v16

    move-wide/from16 v7, v22

    goto/16 :goto_1fc

    :cond_35f
    :goto_35f
    const-string v1, "There is no carrier id in sim db"

    .line 1154
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    :cond_364
    return-void
.end method

.method private blacklist getDeviceConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-string v0, ""

    const/4 v1, 0x0

    .line 968
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->buildXPathExprUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 970
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    .line 971
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_20
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_20} :catch_28
    .catchall {:try_start_3 .. :try_end_20} :catchall_26

    :cond_20
    if-eqz v1, :cond_42

    .line 977
    :goto_22
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_42

    :catchall_26
    move-exception p0

    goto :goto_43

    :catch_28
    move-exception p0

    .line 974
    :try_start_29
    sget-object p1, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceConfigValue is fail. "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_29 .. :try_end_3f} :catchall_26

    if-eqz v1, :cond_42

    goto :goto_22

    :cond_42
    :goto_42
    return-object v0

    :goto_43
    if-eqz v1, :cond_48

    .line 977
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 979
    :cond_48
    throw p0
.end method

.method private blacklist getOppoSlotPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 1484
    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method private blacklist hasOppoSlotMaxRat()Z
    .registers 7

    .line 1489
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getOppoSlotPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 1491
    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserPreferredNetworkType()J

    move-result-wide v0

    const-wide/32 v2, 0x80000

    and-long v4, v0, v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_4c

    .line 1493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oppoSlot["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-nez v3, :cond_24

    const-string v3, "1"

    goto :goto_26

    :cond_24
    const-string v3, "0"

    :goto_26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] NetworkType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v0, v0

    .line 1494
    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1493
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_4c
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist injectInterceptMsg(Landroid/os/Message;ILandroid/os/Message;)V
    .registers 5

    if-eqz p1, :cond_b

    .line 1675
    new-instance p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$InterceptMsg;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/telephony/SemGsmCdmaPhone$InterceptMsg;-><init>(Ljava/lang/Object;ILandroid/os/Message;)V

    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 5

    .line 1753
    sget-object v0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 5

    .line 1761
    sget-object v0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist needsNotAllowedNetmodeSetting()Z
    .registers 9

    .line 1600
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserPreferredNetworkType()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v0

    .line 1601
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->checkNotAllowedNetmode(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 1602
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    int-to-long v2, v0

    .line 1605
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/16 v4, 0xf

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_27

    .line 1606
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    return v5

    .line 1611
    :cond_27
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-eq v0, v5, :cond_33

    if-nez v0, :cond_37

    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->hasOppoSlotMaxRat()Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_33
    const-wide/32 v6, -0x80001

    and-long/2addr v2, v6

    .line 1614
    :cond_37
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    return v5

    :cond_3b
    return v1
.end method

.method private blacklist networkmodeToInt(Ljava/lang/String;)I
    .registers 6

    .line 1740
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch p0, :sswitch_data_38

    :goto_e
    move p0, v3

    goto :goto_30

    :sswitch_10
    const-string p0, "3G/2G"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_e

    :cond_19
    move p0, v0

    goto :goto_30

    :sswitch_1b
    const-string p0, "3G"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_e

    :cond_24
    move p0, v1

    goto :goto_30

    :sswitch_26
    const-string p0, "2G"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto :goto_e

    :cond_2f
    move p0, v2

    :goto_30
    packed-switch p0, :pswitch_data_46

    return v3

    :pswitch_34
    return v2

    :pswitch_35
    return v0

    :pswitch_36
    return v1

    nop

    :sswitch_data_38
    .sparse-switch
        0x655 -> :sswitch_26
        0x674 -> :sswitch_1b
        0x2efabd0 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch
.end method

.method private blacklist putDeviceConfig5gEnable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1087
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1088
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1089
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "latest_5g_default"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1090
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "latest_5g_toggle"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1091
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private blacklist removeOppoSlotMaxRat(JLandroid/os/Message;)V
    .registers 12

    .line 1559
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getOppoSlotPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserPreferredNetworkType()J

    move-result-wide v0

    .line 1560
    new-instance v2, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;

    const/4 v3, 0x0

    invoke-direct {v2, p3, v3, p1, p2}, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;-><init>(Landroid/os/Message;IJ)V

    const/16 p1, 0x23b

    .line 1561
    invoke-virtual {p0, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 p2, -0x80001

    and-long v4, v0, p2

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_27

    .line 1564
    sget v2, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v2}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v2

    int-to-long v4, v2

    and-long/2addr v4, p2

    .line 1566
    :cond_27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "removeOppoSlotMaxRat: try oppoSlot["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-nez p3, :cond_38

    const-string p3, "1"

    goto :goto_3a

    :cond_38
    const-string p3, "0"

    :goto_3a
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] network mode without NR: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v0, v0

    .line 1567
    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")->"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int p3, v4

    .line 1568
    invoke-static {p3}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1566
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1570
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getOppoSlotPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0, v3, v4, v5, p1}, Lcom/android/internal/telephony/Phone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    return-void
.end method

.method private blacklist setCsCrossCallWaiting()V
    .registers 4

    .line 1430
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-nez v0, :cond_5

    return-void

    .line 1434
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 1436
    iget-boolean v1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mNeedCrossCW:Z

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_36

    .line 1437
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v0

    if-nez v0, :cond_36

    const-string v0, "setCsCrossCallWaiting - Cross call waiting for CS"

    .line 1438
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1439
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mNeedCrossCW:Z

    const/16 v0, 0x236

    .line 1440
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_36
    return-void
.end method

.method private blacklist setDeviceConfig(IILjava/lang/String;)V
    .registers 10

    const-string v0, "setDeviceConfig close is fail. "

    .line 1191
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1192
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x11

    .line 1194
    :try_start_e
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0xa4

    .line 1195
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1196
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v3, 0x2

    .line 1198
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    int-to-short p1, p1

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/4 v4, 0x1

    .line 1199
    aget-byte v5, p1, v4

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v5, 0x0

    .line 1200
    aget-byte p1, p1, v5

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1202
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    int-to-short p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 1203
    aget-byte p2, p1, v4

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1204
    aget-byte p1, p1, v5

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1206
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    int-to-short p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 1207
    aget-byte p2, p1, v4

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1208
    aget-byte p1, p1, v5

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1210
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1211
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_78} :catch_8a
    .catchall {:try_start_e .. :try_end_78} :catchall_88

    .line 1216
    :try_start_78
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1217
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7e} :catch_7f

    goto :goto_bd

    :catch_7f
    move-exception p0

    .line 1219
    sget-object p1, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_b0

    :catchall_88
    move-exception p0

    goto :goto_be

    :catch_8a
    move-exception p0

    .line 1213
    :try_start_8b
    sget-object p1, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setDeviceConfig is fail. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_8b .. :try_end_a1} :catchall_88

    .line 1216
    :try_start_a1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1217
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a7} :catch_a8

    goto :goto_bd

    :catch_a8
    move-exception p0

    .line 1219
    sget-object p1, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_b0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_bd
    return-void

    .line 1216
    :goto_be
    :try_start_be
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1217
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c4} :catch_c5

    goto :goto_da

    :catch_c5
    move-exception p1

    .line 1219
    sget-object p2, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :goto_da
    throw p0
.end method

.method private blacklist setNr5gEnable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 1061
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9a

    const/4 v0, 0x2

    .line 1062
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->getAllowedNetworkTypes(I)J

    move-result-wide v1

    .line 1063
    iget-object v3, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1065
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "latest_5g_default"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1066
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "latest_5g_toggle"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1067
    sget-object v6, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setNr5gEnable - nr5gDefault: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " , nr5GToggle: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "false"

    .line 1069
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    const-wide/32 v3, -0x80001

    and-long/2addr v1, v3

    .line 1071
    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    goto :goto_9a

    :cond_74
    const-string v7, "true"

    .line 1072
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-wide/32 v9, 0x80000

    if-eqz v8, :cond_8a

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8a

    or-long/2addr v1, v9

    .line 1074
    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    goto :goto_9a

    .line 1076
    :cond_8a
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    :cond_96
    or-long/2addr v1, v9

    .line 1078
    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    .line 1083
    :cond_9a
    :goto_9a
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->putDeviceConfig5gEnable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist buildXPathExprUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    const-string p0, "content://com.samsung.ims.entitlementconfig.provider"

    .line 1225
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "config"

    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "xpath"

    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "tag_name"

    .line 1226
    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1227
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist convertNetworkTypeReasonToDbName(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_17

    const/4 p0, 0x1

    if-eq p1, p0, :cond_14

    const/4 p0, 0x2

    if-eq p1, p0, :cond_11

    const/4 p0, 0x3

    if-eq p1, p0, :cond_e

    const-string p0, "-1"

    return-object p0

    :cond_e
    const-string p0, "enable_2g"

    return-object p0

    :cond_11
    const-string p0, "carrier"

    return-object p0

    :cond_14
    const-string p0, "power"

    return-object p0

    :cond_17
    const-string p0, "user"

    return-object p0
.end method

.method protected blacklist dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 345
    iget v0, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    if-nez v0, :cond_be

    .line 350
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v0

    if-nez v0, :cond_b1

    .line 356
    sget-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v0, :cond_39

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v1

    iget-object v2, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->isBlockFallback(ILandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_39

    :cond_2c
    const-string p1, "CallRoute - CS fallback fail for TEST"

    .line 358
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 359
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "CS fallback fail for TEST"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 363
    :cond_39
    :goto_39
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_ac

    .line 367
    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v1, :cond_ac

    .line 368
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_ac

    if-eqz v0, :cond_ac

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*91"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_84

    const-string v1, "*72"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ac

    :cond_84
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 370
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLocaleTracker()Lcom/android/internal/telephony/LocaleTracker;

    move-result-object v0

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLocaleTracker()Lcom/android/internal/telephony/LocaleTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/LocaleTracker;->getCurrentCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "us"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    goto :goto_ac

    :cond_9f
    const-string p1, "Blocked the call forwarding in international cdma network"

    .line 371
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 372
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "Blocked the call forwarding in internaltional cdma network"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 376
    :cond_ac
    :goto_ac
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/GsmCdmaPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0

    :cond_b1
    const-string p1, "Block CSFB with ImsCall only case"

    .line 351
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 352
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "cs block cause ImsCall only"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 346
    :cond_be
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const/16 p1, 0x64

    const-string p2, "Couldn\'t start video call"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 691
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/GsmCdmaPhone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " extends:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mTelephonyDbHelper:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    if-nez v0, :cond_23

    .line 694
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->getInstance()Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mTelephonyDbHelper:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    .line 696
    :cond_23
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mTelephonyDbHelper:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    const-string v1, "++++++++++++++++++++++++++++++++"

    if-eqz v0, :cond_31

    .line 697
    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, v2, p2}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->dump(ILjava/io/PrintWriter;)V

    .line 698
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getRadioCapability="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " supportImsCallOnly="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " PREFERRED_NT_MODE="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/internal/telephony/PhoneInternalInterface;->PREFERRED_NT_MODE:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " PREFERRED_NETWORK_MODE="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsVonrSupported : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsVonrSupported:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mImsPreference:Lcom/android/internal/telephony/ImsPreference;

    if-eqz v0, :cond_bb

    .line 713
    :try_start_ad
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/ImsPreference;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_b1

    goto :goto_b5

    :catch_b1
    move-exception v0

    .line 715
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 717
    :goto_b5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 718
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    :cond_bb
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mTelephonyLogger:Lcom/android/internal/telephony/TelephonyLogger;

    if-eqz v0, :cond_cd

    .line 724
    :try_start_bf
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyLogger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c2} :catch_c3

    goto :goto_c7

    :catch_c3
    move-exception v0

    .line 726
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 728
    :goto_c7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 729
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 733
    :cond_cd
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDomainNotificationController:Lcom/android/internal/telephony/SemDomainNotificationController;

    if-eqz v0, :cond_df

    .line 735
    :try_start_d1
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/SemDomainNotificationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d4} :catch_d5

    goto :goto_d9

    :catch_d5
    move-exception v0

    .line 737
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 739
    :goto_d9
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 740
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 744
    :cond_df
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemChameleonHelper:Lcom/android/internal/telephony/SemChameleonHelper;

    if-eqz p0, :cond_f1

    .line 746
    :try_start_e3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SemChameleonHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e6} :catch_e7

    goto :goto_eb

    :catch_e7
    move-exception p0

    .line 748
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 750
    :goto_eb
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 751
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    :cond_f1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist fetchFdnList()V
    .registers 3

    .line 1465
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/SemGsmCdmaPhone$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone$2;-><init>(Lcom/android/internal/telephony/SemGsmCdmaPhone;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1480
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public blacklist getAvailableNetworks(Landroid/os/Message;)V
    .registers 4

    .line 381
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2b

    .line 385
    :cond_d
    sget-object p1, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] getAvailableNetworks: not possible in CDMA"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_2b
    :goto_2b
    const/16 v0, 0x33

    .line 382
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 383
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/SemCommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    :goto_36
    return-void
.end method

.method public blacklist getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;
    .registers 1

    .line 1238
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemCallTrackerHelper:Lcom/android/internal/telephony/SemCallTrackerHelper;

    return-object p0
.end method

.method public blacklist getChameleonHelper()Lcom/android/internal/telephony/SemChameleonHelper;
    .registers 1

    .line 1280
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemChameleonHelper:Lcom/android/internal/telephony/SemChameleonHelper;

    return-object p0
.end method

.method public blacklist getDataServiceState()I
    .registers 2

    .line 1342
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 1345
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result p0

    return p0
.end method

.method public blacklist getDomainNotificationController()Lcom/android/internal/telephony/SemDomainNotificationController;
    .registers 1

    .line 1262
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDomainNotificationController:Lcom/android/internal/telephony/SemDomainNotificationController;

    return-object p0
.end method

.method public blacklist getDrxController()Lcom/android/internal/telephony/DrxController;
    .registers 1

    .line 1268
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDrxController:Lcom/android/internal/telephony/DrxController;

    return-object p0
.end method

.method public blacklist getHomePlmns()[Ljava/lang/String;
    .registers 4

    .line 888
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 889
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_1d

    .line 890
    instance-of v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;

    if-nez v0, :cond_16

    goto :goto_1d

    .line 893
    :cond_16
    check-cast p0, Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getHomePlmns()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    :goto_1d
    return-object v1

    .line 894
    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 895
    sget-object p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    const-string v0, "HPLMN is not available"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 899
    :cond_2c
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_3a

    .line 900
    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/SIMRecords;

    goto :goto_3b

    :cond_3a
    move-object p0, v1

    :goto_3b
    if-eqz p0, :cond_41

    .line 903
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getHomePlmns()[Ljava/lang/String;

    move-result-object v1

    :cond_41
    return-object v1
.end method

.method public blacklist getImsPreference()Lcom/android/internal/telephony/ImsPreference;
    .registers 1

    .line 1256
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mImsPreference:Lcom/android/internal/telephony/ImsPreference;

    return-object p0
.end method

.method public blacklist getKorRtsState(Z)I
    .registers 13

    .line 759
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_10

    return v1

    .line 764
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/android/internal/telephony/SemCallTrackerHelper;->useMdecEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    return v1

    .line 769
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    .line 770
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    if-eqz v3, :cond_2f

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result v3

    if-eqz v3, :cond_2f

    move v3, v2

    goto :goto_30

    :cond_2f
    move v3, v1

    :goto_30
    if-eqz v3, :cond_3d

    .line 771
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getSnapshotStatus()I

    move-result v4

    if-ne v4, v2, :cond_3d

    move v3, v1

    :cond_3d
    if-eqz v0, :cond_4d

    .line 775
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v4

    if-eqz v4, :cond_4d

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v4

    if-eqz v4, :cond_4d

    move v10, v2

    goto :goto_4e

    :cond_4d
    move v10, v1

    .line 776
    :goto_4e
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isImsUseEnabled()Z

    move-result v4

    if-eqz v4, :cond_72

    if-eqz v0, :cond_72

    if-nez v3, :cond_62

    .line 778
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v3

    if-nez v3, :cond_62

    if-eqz v10, :cond_72

    if-eqz p1, :cond_72

    :cond_62
    if-eqz p1, :cond_66

    if-eqz v10, :cond_72

    .line 781
    :cond_66
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_72

    move v0, v2

    goto :goto_73

    :cond_72
    move v0, v1

    .line 783
    :goto_73
    iget-object v3, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 786
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v4, :cond_95

    .line 787
    invoke-virtual {v4}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    .line 788
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    .line 789
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    if-nez v4, :cond_92

    move v1, v2

    :cond_92
    move v6, v1

    move v1, v5

    goto :goto_96

    :cond_95
    move v6, v1

    :goto_96
    if-nez v1, :cond_ae

    .line 791
    iget v4, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->current_plmn()Ljava/util/List;

    move-result-object v5

    const-string v7, ""

    invoke-static {v4, v5, v7}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "oversea"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ae

    move v8, v2

    goto :goto_af

    :cond_ae
    move v8, v1

    :goto_af
    const-string v1, "45006"

    .line 795
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bc

    if-nez p1, :cond_bc

    if-nez v8, :cond_bc

    goto :goto_c6

    :cond_bc
    const-string v1, "450"

    .line 797
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c8

    if-eqz p1, :cond_c8

    :goto_c6
    move v7, v2

    goto :goto_c9

    :cond_c8
    move v7, v0

    .line 801
    :goto_c9
    iget-object v5, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mKorRtsStatus:Lcom/android/internal/telephony/RtsStatus;

    move v9, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/RtsStatus;->getKoreaRtsState(ZZZZZ)I

    move-result p0

    return p0
.end method

.method public blacklist getLine1Number()Ljava/lang/String;
    .registers 8

    .line 806
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const-string v1, ""

    if-nez v0, :cond_e

    .line 807
    sget-object p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    const-string v0, "mUiccController == null"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 811
    :cond_e
    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v3, 0x1

    .line 812
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    move-object v3, v2

    goto :goto_20

    .line 813
    :cond_1a
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 815
    :goto_20
    iget v4, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SPR"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x2

    if-eqz v4, :cond_79

    if-eqz v3, :cond_47

    .line 816
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 817
    sget-object p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    const-string v0, "return MSISDN number in Usim for SPR Mode"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 820
    :cond_47
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, p0, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    if-nez p0, :cond_52

    goto :goto_59

    .line 821
    :cond_52
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/internal/telephony/uicc/RuimRecords;

    :goto_59
    if-eqz v2, :cond_71

    .line 822
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_71

    .line 823
    sget-object p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    const-string v0, "return MDN number in Ruim for SPR Mode"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 826
    :cond_71
    sget-object p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    const-string v0, "return null string for SPR Mode"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 830
    :cond_79
    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "VZW"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_138

    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    .line 831
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "USC"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a3

    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ACG"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    :cond_a3
    iget-object v2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemTelephonyHelper:Lcom/android/internal/telephony/SemTelephonyHelper;

    iget v4, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    .line 832
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/SemTelephonyHelper;->isSupportCdma(I)I

    move-result v2

    if-ne v2, v6, :cond_af

    goto/16 :goto_138

    .line 853
    :cond_af
    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel(I)Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 854
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v3, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v2, v3, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    if-eqz v2, :cond_cf

    .line 856
    sget-object v0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[CDMAPhone] return MDN number in Ruim for Global Mode"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getMdnNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_cf
    if-eqz v0, :cond_ff

    .line 860
    sget-object v0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    const-string v2, "return MSISDN number in Usim for Global Mode"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 862
    iget v3, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f8

    const-string v1, "return MDN number from Subscription for SPR Global Mode"

    .line 863
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getMdnNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f8
    if-eqz v2, :cond_fe

    .line 866
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    :cond_fe
    return-object v1

    .line 871
    :cond_ff
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result v0

    if-eqz v0, :cond_133

    const-string v0, "ril.simoperator"

    const-string v1, "ETC"

    .line 872
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_133

    const-string v1, "CTC"

    .line 873
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 874
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 875
    instance-of v1, v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v1, :cond_12c

    .line 876
    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdnNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 878
    :cond_12c
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getMdnNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 883
    :cond_133
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_138
    :goto_138
    if-nez v3, :cond_142

    .line 834
    sget-object p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    const-string v0, "return MSISDN null with sim"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 837
    :cond_142
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_150

    .line 839
    sget-object p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    const-string v0, "return MSISDN null with msisdn"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 842
    :cond_150
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->isVzwSimInserted()Z

    move-result v1

    if-nez v1, :cond_15e

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getMNOCarrierId()I

    move-result p0

    const/16 v1, 0x7a0

    if-ne p0, v1, :cond_170

    .line 843
    :cond_15e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0xa

    if-le p0, v1, :cond_170

    .line 844
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_170
    return-object v0
.end method

.method public blacklist getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;
    .registers 1

    .line 1250
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemTelephonyHelper:Lcom/android/internal/telephony/SemTelephonyHelper;

    return-object p0
.end method

.method public blacklist getTelephonyLogger()Lcom/android/internal/telephony/TelephonyLogger;
    .registers 1

    .line 1244
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mTelephonyLogger:Lcom/android/internal/telephony/TelephonyLogger;

    return-object p0
.end method

.method public blacklist getUrlFromDeviceConfig()V
    .registers 9

    .line 909
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "//DSS/CRSRateMatching"

    const-string v2, "//VoNR/VoWiFiDisable5GSA"

    .line 910
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 911
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 916
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "carrier_config"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    if-eqz v4, :cond_3e

    .line 918
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4

    if-eqz v4, :cond_3e

    const-string v5, "sem_device_config"

    .line 920
    invoke-virtual {v4, v5, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 922
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string v3, ","

    .line 923
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :cond_3e
    const-string v2, "//EPSFB/VoWiFiDisable5GSA"

    .line 929
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getDeviceConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 930
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_4d

    .line 931
    aput-object v2, v1, v5

    .line 934
    :cond_4d
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->checkDeviceConfigForFeature(Landroid/content/Context;[Ljava/lang/String;)V

    .line 936
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->checkDeviceConfigListValue(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "//NR/NR5GDefault"

    .line 939
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getDeviceConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "//NR/NR5GUserToggleDisplay"

    .line 940
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getDeviceConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 942
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->setNr5gEnable(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x1

    const-string v6, "vonr_call_enable"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "UserVoNRSetting:"

    if-nez v3, :cond_88

    .line 948
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0x00;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_ad

    :cond_88
    if-ne v3, v5, :cond_9c

    .line 950
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0x01;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_ad

    .line 952
    :cond_9c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0x02;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 954
    :goto_ad
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 956
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigFeature:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigStatus:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "tmo_device_config"

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    .line 958
    iget v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigFeature:I

    if-nez v0, :cond_f4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_fb

    .line 959
    :cond_f4
    iget v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigFeature:I

    iget v2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigStatus:I

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->setDeviceConfig(IILjava/lang/String;)V

    :cond_fb
    return-void
.end method

.method public blacklist getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;
    .registers 1

    .line 1232
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mVendorConfigurationTracker:Lcom/android/internal/telephony/VendorConfigurationTracker;

    return-object p0
.end method

.method public blacklist getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;
    .registers 1

    .line 1274
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemTelephonyTester:Lcom/android/internal/telephony/SemTelephonyTester;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 16

    const-string v0, "CS_DIAG_TEST close is fail. "

    .line 404
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4ab

    const/16 v3, 0x2b

    const/4 v4, 0x0

    if-eq v1, v3, :cond_464

    const/16 v3, 0x3e

    const/4 v5, 0x0

    if-eq v1, v3, :cond_448

    const-string v3, ", reason: "

    const-string v6, ")"

    const-string v7, "allow_nettype_list"

    const-string v8, "("

    packed-switch v1, :pswitch_data_4c6

    .line 674
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_4c5

    :pswitch_21
    const-string v0, "EVENT_UPDATE_ALLOW_NETWORKTYPES_DONE Received"

    .line 666
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 667
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 668
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_4c5

    .line 669
    iput v2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSubIdVaildForNetworkModeUpdate:I

    goto/16 :goto_4c5

    .line 656
    :pswitch_32
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 657
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_48

    .line 658
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_48

    .line 659
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsVonrSupported:Z

    .line 662
    :cond_48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_QUERY_SUPPORT_VONR_DONE Received. mIsVonrSupported: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsVonrSupported:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    goto/16 :goto_4c5

    .line 652
    :pswitch_60
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->querySupportVonr()V

    goto/16 :goto_4c5

    :pswitch_65
    const-string p1, "EVENT_SIM_PB_READY Received"

    .line 522
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->initFdnList()V

    goto/16 :goto_4c5

    :pswitch_6f
    const-string p1, "EVENT_DIAGTOOLEX Received"

    .line 628
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 629
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 630
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x12

    .line 633
    :try_start_80
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x23

    .line 634
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x5

    .line 635
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 636
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 638
    iget-object v2, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_98} :catch_b7
    .catchall {:try_start_80 .. :try_end_98} :catchall_b5

    .line 643
    :try_start_98
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 644
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9e} :catch_a0

    goto/16 :goto_4c5

    :catch_a0
    move-exception p1

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_a6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto/16 :goto_4c5

    :catchall_b5
    move-exception v2

    goto :goto_db

    :catch_b7
    move-exception v2

    .line 640
    :try_start_b8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CS_DIAG_TEST is fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_b8 .. :try_end_cc} :catchall_b5

    .line 643
    :try_start_cc
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 644
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_d2} :catch_d4

    goto/16 :goto_4c5

    :catch_d4
    move-exception p1

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_a6

    .line 643
    :goto_db
    :try_start_db
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 644
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e1} :catch_e2

    goto :goto_f5

    :catch_e2
    move-exception p1

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 648
    :goto_f5
    throw v2

    .line 610
    :pswitch_f6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 611
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_SET_OPPOSLOT_MAXRAT_REMOVE_DONE Received. original request - NetMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->networkTypes:J

    long-to-int v2, v5

    .line 613
    invoke-static {v2}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->reason:I

    .line 614
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->convertNetworkTypeReasonToDbName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 612
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 616
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_134

    .line 617
    iget p1, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->reason:I

    iget-wide v1, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->networkTypes:J

    iget-object v0, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->response:Landroid/os/Message;

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    goto/16 :goto_4c5

    .line 619
    :cond_134
    iget-object p0, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->response:Landroid/os/Message;

    if-eqz p0, :cond_4c5

    .line 620
    invoke-static {p0, v4, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 621
    iget-object p0, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->response:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4c5

    .line 555
    :pswitch_142
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 556
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_SET_ALLOW_NETWORKTYPES_DONE - oldNetMode: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->networkTypes:J

    long-to-int v9, v9

    invoke-static {v9}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->reason:I

    .line 558
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->convertNetworkTypeReasonToDbName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 560
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_198

    .line 562
    iget v1, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->reason:I

    if-nez v1, :cond_2c3

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received error! revert networkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->networkTypes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 564
    iget v1, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->reason:I

    iget-wide v2, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->networkTypes:J

    invoke-super {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    goto/16 :goto_2c3

    .line 567
    :cond_198
    iget v1, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->reason:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Phone;->getAllowedNetworkTypes(I)J

    move-result-wide v9

    .line 570
    iget v1, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->reason:I

    if-nez v1, :cond_1c9

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update networkType in DB: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v3, v9

    invoke-static {v3}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 572
    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {p0, v1, v9, v10}, Lcom/android/internal/telephony/SemPhoneInternal;->putNetworkTypeinPreference(IJ)V

    .line 576
    :cond_1c9
    iget-wide v11, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->networkTypes:J

    cmp-long v1, v9, v11

    if-eqz v1, :cond_217

    new-array v1, v2, [Ljava/lang/String;

    .line 577
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->reason:I

    .line 578
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->convertNetworkTypeReasonToDbName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->networkTypes:J

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->networkTypes:J

    long-to-int v11, v11

    .line 579
    invoke-static {v11}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") -> "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v11, v9

    .line 580
    invoke-static {v11}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "), "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 577
    invoke-virtual {p0, v7, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    .line 584
    :cond_217
    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/16 v3, 0xf

    invoke-static {v1, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v1

    if-eqz v1, :cond_2c3

    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->hasOppoSlotMaxRat()Z

    move-result v1

    if-eqz v1, :cond_2c3

    iget v1, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->reason:I

    if-nez v1, :cond_2c3

    const-wide/32 v11, 0x80000

    and-long/2addr v9, v11

    cmp-long v1, v9, v11

    if-nez v1, :cond_2c3

    .line 587
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getOppoSlotPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 588
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_246

    const-string v3, "EXCEPTION CASE, opposite subid vaild but has NR"

    .line 589
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 591
    :cond_246
    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserPreferredNetworkType()J

    move-result-wide v9

    const-wide/32 v11, -0x80001

    and-long/2addr v11, v9

    .line 593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update networkType in oppoSlot["

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-nez v13, :cond_25f

    const-string v13, "1"

    goto :goto_261

    :cond_25f
    const-string v13, "0"

    :goto_261
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "] DB : no sim but has NR networktype, update DB without NR, "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v9, v9

    .line 594
    invoke-static {v9}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")->"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v9, v11

    .line 595
    invoke-static {v9}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 593
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 596
    iget v3, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-nez v3, :cond_29a

    move v3, v2

    goto :goto_29b

    :cond_29a
    move v3, v5

    :goto_29b
    invoke-virtual {p0, v3, v11, v12}, Lcom/android/internal/telephony/SemPhoneInternal;->putNetworkTypeinPreference(IJ)V

    new-array p0, v2, [Ljava/lang/String;

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oppositeNw Changed with NR, Set this slot DB without NR. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-static {v9}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v5

    .line 597
    invoke-virtual {v1, v7, p0}, Lcom/android/internal/telephony/SemPhoneInternal;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    .line 603
    :cond_2c3
    :goto_2c3
    iget-object p0, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->response:Landroid/os/Message;

    if-eqz p0, :cond_4c5

    .line 604
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p0, v4, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 605
    iget-object p0, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->response:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4c5

    .line 528
    :pswitch_2d3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 530
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_307

    .line 531
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    aget p1, p1, v5

    new-array v0, v2, [Ljava/lang/String;

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP default network type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 532
    invoke-virtual {p0, v7, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_36b

    .line 536
    :cond_307
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->default_network()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    .line 537
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 536
    invoke-static {p1, v0, v3}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 540
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const-string v3, "USA"

    const-string v4, "CAN"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34f

    const-string v0, "ro.boot.hardware"

    const-string v3, ""

    .line 541
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "qcom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34f

    .line 542
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->default_network()Ljava/util/List;

    move-result-object p1

    .line 543
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 542
    invoke-static {v5, p1, v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_34f
    new-array v0, v2, [Ljava/lang/String;

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get CP default network type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, v7, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    .line 547
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result p1

    .line 550
    :goto_36b
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->putNetworkTypeinPreference(II)V

    goto/16 :goto_4c5

    :pswitch_372
    const-string v0, "EVENT_IMS_PREFERENCE_CHANGED Received"

    .line 508
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 509
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_388

    .line 510
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_388

    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mImsPreference:Lcom/android/internal/telephony/ImsPreference;

    if-eqz v0, :cond_388

    .line 511
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsPreference;->setImsPreference(Landroid/os/AsyncResult;)V

    .line 513
    :cond_388
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_4c5

    .line 514
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsRegistrationTech()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4c5

    .line 516
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_4c5

    :pswitch_3a2
    const-string v0, "EVENT_SET_CS_CALL_WAITING_DONE Received"

    .line 467
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 468
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 469
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3f6

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_3f6

    .line 471
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const-string v1, "BRI"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3cb

    const-string v0, "Set T/B_CALL_WAITING for TWM"

    .line 472
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 473
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mLastCwMode:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->setTerminalBasedCallWaitingSetting(Z)V

    .line 477
    :cond_3cb
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    if-eqz v0, :cond_3f6

    .line 480
    :try_start_3d5
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 481
    iget-boolean v1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mLastCwMode:Z

    iget v2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mLastCwType:I

    invoke-interface {v0, v1, v2, v4}, Lcom/android/ims/ImsUtInterface;->updateCallWaiting(ZILandroid/os/Message;)V
    :try_end_3e0
    .catch Lcom/android/ims/ImsException; {:try_start_3d5 .. :try_end_3e0} :catch_3e1

    goto :goto_3f6

    :catch_3e1
    move-exception v0

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallWaiting is failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 488
    :cond_3f6
    :goto_3f6
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    if-eqz p0, :cond_4c5

    .line 490
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p0, v0, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 491
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4c5

    :pswitch_408
    const-string p1, "EVENT_SET_CS_CROSS_CALL_WAITING Received"

    .line 461
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 462
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mLastCwMode:Z

    iget p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mLastCwType:I

    invoke-interface {p1, v0, p0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_4c5

    :pswitch_418
    const-string p1, "Event EVENT_SERVICE_STATE_CHANGED Received"

    .line 455
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->setCsCrossCallWaiting()V

    goto/16 :goto_4c5

    .line 442
    :pswitch_422
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c5

    const-string v0, "EVENT_ACB_INFO_CHANGED Received"

    .line 443
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 445
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_4c5

    .line 446
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_4c5

    .line 447
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemTelephonyHelper:Lcom/android/internal/telephony/SemTelephonyHelper;

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemTelephonyHelper;->updateAcBarringFactor([I)V

    goto/16 :goto_4c5

    .line 429
    :cond_448
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 431
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 432
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_45b

    const/4 v0, -0x1

    .line 433
    iput v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSubIdVaildForNetworkModeUpdate:I

    .line 434
    iput p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mPrevSubId:I

    goto :goto_4c5

    .line 435
    :cond_45b
    iget v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mPrevSubId:I

    if-eq v0, p1, :cond_4c5

    .line 436
    iput v5, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSubIdVaildForNetworkModeUpdate:I

    .line 437
    iput p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mPrevSubId:I

    goto :goto_4c5

    .line 407
    :cond_464
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsCarrierNrSupported:Z

    .line 409
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 411
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_4c5

    iget p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSubIdVaildForNetworkModeUpdate:I

    if-eqz p1, :cond_47b

    iget-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mIsCarrierNrSupported:Z

    if-eq v0, p1, :cond_4c5

    .line 413
    :cond_47b
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/16 v0, 0xe

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result p1

    if-eqz p1, :cond_48b

    const-string p1, "do not set network mode after carrierconfig changed in this model"

    .line 414
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    goto :goto_4c5

    .line 417
    :cond_48b
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result p1

    if-eqz p1, :cond_4a1

    .line 418
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->needsNotAllowedNetmodeSetting()Z

    move-result p1

    if-eqz p1, :cond_4a1

    const-string p1, "Operator don\'t allow 3G only or 3G preferred network mode. So, device will set default network mode."

    .line 419
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    goto :goto_4c5

    :cond_4a1
    const/16 p1, 0x240

    .line 423
    invoke-virtual {p0, p1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 424
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->updateAllowedNetworkTypes(Landroid/os/Message;)V

    goto :goto_4c5

    .line 496
    :cond_4ab
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    const-string p1, "EVENT_RADIO_AVAILABLE Received"

    .line 497
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object p1

    if-eqz p1, :cond_4c2

    .line 499
    invoke-virtual {p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->needInitVendorConfiguration()Z

    move-result v0

    if-nez v0, :cond_4c2

    .line 500
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/VendorConfigurationTracker;->setFrameWorkReady(Z)V

    .line 503
    :cond_4c2
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->querySupportVonr()V

    :cond_4c5
    :goto_4c5
    return-void

    :pswitch_data_4c6
    .packed-switch 0x234
        :pswitch_422
        :pswitch_418
        :pswitch_408
        :pswitch_3a2
        :pswitch_372
        :pswitch_2d3
        :pswitch_142
        :pswitch_f6
        :pswitch_6f
        :pswitch_65
        :pswitch_60
        :pswitch_32
        :pswitch_21
    .end packed-switch
.end method

.method public blacklist hasCall(Ljava/lang/String;)Z
    .registers 4

    .line 1335
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemTelephonyHelper:Lcom/android/internal/telephony/SemTelephonyHelper;

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->hasCall(Ljava/lang/String;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    return p0
.end method

.method public blacklist initFdnList()V
    .registers 3

    const-string v0, "initFdnList()"

    .line 1447
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1448
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-nez v0, :cond_c

    const-string v0, "ril.initPB"

    goto :goto_e

    :cond_c
    const-string v0, "ril.initPB2"

    :goto_e
    const-string v1, "0"

    .line 1449
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1450
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-eq v0, v1, :cond_23

    const-string v0, "sim contact is not ready"

    .line 1451
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 1454
    :cond_23
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-nez v0, :cond_33

    const-string v0, "AdnCache is not ready"

    .line 1456
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 1459
    :cond_33
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->fetchFdnList()V

    return-void
.end method

.method public blacklist invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .registers 3

    .line 391
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void
.end method

.method public blacklist invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .registers 3

    .line 396
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist isFdnBlocked(Ljava/lang/String;)Z
    .registers 12

    .line 1385
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d6

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_d6

    .line 1388
    :cond_13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    .line 1389
    sget-object p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    const-string p1, "FDN is blocked (Invalid number)"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1391
    :cond_22
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mFdnRecords:Ljava/util/List;

    if-nez v0, :cond_2e

    .line 1392
    sget-object p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    const-string p1, "FDN is blocked (No FDN records)"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2e
    move v0, v1

    .line 1396
    :goto_2f
    iget-object v3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mFdnRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_ce

    .line 1397
    iget-object v3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mFdnRecords:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 1398
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4b

    goto/16 :goto_ca

    :cond_4b
    const-string v4, "N"

    .line 1403
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ")"

    const-string v6, ", fdnNumber: "

    const-string v7, "FDN is not blocked (number: "

    if-eqz v4, :cond_a2

    move v4, v1

    .line 1405
    :goto_5a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_7d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_7d

    .line 1406
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x4e

    if-eq v8, v9, :cond_7a

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v8, v9, :cond_7a

    move v4, v1

    goto :goto_7e

    :cond_7a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    :cond_7d
    move v4, v2

    :goto_7e
    if-eqz v4, :cond_ca

    .line 1412
    sget-boolean p0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez p0, :cond_a1

    .line 1413
    sget-object p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a1
    return v1

    .line 1417
    :cond_a2
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ca

    .line 1418
    sget-boolean p0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez p0, :cond_c9

    .line 1419
    sget-object p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c9
    return v1

    :cond_ca
    :goto_ca
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2f

    .line 1425
    :cond_ce
    sget-object p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    const-string p1, "FDN is blocked"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1386
    :cond_d6
    :goto_d6
    sget-object p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    const-string p1, "FDN is not blocked (FDN disable)"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public blacklist isMmiDialString(Ljava/lang/String;)Z
    .registers 4

    .line 1351
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 1352
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 1353
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p0, 0x1

    return p0

    :cond_1e
    :goto_1e
    const-string p1, "isMmiDialString - Mmi is null or unrecognized"

    .line 1354
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    return v1

    :cond_24
    const-string p1, "isMmiDialString - CDMA don\'t check mmi when MO call"

    .line 1358
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    return v1
.end method

.method public blacklist isVoNrEnabled(Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 5

    .line 1708
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1709
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->isVoNrEnabled(Landroid/os/Message;Landroid/os/WorkSource;)V

    goto :goto_20

    :cond_10
    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 1711
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->injectInterceptMsg(Landroid/os/Message;ILandroid/os/Message;)V

    const/4 p2, 0x4

    new-array p2, p2, [B

    .line 1712
    fill-array-data p2, :array_22

    .line 1717
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p2, p1}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_20
    return-void

    nop

    :array_22
    .array-data 1
        0x2t
        -0x79t
        0x0t
        0x4t
    .end array-data
.end method

.method public blacklist isVonrSupported()Z
    .registers 3

    .line 1623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVonrSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsVonrSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1624
    iget-boolean p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsVonrSupported:Z

    return p0
.end method

.method public blacklist isVzwSimInserted()Z
    .registers 4

    .line 1366
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v1, 0x1

    .line 1367
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    if-nez p0, :cond_d

    const/4 p0, 0x0

    goto :goto_11

    .line 1369
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    :goto_11
    if-eqz p0, :cond_53

    .line 1370
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 1371
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    const-string v2, "311480"

    .line 1372
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_52

    const-string v2, "311270"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_52

    const-string v2, "310000"

    .line 1373
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_52

    const-string v2, "312770"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_52

    :cond_3e
    const-string v2, "20404"

    .line 1375
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bae0000000000000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_53

    :cond_52
    :goto_52
    return v1

    :cond_53
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist prepareCsCrossCallWaiting(ZI)V
    .registers 4

    const/16 v0, 0x236

    .line 1286
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    .line 1288
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mNeedCrossCW:Z

    .line 1289
    iput-boolean p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mLastCwMode:Z

    .line 1290
    iput p2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mLastCwType:I

    .line 1293
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->setCsCrossCallWaiting()V

    return-void
.end method

.method public blacklist processInterceptMsg(Landroid/os/Message;Ljava/lang/Object;)Z
    .registers 7

    const/4 p0, 0x0

    if-eqz p1, :cond_3f

    .line 1648
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3f

    instance-of v1, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$InterceptMsg;

    if-eqz v1, :cond_3f

    .line 1649
    check-cast v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$InterceptMsg;

    .line 1650
    iget-object v1, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$InterceptMsg;->notiMsg:Landroid/os/Message;

    .line 1651
    iget-object v2, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$InterceptMsg;->resultObj:Ljava/lang/Object;

    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1656
    iget v0, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$InterceptMsg;->cmd:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_22

    if-eqz v1, :cond_3f

    .line 1658
    invoke-static {v1, v2, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1659
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3f

    :cond_22
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3f

    .line 1662
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eqz p2, :cond_38

    .line 1663
    instance-of v1, p2, [B

    if-eqz v1, :cond_38

    .line 1664
    check-cast p2, [B

    aget-byte p2, p2, p0

    if-ne p2, v3, :cond_34

    move p0, v3

    :cond_34
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1666
    :cond_38
    invoke-static {p1, v0, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1667
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return v3

    :cond_3f
    :goto_3f
    return p0
.end method

.method public blacklist querySupportVonr()V
    .registers 3

    const/16 v0, 0x23f

    .line 1680
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->isVoNrEnabled(Landroid/os/Message;Landroid/os/WorkSource;)V

    return-void
.end method

.method public blacklist setAllowedNetworkTypes(IJLandroid/os/Message;)V
    .registers 11

    .line 1505
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 1506
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->isValidAllowedNetworkTypesReason(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2f

    .line 1507
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setAllowedNetworkTypes: Invalid allowed network type reason: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    if-eqz p4, :cond_2e

    .line 1509
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_ARGUMENTS:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p4, v2, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1511
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    :cond_2e
    return-void

    .line 1515
    :cond_2f
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v1

    const-string v3, ", isNetworkTypeLoaded: "

    if-eqz v1, :cond_de

    iget-boolean v1, p0, Lcom/android/internal/telephony/Phone;->mIsAllowedNetworkTypesLoadedFromDb:Z

    if-nez v1, :cond_3d

    goto/16 :goto_de

    :cond_3d
    const-wide/32 v0, 0x80000

    and-long v4, p2, v0

    cmp-long v0, v4, v0

    if-nez v0, :cond_cb

    if-nez p1, :cond_cb

    .line 1527
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->hasOppoSlotMaxRat()Z

    move-result v0

    if-eqz v0, :cond_cb

    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/16 v1, 0xf

    .line 1528
    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 1529
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getOppoSlotPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAllowedNetworkTypes: oppoSlot["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-nez v4, :cond_6d

    const-string v4, "1"

    goto :goto_6f

    :cond_6d
    const-string v4, "0"

    :goto_6f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] is MaxRat, oppoSlotSubIdVaild - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1531
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 1533
    iget-boolean p1, v0, Lcom/android/internal/telephony/Phone;->mIsAllowedNetworkTypesLoadedFromDb:Z

    if-nez p1, :cond_c7

    .line 1535
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setAllowedNetworkTypes: oppoSlot vaild, but network type is not loaded. SubscriptionId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, v0, Lcom/android/internal/telephony/Phone;->mIsAllowedNetworkTypesLoadedFromDb:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1535
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    if-eqz p4, :cond_c6

    .line 1538
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p4, v2, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1540
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    :cond_c6
    return-void

    .line 1545
    :cond_c7
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->removeOppoSlotMaxRat(JLandroid/os/Message;)V

    return-void

    .line 1551
    :cond_cb
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->getAllowedNetworkTypes(I)J

    move-result-wide v0

    .line 1552
    new-instance v2, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;

    invoke-direct {v2, p4, p1, v0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;-><init>(Landroid/os/Message;IJ)V

    const/16 p4, 0x23a

    .line 1553
    invoke-virtual {p0, p4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 1555
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    return-void

    .line 1516
    :cond_de
    :goto_de
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setAllowedNetworkTypes: no sim or network type is not loaded. SubscriptionId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/Phone;->mIsAllowedNetworkTypesLoadedFromDb:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    if-eqz p4, :cond_109

    .line 1519
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p4, v2, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1521
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    :cond_109
    return-void
.end method

.method public blacklist setCallWaitingExt(ZILandroid/os/Message;)Z
    .registers 7

    .line 1299
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mImsPreference:Lcom/android/internal/telephony/ImsPreference;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsPreference;->getCallWaitingPathPref()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_3c

    const-string p2, "Set T/B_CALL_WAITING to DB"

    .line 1300
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    if-eqz p1, :cond_15

    const-string p2, "*"

    goto :goto_17

    :cond_15
    const-string p2, "#"

    :goto_17
    const-string v0, "43"

    const/4 v2, 0x0

    .line 1302
    invoke-static {p2, v0, v2, v2, v2}, Lcom/android/internal/telephony/SemMmiCodeHelper;->makeMmiCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->isFdnBlocked(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 1303
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p3, v2, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1304
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return v1

    .line 1308
    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->setTerminalBasedCallWaitingSetting(Z)V

    .line 1310
    invoke-static {p3, v2, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1311
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return v1

    .line 1316
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mImsPreference:Lcom/android/internal/telephony/ImsPreference;

    .line 1317
    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsPreference;->getCallWaitingPathPref()I

    move-result v0

    const/16 v2, 0x11

    if-eq v0, v2, :cond_54

    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mImsPreference:Lcom/android/internal/telephony/ImsPreference;

    .line 1318
    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsPreference;->getCallWaitingPathPref()I

    move-result v0

    const/16 v2, 0x21

    if-ne v0, v2, :cond_64

    .line 1319
    :cond_54
    iput-boolean p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mLastCwMode:Z

    .line 1321
    iput p2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mLastCwType:I

    const/16 v0, 0x237

    .line 1322
    invoke-virtual {p0, v0, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 1323
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    return v1

    :cond_64
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setVoNrEnabled(ZLandroid/os/Message;Landroid/os/WorkSource;)V
    .registers 9

    const/16 v0, 0x23e

    .line 1689
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v1, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->injectInterceptMsg(Landroid/os/Message;ILandroid/os/Message;)V

    .line 1690
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1691
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoNrEnabled(ZLandroid/os/Message;Landroid/os/WorkSource;)V

    goto :goto_32

    :cond_1a
    const/4 p3, 0x5

    new-array v0, p3, [B

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-byte v3, v0, v2

    const/16 v4, -0x7a

    aput-byte v4, v0, v1

    aput-byte v2, v0, v3

    const/4 v1, 0x3

    aput-byte p3, v0, v1

    const/4 p3, 0x4

    aput-byte p1, v0, p3

    .line 1699
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, v0, p2}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_32
    return-void
.end method

.method protected blacklist updateAllowedNetworkTypes(Landroid/os/Message;)V
    .registers 3

    .line 1576
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "Block updateAllowedNetworkTypes cause Factory mode"

    .line 1577
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void

    .line 1580
    :cond_c
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->updateAllowedNetworkTypes(Landroid/os/Message;)V

    return-void
.end method

.method public varargs blacklist writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 681
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mTelephonyDbHelper:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    if-nez v0, :cond_a

    .line 682
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->getInstance()Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mTelephonyDbHelper:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    .line 684
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mTelephonyDbHelper:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    if-eqz v0, :cond_13

    .line 685
    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->writeData(ILjava/lang/String;[Ljava/lang/String;)V

    :cond_13
    return-void
.end method
