.class public Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;
.super Ljava/lang/Object;
.source "SemNitzStateMachineImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/NitzStateMachine;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemNitzStateMachineImpl"

.field private static blacklist mMCCSettingAlertDialog:Landroid/app/AlertDialog;

.field private static blacklist mNeedMultiTimezonePopup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mPrevNitzIso:Ljava/lang/String;


# instance fields
.field private blacklist mCountryIsoCode:Ljava/lang/String;

.field private blacklist mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mLastNitzSignalCleared:Landroid/os/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/TimestampedValue<",
            "Lcom/android/internal/telephony/NitzSignal;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastRegisteredIso:Ljava/lang/String;

.field private blacklist mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

.field private blacklist mNitzSignalInputFilter:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mRetryCnt:I

.field private blacklist mStateMachineImpl:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

.field private blacklist mTimeZoneSuggester:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCountryIsoCode(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRetryCnt(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mRetryCnt:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRetryCnt(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mRetryCnt:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprepareMultiTimezonePopup(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->prepareMultiTimezonePopup()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshowMultitimezonePopup(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->showMultitimezonePopup()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmNeedMultiTimezonePopup()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmPrevNitzIso()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPrevNitzIso:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmPrevNitzIso(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPrevNitzIso:Ljava/lang/String;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    const/4 v0, 0x0

    .line 73
    sput-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mMCCSettingAlertDialog:Landroid/app/AlertDialog;

    const-string v0, ""

    .line 77
    sput-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPrevNitzIso:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;)V
    .registers 7

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 74
    iput-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastRegisteredIso:Ljava/lang/String;

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mRetryCnt:I

    .line 80
    new-instance v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$1;-><init>(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)V

    iput-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mHandler:Landroid/os/Handler;

    .line 125
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/Phone;

    iput-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 126
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    iput-object p2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    .line 127
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;

    iput-object p3, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNitzSignalInputFilter:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;

    .line 128
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;

    iput-object p4, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mTimeZoneSuggester:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;

    .line 129
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mStateMachineImpl:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    .line 131
    :goto_33
    sget-object p1, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    if-gt p1, p2, :cond_49

    .line 132
    sget-object p1, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 135
    :cond_49
    new-instance p1, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$2;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$2;-><init>(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)V

    .line 159
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p3, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    .line 160
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    .line 161
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist checkDetectedTimezone(Ljava/lang/String;Lcom/android/internal/telephony/NitzSignal;)V
    .registers 6

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mTimeZoneSuggester:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;

    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 337
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 336
    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;->getTimeZoneSuggestion(ILjava/lang/String;Lcom/android/internal/telephony/NitzSignal;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p2

    .line 339
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkDetectedTimezone - timezond id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", quality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ad

    .line 342
    invoke-virtual {p2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_44

    .line 343
    invoke-virtual {p2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_ad

    .line 344
    :cond_44
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    sget-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 349
    iput-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastRegisteredIso:Ljava/lang/String;

    .line 351
    :cond_5e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkDetectedTimezone - qualified timezone detected. mNeedMultiTimezonePopup["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 352
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mLastRegisteredIso: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastRegisteredIso:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 351
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    .line 354
    sget-object p1, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mMCCSettingAlertDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_ad

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_ad

    const-string p1, "TIMEZONE: close multi timezone popup"

    .line 355
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    .line 356
    sget-object p1, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mMCCSettingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 357
    sput-object p1, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mMCCSettingAlertDialog:Landroid/app/AlertDialog;

    .line 362
    :cond_ad
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;

    move-result-object p1

    if-eqz p1, :cond_d8

    .line 363
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;

    move-result-object p1

    invoke-virtual {p2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SemCallTrackerHelper;->setTimezoneId(Ljava/lang/String;)V
    :try_end_c2
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c2} :catch_c3

    goto :goto_d8

    :catch_c3
    move-exception p1

    .line 366
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkDetectedTimezone exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->loge(Ljava/lang/String;)V

    :cond_d8
    :goto_d8
    return-void
.end method

.method private blacklist clearNetworkStateAndRerunDetection(Z)V
    .registers 7

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    if-eqz p1, :cond_f

    .line 311
    iput-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    :cond_f
    return-void

    :cond_10
    if-eqz p1, :cond_15

    .line 317
    iput-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    goto :goto_24

    .line 319
    :cond_15
    new-instance v0, Landroid/os/TimestampedValue;

    iget-object v2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    .line 320
    invoke-interface {v2}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->elapsedRealtimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    invoke-direct {v0, v2, v3, v4}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    .line 322
    :goto_24
    iput-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->checkDetectedTimezone(Ljava/lang/String;Lcom/android/internal/telephony/NitzSignal;)V

    if-eqz p1, :cond_3e

    .line 329
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 330
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemCallTrackerHelper;->setLastNitzSignal(Lcom/android/internal/telephony/NitzSignal;)V

    :cond_3e
    return-void
.end method

.method public static blacklist createInstance(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;
    .registers 8

    .line 113
    new-instance v2, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory;->create(Landroid/content/Context;Lcom/android/internal/telephony/NitzStateMachine$DeviceState;)Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;

    move-result-object v3

    .line 115
    new-instance v4, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;

    new-instance v0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    invoke-direct {v0}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;-><init>()V

    invoke-direct {v4, v2, v0}, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;-><init>(Lcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;)V

    .line 117
    new-instance v6, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-static {p0}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->createInstance(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    move-result-object v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;)V

    return-object v6
.end method

.method private blacklist getTimeZoneCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    .registers 4

    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/time/TimeManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/TimeManager;

    invoke-virtual {v0}, Landroid/app/time/TimeManager;->getTimeZoneCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception v0

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTimeZoneCapabilitiesAndConfig exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist isGeoDetectionEnabled()Z
    .registers 6

    const/4 v0, 0x0

    .line 373
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->getTimeZoneCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v1

    .line 374
    invoke-virtual {v1}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeZoneCapabilities;

    move-result-object v2

    .line 375
    invoke-virtual {v1}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v1

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGeoDetectionEnabled: geoDetectionEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", configureGeoDetectionEnabledCapability: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v2}, Landroid/app/time/TimeZoneCapabilities;->getConfigureGeoDetectionEnabledCapability()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 376
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v1}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {v2}, Landroid/app/time/TimeZoneCapabilities;->getConfigureGeoDetectionEnabledCapability()I

    move-result p0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3b} :catch_41

    const/16 v1, 0x28

    if-ne p0, v1, :cond_40

    const/4 v0, 0x1

    :cond_40
    return v0

    :catch_41
    move-exception v1

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGeoDetectionEnabled exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return v0
.end method

.method private blacklist isUserConfigAllowed()Z
    .registers 5

    const/4 v0, 0x0

    .line 512
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->getTimeZoneCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v1

    .line 513
    invoke-virtual {v1}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeZoneCapabilities;

    move-result-object v1

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUserConfigAllowed: ConfigureAutoDetectionEnabledCapability: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/time/TimeZoneCapabilities;->getConfigureAutoDetectionEnabledCapability()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v1}, Landroid/app/time/TimeZoneCapabilities;->getConfigureAutoDetectionEnabledCapability()I

    move-result p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_2b

    const/16 v1, 0x28

    if-ne p0, v1, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    return v0

    :catch_2b
    move-exception v1

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUserConfigAllowed exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return v0
.end method

.method private final blacklist log(Ljava/lang/String;)V
    .registers 5

    .line 533
    sget-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final blacklist loge(Ljava/lang/String;)V
    .registers 5

    .line 537
    sget-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist prepareMultiTimezonePopup()V
    .registers 5

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    .line 389
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d7

    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastRegisteredIso:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_d7

    .line 394
    :cond_12
    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 396
    sget-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 400
    :cond_28
    sget-object v1, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v1, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 404
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v0, "TIMEZONE: already found timezone or user checked"

    .line 405
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return-void

    .line 410
    :cond_53
    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 411
    iget-object v2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getCombinedRegStateMobileData(Landroid/telephony/ServiceState;)I

    move-result v1

    if-eqz v1, :cond_6b

    const-string v0, "TIMEZONE: out of service or limited"

    .line 412
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return-void

    .line 416
    :cond_6b
    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "device_provisioned"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_84

    const-string v0, "TIMEZONE: Setup Wizard doesn\'t finish"

    .line 417
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return-void

    :cond_84
    const-string v1, "sys.boot_completed"

    const-string v2, "0"

    .line 421
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    const-string v0, "TIMEZONE: Boot not completed"

    .line 422
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return-void

    .line 426
    :cond_9a
    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time_zone"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_b5

    const-string v1, "TIMEZONE: Auto timezone is disabled, so telephony doesn\'t prepare for multi timezone popup"

    .line 427
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    .line 428
    iput-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastRegisteredIso:Ljava/lang/String;

    return-void

    .line 432
    :cond_b5
    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->isGeoDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_c1

    const-string v0, "TIMEZONE: working with GeoDetection Timezone"

    .line 433
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return-void

    :cond_c1
    const-string v0, "TIMEZONE: popup timer start"

    .line 437
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 439
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f40

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 390
    :cond_d7
    :goto_d7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TIMEZONE: timezone empty or used for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist restoreNetworkStateAndRerunDetection()V
    .registers 5

    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    if-nez v0, :cond_5

    return-void

    .line 290
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-interface {v0}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->elapsedRealtimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    .line 291
    invoke-virtual {v2}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 292
    iget-object v2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    .line 293
    invoke-interface {v2}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getNitzNetworkDisconnectRetentionMillis()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-eqz v0, :cond_34

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/NitzSignal;

    iput-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    const/4 v1, 0x0

    .line 296
    iput-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    .line 299
    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->checkDetectedTimezone(Ljava/lang/String;Lcom/android/internal/telephony/NitzSignal;)V

    :cond_34
    return-void
.end method

.method private blacklist showMultitimezonePopup()V
    .registers 8

    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "TIMEZONE: countryIsoCode is cleared"

    .line 445
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return-void

    .line 448
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastRegisteredIso:Ljava/lang/String;

    .line 450
    sget-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    .line 452
    :goto_21
    sget-object v2, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 453
    iget-object v2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-ne v1, v2, :cond_32

    goto :goto_46

    .line 454
    :cond_32
    sget-object v2, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_46

    const-string v0, "TIMEZONE: already found timezone or user checked"

    .line 455
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return-void

    :cond_46
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 459
    :cond_49
    sget-object v1, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mMCCSettingAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_59

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_59

    const-string v0, "TIMEZONE: already multi timezone popup showing"

    .line 460
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return-void

    :cond_59
    const-string v1, "TIMEZONE: Show multi timezone popup"

    .line 464
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    .line 466
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 467
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 469
    iget-object v3, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "VZW"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 470
    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v4, 0x20

    if-ne v2, v4, :cond_80

    const/4 v2, 0x1

    goto :goto_81

    :cond_80
    move v2, v0

    .line 472
    :goto_81
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v2, :cond_8d

    const/4 v6, 0x4

    goto :goto_8e

    :cond_8d
    const/4 v6, 0x5

    .line 473
    :goto_8e
    invoke-direct {v4, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    if-eqz v3, :cond_9b

    const v5, 0x1040722

    .line 475
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_a2

    :cond_9b
    const v5, 0x1040bc3

    .line 476
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_a2
    if-eqz v3, :cond_ac

    const v3, 0x1040b38

    .line 477
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_b3

    :cond_ac
    const v3, 0x10405a1

    .line 478
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_b3
    const/high16 v6, 0x1040000

    .line 479
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_bf

    const v2, 0x1080a72

    goto :goto_c2

    :cond_bf
    const v2, 0x1080a73

    .line 481
    :goto_c2
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x1040bc4

    .line 482
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 483
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 484
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 485
    new-instance v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$3;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$3;-><init>(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;Landroid/content/res/Resources;)V

    invoke-virtual {v4, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p0, 0x0

    .line 503
    invoke-virtual {v4, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 505
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mMCCSettingAlertDialog:Landroid/app/AlertDialog;

    .line 506
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x7d3

    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    .line 507
    sget-object p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mMCCSettingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public blacklist dumpLogs(Ljava/io/FileDescriptor;Lcom/android/internal/telephony/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 280
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mStateMachineImpl:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->dumpLogs(Ljava/io/FileDescriptor;Lcom/android/internal/telephony/IndentingPrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist dumpState(Ljava/io/PrintWriter;)V
    .registers 4

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mStateMachineImpl:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->dumpState(Ljava/io/PrintWriter;)V

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SemNitzStateMachineImpl.mNeedMultiTimezonePopup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SemNitzStateMachineImpl.mLastRegisteredIso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastRegisteredIso:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  SemNitzStateMachineImpl.mPrevNitzIso="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPrevNitzIso:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist handleAirplaneModeChanged(Z)V
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mStateMachineImpl:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->handleAirplaneModeChanged(Z)V

    const/4 p1, 0x0

    .line 265
    iput-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    const/4 p1, 0x1

    .line 266
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->clearNetworkStateAndRerunDetection(Z)V

    return-void
.end method

.method public blacklist handleCountryDetected(Ljava/lang/String;)V
    .registers 6

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mStateMachineImpl:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->handleCountryDetected(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    .line 192
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    .line 193
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 195
    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 196
    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->prepareMultiTimezonePopup()V

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCountryDetected: countryIsoCode Changed, mNeedMultiTimezonePopup("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 198
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", oldCountryIsoCode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mLastRegisteredIso= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastRegisteredIso:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    .line 202
    :cond_5d
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->checkDetectedTimezone(Ljava/lang/String;Lcom/android/internal/telephony/NitzSignal;)V

    :cond_62
    return-void
.end method

.method public blacklist handleCountryUnavailable()V
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mStateMachineImpl:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    invoke-virtual {v0}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->handleCountryUnavailable()V

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->checkDetectedTimezone(Ljava/lang/String;Lcom/android/internal/telephony/NitzSignal;)V

    return-void
.end method

.method public blacklist handleNetworkAvailable()V
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mStateMachineImpl:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    invoke-virtual {v0}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->handleNetworkAvailable()V

    .line 169
    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->prepareMultiTimezonePopup()V

    .line 173
    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->restoreNetworkStateAndRerunDetection()V

    return-void
.end method

.method public blacklist handleNetworkUnavailable()V
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mStateMachineImpl:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    invoke-virtual {v0}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->handleNetworkUnavailable()V

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->clearNetworkStateAndRerunDetection(Z)V

    return-void
.end method

.method public blacklist handleNitzReceived(Lcom/android/internal/telephony/NitzSignal;)V
    .registers 8

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mStateMachineImpl:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->handleNitzReceived(Lcom/android/internal/telephony/NitzSignal;)V

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    .line 224
    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNitzSignalInputFilter:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;->mustProcessNitzSignal(Lcom/android/internal/telephony/NitzSignal;Lcom/android/internal/telephony/NitzSignal;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 228
    :cond_10
    iput-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->checkDetectedTimezone(Ljava/lang/String;Lcom/android/internal/telephony/NitzSignal;)V

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemCallTrackerHelper;->setLastNitzSignal(Lcom/android/internal/telephony/NitzSignal;)V

    .line 241
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 243
    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "auto_time"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 244
    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->isUserConfigAllowed()Z

    move-result v3

    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TIMEZONE: countryChanged or boot time. userConfigAllowed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isTimeZoneDetectionEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isTimeDetectionEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mPrevNitzIso: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPrevNitzIso:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", iso: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    if-eqz v3, :cond_a1

    if-eqz v0, :cond_a2

    if-nez v1, :cond_a1

    goto :goto_a2

    :cond_a1
    const/4 v2, 0x0

    :cond_a2
    :goto_a2
    if-eqz v2, :cond_ae

    .line 251
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 256
    :cond_ae
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzSignal;->getNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->nitz_time(Ljava/lang/Long;)V

    .line 257
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzSignal;->getAgeAdjustedElapsedRealtimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->nitz_time_elapsed_time(Ljava/lang/Long;)V

    return-void
.end method
