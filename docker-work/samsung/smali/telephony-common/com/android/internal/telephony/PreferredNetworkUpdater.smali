.class public Lcom/android/internal/telephony/PreferredNetworkUpdater;
.super Landroid/os/Handler;
.source "PreferredNetworkUpdater.java"


# static fields
.field private static final blacklist COUNTRYISO_CODE:Ljava/lang/String;

.field private static final blacklist DEFAULT_NW_MODE_SENCONDARY:I

.field private static final blacklist DataLockFeature:Z

.field private static final blacklist IS_CHINA:Z

.field private static final blacklist IS_INDIA:Z

.field private static final blacklist IsIndiaLWMode:Z

.field private static final blacklist IsIndiaNLMode:Z

.field private static final blacklist PHONE_ON_KEY:[Ljava/lang/String;

.field private static final blacklist PROJECT_SIM_NUM:I

.field private static final blacklist isNotSupportDualRat:Z

.field private static blacklist mDataSubId:I

.field private static blacklist sDefaultNetworkMode:I

.field private static blacklist sInstance:Lcom/android/internal/telephony/PreferredNetworkUpdater;

.field private static blacklist sSecondaryNetworkMode:I


# instance fields
.field private blacklist mActiveSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentNwMode:[I

.field private blacklist mInsertSimState:[I

.field private blacklist mIsUpdateNwModeRequired:Z

.field private blacklist mPhoneOn:[I

.field private blacklist mPrefNwMode:[I

.field private blacklist mPrevSubIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

.field private blacklist mUpdateStatus:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 73
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    const-string v1, "phone1_on"

    const-string v2, "phone2_on"

    .line 91
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PHONE_ON_KEY:[Ljava/lang/String;

    const-string v1, "ro.csc.countryiso_code"

    .line 92
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->COUNTRYISO_CODE:Ljava/lang/String;

    const-string v2, "CN"

    .line 95
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_39

    const-string v2, "HK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    const-string v2, "TW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_39

    :cond_37
    move v1, v3

    goto :goto_3a

    :cond_39
    :goto_39
    move v1, v4

    :goto_3a
    sput-boolean v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IS_CHINA:Z

    .line 96
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INU"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    goto :goto_57

    :cond_55
    move v1, v3

    goto :goto_58

    :cond_57
    :goto_57
    move v1, v4

    :goto_58
    sput-boolean v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IS_INDIA:Z

    const-string v2, "persist.radio.support.dualrat"

    const-string v5, "0"

    .line 97
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isNotSupportDualRat:Z

    if-le v0, v4, :cond_80

    .line 99
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v7, "CscFeature_RIL_ConfigSimLock"

    invoke-virtual {v0, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "datalock_"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_80

    move v0, v4

    goto :goto_81

    :cond_80
    move v0, v3

    :goto_81
    sput-boolean v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DataLockFeature:Z

    if-eqz v6, :cond_89

    if-eqz v1, :cond_89

    move v0, v4

    goto :goto_8a

    :cond_89
    move v0, v3

    .line 101
    :goto_8a
    sput-boolean v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IsIndiaNLMode:Z

    .line 103
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 104
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v0

    if-nez v0, :cond_a0

    if-eqz v1, :cond_a0

    move v0, v4

    goto :goto_a1

    :cond_a0
    move v0, v3

    :goto_a1
    sput-boolean v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IsIndiaLWMode:Z

    .line 109
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v0

    if-eqz v0, :cond_ac

    const/16 v3, 0x9

    goto :goto_c6

    .line 110
    :cond_ac
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportWcdmaInSlave"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c6

    .line 111
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_WCDMA_INSLAVE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c5

    goto :goto_c6

    :cond_c5
    move v3, v4

    .line 112
    :cond_c6
    :goto_c6
    sput v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    const/4 v0, -0x1

    .line 114
    sput v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mDataSubId:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5

    .line 146
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 122
    sget v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    .line 123
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPhoneOn:[I

    .line 124
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    .line 125
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    .line 126
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mUpdateStatus:[I

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mIsUpdateNwModeRequired:Z

    .line 128
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrevSubIds:Ljava/util/Map;

    const-string v1, "PreferredNetworkUpdater"

    const/16 v2, 0x64

    .line 147
    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->addLocalLog(Ljava/lang/String;I)V

    const-string v1, "Constructor invoked"

    .line 149
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    .line 152
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCommandsInterfaces()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 153
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    .line 155
    :goto_3d
    iget-object p1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length p1, p1

    if-ge v0, p1, :cond_50

    .line 156
    iget-object p1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    const/16 v1, -0x63

    aput v1, p1, v0

    .line 157
    iget-object p1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    const/4 v1, -0x1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_50
    return-void
.end method

.method private blacklist checkNetworkModeCapability(I[I)V
    .registers 7

    const/4 v0, 0x0

    .line 614
    :goto_1
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_27

    .line 615
    aget v1, p2, v0

    if-ne p1, v0, :cond_c

    .line 617
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sDefaultNetworkMode:I

    goto :goto_e

    .line 619
    :cond_c
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sSecondaryNetworkMode:I

    .line 622
    :goto_e
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isValidNetworkMode(I)Z

    move-result v3

    if-nez v3, :cond_15

    move v1, v2

    .line 625
    :cond_15
    invoke-static {v2}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v2

    .line 626
    invoke-static {v1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v1

    and-int/2addr v1, v2

    .line 627
    invoke-static {v1}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 630
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[checkNetworkModeCapability] defaultPhoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", nwMode: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist checkNwLockList(Ljava/lang/String;)Z
    .registers 6

    .line 1194
    invoke-static {}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getNetworkLockList()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const-string v2, ","

    .line 1196
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1197
    array-length v2, v0

    if-lez v2, :cond_37

    move v3, v1

    :goto_12
    if-ge v3, v2, :cond_37

    .line 1200
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DataLockFeature] Enable for operator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PreferredNetworkUpdater"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_37
    return v1
.end method

.method private blacklist doSetNetworkMode(III)V
    .registers 9

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doSetNetworkMode(SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") retryCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pendingPhoneCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", prefNwMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentNwMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 419
    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v3, v3, p1

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p3, v2, v3

    .line 420
    invoke-virtual {p0, v0, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 421
    iget-object p3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mUpdateStatus:[I

    aput v3, p3, p1

    .line 423
    iget-object p3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    aget p3, p3, p1

    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v0, v0, p1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_7e

    .line 424
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") Skip!! Mode is not changed"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 425
    invoke-static {v4}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p1

    invoke-static {p2, v2, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 426
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 428
    :cond_7e
    iget-object p3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    aget p3, p3, p1

    const/16 v0, -0x63

    if-ne p3, v0, :cond_aa

    .line 429
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") Skip!! SIM_ABSENT"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    const/16 p1, 0xb

    .line 430
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p1

    invoke-static {p2, v2, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 431
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 435
    :cond_aa
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p3

    iget-object p0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget p0, p0, p1

    .line 437
    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result p0

    int-to-long p0, p0

    .line 435
    invoke-virtual {p3, v4, p0, p1, p2}, Lcom/android/internal/telephony/Phone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    return-void
.end method

.method private blacklist getDefaultPhoneId()I
    .registers 5

    .line 395
    sget v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sDefaultNetworkMode:I

    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    goto :goto_f

    :cond_c
    const v1, 0x41000

    :goto_f
    const/4 v0, 0x0

    move v2, v0

    .line 402
    :goto_11
    sget v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v2, v3, :cond_24

    .line 403
    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v3, v3, v2

    invoke-static {v3}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v3

    and-int/2addr v3, v1

    if-eqz v3, :cond_21

    return v2

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_24
    return v0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/PreferredNetworkUpdater;
    .registers 2

    .line 140
    sget-object v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sInstance:Lcom/android/internal/telephony/PreferredNetworkUpdater;

    if-nez v0, :cond_b

    const-string v0, "PreferredNetworkUpdater"

    const-string v1, "getInstance() called before make()"

    .line 141
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sInstance:Lcom/android/internal/telephony/PreferredNetworkUpdater;

    return-object v0
.end method

.method private static blacklist getNetworkLockList()Ljava/lang/String;
    .registers 6

    .line 1177
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigSimLock"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return-object v1

    :cond_e
    const-string v2, ";"

    .line 1181
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1183
    array-length v2, v0

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_30

    .line 1185
    aget-object v4, v0, v3

    const-string v5, "datalock_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1186
    aget-object v0, v0, v3

    const-string v1, ""

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_30
    return-object v1
.end method

.method private blacklist getNetworkMode()V
    .registers 4

    const-string v0, "getNetworkMode()"

    .line 574
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 575
    :goto_6
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_2b

    .line 576
    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 578
    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mUpdateStatus:[I

    aget v2, v1, v0

    if-nez v2, :cond_28

    const/4 v2, 0x2

    .line 579
    aput v2, v1, v0

    const/4 v1, 0x3

    .line 580
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 581
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/Phone;->getAllowedNetworkTypesBitmask(Landroid/os/Message;)V

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_2b
    return-void
.end method

.method public static blacklist getPreferredDataSubId()I
    .registers 2

    .line 587
    sget v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mDataSubId:I

    const/4 v1, -0x1

    .line 588
    sput v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mDataSubId:I

    return v0
.end method

.method private blacklist isAllSubInIdleStatus()Z
    .registers 5

    .line 388
    iget-object p0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mUpdateStatus:[I

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_f

    aget v3, p0, v2

    if-eqz v3, :cond_c

    return v1

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isValidNetworkMode(I)Z
    .registers 2

    const/4 p0, -0x1

    if-le p1, p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 2

    const-string p0, "PreferredNetworkUpdater"

    .line 1328
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    invoke-static {p0, p1}, Lcom/android/internal/telephony/PhoneFactory;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;)Lcom/android/internal/telephony/PreferredNetworkUpdater;
    .registers 2

    .line 131
    sget-object v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sInstance:Lcom/android/internal/telephony/PreferredNetworkUpdater;

    if-nez v0, :cond_c

    .line 132
    new-instance v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sInstance:Lcom/android/internal/telephony/PreferredNetworkUpdater;

    goto :goto_24

    .line 134
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "make() called multiple times!  sInstance = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sInstance:Lcom/android/internal/telephony/PreferredNetworkUpdater;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PreferredNetworkUpdater"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_24
    sget-object p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sInstance:Lcom/android/internal/telephony/PreferredNetworkUpdater;

    return-object p0
.end method

.method private blacklist networkModeUpdated()V
    .registers 2

    const-string v0, "networkModeUpdated()"

    .line 412
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onGetNetworkModeDone(Landroid/os/Message;)V
    .registers 7

    .line 509
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 510
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 512
    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mUpdateStatus:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 514
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v2, "onGetNetworkModeDone(SUB"

    if-eqz v1, :cond_34

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "): got Exception ="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void

    .line 519
    :cond_34
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_78

    .line 520
    check-cast p1, [I

    .line 521
    array-length v1, p1

    if-lez v1, :cond_56

    .line 522
    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v1, v1, v4

    const/4 v4, -0x1

    if-ne v1, v4, :cond_56

    .line 523
    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget p1, p1, v3

    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result p1

    aput p1, v1, v4

    .line 526
    :cond_56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "): currentNwMode = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 529
    :cond_78
    iget-boolean p1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mIsUpdateNwModeRequired:Z

    if-eqz p1, :cond_7f

    .line 530
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkMode()V

    :cond_7f
    return-void
.end method

.method private blacklist onSetAllowedNetworkTypes(Landroid/os/Message;)V
    .registers 9

    .line 535
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, v0, v3

    if-nez v4, :cond_13

    const-string p1, "There is a phone null!! We can\'t set network mode!"

    .line 537
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 542
    :cond_16
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 543
    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_72

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 546
    fill-array-data p1, :array_7c

    .line 547
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserPreferredNetworkType()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    const-wide/32 v4, 0x80000

    and-long/2addr v0, v4

    cmp-long v0, v0, v4

    const/4 v1, 0x1

    if-nez v0, :cond_41

    const-string v0, "SIM1 slot has 5G network. So, first sends SIM2 slot network mode and then sends SIM1 slot network mode 2sec later."

    .line 551
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    aput v1, p1, v2

    aput v2, p1, v1

    goto :goto_46

    :cond_41
    const-string v0, "SIM1 slot doesn\'t have 5G network. So, first sends SIM1 slot network mode and then sends SIM2 slot network mode 2sec later."

    .line 556
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    :goto_46
    aget v0, p1, v2

    .line 559
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserPreferredNetworkType()J

    move-result-wide v4

    long-to-int v0, v4

    aget v2, p1, v2

    const/4 v4, 0x4

    .line 560
    invoke-virtual {p0, v4, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    aget v0, p1, v1

    .line 561
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserPreferredNetworkType()J

    move-result-wide v5

    long-to-int v0, v5

    aget p1, p1, v1

    .line 562
    invoke-virtual {p0, v4, p1, v0, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 567
    :cond_72
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    return-void

    nop

    :array_7c
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private blacklist onSetNetworkModeDone(Landroid/os/Message;)V
    .registers 13

    .line 454
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 455
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 456
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 457
    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v2, v2, v1

    .line 459
    sget v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v4, v3, [I

    .line 461
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_20

    .line 462
    move-object v2, v5

    check-cast v2, [I

    aget v2, v2, v7

    .line 463
    check-cast v5, [I

    aget v5, v5, v6

    goto :goto_21

    :cond_20
    move v5, v7

    .line 466
    :goto_21
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v9, v8, Lcom/android/internal/telephony/CommandException;

    const-string v10, "onSetNetworkModeDone(SUB"

    if-eqz v9, :cond_65

    .line 467
    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 468
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "): Fail - "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", retryCount:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 470
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SIM_ABSENT:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v2, v4, :cond_99

    const/4 v2, 0x5

    if-ge p1, v2, :cond_99

    add-int/2addr p1, v6

    .line 473
    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v6, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 478
    :cond_65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "): Success"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    if-ne v3, v6, :cond_95

    .line 479
    sget-boolean p1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IS_INDIA:Z

    if-eqz p1, :cond_95

    .line 480
    sget-boolean p1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IsIndiaNLMode:Z

    if-nez p1, :cond_8e

    const/16 p1, 0x9

    .line 481
    aput p1, v4, v7

    .line 482
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDB([I)V

    goto :goto_95

    :cond_8e
    const/16 p1, 0x1a

    .line 484
    aput p1, v4, v7

    .line 485
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDB([I)V

    .line 488
    :cond_95
    :goto_95
    iget-object p1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    aput v2, p1, v1

    .line 491
    :cond_99
    iget-object p1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mUpdateStatus:[I

    aput v7, p1, v1

    if-lez v5, :cond_a6

    add-int/2addr v1, v6

    .line 494
    rem-int/2addr v1, v3

    sub-int/2addr v5, v6

    .line 495
    invoke-direct {p0, v1, v7, v5}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->doSetNetworkMode(III)V

    return-void

    .line 499
    :cond_a6
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isAllSubInIdleStatus()Z

    move-result p1

    if-eqz p1, :cond_b7

    .line 500
    iget-boolean p1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mIsUpdateNwModeRequired:Z

    if-eqz p1, :cond_b4

    .line 501
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkMode()V

    goto :goto_b7

    .line 503
    :cond_b4
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->networkModeUpdated()V

    :cond_b7
    :goto_b7
    return-void
.end method

.method private blacklist setNetworkMode()V
    .registers 5

    .line 441
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isAllSubInIdleStatus()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    .line 442
    iput-boolean v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mIsUpdateNwModeRequired:Z

    .line 449
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getDefaultPhoneId()I

    move-result v2

    add-int/2addr v2, v1

    sget v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    rem-int/2addr v2, v3

    sub-int/2addr v3, v1

    .line 450
    invoke-direct {p0, v2, v0, v3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->doSetNetworkMode(III)V

    return-void

    :cond_17
    const-string v0, "setNetworkMode: Wait!!, NetworkMode update is in progress"

    .line 444
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 445
    iput-boolean v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mIsUpdateNwModeRequired:Z

    return-void
.end method

.method private blacklist setNetworkModeDB([I)V
    .registers 6

    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mActiveSubInfoList:Ljava/util/List;

    if-eqz v0, :cond_22

    .line 374
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 375
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    aget v1, p1, v1

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDbForSubId(II)V

    goto :goto_8

    :cond_22
    const/4 v0, 0x0

    .line 379
    :goto_23
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_3d

    .line 380
    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    aget v2, p1, v0

    const-string v3, "preferred_network_mode"

    invoke-static {v1, v3, v0, v2}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 382
    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 384
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetworkModeDB: preferred_network_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setNetworktypeforDataLock([I[Z)V
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x2

    if-ge v1, v2, :cond_a1

    .line 1271
    aget v2, p1, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9d

    .line 1272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DataLockFeature] Set slave slot"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " network mode to Gsm only"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 1273
    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1277
    :try_start_2b
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    const/4 v5, -0x1

    move v6, v0

    .line 1280
    :cond_31
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DataLockFeature] Waiting for slave slot set GsmOnly. sleepCount : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    const-wide/16 v7, 0x1f4

    .line 1281
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    if-eqz v2, :cond_69

    .line 1282
    array-length v7, v2

    if-lez v7, :cond_69

    .line 1283
    aget v5, v2, v0

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getNetworkModeDbForSubId(I)I

    move-result v5

    .line 1284
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DataLockFeature] Network mode on sim Invalid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_69} :catch_73

    :cond_69
    const/16 v7, 0x9

    if-le v6, v7, :cond_6e

    move v5, v3

    :cond_6e
    add-int/lit8 v6, v6, 0x1

    if-ne v5, v3, :cond_31

    goto :goto_77

    :catch_73
    move-exception v0

    .line 1290
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1293
    :goto_77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DataLockFeature] Set network mode to slot: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 1294
    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v3

    aget p1, p1, v3

    invoke-interface {v0, p1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1295
    aget-boolean p1, p2, v3

    if-eqz p1, :cond_a1

    .line 1296
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->switchNetworkTo(I)V

    goto :goto_a1

    :cond_9d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_a1
    :goto_a1
    return-void
.end method

.method private blacklist setPrefNetTypeForDataLockSim()V
    .registers 10

    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    .line 1212
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1213
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v2, v1, [I

    .line 1214
    new-array v1, v1, [Z

    .line 1218
    array-length v3, v0

    if-eqz v3, :cond_103

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_26

    aget-object v3, v0, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto/16 :goto_103

    .line 1221
    :cond_26
    array-length v3, v0

    if-ne v3, v5, :cond_39

    aget-object v3, v0, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, "[DataLockFeature] isOneSimInsertSlot0"

    .line 1222
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    move v6, v4

    move v3, v5

    goto :goto_57

    .line 1224
    :cond_39
    array-length v3, v0

    const/4 v6, 0x2

    if-ne v3, v6, :cond_55

    aget-object v3, v0, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_55

    aget-object v3, v0, v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_55

    const-string v3, "[DataLockFeature] isOneSimInsertSlot1"

    .line 1225
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    move v3, v4

    move v6, v5

    goto :goto_57

    :cond_55
    move v3, v4

    move v6, v3

    :goto_57
    const/4 v7, 0x0

    if-eqz v3, :cond_6f

    .line 1230
    aget-object v0, v0, v4

    invoke-static {v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->checkNwLockList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6e

    const-string v0, "[DataLockFeature] Invalid simcard in slot0"

    .line 1231
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 1232
    iget-object p0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object p0, p0, v4

    invoke-interface {p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    :cond_6e
    return-void

    :cond_6f
    if-eqz v6, :cond_86

    .line 1236
    aget-object v0, v0, v5

    invoke-static {v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->checkNwLockList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_85

    const-string v0, "[DataLockFeature] Invalid simcard in slot1"

    .line 1237
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 1238
    iget-object p0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object p0, p0, v5

    invoke-interface {p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    :cond_85
    return-void

    :cond_86
    move v3, v4

    .line 1243
    :goto_87
    sget v6, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v3, v6, :cond_e6

    .line 1244
    aget-object v6, v0, v3

    invoke-static {v6}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->checkNwLockList(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a8

    .line 1245
    aput v5, v2, v3

    if-nez v3, :cond_b3

    rsub-int/lit8 v6, v3, 0x1

    .line 1246
    aget-object v8, v0, v6

    invoke-static {v8}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->checkNwLockList(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b3

    .line 1247
    aput-boolean v5, v1, v6

    .line 1248
    sget v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sDefaultNetworkMode:I

    aput v0, v2, v6

    goto :goto_e6

    :cond_a8
    if-nez v3, :cond_af

    .line 1253
    sget v6, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sDefaultNetworkMode:I

    aput v6, v2, v3

    goto :goto_b3

    .line 1255
    :cond_af
    sget v6, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sSecondaryNetworkMode:I

    aput v6, v2, v3

    .line 1258
    :cond_b3
    :goto_b3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DataLockFeature] DataPreferId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", setNetTypeForSim"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v2, v3

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", setDDSForSlot: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v8, v1, v3

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    .line 1261
    :cond_e6
    :goto_e6
    aget v0, v2, v4

    if-eq v0, v5, :cond_ff

    aget v3, v2, v5

    if-eq v3, v5, :cond_ff

    .line 1262
    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v4

    invoke-interface {v1, v0, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1263
    iget-object p0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object p0, p0, v5

    aget v0, v2, v5

    invoke-interface {p0, v0, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_102

    .line 1265
    :cond_ff
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworktypeforDataLock([I[Z)V

    :goto_102
    return-void

    :cond_103
    :goto_103
    const-string v0, "[DataLockFeature] Invalid numeric in slots"

    .line 1219
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setPreferredNetworkForInu()V
    .registers 17

    move-object/from16 v0, p0

    .line 897
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v2, v1, [I

    .line 898
    new-array v3, v1, [I

    .line 899
    new-array v1, v1, [I

    .line 900
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    const/4 v5, 0x0

    .line 908
    iput v5, v4, Lcom/android/internal/telephony/SubscriptionController;->NewRecord:I

    .line 909
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setPreferredNetworkForInu] mSubCtrlr.NewRecord after reset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/internal/telephony/SubscriptionController;->NewRecord:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    const/4 v6, -0x1

    move v7, v5

    move v8, v7

    move v9, v8

    move v10, v9

    move v12, v10

    move v11, v6

    .line 911
    :goto_2e
    sget v13, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    const/16 v14, 0x9

    const/4 v5, 0x1

    if-ge v7, v13, :cond_108

    .line 913
    :try_start_35
    iget-object v13, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v15, "preferred_network_mode"

    invoke-static {v13, v15, v7}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    aput v13, v1, v7
    :try_end_43
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_35 .. :try_end_43} :catch_44

    goto :goto_48

    .line 916
    :catch_44
    sget v13, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    aput v13, v1, v7

    .line 919
    :goto_48
    aget v13, v1, v7

    if-eq v13, v14, :cond_50

    const/16 v14, 0xb

    if-ne v13, v14, :cond_52

    :cond_50
    add-int/lit8 v10, v10, 0x1

    .line 923
    :cond_52
    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v13

    aput v13, v2, v7

    .line 925
    invoke-static {v13}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v13

    if-eqz v13, :cond_6e

    const-string v13, "[setPreferredNetworkForInu]+ subId check!! IS Valid."

    .line 926
    invoke-direct {v0, v13}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    .line 928
    aget v13, v2, v7

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getNetworkModeDbForSubId(I)I

    move-result v13

    aput v13, v3, v7

    goto :goto_81

    :cond_6e
    const-string v13, "[setPreferredNetworkForInu]+ subId check!! IS NOT Valid. so return"

    .line 930
    invoke-direct {v0, v13}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 931
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Common_SupportWcdmaInSlave"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_81

    .line 932
    aput v6, v3, v7

    .line 936
    :cond_81
    :goto_81
    aget v13, v3, v7

    if-eq v13, v5, :cond_8e

    if-eqz v13, :cond_8e

    const/4 v14, 0x2

    if-eq v13, v14, :cond_8e

    if-eq v13, v6, :cond_8e

    add-int/lit8 v12, v12, 0x1

    .line 942
    :cond_8e
    iget-object v13, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPhoneOn:[I

    aget v13, v13, v7

    if-ne v13, v5, :cond_ec

    aget v5, v2, v7

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-nez v5, :cond_9d

    goto :goto_ec

    .line 948
    :cond_9d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[setPreferredNetworkForInu]+ activated slot:"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 951
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setPreferredNetworkForInu: subIds["

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "]:"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v2, v7

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " nwModeInDb: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v1, v7

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " nwModeinSubIdTable: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v3, v7

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "lteAutoSimCount :"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    goto :goto_103

    .line 943
    :cond_ec
    :goto_ec
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setPreferredNetworkForInu: not acitve slot: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    move v11, v7

    :goto_103
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto/16 :goto_2e

    .line 955
    :cond_108
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[setPreferredNetworkForInu]+ validSubCount: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    if-nez v8, :cond_11f

    return-void

    :cond_11f
    const/4 v7, 0x2

    if-ne v9, v5, :cond_142

    if-ne v10, v7, :cond_142

    .line 963
    sget v7, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v7, v3, v11

    .line 964
    aget v8, v2, v11

    invoke-virtual {v0, v8, v7}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDbForSubId(II)V

    .line 965
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPreferredNetworkForInu: not acitve slot to GSM  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    const/4 v7, 0x2

    :cond_142
    if-ne v10, v7, :cond_155

    if-nez v11, :cond_14e

    .line 970
    sget v7, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    const/4 v8, 0x0

    aput v7, v1, v8

    .line 971
    aput v14, v1, v5

    goto :goto_155

    :cond_14e
    const/4 v8, 0x0

    .line 973
    aput v14, v1, v8

    .line 974
    sget v7, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v7, v1, v5

    :cond_155
    :goto_155
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 978
    :goto_159
    sget v5, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v8, v5, :cond_1d2

    .line 979
    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v5

    aput v5, v2, v8

    .line 981
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setPreferredNetworkForInu:AFTER nwModeInDb["

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "]: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", nwModeinSubIdTable["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", lteSubcount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 984
    aget v5, v2, v8

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_1a9

    aget v5, v3, v8

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1a7

    goto :goto_1a9

    :cond_1a7
    const/4 v5, 0x2

    goto :goto_1ac

    :cond_1a9
    :goto_1a9
    const/4 v5, 0x2

    if-ne v12, v5, :cond_1bd

    .line 985
    :goto_1ac
    aget v6, v1, v8

    aput v6, v3, v8

    .line 986
    aget v6, v2, v8

    aget v14, v1, v8

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDbForSubId(II)V

    if-eq v12, v5, :cond_1bc

    add-int/lit8 v7, v7, 0x1

    move v13, v8

    :cond_1bc
    const/4 v15, 0x1

    .line 993
    :cond_1bd
    aget v5, v2, v8

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_1cc

    aget v5, v3, v8

    aget v6, v1, v8

    if-eq v5, v6, :cond_1cc

    const/4 v15, 0x1

    :cond_1cc
    add-int/lit8 v8, v8, 0x1

    const/4 v6, -0x1

    const/16 v14, 0x9

    goto :goto_159

    :cond_1d2
    const/4 v5, 0x2

    if-ne v7, v5, :cond_1f9

    if-eq v9, v5, :cond_1f9

    if-eq v10, v5, :cond_1f9

    if-nez v11, :cond_1e6

    .line 1000
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    const/4 v4, 0x0

    aput v2, v1, v4

    const/16 v2, 0x9

    const/4 v5, 0x1

    .line 1001
    aput v2, v1, v5

    goto :goto_1f0

    :cond_1e6
    const/16 v2, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1003
    aput v2, v1, v4

    .line 1004
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v2, v1, v5

    .line 1006
    :goto_1f0
    aget v2, v1, v4

    aput v2, v3, v4

    .line 1007
    aget v1, v1, v5

    aput v1, v3, v5

    goto :goto_218

    :cond_1f9
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v7, v5, :cond_217

    if-nez v13, :cond_200

    move v4, v5

    .line 1012
    :cond_200
    aget v1, v3, v4

    if-eq v1, v5, :cond_212

    const/4 v2, 0x2

    if-eq v1, v2, :cond_212

    if-eqz v1, :cond_212

    const/4 v2, -0x1

    if-ne v1, v2, :cond_20d

    goto :goto_212

    .line 1018
    :cond_20d
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v1, v3, v13

    goto :goto_218

    :cond_212
    :goto_212
    const/16 v1, 0x9

    .line 1016
    aput v1, v3, v13

    goto :goto_218

    :cond_217
    move v5, v15

    :goto_218
    if-eqz v5, :cond_220

    .line 1027
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDB([I)V

    .line 1028
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkMode()V

    :cond_220
    return-void
.end method

.method private blacklist setPreferredNetworkNrForInu()V
    .registers 17

    move-object/from16 v0, p0

    .line 1037
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v2, v1, [I

    .line 1038
    new-array v3, v1, [I

    .line 1039
    new-array v1, v1, [I

    .line 1040
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    const/4 v5, 0x0

    .line 1048
    iput v5, v4, Lcom/android/internal/telephony/SubscriptionController;->NewRecord:I

    .line 1049
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setPreferredNetworkNrForInu] mSubCtrlr.NewRecord after reset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/internal/telephony/SubscriptionController;->NewRecord:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    move v7, v5

    move v8, v7

    move v9, v8

    move v10, v9

    move v12, v10

    const/4 v11, -0x1

    .line 1051
    :goto_2d
    sget v13, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    const/16 v5, 0x1a

    const/4 v6, 0x2

    const/4 v14, 0x1

    if-ge v7, v13, :cond_106

    .line 1053
    :try_start_35
    iget-object v13, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v15, "preferred_network_mode"

    invoke-static {v13, v15, v7}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    aput v13, v1, v7
    :try_end_43
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_35 .. :try_end_43} :catch_44

    goto :goto_48

    .line 1056
    :catch_44
    sget v13, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    aput v13, v1, v7

    .line 1059
    :goto_48
    aget v13, v1, v7

    if-eq v13, v5, :cond_54

    const/16 v5, 0x17

    if-eq v13, v5, :cond_54

    const/16 v5, 0x18

    if-ne v13, v5, :cond_56

    :cond_54
    add-int/lit8 v10, v10, 0x1

    .line 1064
    :cond_56
    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v5

    aput v5, v2, v7

    .line 1066
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_72

    const-string v5, "[setPreferredNetworkNrForInu]+ subId check!! IS Valid."

    .line 1067
    invoke-direct {v0, v5}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    .line 1069
    aget v5, v2, v7

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getNetworkModeDbForSubId(I)I

    move-result v5

    aput v5, v3, v7

    goto :goto_77

    :cond_72
    const-string v5, "[setPreferredNetworkNrForInu]+ subId check!! IS NOT Valid. so return"

    .line 1071
    invoke-direct {v0, v5}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 1075
    :goto_77
    aget v5, v3, v7

    if-eq v5, v14, :cond_8c

    if-eqz v5, :cond_8c

    if-eq v5, v6, :cond_8c

    const/16 v6, 0x9

    if-eq v5, v6, :cond_8c

    const/16 v6, 0xb

    if-eq v5, v6, :cond_8c

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8c

    add-int/lit8 v12, v12, 0x1

    .line 1083
    :cond_8c
    iget-object v5, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPhoneOn:[I

    aget v5, v5, v7

    if-ne v5, v14, :cond_ea

    aget v5, v2, v7

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-nez v5, :cond_9b

    goto :goto_ea

    .line 1089
    :cond_9b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setPreferredNetworkNrForInu]+ activated slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 1092
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPreferredNetworkNrForInu: subIds["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " nwModeInDb: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " nwModeinSubIdTable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " nrAutoSimCount :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    goto :goto_101

    .line 1084
    :cond_ea
    :goto_ea
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPreferredNetworkNrForInu: not acitve slot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    move v11, v7

    :goto_101
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto/16 :goto_2d

    .line 1096
    :cond_106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[setPreferredNetworkNrForInu]+ validSubCount: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    if-nez v8, :cond_11d

    return-void

    :cond_11d
    if-ne v9, v14, :cond_13e

    if-ne v10, v6, :cond_13e

    .line 1104
    sget v7, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v7, v3, v11

    .line 1105
    aget v8, v2, v11

    invoke-virtual {v0, v8, v7}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDbForSubId(II)V

    .line 1106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPreferredNetworkNrForInu: not acitve slot to DEFAULT_NW_MODE_SENCONDARY  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    :cond_13e
    if-ne v10, v6, :cond_151

    if-nez v11, :cond_14a

    .line 1111
    sget v7, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    const/4 v8, 0x0

    aput v7, v1, v8

    .line 1112
    aput v5, v1, v14

    goto :goto_151

    :cond_14a
    const/4 v8, 0x0

    .line 1114
    aput v5, v1, v8

    .line 1115
    sget v7, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v7, v1, v14

    :cond_151
    :goto_151
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 1119
    :goto_155
    sget v5, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v8, v5, :cond_1cd

    .line 1120
    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v5

    aput v5, v2, v8

    .line 1122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setPreferredNetworkNrForInu:AFTER nwModeInDb["

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "]: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", nwModeinSubIdTable["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", nrSubcount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 1125
    aget v5, v2, v8

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_1a5

    aget v5, v3, v8

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1a3

    goto :goto_1a5

    :cond_1a3
    const/4 v5, 0x2

    goto :goto_1a8

    :cond_1a5
    :goto_1a5
    const/4 v5, 0x2

    if-ne v12, v5, :cond_1b9

    .line 1126
    :goto_1a8
    aget v6, v1, v8

    aput v6, v3, v8

    .line 1127
    aget v6, v2, v8

    aget v14, v1, v8

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDbForSubId(II)V

    if-eq v12, v5, :cond_1b8

    add-int/lit8 v7, v7, 0x1

    move v13, v8

    :cond_1b8
    const/4 v15, 0x1

    .line 1134
    :cond_1b9
    aget v5, v2, v8

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_1c8

    aget v5, v3, v8

    aget v6, v1, v8

    if-eq v5, v6, :cond_1c8

    const/4 v15, 0x1

    :cond_1c8
    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x2

    const/4 v14, 0x1

    goto :goto_155

    :cond_1cd
    move v5, v6

    if-ne v7, v5, :cond_1f5

    if-eq v9, v5, :cond_1f5

    if-eq v10, v5, :cond_1f5

    if-nez v11, :cond_1e1

    .line 1141
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    const/4 v4, 0x0

    aput v2, v1, v4

    const/16 v2, 0x1a

    const/4 v5, 0x1

    .line 1142
    aput v2, v1, v5

    goto :goto_1eb

    :cond_1e1
    const/16 v2, 0x1a

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1144
    aput v2, v1, v4

    .line 1145
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v2, v1, v5

    .line 1147
    :goto_1eb
    aget v2, v1, v4

    aput v2, v3, v4

    .line 1148
    aget v1, v1, v5

    aput v1, v3, v5

    :goto_1f3
    move v14, v5

    goto :goto_21c

    :cond_1f5
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v7, v5, :cond_21b

    if-nez v13, :cond_1fc

    move v4, v5

    .line 1153
    :cond_1fc
    aget v1, v3, v4

    if-eq v1, v5, :cond_216

    const/4 v2, 0x2

    if-eq v1, v2, :cond_216

    if-eqz v1, :cond_216

    const/16 v2, 0xb

    if-eq v1, v2, :cond_216

    const/16 v2, 0x9

    if-eq v1, v2, :cond_216

    const/4 v2, -0x1

    if-ne v1, v2, :cond_211

    goto :goto_216

    .line 1161
    :cond_211
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v1, v3, v13

    goto :goto_1f3

    :cond_216
    :goto_216
    const/16 v1, 0x1a

    .line 1159
    aput v1, v3, v13

    goto :goto_1f3

    :cond_21b
    move v14, v15

    :goto_21c
    if-eqz v14, :cond_227

    .line 1170
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDB([I)V

    .line 1171
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkMode()V

    .line 1172
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->updateNetworkModeForIndia()V

    :cond_227
    return-void
.end method

.method private blacklist switchNetworkTo(I)V
    .registers 5

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DataLockFeature] switchNetworkTo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 1306
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 1307
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 1308
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_32

    .line 1310
    :cond_27
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 1311
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 1314
    :goto_32
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 1315
    array-length v0, p1

    if-lez v0, :cond_3d

    aget v1, p1, v1

    .line 1317
    :cond_3d
    iget-object p0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    if-eqz p0, :cond_44

    .line 1318
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 1320
    :cond_44
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    return-void
.end method

.method private blacklist syncPhoneOnFromDB()V
    .registers 6

    const/4 v0, 0x0

    .line 333
    :goto_1
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_1b

    .line 334
    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPhoneOn:[I

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PHONE_ON_KEY:[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method

.method private blacklist updateDefaultNetworkMode()V
    .registers 7

    const/4 v0, 0x0

    const-string v1, "ro.telephony.default_network"

    const-string v2, "0"

    .line 288
    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x9

    .line 290
    invoke-static {v3}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v3

    .line 291
    sget v4, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    invoke-static {v4}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v4

    const/16 v5, 0xd

    if-gt v5, v1, :cond_37

    .line 294
    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "turnOff_5g_option_by_device_manager"

    invoke-static {v3, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2d

    move v0, v5

    .line 296
    :cond_2d
    invoke-static {v1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v3

    if-eqz v0, :cond_37

    const v0, -0x80001

    and-int/2addr v3, v0

    :cond_37
    const-string v0, "persist.radio.support.dualrat"

    .line 302
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    move v0, v3

    goto :goto_4b

    :cond_47
    const/high16 v0, 0x10000

    and-int/2addr v0, v3

    or-int/2addr v0, v4

    .line 309
    :goto_4b
    invoke-static {v3}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v1

    sput v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sDefaultNetworkMode:I

    .line 310
    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sSecondaryNetworkMode:I

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDefaultNetworkMode() default="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sDefaultNetworkMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", secondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sSecondaryNetworkMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsIndiaNLMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IsIndiaNLMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " IsIndiaLWMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IsIndiaLWMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateInsertSimState()V
    .registers 12

    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mActiveSubInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, -0x63

    const/4 v2, 0x0

    if-nez v0, :cond_16

    .line 342
    :goto_b
    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    array-length v3, v0

    if-ge v2, v3, :cond_15

    .line 343
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    return-void

    .line 348
    :cond_16
    sget v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    .line 349
    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 350
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    move v5, v2

    .line 352
    :goto_25
    sget v6, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v5, v6, :cond_6b

    .line 353
    iget-object v6, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v6

    aput v6, v0, v5

    .line 354
    iget-object v6, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrevSubIds:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "active_subid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, -0x1

    invoke-interface {v3, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget v7, v0, v5

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 357
    :cond_6b
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v3, v2

    .line 359
    :goto_6f
    sget v4, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v3, v4, :cond_d7

    .line 360
    aget v4, v0, v3

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_80

    .line 361
    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    aput v1, v4, v3

    goto :goto_98

    .line 362
    :cond_80
    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrevSubIds:Ljava/util/Map;

    aget v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 363
    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    aput v2, v4, v3

    goto :goto_98

    .line 365
    :cond_93
    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    const/4 v5, -0x2

    aput v5, v4, v3

    .line 367
    :goto_98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateInsertSimState: phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", prevSubId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrevSubIds:Ljava/util/Map;

    .line 368
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mInsertSimState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 367
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    :cond_d7
    return-void
.end method

.method private blacklist updateIsCtcDB()V
    .registers 8

    const-string v0, "IS_CTC"

    const-string v1, "IS_CTC2"

    .line 634
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 635
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    .line 637
    :goto_e
    sget v4, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v3, v4, :cond_4a

    const-string v4, "ril.simoperator"

    const-string v5, "ETC"

    .line 638
    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v5, "CTC"

    .line 639
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    aget-object v4, v1, v3

    const-string v5, "CTG"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    goto :goto_3b

    .line 642
    :cond_2f
    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_47

    .line 640
    :cond_3b
    :goto_3b
    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    aget-object v5, v0, v3

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_4a
    return-void
.end method

.method private blacklist updateNetworkModeForChina()V
    .registers 17

    move-object/from16 v0, p0

    .line 659
    iget-object v1, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPhoneOn:[I

    .line 660
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v3, v2, [I

    .line 661
    new-array v4, v2, [I

    .line 663
    iget-object v5, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    .line 664
    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v6

    const-string v7, "multi_sim_existing_data_call"

    .line 663
    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, -0x1

    .line 665
    sput v6, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mDataSubId:I

    const/4 v8, 0x0

    :goto_20
    if-ge v8, v2, :cond_29

    .line 673
    sget v9, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sDefaultNetworkMode:I

    aput v9, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    .line 676
    :cond_29
    iget-object v8, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mActiveSubInfoList:Ljava/util/List;

    const/4 v9, 0x1

    if-eqz v8, :cond_4a

    .line 678
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :cond_33
    :goto_33
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/SubscriptionInfo;

    .line 679
    invoke-virtual {v12}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v12

    aget v12, v1, v12

    if-ne v12, v9, :cond_33

    add-int/lit8 v11, v11, 0x1

    goto :goto_33

    :cond_4a
    const/4 v11, 0x0

    :cond_4b
    if-nez v11, :cond_53

    const-string v1, "[updateNetworkModeForChina] ActiveSlotCount 0"

    .line 684
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void

    .line 693
    :cond_53
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v10, v6

    move v12, v10

    :goto_59
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_ce

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionInfo;

    .line 694
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v14

    .line 695
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v13

    .line 696
    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getNetworkModeDbForSubId(I)I

    move-result v15

    .line 697
    aput v13, v4, v14

    .line 699
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateNetworkModeForChina] slot:"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", subId:"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", nwMode:"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", phoneOn:"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v1, v14

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 702
    aput v15, v3, v14

    if-ne v11, v9, :cond_b0

    .line 703
    aget v6, v1, v14

    if-ne v6, v9, :cond_b0

    if-eq v13, v5, :cond_af

    .line 707
    sget v6, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sDefaultNetworkMode:I

    aput v6, v3, v14

    :cond_af
    move v10, v14

    :cond_b0
    if-ne v13, v5, :cond_b4

    move v12, v14

    goto :goto_c1

    .line 713
    :cond_b4
    iget-object v6, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    aget v6, v6, v14

    if-nez v6, :cond_c1

    sget v6, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sSecondaryNetworkMode:I

    if-ne v15, v6, :cond_c1

    const/4 v6, -0x1

    .line 714
    aput v6, v3, v14

    .line 717
    :cond_c1
    :goto_c1
    iget-object v6, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    aget v6, v6, v14

    const/4 v7, -0x2

    if-ne v6, v7, :cond_cc

    .line 718
    sget v6, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sDefaultNetworkMode:I

    aput v6, v3, v14

    :cond_cc
    const/4 v6, -0x1

    goto :goto_59

    .line 722
    :cond_ce
    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_d6

    move v1, v10

    goto :goto_eb

    .line 724
    :cond_d6
    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_de

    move v1, v12

    goto :goto_eb

    .line 727
    :cond_de
    iget-object v1, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "multi_sim_data_call_slot"

    const/4 v7, 0x0

    invoke-static {v1, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 731
    :goto_eb
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->checkNetworkModeCapability(I[I)V

    .line 732
    aget v6, v4, v1

    sput v6, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mDataSubId:I

    .line 734
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[updateNetworkModeForChina] slot_single:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", slot_data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " / primarySlot:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", activeSlotCount:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDataSubId:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mDataSubId:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldDataSubId:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 739
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDB([I)V

    const/4 v7, 0x0

    :goto_134
    if-ge v7, v2, :cond_15c

    .line 742
    aget v1, v3, v7

    invoke-static {v1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v1

    .line 743
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5, v7, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->putNetworkTypeinPreference(II)V

    .line 744
    aget v1, v4, v7

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_152

    .line 745
    iget-object v1, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    aget v5, v4, v7

    invoke-virtual {v1, v7, v5}, Lcom/android/internal/telephony/SubscriptionController;->insertNetworkModeInSubinfo(II)V

    .line 747
    :cond_152
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->loadAllowedNetworksFromSubscriptionDatabase()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_134

    :cond_15c
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 750
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist updateNetworkModeForIndia()V
    .registers 6

    const/4 v0, 0x0

    .line 162
    :goto_1
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_5f

    .line 163
    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v1

    .line 164
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->putNetworkTypeinPreference(II)V

    .line 165
    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 166
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 167
    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->insertNetworkModeInSubinfo(II)V

    .line 169
    :cond_25
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->loadAllowedNetworksFromSubscriptionDatabase()V

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkModeForIndia SubID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " PhoneID: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " NetworkMode: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v2, v2, v0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " RAF: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5f
    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 2

    const-string v0, "[dispose]"

    .line 1324
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getNetworkModeDbForSubId(I)I
    .registers 4

    .line 654
    iget-object p0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preferred_network_mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 264
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_31

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_29

    const/4 v1, 0x4

    if-eq v0, v1, :cond_25

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    goto :goto_42

    .line 279
    :cond_25
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->onSetAllowedNetworkTypes(Landroid/os/Message;)V

    goto :goto_42

    .line 275
    :cond_29
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->onGetNetworkModeDone(Landroid/os/Message;)V

    goto :goto_42

    .line 271
    :cond_2d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->onSetNetworkModeDone(Landroid/os/Message;)V

    goto :goto_42

    .line 266
    :cond_31
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3a

    check-cast v0, [I

    aget v0, v0, v1

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    .line 267
    :goto_3b
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v1, p1, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->doSetNetworkMode(III)V

    :goto_42
    return-void
.end method

.method public blacklist setNetworkModeDbForSubId(II)V
    .registers 5

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetworkModeDbForSubId: preferred_network_mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 649
    iget-object p0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preferred_network_mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method protected blacklist updateNetworkMode()V
    .registers 8

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mActiveSubInfoList:Ljava/util/List;

    .line 177
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->syncPhoneOnFromDB()V

    .line 178
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->updateDefaultNetworkMode()V

    .line 179
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->updateInsertSimState()V

    .line 182
    sget-boolean v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IS_INDIA:Z

    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_7f

    sget v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ne v0, v2, :cond_7f

    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    aget v0, v0, v3

    if-ne v0, v1, :cond_7f

    const-string v0, "ril.5g_rf"

    const-string v4, "0"

    .line 184
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_53

    .line 185
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_53

    .line 186
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "3"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_53

    :cond_51
    move v0, v3

    goto :goto_54

    :cond_53
    :goto_53
    move v0, v2

    :goto_54
    if-eqz v0, :cond_62

    const-string v0, "updateNetworkMode: Single SIM model and SIM change happened #1"

    .line 190
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    const/16 v0, 0x1a

    .line 191
    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    goto :goto_6d

    :cond_62
    const-string v0, "updateNetworkMode: Single SIM model and SIM change happened #2"

    .line 195
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 196
    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    .line 198
    :goto_6d
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->putNetworkTypeinPreference(II)V

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 200
    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4, v3, v0}, Lcom/android/internal/telephony/SubscriptionController;->insertNetworkModeInSubinfo(II)V

    .line 202
    :cond_7f
    sget-boolean v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IS_CHINA:Z

    if-eqz v0, :cond_bb

    .line 203
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->updateIsCtcDB()V

    .line 205
    sget v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-le v0, v2, :cond_8f

    .line 206
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->updateNetworkModeForChina()V

    goto/16 :goto_11f

    .line 208
    :cond_8f
    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 224
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_11f

    .line 225
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getNetworkModeDbForSubId(I)I

    move-result v2

    .line 226
    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    aget v4, v4, v3

    if-ne v4, v1, :cond_aa

    .line 227
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sDefaultNetworkMode:I

    .line 228
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDbForSubId(II)V

    .line 230
    :cond_aa
    invoke-static {v2}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v1

    .line 231
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 232
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->putNetworkTypeinPreference(II)V

    .line 233
    iget-object p0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/SubscriptionController;->insertNetworkModeInSubinfo(II)V

    goto :goto_11f

    .line 236
    :cond_bb
    sget-boolean v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IsIndiaLWMode:Z

    const-string v1, "updateNetworkMode: Do not update NwMode because encryption mode "

    const-string v3, "ro.crypto.state"

    const-string v4, "encrypted"

    const-string v5, "vold.decrypt"

    const-string v6, "trigger_restart_min_framework"

    if-eqz v0, :cond_ec

    .line 237
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 238
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 239
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void

    .line 242
    :cond_e1
    sget v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-le v0, v2, :cond_11f

    .line 243
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getNetworkMode()V

    .line 244
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setPreferredNetworkForInu()V

    goto :goto_11f

    .line 246
    :cond_ec
    sget-boolean v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IsIndiaNLMode:Z

    if-eqz v0, :cond_113

    .line 247
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 248
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 249
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void

    .line 252
    :cond_108
    sget v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-le v0, v2, :cond_11f

    .line 253
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getNetworkMode()V

    .line 254
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setPreferredNetworkNrForInu()V

    goto :goto_11f

    .line 256
    :cond_113
    sget-boolean v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DataLockFeature:Z

    if-eqz v0, :cond_11f

    const-string v0, "[DataLockFeature] INTENT_VALUE_ICC_LOADED"

    .line 257
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setPrefNetTypeForDataLockSim()V

    :cond_11f
    :goto_11f
    return-void
.end method
