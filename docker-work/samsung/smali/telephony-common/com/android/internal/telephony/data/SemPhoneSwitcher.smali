.class public Lcom/android/internal/telephony/data/SemPhoneSwitcher;
.super Lcom/android/internal/telephony/data/PhoneSwitcher;
.source "SemPhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/SemPhoneSwitcher$IpcLL;,
        Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;,
        Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;,
        Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;,
        Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;,
        Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;
    }
.end annotation


# static fields
.field protected static final blacklist ACTION_NOPERFORM:I = 0x4

.field protected static final blacklist ACTION_PERFORM:I = 0x1

.field protected static final blacklist ACTION_RECOVER:I = 0x2

.field protected static final blacklist ACTION_RESET:I = 0x3

.field protected static final blacklist DBG_ADS:Z = true

.field protected static final blacklist EVENT_AUTO_DDS_ENABLED:I = 0x194

.field protected static final blacklist EVENT_DELAY_TIMER_EXPIRED:I = 0x196

.field protected static final blacklist EVENT_MOBILE_DATA_SETTING_CHANGE:I = 0x197

.field protected static final blacklist EVENT_ROAMING_SETTING_CHANGE:I = 0x195

.field protected static final blacklist EVENT_SERVICE_STATE_CHANGED:I = 0x192

.field protected static final blacklist EVENT_SERVICE_STATE_CHANGED1:I = 0x193

.field private static blacklist LOG_TAG:Ljava/lang/String; = "DDS-SemPhoneSwitcher"

.field private static blacklist MAX_LOCAL_LOG_LINES:I = 0xc8

.field protected static final blacklist NORMAL_TIME:I = 0x1388

.field protected static final blacklist NOT_SET:I = -0x1

.field protected static final blacklist SIM_SLOT1:I = 0x0

.field protected static final blacklist SIM_SLOT2:I = 0x1

.field protected static final blacklist STATE_HOME:I = 0x1

.field protected static final blacklist STATE_NOPHONE:I = 0x3

.field protected static final blacklist STATE_NOSERVICE:I = 0x0

.field protected static final blacklist STATE_ROAMING:I = 0x2

.field protected static final blacklist STATE_UNKNOWN:I = -0x1

