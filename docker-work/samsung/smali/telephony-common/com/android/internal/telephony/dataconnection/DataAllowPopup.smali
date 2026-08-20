.class public Lcom/android/internal/telephony/dataconnection/DataAllowPopup;
.super Ljava/lang/Object;
.source "DataAllowPopup.java"


# static fields
.field public static final blacklist INTENT_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final blacklist REASON_APMMODE_OFF:Ljava/lang/String; = "apmModeOff"

.field public static final blacklist REASON_ATTACHED_EXTRA:Ljava/lang/String; = "attachedExtra"

.field public static final blacklist REASON_COUNTRY_KOR:Ljava/lang/String; = "countryKor"

.field public static final blacklist REASON_DATA_TARIFF:Ljava/lang/String; = "dataTariff"

.field public static final blacklist REASON_OFFBY_POLICY:Ljava/lang/String; = "offByPolicy"

.field public static final blacklist REASON_OPERATOR_KTT:Ljava/lang/String; = "operatorKtt"

.field public static final blacklist REASON_POPUP_PRESSED:Ljava/lang/String; = "popupPressed"

.field public static final blacklist REASON_PROMPT_ROAMING:Ljava/lang/String; = "promptRoaming"

.field public static final blacklist REASON_TSS_2DOT0:Ljava/lang/String; = "tss2dot0"

.field public static final blacklist TELEPHONY_CMD_ALLOW_DATA_POPUP_CREATE:Ljava/lang/String; = "allow_data_popup_create"

.field public static final blacklist TELEPHONY_URI_TELEPHONYUI_INTERNAL:Landroid/net/Uri;


# instance fields
.field private blacklist mBootCompleted:Z

.field private final blacklist mContentResolver:Landroid/content/ContentResolver;

.field private final blacklist mDataAllowEventLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mDataAllowPopupLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field private blacklist mDeferredDataAllowPopup:Z

.field private final blacklist mFacade:Lcom/android/internal/telephony/TelephonyFacade;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private blacklist mNeedDataAllowPopup:Z

.field private blacklist mNeedRoamingDataAllowPopup:Z

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mWaitingForUserPress:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const-string v0, "content://com.samsung.android.app.telephonyui.internal"

    .line 63
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->TELEPHONY_URI_TELEPHONYUI_INTERNAL:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V
    .registers 6

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mNeedDataAllowPopup:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mNeedRoamingDataAllowPopup:Z

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mWaitingForUserPress:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mDeferredDataAllowPopup:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mBootCompleted:Z

    .line 68
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mDataAllowPopupLog:Lcom/android/internal/telephony/LocalLog;

    .line 69
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mDataAllowEventLog:Lcom/android/internal/telephony/LocalLog;

    .line 79
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getTelephonyFacade()Lcom/android/internal/telephony/TelephonyFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mFacade:Lcom/android/internal/telephony/TelephonyFacade;

    .line 80
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 81
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 82
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mContentResolver:Landroid/content/ContentResolver;

    .line 83
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mLogTag:Ljava/lang/String;

    return-void
.end method

