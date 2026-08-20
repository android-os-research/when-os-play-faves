.class public Lcom/android/internal/telephony/SemPhoneInternal;
.super Landroid/os/Handler;
.source "SemPhoneInternal.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist default_timers:[[I


# instance fields
.field private greylist mContext:Landroid/content/Context;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private blacklist mNumTimers:I

.field private greylist mPhoneId:I
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected blacklist mRcsCallTracker:Lcom/android/internal/telephony/RcsCallTracker;

.field public greylist mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public blacklist mSmsConfig:Lcom/android/internal/telephony/SmsConfig;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 36
    const-class v0, Lcom/android/internal/telephony/SemPhoneInternal;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 40
    fill-array-data v1, :array_22

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_2c

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/SemPhoneInternal;->default_timers:[[I

    return-void

    nop

    :array_22
    .array-data 4
        0x3
        0x3c
        0x2
    .end array-data

    :array_2c
    .array-data 4
        0x3
        0x3c
        0xa
        0x12c
        0x3c
        0x0
        0x0
        0x19000
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 3

    .line 65
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mContext:Landroid/content/Context;

    .line 67
    iput p2, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    const/4 p1, 0x3

    .line 68
    iput p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mNumTimers:I

    const p1, 0x7fffffff

    if-eq p2, p1, :cond_17

    .line 71
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSemCommandsInterfaces()[Lcom/android/internal/telephony/SemCommandsInterface;

    move-result-object p1

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    :cond_17
    return-void
.end method


# virtual methods
.method public blacklist checkCallControl(Ljava/lang/String;Landroid/os/Message;)Z
    .registers 3

    .line 511
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "checkCallControl should be overridden"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist checkIsSprintSimCard()Z
    .registers 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gsm.sim.sprintsim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist clearEmergencyCallbackModeStateForHandover()Z
    .registers 2

    .line 404
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "clearEmergencyCallbackModeStateForHandover() should be overridden"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "SemPhoneInternal:"

    .line 536
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mPhoneId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mSemCi="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist fetchFdnList()V
    .registers 2

    .line 453
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "fetchFdnList should be overridden"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist forking(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V
    .registers 3

    .line 497
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "forking should be overridden"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;
    .registers 2

    .line 314
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getCallTrackerHelper() should be overridden"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getChameleonHelper()Lcom/android/internal/telephony/SemChameleonHelper;
    .registers 2

    .line 356
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getChameleonHelper() should be overridden"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getCmcCallTracker()Lcom/android/internal/telephony/CmcCallTracker;
    .registers 2

    .line 362
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getCmcCallTracker() should be overridden"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getCombinedRegStateMobileData(Landroid/telephony/ServiceState;)I
    .registers 2

    .line 474
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getCombinedRegStateMobileData should be overridden"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getDataServiceState()I
    .registers 2

    .line 386
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getDataServiceState() should be overridden"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getDefaultNetworkType()I
    .registers 3

    .line 276
    iget p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    .line 277
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->default_network()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 276
    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 279
    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result p0

    return p0
.end method

.method public blacklist getDomainNotificationController()Lcom/android/internal/telephony/SemDomainNotificationController;
    .registers 2

    .line 338
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getDomainNotificationController() should be overridden"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getDrxController()Lcom/android/internal/telephony/DrxController;
    .registers 2

    .line 350
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getDrxController() should be overridden"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getHomePlmns()[Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getICBarring(Landroid/os/Message;)V
    .registers 2

    .line 459
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getICBarring should be overridden"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist getImsPreference()Lcom/android/internal/telephony/ImsPreference;
    .registers 2

    .line 332
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getImsPreference() should be overridden"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getKorRtsState(Z)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getMobileDataRoaming()Z
    .registers 2

    .line 469
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getMobileDataRoaming should be overridden"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getSmsConfig()Lcom/android/internal/telephony/SmsConfig;
    .registers 2

    .line 431
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getSmsConfig() should be overridden"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;
    .registers 2

    .line 326
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getTelephonyHelper() should be overridden"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getTelephonyLogger()Lcom/android/internal/telephony/TelephonyLogger;
    .registers 2

    .line 320
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getTelephonyLogger() should be overridden"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getTerminalBasedCallWaitingSetting()I
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 147
    iget p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_e

    const-string p0, "volte_call_waiting"

    goto :goto_10

    :cond_e
    const-string p0, "volte_call_waiting_slot2"

    .line 146
    :goto_10
    invoke-static {v0, p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public blacklist getUserPreferredNetworkType()J
    .registers 3

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDefaultNetworkType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserPreferredNetworkType(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getUserPreferredNetworkType(I)J
    .registers 7

    const-string v0, "latest_nw_type"

    .line 289
    iget-object v1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 292
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-long v3, p1

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_1e} :catch_1f

    goto :goto_35

    .line 294
    :catch_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    int-to-long p0, p0

    :goto_35
    return-wide p0
.end method

.method public blacklist getUwbTimers()[I
    .registers 9

    .line 250
    iget v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mNumTimers:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    sget-object v0, Lcom/android/internal/telephony/SemPhoneInternal;->default_timers:[[I

    aget-object v0, v0, v1

    goto :goto_10

    :cond_b
    sget-object v0, Lcom/android/internal/telephony/SemPhoneInternal;->default_timers:[[I

    const/4 v2, 0x1

    aget-object v0, v0, v2

    :goto_10
    const/4 v2, 0x0

    .line 253
    :try_start_11
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/efs/sec_efs/tuwb"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_78

    .line 254
    :try_start_18
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_6e

    .line 256
    :try_start_24
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5d

    .line 258
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5d

    .line 259
    sget-object v5, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getUwbTimers from /efs/sec_efs/tuwb: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ","

    .line 260
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 261
    array-length v6, v5

    new-array v0, v6, [I

    .line 262
    :goto_4f
    array-length v6, v5

    if-ge v1, v6, :cond_5d

    .line 263
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v1
    :try_end_5a
    .catchall {:try_start_24 .. :try_end_5a} :catchall_64

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 266
    :cond_5d
    :try_start_5d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_6e

    :try_start_60
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_78

    goto :goto_8f

    :catchall_64
    move-exception v1

    .line 253
    :try_start_65
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_6d

    :catchall_69
    move-exception v4

    :try_start_6a
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6d
    throw v1
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception v1

    :try_start_6f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_77

    :catchall_73
    move-exception v3

    :try_start_74
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_77
    throw v1
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_78} :catch_78

    :catch_78
    move-exception v1

    .line 267
    sget-object v3, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUwbTimers: file read exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8f
    if-nez v2, :cond_a9

    .line 270
    sget-object v1, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUwbTimers default mNumTimers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mNumTimers:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    return-object v0
.end method

.method public greylist getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;
    .registers 1
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;
    .registers 2

    .line 344
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getVendorTelephonyTester() should be overridden"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist hasCall(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist initFdnList()V
    .registers 2

    .line 448
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "initFdnList should be overridden"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist isCmcEmergencyCallSupported()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 480
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isCmcEmergencyCallSupported should be overridden"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isFdnBlocked(Ljava/lang/String;)Z
    .registers 2

    .line 442
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isFdnBlocked should be overridden"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isMmiDialString(Ljava/lang/String;)Z
    .registers 2

    .line 398
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isMmiDialString() should be overridden"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isMultiDeviceCallContinuityEnabledByUser()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 491
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isMultiDeviceCallContinuityEnabledByUser should be overridden"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isVonrSupported()Z
    .registers 2

    .line 522
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isVonrSupported() should be overridden"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isVzwSimInserted()Z
    .registers 2

    .line 436
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "IsVzwSimInserted() should be overridden"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist postInit(I)V
    .registers 6

    .line 76
    iget v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    .line 77
    iget-object v1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 81
    iput p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    const v2, 0x7fffffff

    if-eq p1, v2, :cond_13

    .line 84
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSemCommandsInterfaces()[Lcom/android/internal/telephony/SemCommandsInterface;

    move-result-object v2

    aget-object p1, v2, p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 87
    :cond_13
    sget-object p1, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postInit. phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", semCi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist prepareCsCrossCallWaiting(ZI)V
    .registers 3

    .line 172
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "prepareCsCrossCallWaiting() should be overridden"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist processInterceptMsg(Landroid/os/Message;Ljava/lang/Object;)Z
    .registers 3

    .line 527
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "processInterceptMsg() should be overridden"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist pull(I)V
    .registers 2

    .line 502
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "pull should be overridden"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist putNetworkTypeinPreference(II)V
    .registers 5

    int-to-long v0, p2

    .line 301
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->putNetworkTypeinPreference(IJ)V

    return-void
.end method

.method public blacklist putNetworkTypeinPreference(IJ)V
    .registers 6

    .line 306
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 307
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "latest_nw_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 309
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public blacklist querySupportVonr()V
    .registers 2

    .line 532
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "querySupportVonr() should be overridden"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist sendCallWaitingStatus()V
    .registers 8

    const-string v0, "Exception during sendCallWaitingStatus #2: "

    .line 119
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 120
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTerminalBasedCallWaitingSetting()I

    move-result v3

    .line 123
    sget-object v4, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendCallWaitingStatus - value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xb

    .line 126
    :try_start_28
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x18

    .line 127
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x5

    .line 128
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3a

    const/16 v3, 0xf0

    goto :goto_3c

    :cond_3a
    const/16 v3, 0xf1

    .line 129
    :goto_3c
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 131
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_49} :catch_68
    .catchall {:try_start_28 .. :try_end_49} :catchall_66

    .line 136
    :try_start_49
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 137
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4f} :catch_50

    goto :goto_8f

    :catch_50
    move-exception p0

    .line 139
    sget-object v1, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    :catchall_66
    move-exception p0

    goto :goto_90

    :catch_68
    move-exception p0

    .line 133
    :try_start_69
    sget-object v3, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during sendCallWaitingStatus #1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_69 .. :try_end_7f} :catchall_66

    .line 136
    :try_start_7f
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 137
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_85} :catch_86

    goto :goto_8f

    :catch_86
    move-exception p0

    .line 139
    sget-object v1, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_58

    :goto_8f
    return-void

    .line 136
    :goto_90
    :try_start_90
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 137
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_96} :catch_97

    goto :goto_ac

    :catch_97
    move-exception v1

    .line 139
    sget-object v2, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_ac
    throw p0
.end method

.method blacklist sendDomainChangeSms(B)Z
    .registers 2

    .line 410
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "sendDomainChangeSms() should be overridden"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist sendPublishDialog(Lcom/android/internal/telephony/PublishDialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 486
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "sendPublishDialog should be overridden"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setCallWaitingExt(ZILandroid/os/Message;)Z
    .registers 4

    .line 177
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "setCallWaitingExt() should be overridden"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    if-eqz p4, :cond_5

    .line 506
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    return-void
.end method

.method public blacklist setICBarring([Landroid/os/Bundle;Landroid/os/Message;)V
    .registers 3

    .line 464
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "setICBarring should be overridden"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setSimOnOff(ILandroid/os/Message;)V
    .registers 3

    .line 372
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/SemCommandsInterface;->setSimOnOff(ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist setTerminalBasedCallWaitingByDocomoUssdMessage(Ljava/lang/String;)V
    .registers 4

    .line 158
    iget v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "102*5#"

    .line 160
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 161
    sget-object p1, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Set terminal based call waiting setting to true"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->setTerminalBasedCallWaitingSetting(Z)V

    goto :goto_35

    :cond_22
    const-string v0, "102*4#"

    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 164
    sget-object p1, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Set terminal based call waiting setting to false"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->setTerminalBasedCallWaitingSetting(Z)V

    :cond_35
    :goto_35
    return-void
.end method

.method public blacklist setTerminalBasedCallWaitingSetting(Z)V
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 153
    iget p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_e

    const-string p0, "volte_call_waiting"

    goto :goto_10

    :cond_e
    const-string p0, "volte_call_waiting_slot2"

    .line 152
    :goto_10
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public blacklist setUwbTimers([I)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_150

    .line 183
    array-length v1, p1

    const/4 v2, 0x3

    const/16 v3, 0x8

    if-eq v1, v2, :cond_e

    array-length v1, p1

    if-eq v1, v3, :cond_e

    goto/16 :goto_150

    .line 188
    :cond_e
    array-length v1, p1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_14

    move v1, v4

    goto :goto_15

    :cond_14
    move v1, v0

    .line 190
    :goto_15
    sget-object v5, Lcom/android/internal/telephony/SemPhoneInternal;->default_timers:[[I

    aget-object v5, v5, v1

    invoke-static {p1, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 191
    array-length v0, p1

    iput v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mNumTimers:I

    .line 192
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUwbTimers - default values: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3d
    if-nez v1, :cond_45

    new-array v5, v2, [I

    .line 196
    fill-array-data v5, :array_16c

    goto :goto_4a

    :cond_45
    new-array v5, v3, [I

    .line 197
    fill-array-data v5, :array_176

    :goto_4a
    if-nez v1, :cond_52

    new-array v1, v2, [I

    .line 198
    fill-array-data v1, :array_18a

    goto :goto_57

    :cond_52
    new-array v1, v3, [I

    .line 199
    fill-array-data v1, :array_194

    .line 201
    :goto_57
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v3, v0

    .line 203
    :goto_5d
    iget v6, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mNumTimers:I

    if-ge v3, v6, :cond_b0

    .line 204
    aget v6, p1, v3

    aget v7, v5, v3

    if-gt v6, v7, :cond_80

    if-ltz v6, :cond_80

    aget v7, v1, v3

    rem-int v7, v6, v7

    if-eqz v7, :cond_70

    goto :goto_80

    .line 210
    :cond_70
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 211
    iget v6, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mNumTimers:I

    sub-int/2addr v6, v4

    if-ge v3, v6, :cond_7d

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    .line 205
    :cond_80
    :goto_80
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUwbTimers - invalid t["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] value (new value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", range: 0 ~ "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v5, v3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 214
    :cond_b0
    new-instance v1, Ljava/io/File;

    const-string v3, "/efs/sec_efs/tuwb"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    :try_start_b7
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_c5

    .line 218
    sget-object v3, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v5, "tUWB file already exists"

    invoke-static {v3, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    .line 219
    :cond_c5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_d2

    .line 220
    sget-object v3, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Create new file for tUWB : Fail!"

    invoke-static {v3, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_d2} :catch_138
    .catch Ljava/lang/SecurityException; {:try_start_b7 .. :try_end_d2} :catch_138

    .line 227
    :cond_d2
    :goto_d2
    :try_start_d2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d7} :catch_120

    .line 228
    :try_start_d7
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_dc
    .catchall {:try_start_d7 .. :try_end_dc} :catchall_116

    .line 229
    :try_start_dc
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/16 v5, 0xa

    .line 230
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_e8
    .catchall {:try_start_dc .. :try_end_e8} :catchall_10c

    .line 231
    :try_start_e8
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_116

    :try_start_eb
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_120

    .line 236
    array-length p1, p1

    iput p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mNumTimers:I

    .line 237
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setUwbTimers: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catchall_10c
    move-exception p0

    .line 227
    :try_start_10d
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_110
    .catchall {:try_start_10d .. :try_end_110} :catchall_111

    goto :goto_115

    :catchall_111
    move-exception p1

    :try_start_112
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_115
    throw p0
    :try_end_116
    .catchall {:try_start_112 .. :try_end_116} :catchall_116

    :catchall_116
    move-exception p0

    :try_start_117
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_11a
    .catchall {:try_start_117 .. :try_end_11a} :catchall_11b

    goto :goto_11f

    :catchall_11b
    move-exception p1

    :try_start_11c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_11f
    throw p0
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_120} :catch_120

    :catch_120
    move-exception p0

    .line 232
    sget-object p1, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUwbTimers: file write exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_138
    move-exception p0

    .line 223
    sget-object p1, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUwbTimers: file create exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 184
    :cond_150
    :goto_150
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUwbTimers - Failure: invalid number of parameters! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    nop

    :array_16c
    .array-data 4
        0x1e
        0x78
        0x1e
    .end array-data

    :array_176
    .array-data 4
        0x1e
        0x78
        0x78
        0x384
        0x78
        0x7
        0x7
        0x32000
    .end array-data

    :array_18a
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    :array_194
    .array-data 4
        0x1
        0x1
        0x1
        0xa
        0x1
        0x1
        0x1
        0x1000
    .end array-data
.end method

.method protected blacklist syncClirSetting(Z)V
    .registers 2

    .line 416
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "syncClirSetting() should be overridden"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist updateTtyMode(IZ)V
    .registers 3

    .line 421
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "updateTtyMode() should be overridden"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist updateUiTtyMode(IZ)V
    .registers 3

    .line 426
    sget-object p0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "updateUiTtyMode() should be overridden"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public varargs greylist writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    return-void
.end method