.field protected static blacklist mCurrentState:[I


# instance fields
.field private blacklist isMtk:Z

.field private blacklist isQcom:Z

.field protected blacklist mAutoDdsPhoneId:I

.field private blacklist mEverRequestChanged:I

.field protected blacklist mIsAutoDdsSettingEnabled:Z

.field private blacklist mJPNDataEnabled:[Z

.field private blacklist mJPNRoamingEnabled:[Z

.field private blacklist mModemDependency:Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;

.field private blacklist mMsimSubMode:I

.field private blacklist mNoSet:[Z

.field private blacklist mPreferredDataReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

.field private blacklist mRequestOverride:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

.field private blacklist mSendRiLCommandReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

.field protected blacklist mSentDelayForAutoDds:Z

.field private final blacklist mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

.field protected blacklist mSupportAutoDdsSwitching:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmModemDependency(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mModemDependency:Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMsimSubMode(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mMsimSubMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreferredDataReason(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mPreferredDataReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mRequestOverride:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSendRiLCommandReason(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSendRiLCommandReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSendRiLCommandReason(Lcom/android/internal/telephony/data/SemPhoneSwitcher;Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSendRiLCommandReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 119
    sput-object v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mCurrentState:[I

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/content/Context;Landroid/os/Looper;)V
    .registers 7

    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;-><init>(ILandroid/content/Context;Landroid/os/Looper;)V

    const/4 p1, 0x2

    new-array p2, p1, [Z

    .line 149
    iput-object p2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mNoSet:[Z

    new-array p2, p1, [Z

    .line 150
    iput-object p2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mJPNDataEnabled:[Z

    new-array p1, p1, [Z

    .line 151
    iput-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mJPNRoamingEnabled:[Z

    const-string p1, "ro.boot.hardware"

    const-string p2, ""

    .line 158
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "qcom"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->isQcom:Z

    .line 159
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "mt"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->isMtk:Z

    const/4 p1, 0x0

    .line 161
    iput p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mMsimSubMode:I

    .line 167
    new-instance p2, Lcom/android/internal/telephony/LocalLog;

    sget p3, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->MAX_LOCAL_LOG_LINES:I

    invoke-direct {p2, p3}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 169
    new-instance p2, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    invoke-direct {p2}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mRequestOverride:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    .line 170
    sget-object p2, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;->NONE:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    iput-object p2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSendRiLCommandReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    .line 172
    sget-object p2, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->PRIMARYDATA:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    iput-object p2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mPreferredDataReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    const/4 p2, -0x1

    .line 174
    iput p2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mEverRequestChanged:I

    .line 176
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSupportAutoDdsSwitching:Z

    .line 177
    iput p2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mAutoDdsPhoneId:I

    .line 178
    new-instance p3, Lcom/android/internal/telephony/SettingsObserver;

    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0, p0}, Lcom/android/internal/telephony/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    .line 179
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "EUR"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_8c

    .line 180
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "KOR"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8c

    .line 181
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "JPN"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8c

    const-string p3, "CHN"

    const-string v1, "HKG"

    const-string v2, "TPE"

    filled-new-array {p3, v1, v2}, [Ljava/lang/String;

    move-result-object p3

    .line 182
    invoke-static {p1, p3}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_99

    .line 183
    :cond_8c
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSupportAutoDdsSwitching:Z

    .line 184
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSentDelayForAutoDds:Z

    .line 185
    invoke-direct {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->getAutoDdsSettingValue()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mIsAutoDdsSettingEnabled:Z

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->regiterAutoDdsSwitching()V

    .line 191
    :cond_99
    iget-object p3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v1, "multi_sim_datacross_slot"

    invoke-static {p3, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 192
    iget-object p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "multi_sim_dds_progressing"

    invoke-static {p2, p3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->isQcom:Z

    if-eqz p1, :cond_b9

    new-instance p1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;-><init>(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)V

    goto :goto_be

    :cond_b9
    new-instance p1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$IpcLL;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$IpcLL;-><init>(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)V

    :goto_be
    iput-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mModemDependency:Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;

    .line 197
    iget-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mJPNDataEnabled:[Z

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 198
    iget-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mJPNRoamingEnabled:[Z

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 199
    iget-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mNoSet:[Z

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 201
    invoke-direct {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->getMsimSubMode()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mMsimSubMode:I

    return-void
.end method

.method private blacklist cancelDelayTimer()V
    .registers 3

    const/16 v0, 0x196

    .line 1759
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1760
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 1761
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSentDelayForAutoDds:Z

    :cond_e
    return-void
.end method

.method private blacklist checkModeAndEvalForDsdaCalling()V
    .registers 5

    const-string v0, "persist.radio.multisim.config"

    const-string v1, ""

    .line 1810
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsda"

    .line 1811
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 1813
    :cond_11
    iget v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mMsimSubMode:I

    const/4 v1, 0x0

    .line 1814
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 1815
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 1816
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getMsimSubmode()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mMsimSubMode:I

    .line 1819
    :cond_2a
    iget v2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mMsimSubMode:I

    if-eq v0, v2, :cond_5b

    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5b

    .line 1820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling..msimsubmode change from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mMsimSubMode:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", do re-evaluate"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    const-string v0, "MsimSubModeChanged"

    .line 1821
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    :cond_5b
    return-void
.end method

.method private blacklist getAutoDdsSettingValue()Z
    .registers 3

    .line 1751
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "data_preferred_mode_during_calling"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    move v1, v0

    :cond_11
    return v1
.end method

.method private blacklist getImsManager(I)Lcom/android/ims/ImsManager;
    .registers 2

    .line 1094
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getMsimSubMode()I
    .registers 5

    const-string v0, "persist.radio.multisim.config"

    const-string v1, ""

    .line 1797
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsda"

    .line 1798
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    move v0, v1

    .line 1799
    :goto_12
    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v0, v2, :cond_2e

    .line 1800
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 1801
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 1802
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getMsimSubmode()I

    move-result p0

    return p0

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_2e
    return v1
.end method

.method private blacklist is3gVoiceRat(I)Z
    .registers 4

    .line 1766
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_52

    .line 1767
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_52

    .line 1768
    :cond_e
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 1770
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    if-nez p0, :cond_23

    move p0, v1

    goto :goto_24

    :cond_23
    move p0, p1

    :goto_24
    if-nez p0, :cond_27

    return p1

    .line 1773
    :cond_27
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result p0

    invoke-static {p0}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_51

    const/16 v0, 0x9

    if-eq p0, v0, :cond_51

    const/16 v0, 0xa

    if-eq p0, v0, :cond_51

    const/16 v0, 0xb

    if-eq p0, v0, :cond_51

    const/16 v0, 0xf

    if-eq p0, v0, :cond_51

    const/4 v0, 0x7

    if-eq p0, v0, :cond_51

    const/16 v0, 0x8

    if-eq p0, v0, :cond_51

    const/16 v0, 0xc

    if-eq p0, v0, :cond_51

    const/16 v0, 0xd

    if-ne p0, v0, :cond_52

    :cond_51
    move p1, v1

    :cond_52
    :goto_52
    return p1
.end method

.method private blacklist isDomesticRoamingForUSC(I)Z
    .registers 3

    .line 791
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "USC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 792
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 793
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2b

    const/4 p0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    :goto_2c
    return p0
.end method

.method private blacklist isOngoingCrossSimCalling(I)Z
    .registers 5

    .line 1786
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    return v1

    .line 1789
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->getImsManager(I)Lcom/android/ims/ImsManager;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->getImsManager(I)Lcom/android/ims/ImsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getRegistrationTech()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v1
.end method

.method private blacklist isSetMobileDataSettingAllowedForDCM()Z
    .registers 2

    .line 384
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DCM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist make(ILandroid/content/Context;Landroid/os/Looper;)Lcom/android/internal/telephony/data/PhoneSwitcher;
    .registers 4

    .line 208
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    if-nez v0, :cond_b

    .line 209
    new-instance v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;-><init>(ILandroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    .line 212
    :cond_b
    sget-object p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    return-object p0
.end method

.method private blacklist setMobileDataSetting()V
    .registers 10

    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mPreferredDataReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    sget-object v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->OPPORTUNISTIC:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/SubscriptionController$WatchedInt;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->get()I

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    .line 345
    :goto_d
    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v1, v2, :cond_90

    .line 346
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-nez v2, :cond_1d

    const-string v0, "setMobileDataSetting(): phone is null"

    .line 348
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    .line 352
    :cond_1d
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v3

    if-nez v3, :cond_2e

    const-string v0, "setMobileDataSetting: dcTracker is null"

    .line 354
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    .line 358
    :cond_2e
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getTm()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "44010"

    .line 360
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 361
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRoamingEnabled()Z

    move-result v5

    .line 362
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result v6

    .line 365
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getAlwaysOnPdn()Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/AlwaysOnPdn;->isSupportingVoWIFI()Z

    move-result v7

    if-eqz v7, :cond_6f

    const-string v7, "ro.boot.hardware"

    const-string v8, ""

    .line 366
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "qcom"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6f

    if-eqz v5, :cond_6a

    if-eqz v6, :cond_6a

    move v5, v4

    goto :goto_6b

    :cond_6a
    move v5, v0

    .line 367
    :goto_6b
    invoke-virtual {p0, v2, v1, v4, v5}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->setMobileDataSetting(Lcom/android/internal/telephony/Phone;IZZ)V

    goto :goto_76

    .line 369
    :cond_6f
    invoke-virtual {p0, v2, v1, v6, v5}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->setMobileDataSetting(Lcom/android/internal/telephony/Phone;IZZ)V

    goto :goto_76

    .line 373
    :cond_73
    invoke-virtual {p0, v2, v1, v4, v4}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->setMobileDataSetting(Lcom/android/internal/telephony/Phone;IZZ)V

    .line 377
    :goto_76
    iget-object v2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mJPNDataEnabled:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_82

    iget-object v2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mJPNRoamingEnabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_8c

    :cond_82
    const v2, 0x42080    # 3.79001E-40f

    .line 378
    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d

    :cond_90
    return-void
.end method

.method private blacklist updateAutoDdsPhoneId(I)V
    .registers 2

    .line 1755
    iput p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mAutoDdsPhoneId:I

    return-void
.end method


# virtual methods
.method protected blacklist broadcastDdsChangeResult(ZI)V
    .registers 6

    .line 1109
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 1110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastDdsChangeResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), ddsPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_3e

    .line 1111
    iget-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mRequestOverride:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    iget v1, v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mPhoneId:I

    if-ne v1, p2, :cond_3e

    if-eq p2, v0, :cond_3e

    const-string p1, "broadcastDdsChangeResult: skip broadcast during request override."

    .line 1112
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    goto :goto_61

    .line 1114
    :cond_3e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_4b

    const-string p1, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    .line 1116
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_50

    :cond_4b
    const-string p1, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_FAIL"

    .line 1118
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_50
    const/high16 p1, 0x1000000

    .line 1120
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "phone"

    .line 1121
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1122
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_61
    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 1711
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1713
    sget-object v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxDataAttachModemCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mMaxDataAttachModemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mModemDependency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mModemDependency:Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "mPrioritizedDcRequests : "

    .line 1716
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoDdsPhoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mAutoDdsPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1718
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DcRequest;

    .line 1719
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_59

    .line 1722
    :cond_69
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getAutoDdsInfo()I
    .registers 1

    .line 846
    iget p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mAutoDdsPhoneId:I

    return p0
.end method

.method protected blacklist getDataRegForAutoDds(I)I
    .registers 8

    .line 812
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x3

    return p0

    .line 816
    :cond_8
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    .line 817
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getMobileDataRegState()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2d

    .line 820
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->isQcom:Z

    if-eqz v0, :cond_2b

    .line 821
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->is3gVoiceRat(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    if-eqz v1, :cond_33

    goto :goto_31

    :cond_2b
    move v2, v4

    goto :goto_34

    :cond_2d
    if-nez v0, :cond_34

    if-eqz v1, :cond_33

    :goto_31
    move v2, v3

    goto :goto_34

    :cond_33
    move v2, v5

    .line 841
    :cond_34
    :goto_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataRegForAutoDds("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", newDataRegState : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    return v2
.end method

.method public blacklist getJPNDataEnabled(I)Z
    .registers 2

    .line 398
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mJPNDataEnabled:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public blacklist getJPNRoamingEnabled(I)Z
    .registers 2

    .line 402
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mJPNRoamingEnabled:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method protected blacklist getRequestOverride()Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;
    .registers 15

    .line 1174
    new-instance v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    iget-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mRequestOverride:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;-><init>(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)V

    .line 1176
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "getRequestOverride : "

    if-nez v1, :cond_42

    const-string v1, "getRequestOverride : mPrioritizedDcRequests.size() == 0"

    .line 1177
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1182
    iget-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mRequestOverride:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->isOverride()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1183
    sget-object p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;->RESTORE:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->set(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;)V

    goto :goto_41

    .line 1184
    :cond_36
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mRequestOverride:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->isRestore()Z

    move-result p0

    if-eqz p0, :cond_41

    .line 1185
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->clear()V

    :cond_41
    :goto_41
    return-object v0

    .line 1189
    :cond_42
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v1

    const-string v3, ") is not valid!"

    if-nez v1, :cond_68

    .line 1190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestOverride : mPrimaryDataSubId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    return-object v0

    .line 1193
    :cond_68
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_87

    .line 1194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestOverride : mPreferredDataPhoneId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    return-object v0

    .line 1197
    :cond_87
    iget-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mRequestOverride:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->isWaiting()Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 1198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestOverride: isWaiting = true, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mRequestOverride:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    iget-object v2, v2, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mDelayReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", skip!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    return-object v0

    .line 1206
    :cond_ad
    iget-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mPreferredDataReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    sget-object v3, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->OPPORTUNISTIC:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    if-ne v1, v3, :cond_ba

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/SubscriptionController$WatchedInt;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->get()I

    move-result v1

    goto :goto_bc

    :cond_ba
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    .line 1208
    :goto_bc
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->supportAutoDds()Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 1209
    iget v3, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mAutoDdsPhoneId:I

    if-eq v3, v4, :cond_cc

    .line 1210
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 1214
    :cond_cc
    iget-object v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v4

    move v6, v5

    move v7, v6

    :cond_d5
    :goto_d5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/dataconnection/DcRequest;

    .line 1222
    iget v9, v8, Lcom/android/internal/telephony/dataconnection/DcRequest;->priority:I

    if-ge v5, v9, :cond_e7

    move v5, v9

    goto :goto_eb

    :cond_e7
    if-le v5, v9, :cond_eb

    goto/16 :goto_15f

    .line 1228
    :cond_eb
    :goto_eb
    iget-object v9, v8, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_117

    iget-object v9, v8, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    const/16 v12, 0xa

    .line 1229
    invoke-virtual {v9, v12}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v9

    if-nez v9, :cond_117

    iget-object v9, v8, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    const/16 v12, 0xc

    .line 1230
    invoke-virtual {v9, v12}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_115

    iget-object v9, v8, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    const/16 v12, 0xd

    .line 1231
    invoke-virtual {v9, v12}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_115

    goto :goto_117

    :cond_115
    move v9, v10

    goto :goto_118

    :cond_117
    :goto_117
    move v9, v11

    :goto_118
    if-nez v9, :cond_136

    .line 1232
    iget v12, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mMsimSubMode:I

    if-ne v12, v11, :cond_136

    iget-object v12, v8, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    .line 1233
    invoke-virtual {v12, v10}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v12

    if-nez v12, :cond_130

    iget-object v12, v8, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    const/16 v13, 0x9

    .line 1234
    invoke-virtual {v12, v13}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v12

    if-eqz v12, :cond_136

    :cond_130
    const-string v9, "DSDA mode allow non-dds mms/xcap, no need to do override logic"

    .line 1235
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    goto :goto_137

    :cond_136
    move v11, v9

    :goto_137
    if-eqz v11, :cond_13a

    goto :goto_d5

    .line 1242
    :cond_13a
    iget-object v7, v8, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v7}, Landroid/net/NetworkRequest;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getSubIdFromNetworkSpecifier(Landroid/net/NetworkSpecifier;)I

    move-result v7

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_15f

    if-eq v7, v4, :cond_15f

    if-ne v7, v1, :cond_14e

    goto :goto_15f

    .line 1247
    :cond_14e
    :goto_14e
    iget v8, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v10, v8, :cond_15d

    .line 1248
    iget-object v8, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v8, v8, v10

    if-ne v8, v7, :cond_15a

    move v6, v10

    goto :goto_15d

    :cond_15a
    add-int/lit8 v10, v10, 0x1

    goto :goto_14e

    :cond_15d
    :goto_15d
    if-eq v6, v4, :cond_d5

    .line 1258
    :cond_15f
    :goto_15f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRequestOverride : requestPhoneId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mPreferredDataPhoneId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mPrimaryDataSubId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", ddsSubId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    if-eq v6, v4, :cond_199

    if-eq v7, v1, :cond_199

    .line 1263
    sget-object v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;->OVERRIDE:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->set(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;I)V

    goto :goto_1b2

    .line 1265
    :cond_199
    iget-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mRequestOverride:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->isOverride()Z

    move-result v1

    if-eqz v1, :cond_1a7

    .line 1266
    sget-object v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;->RESTORE:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->set(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;)V

    goto :goto_1b2

    .line 1267
    :cond_1a7
    iget-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mRequestOverride:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->isRestore()Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 1268
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->clear()V

    .line 1272
    :cond_1b2
    :goto_1b2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getRequestOverridePhoneId()I
    .registers 1

    .line 1081
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mRequestOverride:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    iget p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mPhoneId:I

    return p0
.end method

.method protected blacklist getSubIdForDefaultNetworkRequests()I
    .registers 4

    .line 921
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->getRequestOverride()Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    move-result-object v0

    .line 922
    iget-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mModemDependency:Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->processRequestOverride(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)I

    move-result v0

    .line 925
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->supportAutoDds()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1b

    .line 926
    iget v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mAutoDdsPhoneId:I

    if-eq v1, v2, :cond_1b

    .line 927
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 932
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 933
    sget-object v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->REQUEST:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    iput-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mPreferredDataReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    return v0

    .line 935
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mOpptDataSubId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 936
    sget-object v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->OPPORTUNISTIC:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    iput-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mPreferredDataReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    .line 937
    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mOpptDataSubId:I

    return p0

    .line 939
    :cond_39
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->supportAutoDds()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 940
    sget-object v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->AUTODDS:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    iput-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mPreferredDataReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    return v2

    .line 944
    :cond_4c
    sget-object v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->PRIMARYDATA:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    iput-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mPreferredDataReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    .line 945
    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    return p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 227
    sget-object v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x70

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_d7

    packed-switch v0, :pswitch_data_1ba

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_2b

    sub-int/2addr v0, v1

    .line 333
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->onDataDisconnected(I)V

    goto/16 :goto_1b9

    .line 335
    :cond_2b
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1b9

    .line 307
    :pswitch_30
    invoke-direct {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->isSetMobileDataSettingAllowedForDCM()Z

    move-result p1

    if-eqz p1, :cond_1b9

    .line 308
    invoke-direct {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->setMobileDataSetting()V

    goto/16 :goto_1b9

    .line 323
    :pswitch_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto DDS Delay Timer is expired, mAutoDdsPhoneId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 324
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->updateAutoDdsPhoneId(I)V

    .line 325
    iput-boolean v3, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSentDelayForAutoDds:Z

    const-string p1, "TimerExpired"

    .line 326
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    goto/16 :goto_1b9

    :pswitch_5f
    const-string p1, "Roaming Setting enabled"

    .line 313
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    const-string p1, "RoamingSettingChanged"

    .line 314
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->performAutoDataSwitchingTimer(Ljava/lang/String;)Z

    .line 316
    invoke-direct {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->isSetMobileDataSettingAllowedForDCM()Z

    move-result p1

    if-eqz p1, :cond_1b9

    .line 318
    invoke-direct {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->setMobileDataSetting()V

    goto/16 :goto_1b9

    .line 287
    :pswitch_74
    invoke-direct {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->getAutoDdsSettingValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mIsAutoDdsSettingEnabled:Z

    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Auto dds enabled : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mIsAutoDdsSettingEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 290
    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "KOR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b8

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->isPhoneInVoiceCallChanged()Z

    move-result p1

    if-eqz p1, :cond_b8

    .line 292
    iput v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    const/16 p1, 0x6d

    .line 293
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 294
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mIsAutoDdsSettingEnabled:Z

    if-nez p1, :cond_bd

    iget p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mAutoDdsPhoneId:I

    if-eq p1, v2, :cond_bd

    .line 295
    iput v2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mAutoDdsPhoneId:I

    goto :goto_bd

    :cond_b8
    const-string p1, "AutoDdsSettingChanged"

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->performAutoDataSwitchingTimer(Ljava/lang/String;)Z

    .line 301
    :cond_bd
    :goto_bd
    invoke-direct {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->isSetMobileDataSettingAllowedForDCM()Z

    move-result p1

    if-eqz p1, :cond_1b9

    .line 302
    invoke-direct {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->setMobileDataSetting()V

    goto/16 :goto_1b9

    :pswitch_c8
    const-string p1, "ssChanged"

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    const-string p1, "SsChanged"

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->performAutoDataSwitchingTimer(Ljava/lang/String;)Z

    .line 283
    invoke-direct {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->checkModeAndEvalForDsdaCalling()V

    goto/16 :goto_1b9

    .line 231
    :cond_d7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    const/4 v0, 0x1

    if-eqz p1, :cond_e4

    .line 232
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_e4

    move v1, v0

    goto :goto_e5

    :cond_e4
    move v1, v3

    .line 233
    :goto_e5
    iget-object v4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    if-eqz v4, :cond_104

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Emergency override result sent = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->sendOverrideCompleteCallbackResultAndClear(Z)V

    goto/16 :goto_180

    :cond_104
    if-nez v1, :cond_13d

    if-eqz p1, :cond_111

    .line 240
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_112

    :cond_111
    move p1, v2

    :goto_112
    const-string v1, "DDS change failed"

    .line 241
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->broadcastDdsChangeResult(ZI)V

    .line 244
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "multi_sim_datacross_slot"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 247
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_137

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->recoverDds(I)V

    goto :goto_180

    :cond_137
    const-string p1, "Airplane mode is enabled. Do not recover!"

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    goto :goto_180

    :cond_13d
    if-eqz v1, :cond_180

    .line 253
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DDS change success, PhoneId : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->broadcastDdsChangeResult(ZI)V

    .line 259
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result p1

    if-eqz p1, :cond_177

    iget-boolean p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->isQcom:Z

    if-nez p1, :cond_172

    iget-boolean p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->isMtk:Z

    if-nez p1, :cond_172

    iget-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mRequestOverride:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    iget p1, p1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mPhoneId:I

    if-eq p1, v2, :cond_177

    .line 260
    :cond_172
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActivePhoneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 263
    :cond_177
    invoke-direct {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->isSetMobileDataSettingAllowedForDCM()Z

    move-result p1

    if-eqz p1, :cond_180

    .line 264
    invoke-direct {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->setMobileDataSetting()V

    .line 268
    :cond_180
    :goto_180
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "multi_sim_dds_progressing"

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 271
    iget p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mEverRequestChanged:I

    if-ne p1, v2, :cond_197

    iget-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mRequestOverride:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->isNone()Z

    move-result p1

    if-nez p1, :cond_1b9

    .line 272
    :cond_197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluate stacked requests. mEverRequestChanged="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mEverRequestChanged:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 273
    iget p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mEverRequestChanged:I

    if-ne p1, v0, :cond_1b2

    move v3, v0

    :cond_1b2
    const-string p1, "ddsDone"

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    .line 274
    iput v2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mEverRequestChanged:I

    :cond_1b9
    :goto_1b9
    return-void

    :pswitch_data_1ba
    .packed-switch 0x192
        :pswitch_c8
        :pswitch_c8
        :pswitch_74
        :pswitch_5f
        :pswitch_3b
        :pswitch_30
    .end packed-switch
.end method

.method public blacklist isCrossSimCalling()Z
    .registers 5

    const/4 v0, 0x0

    .line 802
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->getImsManager(I)Lcom/android/ims/ImsManager;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_13

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->getImsManager(I)Lcom/android/ims/ImsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->getRegistrationTech()I

    move-result v1

    if-eq v1, v2, :cond_23

    .line 803
    :cond_13
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->getImsManager(I)Lcom/android/ims/ImsManager;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->getImsManager(I)Lcom/android/ims/ImsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->getRegistrationTech()I

    move-result v1

    if-ne v1, v2, :cond_29

    :cond_23
    const-string v0, "CROSS SIM CALLING enabled"

    .line 804
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    move v0, v3

    :cond_29
    return v0
.end method

.method protected blacklist isDdsChanging()Z
    .registers 3

    .line 1105
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "multi_sim_dds_progressing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    move v1, v0

    :cond_11
    return v1
.end method

.method protected blacklist isPhoneInVoiceCallChanged()Z
    .registers 4

    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_preferred_mode_during_calling"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1f

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getTm()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isOpportunisticSubscription()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, " isPhoneInVoiceCallChanged : return false"

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    return v2

    :cond_1f
    const-string v0, " isPhoneInVoiceCallChanged : return super.isPhoneInVoiceCallChanged()"

    .line 221
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 222
    invoke-super {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneInVoiceCallChanged()Z

    move-result p0

    return p0
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .registers 3

    .line 1706
    sget-object v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist needDdsChange(I)Z
    .registers 2

    .line 1100
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mModemDependency:Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->needDdsChange(I)Z

    move-result p0

    return p0
.end method

.method protected blacklist onDataDisconnected(I)V
    .registers 5

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_DATA_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1154
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mRequestOverride:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    sget-object v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;->NONE:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->set(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;)V

    add-int/lit16 v0, p1, 0x1f4

    .line 1156
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1157
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1159
    :cond_26
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3b

    .line 1160
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 1162
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    goto :goto_54

    .line 1165
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataDisconnected: PhoneFactory.getPhone("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1168
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mModemDependency:Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->onDataDisconnected(I)V

    const-string p1, "dataDisconnected"

    .line 1170
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    return-void
.end method

.method protected blacklist onEvaluate(ZLjava/lang/String;)Z
    .registers 13

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->isDdsChanging()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_2a

    .line 460
    iget p2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mEverRequestChanged:I

    if-ne p2, v3, :cond_13

    .line 461
    iput p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mEverRequestChanged:I

    .line 463
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onEvaluate aborted due to during dds changing. mEverRequestChanged="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mEverRequestChanged:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    return v2

    .line 468
    :cond_2a
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mHalCommandToUse:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v4, :cond_34

    if-eqz p1, :cond_34

    move p1, v5

    goto :goto_35

    :cond_34
    move p1, v2

    .line 471
    :goto_35
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 472
    iget v6, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    const-string v7, "->"

    if-eq v1, v6, :cond_7f

    const-string v6, " mPrimaryDataSubId "

    .line 473
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 474
    iput v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    .line 475
    sget-object v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;->PRIMARY_DATA_CHANGED:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    iput-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSendRiLCommandReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    const-string v1, "check whether UI DDS occured or not during Override state."

    .line 478
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->getRequestOverride()Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    move-result-object v1

    .line 480
    iget-object v6, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mModemDependency:Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;

    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->processRequestOverride(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)I

    .line 483
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->supportAutoDds()Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 485
    iget v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mAutoDdsPhoneId:I

    if-eq v1, v3, :cond_76

    .line 486
    iput v3, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mAutoDdsPhoneId:I

    const-string v1, "primary data subid changed. mAutoDdsPhoneId : -1"

    .line 487
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 490
    :cond_76
    invoke-direct {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->cancelDelayTimer()V

    const-string v1, "PrimaryChanged"

    .line 492
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->performAutoDataSwitchingTimer(Ljava/lang/String;)Z

    goto :goto_c4

    :cond_7f
    const-string v1, "EVENT_PRECISE_CALL_STATE_CHANGED"

    .line 495
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 497
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    if-ne v1, v3, :cond_c4

    .line 498
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 500
    iget v6, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    if-eq v6, v1, :cond_c4

    .line 501
    sget-object v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;->PRIMARY_DATA_CHANGED:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    iput-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSendRiLCommandReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    goto :goto_c4

    :cond_9e
    const-string v1, "TimerExpired"

    .line 504
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ae

    const-string v1, "ResetAutoDds"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 505
    :cond_ae
    iget v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mAutoDdsPhoneId:I

    if-ne v1, v3, :cond_c4

    .line 506
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 507
    iget v6, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    if-eq v6, v1, :cond_c4

    .line 508
    sget-object v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;->PRIMARY_DATA_CHANGED:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    iput-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSendRiLCommandReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    :cond_c4
    :goto_c4
    move v1, v2

    move v6, v1

    .line 517
    :goto_c6
    iget v8, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v1, v8, :cond_109

    .line 518
    iget-object v8, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v8, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v8

    .line 520
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_d7

    move v6, v5

    .line 522
    :cond_d7
    iget-object v9, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v9, v9, v1

    if-eq v8, v9, :cond_106

    const-string p1, " phone["

    .line 523
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 525
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    aput v8, p1, v1

    .line 527
    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    if-eq p1, v3, :cond_105

    if-ne v8, p1, :cond_105

    .line 528
    sget-object p1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;->PRIMARY_DATA_PHONEID_CHANGED:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    iput-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSendRiLCommandReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    :cond_105
    move p1, v5

    :cond_106
    add-int/lit8 v1, v1, 0x1

    goto :goto_c6

    :cond_109
    if-nez v6, :cond_10e

    .line 535
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->transitionToEmergencyPhone()V

    .line 541
    :cond_10e
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    if-eqz v6, :cond_115

    .line 549
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->updatePreferredDataPhoneId(Ljava/lang/String;)V

    .line 551
    :cond_115
    iget p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    if-eq v1, p2, :cond_12a

    const-string p1, " preferred phoneId "

    .line 552
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move p1, v5

    .line 557
    :cond_12a
    iget-object p2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mRequestOverride:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    invoke-virtual {p2}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->isWaiting()Z

    move-result p2

    if-eqz p2, :cond_151

    .line 558
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onEvaluate: isWaiting = true, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mRequestOverride:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    iget-object p2, p2, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mDelayReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", skip!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    move p1, v2

    goto :goto_175

    .line 560
    :cond_151
    iget-object p2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSendRiLCommandReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    sget-object v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;->NONE:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    if-eq p2, v1, :cond_175

    .line 561
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onEvaluate : mSendRiLCommandReason = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSendRiLCommandReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " -> NONE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 562
    iput-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSendRiLCommandReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    move p1, v5

    :cond_175
    :goto_175
    if-eqz p1, :cond_262

    .line 567
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluating due to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 568
    iget p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mHalCommandToUse:I

    if-ne p2, v4, :cond_1a7

    .line 571
    :goto_193
    iget p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v2, p2, :cond_1a0

    .line 572
    iget-object p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;

    aget-object p2, p2, v2

    iput-boolean v5, p2, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneState;->active:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_193

    .line 574
    :cond_1a0
    iget p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->sendRilCommands(I)V

    goto/16 :goto_25a

    .line 576
    :cond_1a7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 583
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mMaxDataAttachModemCount:I

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ne v0, v1, :cond_1c1

    move v0, v2

    .line 584
    :goto_1b3
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mMaxDataAttachModemCount:I

    if-ge v0, v1, :cond_22e

    .line 585
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b3

    .line 589
    :cond_1c1
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    if-eq v0, v3, :cond_1cc

    .line 590
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    :cond_1cc
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mMaxDataAttachModemCount:I

    if-ge v0, v1, :cond_209

    .line 594
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1da
    :goto_1da
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_209

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcRequest;

    .line 595
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->phoneIdForRequest(Landroid/net/NetworkRequest;)I

    move-result v1

    if-ne v1, v3, :cond_1ef

    goto :goto_1da

    .line 597
    :cond_1ef
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1fa

    goto :goto_1da

    .line 598
    :cond_1fa
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    iget v4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mMaxDataAttachModemCount:I

    if-lt v1, v4, :cond_1da

    .line 603
    :cond_209
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mMaxDataAttachModemCount:I

    if-ge v0, v1, :cond_22e

    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 604
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22e

    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 605
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    if-eqz v0, :cond_22e

    .line 606
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_22e
    :goto_22e
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v2, v0, :cond_242

    .line 621
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23f

    .line 622
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->deactivate(I)V

    :cond_23f
    add-int/lit8 v2, v2, 0x1

    goto :goto_22e

    .line 627
    :cond_242
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_246
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 628
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->activate(I)V

    goto :goto_246

    .line 632
    :cond_25a
    :goto_25a
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->notifyPreferredDataSubIdChanged()V

    .line 635
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActivePhoneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_262
    return p1
.end method

.method protected blacklist onNwModeChanged(Landroid/os/Message;)V
    .registers 2

    .line 1089
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mModemDependency:Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->onNwModeChanged(Landroid/os/Message;)V

    return-void
.end method

.method protected blacklist performAutoDataSwitching()Landroid/util/Pair;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 642
    iget v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mAutoDdsPhoneId:I

    .line 645
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 646
    iget-object v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 647
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v5, 0x3

    const/4 v6, 0x4

    .line 786
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, -0x1

    .line 759
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v1, :cond_25c

    .line 648
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_29

    goto/16 :goto_25c

    .line 660
    :cond_29
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mIsAutoDdsSettingEnabled:Z

    if-nez v1, :cond_45

    const-string v1, "autoDdsSetting disabled"

    .line 661
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    if-eq v0, v8, :cond_36

    move v0, v8

    goto :goto_37

    :cond_36
    move v5, v6

    .line 668
    :goto_37
    new-instance p0, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 673
    :cond_45
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "airplane_mode_on"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_55

    move v1, v4

    goto :goto_56

    :cond_55
    move v1, v2

    :goto_56
    move v3, v2

    move v10, v4

    move v11, v10

    .line 674
    :goto_59
    iget v12, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v3, v12, :cond_9c

    .line 676
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    if-nez v12, :cond_7b

    const-string v1, "phone is null"

    .line 678
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    if-eq v0, v8, :cond_6c

    move v0, v8

    goto :goto_6d

    :cond_6c
    move v5, v6

    .line 685
    :goto_6d
    new-instance p0, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 687
    :cond_7b
    iget-object v12, v12, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v12}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v12

    if-ne v12, v4, :cond_85

    move v12, v4

    goto :goto_86

    :cond_85
    move v12, v2

    :goto_86
    and-int/2addr v10, v12

    .line 688
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getTm()Landroid/telephony/TelephonyManager;

    const-string v12, "gsm.sim.state"

    const-string v13, ""

    invoke-static {v3, v12, v13}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "LOADED"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    and-int/2addr v11, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    :cond_9c
    if-eqz v10, :cond_230

    if-nez v1, :cond_230

    if-nez v11, :cond_a4

    goto/16 :goto_230

    .line 708
    :cond_a4
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ATT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c8

    .line 709
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DSG"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c8

    .line 710
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DSH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    :cond_c8
    move v2, v4

    :cond_c9
    const/4 v1, 0x2

    if-ne v0, v8, :cond_190

    .line 714
    iget-object v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v3

    rsub-int/lit8 v5, v3, 0x1

    .line 717
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v6

    if-eqz v6, :cond_181

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v6

    if-nez v6, :cond_e6

    goto/16 :goto_181

    .line 722
    :cond_e6
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->getDataRegForAutoDds(I)I

    move-result v6

    .line 723
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->getDataRegForAutoDds(I)I

    move-result v8

    .line 724
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->getDataRoamingEnabled()Z

    move-result v9

    .line 725
    invoke-static {v5}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->getDataRoamingEnabled()Z

    move-result v10

    if-eqz v2, :cond_124

    if-nez v9, :cond_116

    .line 729
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->isDomesticRoamingForUSC(I)Z

    move-result v2

    if-eqz v2, :cond_116

    const-string v2, "performAutoDataSwitching: USC domestic roaming always true in ATT device for ddsPhoneId."

    .line 730
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    move v9, v4

    :cond_116
    if-nez v10, :cond_124

    .line 734
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->isDomesticRoamingForUSC(I)Z

    move-result v2

    if-eqz v2, :cond_124

    const-string v2, "performAutoDataSwitching: USC domestic roaming always true in ATT device for nonddsPhoneId."

    .line 735
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    move v9, v4

    :cond_124
    if-eqz v6, :cond_12a

    if-ne v6, v1, :cond_131

    if-nez v9, :cond_131

    :cond_12a
    if-eq v8, v4, :cond_15f

    if-ne v8, v1, :cond_131

    if-eqz v10, :cond_131

    goto :goto_15f

    .line 750
    :cond_131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto dds is -1 but condition is  not matched. ddsDataRegState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ddsRoamingSettingEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", nonDdsDataRegState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", nonDdsRoamingSettingEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    goto/16 :goto_226

    .line 745
    :cond_15f
    :goto_15f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoDds is -1, Do Dds Change to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 748
    new-instance p0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_181
    :goto_181
    const-string v1, "ddsPhoneId or nonddsPhoneId is invalid"

    .line 718
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 720
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_190
    if-eq v0, v8, :cond_226

    rsub-int/lit8 v3, v0, 0x1

    .line 755
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v6

    if-nez v6, :cond_1a9

    const-string v0, "originDdsPhone is null"

    .line 756
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 759
    new-instance p0, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 761
    :cond_1a9
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->getDataRegForAutoDds(I)I

    move-result v5

    .line 762
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->getDataRoamingEnabled()Z

    move-result v6

    if-eqz v2, :cond_1c9

    if-nez v6, :cond_1c9

    .line 766
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->isDomesticRoamingForUSC(I)Z

    move-result v2

    if-eqz v2, :cond_1c9

    const-string v2, "performAutoDataSwitching: USC domestic roaming always true in ATT device for originDdsPhoneId."

    .line 767
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    move v6, v4

    :cond_1c9
    if-eq v5, v4, :cond_1f9

    if-ne v5, v1, :cond_1cf

    if-nez v6, :cond_1f9

    .line 775
    :cond_1cf
    iget-boolean v2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mIsAutoDdsSettingEnabled:Z

    if-nez v2, :cond_1d4

    goto :goto_1f9

    .line 782
    :cond_1d4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "originDdsPhoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", originDdsNewDataReg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", originDdsRoamingSettingEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    goto :goto_226

    .line 777
    :cond_1f9
    :goto_1f9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoDds is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mAutoDdsPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", originDdsPhoneId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Recover"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 780
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 786
    :cond_226
    :goto_226
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 692
    :cond_230
    :goto_230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "airplanemode. or isAllSimLoaded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ". do nothing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    if-eq v0, v8, :cond_24d

    move v0, v8

    goto :goto_24e

    :cond_24d
    move v5, v6

    .line 699
    :goto_24e
    new-instance p0, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_25c
    :goto_25c
    const-string v1, "subId is not valid"

    .line 649
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    if-eq v0, v8, :cond_265

    move v0, v8

    goto :goto_266

    :cond_265
    move v5, v6

    .line 656
    :goto_266
    new-instance p0, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method protected blacklist performAutoDataSwitchingTimer(Ljava/lang/String;)Z
    .registers 6

    .line 411
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->performAutoDataSwitching()Landroid/util/Pair;

    move-result-object p1

    .line 412
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 413
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3a

    const/4 p1, 0x4

    if-eq v0, p1, :cond_27

    const-string p1, "Action type is inconrrect"

    .line 439
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    goto :goto_6e

    .line 431
    :cond_27
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSentDelayForAutoDds:Z

    if-ne p1, v1, :cond_34

    const-string p1, "don\'t need to auto dds during delay time"

    .line 432
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 433
    invoke-direct {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->cancelDelayTimer()V

    goto :goto_6e

    :cond_34
    const-string p1, "No need to perform auto dds"

    .line 435
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    goto :goto_6e

    :cond_3a
    const-string v0, "RESET Auto DDS"

    .line 425
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 426
    invoke-direct {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->cancelDelayTimer()V

    .line 427
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->updateAutoDdsPhoneId(I)V

    const-string p1, "ResetAutoDds"

    .line 428
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    goto :goto_6e

    .line 417
    :cond_4b
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSentDelayForAutoDds:Z

    if-nez v1, :cond_69

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DO/RECOVER Auto DDS - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    const/16 v0, 0x1388

    .line 419
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->sendDelayMessageForAds(II)V

    goto :goto_6e

    :cond_69
    const-string p1, "already sent delayMessage for Auto DDS"

    .line 421
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    :goto_6e
    return v2
.end method

.method protected blacklist recoverDds(I)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 1129
    :goto_7
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_14

    .line 1131
    array-length v4, v2

    if-lez v4, :cond_14

    .line 1132
    aget v0, v2, v0

    goto :goto_1a

    :cond_14
    const-string v0, "recoverDds : recover subId is INVALID"

    .line 1134
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    move v0, v3

    .line 1137
    :goto_1a
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SubscriptionController;->isOpportunistic(I)Z

    move-result v2

    if-nez v2, :cond_84

    if-ne v0, v3, :cond_27

    goto :goto_84

    .line 1141
    :cond_27
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v2

    if-ne v2, v1, :cond_51

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    if-ne v1, p1, :cond_51

    .line 1142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recoverDds: Recover subid = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1143
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    goto :goto_98

    .line 1145
    :cond_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recoverDds: subId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") is not active or mPreferredDataPhoneId("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") != phoneId("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), skip!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1147
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    goto :goto_98

    :cond_84
    :goto_84
    const-string v0, "onDdsSwitchResponse: Scheduling DDS switch retry"

    .line 1138
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    const/16 v0, 0x71

    .line 1140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1139
    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_98
    return-void
.end method

.method public blacklist regiterAutoDdsSwitching()V
    .registers 5

    .line 1727
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    const-string v1, "data_preferred_mode_during_calling"

    .line 1728
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x194

    .line 1727
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1730
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    const-string v1, "data_roaming"

    .line 1731
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x195

    .line 1730
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1733
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    const-string v1, "mobile_data"

    .line 1734
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x197

    .line 1733
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1737
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x0

    .line 1738
    :goto_2e
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v0, v1, :cond_50

    .line 1739
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 1740
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    add-int/lit16 v2, v0, 0x192

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1742
    sget-object v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mCurrentState:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    goto :goto_4d

    .line 1744
    :cond_48
    sget-object v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mCurrentState:[I

    const/4 v2, 0x3

    aput v2, v1, v0

    :goto_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_50
    return-void
.end method

.method public blacklist sendDelayMessageForAds(II)V
    .registers 5

    .line 874
    invoke-direct {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->cancelDelayTimer()V

    const/4 v0, 0x1

    .line 875
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSentDelayForAutoDds:Z

    const/16 v0, 0x196

    const/4 v1, -0x1

    .line 877
    invoke-virtual {p0, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    const-string v0, "send EVENT_DELAY_TIMER_EXPIRED"

    .line 878
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    int-to-long v0, p1

    .line 879
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected blacklist sendRilCommands(I)V
    .registers 6

    .line 884
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-lt p1, v0, :cond_c

    goto/16 :goto_ae

    :cond_c
    const/16 v0, 0x70

    .line 886
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 889
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mHalCommandToUse:I

    if-nez v1, :cond_20

    const-string p1, "sendRilCommands should be called after mHalCommandToUse is updated."

    .line 890
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    :cond_20
    const-string v2, "multi_sim_dds_progressing"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_44

    .line 893
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneActive(I)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 894
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 897
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneActive(I)Z

    move-result p1

    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-interface {v1, p1, v0, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->secSetDataAllowed(ZLandroid/os/Message;I)V

    goto :goto_ae

    .line 899
    :cond_44
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    if-ne p1, v1, :cond_ae

    .line 900
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 901
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->isQcom:Z

    if-eqz v1, :cond_6a

    .line 902
    iget-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mRequestOverride:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->isOverride()Z

    move-result p1

    if-eqz p1, :cond_60

    const/16 p1, 0x8

    goto :goto_61

    :cond_60
    const/4 p1, 0x0

    .line 903
    :goto_61
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    or-int/2addr p0, p1

    invoke-virtual {v1, p0, v0}, Lcom/android/internal/telephony/RadioConfig;->setPreferredDataModem(ILandroid/os/Message;)V

    goto :goto_ae

    .line 905
    :cond_6a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneActive(I)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 907
    iget-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mPreferredDataReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    sget-object v2, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->OPPORTUNISTIC:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    if-ne v1, v2, :cond_7d

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/SubscriptionController$WatchedInt;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->get()I

    move-result v1

    goto :goto_7f

    :cond_7d
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    .line 908
    :goto_7f
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-nez v2, :cond_9b

    .line 909
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneActive(I)Z

    move-result p1

    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-interface {v1, p1, v0, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->secSetDataAllowed(ZLandroid/os/Message;I)V

    goto :goto_ae

    .line 911
    :cond_9b
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneActive(I)Z

    move-result p1

    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result p0

    invoke-interface {v2, p1, v0, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->secSetDataAllowed(ZLandroid/os/Message;I)V

    :cond_ae
    :goto_ae
    return-void
.end method

.method public blacklist setMobileDataSetting(Lcom/android/internal/telephony/Phone;IZZ)V
    .registers 7

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMobileDataSetting: enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", roamingEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mJPNDataEnabled:[Z

    aget-boolean v0, v0, p2

    if-ne p3, v0, :cond_36

    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mJPNRoamingEnabled:[Z

    aget-boolean v0, v0, p2

    if-ne p4, v0, :cond_36

    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mNoSet:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_49

    .line 390
    :cond_36
    iget-object p1, p1, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p1, p3, p4, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->setMobileDataSetting(ZZLandroid/os/Message;)V

    .line 391
    iget-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mJPNDataEnabled:[Z

    aput-boolean p3, p1, p2

    .line 392
    iget-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mJPNRoamingEnabled:[Z

    aput-boolean p4, p1, p2

    .line 393
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mNoSet:[Z

    const/4 p1, 0x0

    aput-boolean p1, p0, p2

    :cond_49
    return-void
.end method

.method protected blacklist setNwMode(Z)V
    .registers 2

    .line 1085
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mModemDependency:Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->setNwMode(Z)V

    return-void
.end method

.method public blacklist supportAutoDds()Z
    .registers 9

    const-string v0, "CHN"

    const-string v1, "HKG"

    const-string v2, "TPE"

    .line 850
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 851
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1c

    const-string v0, "supportAutoDds: mPreferredDataPhoneId is not valid!"

    .line 852
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    return v1

    .line 855
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mPreferredDataReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    sget-object v3, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->OPPORTUNISTIC:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    if-ne v0, v3, :cond_29

    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/SubscriptionController$WatchedInt;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->get()I

    move-result v0

    goto :goto_2b

    :cond_29
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    .line 856
    :goto_2b
    iget-object v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    if-ne v0, v2, :cond_39

    const-string v0, "supportAutoDds: ddsSlotId is not valid!"

    .line 858
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    return v1

    .line 861
    :cond_39
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 862
    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserPreferredNetworkType()J

    move-result-wide v2

    const-wide/16 v4, 0x1000

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_58

    const-wide/32 v4, 0x80000

    and-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-nez v0, :cond_58

    const-string v0, "supportAutoDds: CHN only support Auto Dds Switching in 4G/5G network mode, block in 2G/3G"

    .line 865
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    return v1

    .line 869
    :cond_58
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mSupportAutoDdsSwitching:Z

    return p0
.end method

.method protected blacklist transitionToEmergencyPhone()V
    .registers 3

    .line 1054
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-gtz v0, :cond_a

    const-string v0, "No phones: unable to reset preferred phone for emergency"

    .line 1055
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    .line 1059
    :cond_a
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    if-eqz v0, :cond_3f

    const-string v0, "No active subscriptions: resetting preferred phone to 0 for emergency"

    .line 1060
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1061
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 1062
    sget-object v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->NOCARD:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    iput-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mPreferredDataReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transitionToEmergencyPhone: mPreferredDataPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mPreferredDataReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1067
    :cond_3f
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/SubscriptionController$WatchedInt;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->get()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_50

    .line 1068
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/SubscriptionController$WatchedInt;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->set(I)V

    .line 1069
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->notifyPreferredDataSubIdChanged()V

    :cond_50
    return-void
.end method

.method protected blacklist updateHalCommandToUse()V
    .registers 2

    .line 1076
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfig;->isSetPreferredDataCommandSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    .line 1077
    :goto_11
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mHalCommandToUse:I

    return-void
.end method

.method protected blacklist updatePreferredDataPhoneId()V
    .registers 2

    const-string v0, "None"

    .line 952
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->updatePreferredDataPhoneId(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist updatePreferredDataPhoneId(Ljava/lang/String;)V
    .registers 10

    .line 958
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 960
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 961
    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->isOngoingCrossSimCalling(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_20

    .line 967
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_20

    move v5, v4

    goto :goto_21

    :cond_20
    move v5, v3

    .line 971
    :goto_21
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ATT"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48

    .line 972
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DSG"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48

    .line 973
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DSH"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    goto :goto_48

    :cond_46
    move v6, v3

    goto :goto_49

    :cond_48
    :goto_48
    move v6, v4

    :goto_49
    if-eqz v6, :cond_82

    if-eqz v0, :cond_82

    .line 975
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result v6

    if-eqz v6, :cond_82

    .line 976
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "USC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 977
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v6

    if-eqz v6, :cond_82

    .line 978
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_82

    const-string v0, "updatePreferredDataPhoneId: USC domestic roaming always true in ATT device."

    .line 980
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    move v5, v4

    .line 985
    :cond_82
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    if-eqz v0, :cond_b2

    iget v0, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_b2

    .line 988
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updatePreferredDataPhoneId: preferred data overridden for emergency. phoneId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    iget v0, v0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 990
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    iget p1, p1, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 991
    sget-object p1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->EMERGENCY:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    iput-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mPreferredDataReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    goto/16 :goto_15b

    :cond_b2
    if-eqz v5, :cond_e9

    if-nez v2, :cond_de

    .line 1000
    iget v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mMsimSubMode:I

    if-ne v0, v4, :cond_d4

    const-string v0, "MsimSubModeChanged"

    .line 1001
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cd

    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    if-ne v1, p1, :cond_cd

    const-string p1, "keep dds on mPhoneIdInVoiceCall in dsda mode."

    .line 1002
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    goto/16 :goto_15b

    :cond_cd
    const-string p1, "do not update mPreferredDataPhoneId to mPhoneIdInVoiceCall in dsda mode"

    .line 1004
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    goto/16 :goto_15b

    .line 1008
    :cond_d4
    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 1009
    sget-object p1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->VOICECALL:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    iput-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mPreferredDataReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    goto/16 :goto_15b

    .line 1014
    :cond_de
    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    sub-int/2addr v4, p1

    iput v4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 1015
    sget-object p1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->CROSSSIMCALLING:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    iput-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mPreferredDataReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    goto/16 :goto_15b

    .line 1018
    :cond_e9
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->getSubIdForDefaultNetworkRequests()I

    move-result v0

    .line 1021
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v2

    const/4 v5, -0x1

    if-eqz v2, :cond_103

    move v2, v3

    .line 1022
    :goto_f5
    iget v6, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v2, v6, :cond_103

    .line 1023
    iget-object v6, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v6, v6, v2

    if-ne v6, v0, :cond_100

    goto :goto_104

    :cond_100
    add-int/lit8 v2, v2, 0x1

    goto :goto_f5

    :cond_103
    move v2, v5

    .line 1029
    :goto_104
    iput v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 1032
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->supportAutoDds()Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoDdsPhoneId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mAutoDdsPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPreferredDataPhoneId :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    const-string v0, "TimerExpired"

    .line 1035
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13c

    const-string v0, "ResetAutoDds"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13d

    :cond_13c
    move v3, v4

    :cond_13d
    if-eqz v3, :cond_15b

    .line 1037
    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    if-eq p1, v5, :cond_15b

    if-ne v1, p1, :cond_15b

    iget-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mRequestOverride:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    .line 1038
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->isRestore()Z

    move-result p1

    if-eqz p1, :cond_15b

    const-string p1, "During Override state. but AutoDDS enabled and same PhoneId. make state as None"

    .line 1039
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->getRequestOverride()Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    move-result-object p1

    .line 1041
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mModemDependency:Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->processRequestOverride(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)I

    .line 1048
    :cond_15b
    :goto_15b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updatePreferredDataPhoneId: mPreferredDataPhoneId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mPreferredDataReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1050
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/SubscriptionController$WatchedInt;

    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->set(I)V

    return-void
.end method