.method private blacklist compareFileStr(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 243
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_9} :catch_5c

    if-eqz p1, :cond_64

    .line 246
    :try_start_b
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_10} :catch_53
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_4a
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_10} :catch_5c

    .line 247
    :try_start_10
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_40

    .line 248
    :try_start_15
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_36

    .line 249
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_2c

    .line 250
    :try_start_22
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_36

    :try_start_25
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_40

    :try_start_28
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_2b} :catch_53
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_4a
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_2b} :catch_5c

    return p2

    :catchall_2c
    move-exception p2

    .line 246
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception v1

    :try_start_32
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_35
    throw p2
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p2

    :try_start_37
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_3f

    :catchall_3b
    move-exception v0

    :try_start_3c
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3f
    throw p2
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_40

    :catchall_40
    move-exception p2

    :try_start_41
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception p1

    :try_start_46
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_49
    throw p2
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_4a} :catch_53
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4a} :catch_4a
    .catch Ljava/lang/SecurityException; {:try_start_46 .. :try_end_4a} :catch_5c

    :catch_4a
    move-exception p1

    .line 253
    :try_start_4b
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->loge(Ljava/lang/String;)V

    goto :goto_64

    :catch_53
    move-exception p1

    .line 251
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->loge(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/SecurityException; {:try_start_4b .. :try_end_5b} :catch_5c

    goto :goto_64

    :catch_5c
    move-exception p1

    .line 257
    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->loge(Ljava/lang/String;)V

    :cond_64
    :goto_64
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist decideToRequest(Ljava/lang/String;)Z
    .registers 6

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isNeedDataAllowPopup()Z

    move-result v0

    if-nez v0, :cond_25

    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 342
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isNeedRoamingDataAllowPopup()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 343
    :cond_25
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isWaitingForUserPress()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_99

    .line 345
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "XEC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->supportDataTariffForTSS()Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_6e

    .line 358
    :cond_3f
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p1

    if-eqz p1, :cond_59

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 359
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataKnoxUtils;->isDataRoamingEnabledFromKnox(Lcom/android/internal/telephony/Phone;)Z

    move-result p1

    if-nez p1, :cond_59

    const-string p1, "data roaming enabled form knox false"

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->localLog(Ljava/lang/String;)V

    return v2

    .line 363
    :cond_59
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setWaitingForUserPress(Z)V

    .line 365
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isDeferredDataAllowPopup()Z

    move-result p1

    if-nez p1, :cond_99

    const p1, 0x4207c

    .line 366
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->sendMessage(I)V

    const-string p1, "deferring ACTION_DATA_SELECTION_POPUP"

    .line 367
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->localLog(Ljava/lang/String;)V

    goto :goto_99

    .line 346
    :cond_6e
    :goto_6e
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setWaitingForUserPress(Z)V

    if-eqz p1, :cond_93

    const-string v0, ""

    .line 347
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_93

    const-string p1, "android.intent.action.ACTION_DATA_SELECTION_POPUP_FOR_EUR"

    .line 348
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->sendStickyBroadcastIntent(Ljava/lang/String;)V

    .line 350
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setTariffProperties(Ljava/lang/String;)V

    const-string p1, "ACTION_DATA_SELECTION_POPUP_FOR_EUR"

    .line 351
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->localLog(Ljava/lang/String;)V

    goto :goto_99

    :cond_93
    const-string p1, "Already display tariff so Skip to send"

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->localLog(Ljava/lang/String;)V

    return v1

    :cond_99
    :goto_99
    const-string p1, "DataAllowPopup, not allowed"

    .line 372
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->loge(Ljava/lang/String;)V

    const-string p1, "not allowed"

    .line 373
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->localLog(Ljava/lang/String;)V

    return v2

    :cond_a4
    const-string p1, "DataAllowPopup, allowed"

    .line 376
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->loge(Ljava/lang/String;)V

    const-string p1, "allowed"

    .line 377
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->localLog(Ljava/lang/String;)V

    return v1
.end method

.method private blacklist getCountryName()Ljava/lang/String;
    .registers 2

    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mFacade:Lcom/android/internal/telephony/TelephonyFacade;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyFacade;->getCountryName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getGprsState()I
    .registers 4

    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v0

    .line 449
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 450
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getAttachedStatus()Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3c

    .line 452
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 453
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    if-eq v1, v2, :cond_3c

    const/4 v0, 0x0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gprsState fake to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->localLog(Ljava/lang/String;)V

    :cond_3c
    return v0
.end method

.method private blacklist getMainOperatorName()Ljava/lang/String;
    .registers 2

    .line 530
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mFacade:Lcom/android/internal/telephony/TelephonyFacade;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyFacade;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getSalesCode()Ljava/lang/String;
    .registers 1

    .line 522
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyFacade;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getSettingsGlobalInt(Ljava/lang/String;I)I
    .registers 4

    .line 542
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mFacade:Lcom/android/internal/telephony/TelephonyFacade;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/TelephonyFacade;->getSettingsGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private blacklist getSimOperatorNumericForPhone()Ljava/lang/String;
    .registers 3

    .line 503
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mFacade:Lcom/android/internal/telephony/TelephonyFacade;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 504
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    .line 503
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/TelephonyFacade;->getSimOperatorNumericForPhone(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 538
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyFacade;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 534
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyFacade;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 513
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mFacade:Lcom/android/internal/telephony/TelephonyFacade;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/TelephonyFacade;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getTelephonyPropertyFromDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mFacade:Lcom/android/internal/telephony/TelephonyFacade;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/TelephonyFacade;->getTelephonyPropertyFromDefault(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist isDeferredDataAllowPopup()Z
    .registers 1

    .line 117
    iget-boolean p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mDeferredDataAllowPopup:Z

    return p0
.end method

.method private blacklist isRepairBootMode()Z
    .registers 4

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 231
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 232
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 233
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isMaintenanceMode()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boot user : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->localLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_42
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isRestrictedByUserManager()Z
    .registers 2

    .line 433
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const-string v0, "no_config_mobile_networks"

    .line 434
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist isSilentBootMode()Z
    .registers 6

    .line 204
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs/auto_reboot/silence_LCDoff.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    const-string v0, "silentboot? T-SafetyMode"

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->localLog(Ljava/lang/String;)V

    return v1

    :cond_14
    const-string v0, "/efs/sec_efs/auto_reboot/autoinstall.status"

    const-string v2, "AUTO_INSTALL"

    .line 210
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->compareFileStr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "silentboot? fota "

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->localLog(Ljava/lang/String;)V

    return v1

    :cond_24
    const-string v0, "sys.reset_reason"

    const-string v2, "UNKNOWN"

    .line 216
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "P|EX"

    .line 217
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_55

    const-string v2, "P|NT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string v2, "P|WD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string v2, "P|SF"

    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string v2, "P|SR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 219
    :cond_55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "silentboot? reset due to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->localLog(Ljava/lang/String;)V

    const-string v0, "mobile_data_pressed"

    .line 220
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->getSettingsGlobalInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_77

    const-string v0, "silientboot? data popup pressed already"

    .line 221
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->localLog(Ljava/lang/String;)V

    return v1

    :cond_77
    const-string v0, "DataAllowPopup, silentboot? noisy"

    .line 225
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->loge(Ljava/lang/String;)V

    return v3
.end method

.method private blacklist isStateInService(I)Z
    .registers 2

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method private varargs blacklist isTelephonyFeatureCountrySpecific([Ljava/lang/String;)Z
    .registers 3

    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mFacade:Lcom/android/internal/telephony/TelephonyFacade;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/TelephonyFacade;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist isTss2()Z
    .registers 4

    const-string v0, "mdc.singlesku"

    const/4 v1, 0x0

    .line 152
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "mdc.unified"

    .line 153
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v0, :cond_14

    if-nez v2, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    :goto_14
    const-string v0, "DataTariff - Not Supoort TSS 2.0"

    .line 155
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->log(Ljava/lang/String;)V

    return v1
.end method

.method private blacklist isVoldDecrypt()Z
    .registers 4

    const-string v0, "vold.decrypt"

    .line 438
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 439
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    :goto_1e
    return p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 567
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 571
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist processKorOperators()V
    .registers 3

    .line 423
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->getCountryName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    const-string v1, "mobile_data_question"

    .line 424
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->getSettingsGlobalInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_26

    .line 425
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isWaitingForUserPress()Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "mobile_data_question off"

    .line 426
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->localLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "countryKor"

    .line 427
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setNeedDataAllowPopup(ZLjava/lang/String;)V

    :cond_26
    return-void
.end method

.method private blacklist processKttMainOperator()V
    .registers 3

    .line 414
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->getMainOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isNeedRoamingDataAllowPopup()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 416
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    const-string v1, "operatorKtt"

    .line 417
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setNeedRoamingDataAllowPopup(ZLjava/lang/String;)V

    :cond_2c
    return-void
.end method

.method private blacklist processPromptDataRoaming()V
    .registers 3

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isPromptDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "CHINA not support allow popup"

    .line 408
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->localLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "promptRoaming"

    .line 409
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setNeedDataAllowPopup(ZLjava/lang/String;)V

    :cond_11
    return-void
.end method

.method private blacklist processTariffForTss2dot0(Ljava/lang/String;)V
    .registers 4

    .line 396
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XEC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->supportDataTariffForTSS()Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_12
    if-eqz p1, :cond_2a

    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 398
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataTariff()V

    goto :goto_33

    :cond_2a
    const/4 p1, 0x0

    const-string v0, "tss2dot0"

    .line 400
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setNeedDataAllowPopup(ZLjava/lang/String;)V

    .line 401
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setNeedRoamingDataAllowPopup(ZLjava/lang/String;)V

    :cond_33
    :goto_33
    return-void
.end method

.method private blacklist requestDataAllowPopup()V
    .registers 5

    const-string v0, "ACTION_DATA_SELECTION_POPUP sent"

    .line 495
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->eventLog(Ljava/lang/String;)V

    .line 496
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    const/4 v2, 0x0

    .line 497
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 498
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->TELEPHONY_URI_TELEPHONYUI_INTERNAL:Landroid/net/Uri;

    const-string v2, "allow_data_popup_create"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private blacklist sendMessage(I)V
    .registers 2

    .line 386
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist sendStickyBroadcastIntent(Ljava/lang/String;)V
    .registers 3

    .line 390
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private blacklist setTariffProperties(Ljava/lang/String;)V
    .registers 5

    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mFacade:Lcom/android/internal/telephony/TelephonyFacade;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist.sys.tariffpolicy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/TelephonyFacade;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist supportDataTariffForTSS()Z
    .registers 6

    .line 163
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isTss2()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 167
    :cond_8
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v3, "CarrierFeature_Common_CarrierGroup"

    const-string v4, ""

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataTariff - current carrierGroup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->log(Ljava/lang/String;)V

    const-string p0, "XEC"

    .line 170
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    const/4 p0, 0x1

    return p0

    :cond_38
    return v1
.end method


# virtual methods
.method public declared-synchronized blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 546
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v1, "logs :"

    .line 547
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 549
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mDataAllowPopupLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 550
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "event :"

    .line 551
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 553
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mDataAllowEventLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 555
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 556
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist eventLog(Ljava/lang/String;)V
    .registers 2

    .line 563
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mDataAllowEventLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method blacklist isBootCompleted()Z
    .registers 1

    .line 125
    iget-boolean p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mBootCompleted:Z

    return p0
.end method

.method blacklist isDataAllowPopupNecessary(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .registers 11

    .line 267
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->getSimOperatorNumericForPhone()Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.softsim.status"

    const-string v2, "default"

    .line 268
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gsm.sim.state"

    const-string v3, "ABSENT"

    .line 269
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->getTelephonyPropertyFromDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "emergency"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_3d

    .line 271
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    const-string v7, "ims"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 272
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    const-string v7, "bip"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    goto :goto_3d

    :cond_3b
    move v4, v5

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v4, v6

    .line 275
    :goto_3e
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->getCountryName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KOR"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v7

    if-nez v7, :cond_63

    .line 276
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object p1

    const-string v7, "mms"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_63

    move v4, v6

    .line 280
    :cond_63
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->needPopupForCurrentCarrier()Z

    move-result p1

    if-nez p1, :cond_6f

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isPromptDataRoaming()Z

    move-result p1

    if-eqz p1, :cond_b8

    :cond_6f
    if-nez v4, :cond_b8

    const-string p1, "activating"

    .line 281
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b8

    const-string p1, "activated"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b8

    .line 282
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b8

    const-string p1, ""

    .line 283
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b8

    const-string p1, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b8

    const-string p1, "00101"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b8

    .line 284
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->getSalesCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NONE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b8

    .line 285
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SUP"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_b8

    return v6

    :cond_b8
    return v5
.end method

.method blacklist isNeedDataAllowPopup()Z
    .registers 1

    .line 87
    iget-boolean p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mNeedDataAllowPopup:Z

    return p0
.end method

.method blacklist isNeedRoamingDataAllowPopup()Z
    .registers 1

    .line 98
    iget-boolean p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mNeedRoamingDataAllowPopup:Z

    return p0
.end method

.method blacklist isPromptDataRoaming()Z
    .registers 4

    const-string v0, "CHN"

    const-string v1, "HKG"

    const-string v2, "TPE"

    .line 144
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isTelephonyFeatureCountrySpecific([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method blacklist isWaitingForUserPress()Z
    .registers 1

    .line 109
    iget-boolean p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mWaitingForUserPress:Z

    return p0
.end method

.method blacklist localLog(Ljava/lang/String;)V
    .registers 2

    .line 559
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mDataAllowPopupLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method blacklist needPopupForCurrentCarrier()Z
    .registers 3

    .line 134
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->getCountryName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 136
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XEC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->supportDataTariffForTSS()Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method blacklist onBootCompleted()V
    .registers 2

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 490
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->eventLog(Ljava/lang/String;)V

    const v0, 0x4207d

    .line 491
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->sendMessage(I)V

    return-void
.end method

.method blacklist onDataAllowPopupSendible()V
    .registers 3

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_DATA_POPUP_REQUEST_SENDIBLE: deferred:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isDeferredDataAllowPopup()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", booted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isBootCompleted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->eventLog(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isBootCompleted()Z

    move-result v0

    if-nez v0, :cond_43

    const/4 v0, 0x1

    .line 482
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setBootCompleted(Z)V

    .line 483
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isDeferredDataAllowPopup()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 484
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->requestDataAllowPopup()V

    :cond_43
    return-void
.end method

.method blacklist onDeferDataAllowPopup()V
    .registers 4

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_DEFER_DATA_ALLOW_POPUP_REQUEST, deferred:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isDeferredDataAllowPopup()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", booted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isBootCompleted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->eventLog(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isBootCompleted()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4d

    const-string v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, "sys.boot_completed : 1"

    .line 465
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->eventLog(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setBootCompleted(Z)V

    .line 469
    :cond_4d
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isDeferredDataAllowPopup()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 470
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setDeferredDataAllowPopup(Z)V

    .line 471
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 472
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->requestDataAllowPopup()V

    :cond_5f
    return-void
.end method

.method blacklist requestDataAllowPopupIfNecessary(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .registers 8

    .line 293
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->getGprsState()I

    move-result v0

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist.sys.tariffpolicy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataAllowPopup, reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", needPopup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isNeedDataAllowPopup()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", needRoamingPopup="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isNeedRoamingDataAllowPopup()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->loge(Ljava/lang/String;)V

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reason="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isNeedDataAllowPopup()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isNeedRoamingDataAllowPopup()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->localLog(Ljava/lang/String;)V

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waiting="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isWaitingForUserPress()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", deferred="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isDeferredDataAllowPopup()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", boot="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isBootCompleted()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", gprs="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", roaming="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 306
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", tariff="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 307
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", question="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mobile_data_question"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->getSettingsGlobalInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->localLog(Ljava/lang/String;)V

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "repairboot="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isRepairBootMode()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", umRestriction="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isRestrictedByUserManager()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->localLog(Ljava/lang/String;)V

    .line 312
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isStateInService(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_11d

    const-string p1, "not in service state"

    .line 313
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->localLog(Ljava/lang/String;)V

    return v0

    .line 317
    :cond_11d
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isVoldDecrypt()Z

    move-result p1

    if-eqz p1, :cond_129

    const-string p1, "decrypt"

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->localLog(Ljava/lang/String;)V

    return v0

    .line 322
    :cond_129
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->processKorOperators()V

    .line 323
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->processKttMainOperator()V

    .line 324
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->processPromptDataRoaming()V

    .line 326
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->processTariffForTss2dot0(Ljava/lang/String;)V

    .line 328
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isSilentBootMode()Z

    move-result p1

    if-nez p1, :cond_14d

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isRepairBootMode()Z

    move-result p1

    if-nez p1, :cond_14d

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isRestrictedByUserManager()Z

    move-result p1

    if-eqz p1, :cond_148

    goto :goto_14d

    .line 337
    :cond_148
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->decideToRequest(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 329
    :cond_14d
    :goto_14d
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p1

    const-string v1, "offByPolicy"

    if-eqz p1, :cond_15f

    .line 330
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setNeedRoamingDataAllowPopup(ZLjava/lang/String;)V

    goto :goto_162

    .line 332
    :cond_15f
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setNeedDataAllowPopup(ZLjava/lang/String;)V

    :goto_162
    return v3
.end method

.method blacklist setBootCompleted(Z)V
    .registers 2

    .line 129
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mBootCompleted:Z

    return-void
.end method

.method blacklist setDataTariff()V
    .registers 3

    const-string v0, "init for data tariff popup"

    .line 194
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->log(Ljava/lang/String;)V

    const-string v0, ""

    .line 195
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setTariffProperties(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "dataTariff"

    .line 196
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setNeedDataAllowPopup(ZLjava/lang/String;)V

    .line 197
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setNeedRoamingDataAllowPopup(ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setWaitingForUserPress(Z)V

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setDeferredDataAllowPopup(Z)V

    return-void
.end method

.method blacklist setDeferredDataAllowPopup(Z)V
    .registers 2

    .line 121
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mDeferredDataAllowPopup:Z

    return-void
.end method

.method blacklist setNeedDataAllowPopup(ZLjava/lang/String;)V
    .registers 6

    .line 91
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mNeedDataAllowPopup:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 92
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needDataAllowPopup change to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->eventLog(Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->log(Ljava/lang/String;)V

    .line 94
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mNeedDataAllowPopup:Z

    return-void
.end method

.method blacklist setNeedRoamingDataAllowPopup(ZLjava/lang/String;)V
    .registers 6

    .line 102
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mNeedRoamingDataAllowPopup:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 103
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needRoamingDataAllowPopup change to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->eventLog(Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needDataAllowPopup change to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->log(Ljava/lang/String;)V

    .line 105
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mNeedRoamingDataAllowPopup:Z

    return-void
.end method

.method blacklist setWaitingForUserPress(Z)V
    .registers 2

    .line 113
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->mWaitingForUserPress:Z

    return-void
.end method
