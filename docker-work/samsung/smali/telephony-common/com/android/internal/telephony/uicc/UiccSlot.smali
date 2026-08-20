.class public Lcom/android/internal/telephony/uicc/UiccSlot;
.super Landroid/os/Handler;
.source "UiccSlot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_ICC_CARD_ADDED:Ljava/lang/String; = "com.android.internal.telephony.uicc.ICC_CARD_ADDED"

.field public static final blacklist INVALID_PHONE_ID:I = -0x1

.field public static final blacklist VOLTAGE_CLASS_A:I = 0x1

.field public static final blacklist VOLTAGE_CLASS_B:I = 0x2

.field public static final blacklist VOLTAGE_CLASS_C:I = 0x3

.field public static final blacklist VOLTAGE_CLASS_UNKNOWN:I

.field static blacklist dialog:Landroid/app/AlertDialog;


# instance fields
.field protected blacklist LOG_TAG_ID:Ljava/lang/String;

.field private blacklist NoSimNotyFlag:Z

.field private blacklist mActive:Z

.field private blacklist mApptype:I

.field private blacklist mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

.field private blacklist mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEid:Ljava/lang/String;

.field private blacklist mIccIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsEuicc:Z

.field private blacklist mIsRemovable:Z

.field private blacklist mLastRadioState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMinimumVoltageClass:I

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPortIdxToPhoneId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

.field private blacklist mSimErrorNotiDisplayed:Z

.field private blacklist mSkipCardSwapDialog:Z

.field private blacklist mSlotId:I

.field private blacklist mStateIsUnknown:Z

.field private blacklist mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field private blacklist updateFlagInserted:Z

.field private blacklist updateFlagRemoved:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$VxqRBQn5sWMd5VMyuuSkwBvmHwc(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->lambda$getPrintableIccIds$0(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/uicc/UiccSlot;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/telephony/uicc/UiccSlot;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/uicc/UiccSlot;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccSlot;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmakeSIMErrorNotification(Lcom/android/internal/telephony/uicc/UiccSlot;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccSlot;->makeSIMErrorNotification(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveSIMErrorNotification(Lcom/android/internal/telephony/uicc/UiccSlot;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccSlot;->removeSIMErrorNotification(ZI)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Z)V
    .registers 7

    .line 147
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mStateIsUnknown:Z

    .line 111
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    .line 115
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccIds:Ljava/util/HashMap;

    const/4 v1, -0x1

    .line 117
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSlotId:I

    const/4 v1, 0x0

    .line 119
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mApptype:I

    .line 123
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->NoSimNotyFlag:Z

    .line 125
    new-instance v2, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/UiccSlot;Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver-IA;)V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->updateFlagRemoved:Z

    .line 127
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->updateFlagInserted:Z

    .line 128
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSkipCardSwapDialog:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSimErrorNotiDisplayed:Z

    const-string v0, "UiccSlot"

    .line 144
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->LOG_TAG_ID:Ljava/lang/String;

    const-string v0, "Creating"

    .line 148
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 149
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    .line 150
    iput-boolean p2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    .line 151
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 154
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.samsung.intent.action.SIM_REMOVED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p2, "com.samsung.intent.action.SIM_COMMAND_ERROR"

    .line 155
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.samsung.intent.action.SIM_AUTH_SUCCESS"

    .line 156
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.SERVICE_STATE"

    .line 157
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist absentStateUpdateNeeded(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;)Z
    .registers 3

    .line 431
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz p1, :cond_e

    :cond_8
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private blacklist checkIsEuiccSupported()V
    .registers 3

    .line 495
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 496
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    return-void

    .line 499
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->isEuiccSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " checkIsEuiccSupported : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist checkMinimumVoltageClass()V
    .registers 6

    const/4 v0, 0x0

    .line 504
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mMinimumVoltageClass:I

    .line 505
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    if-nez v1, :cond_8

    return-void

    .line 510
    :cond_8
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->getInterfaceBytes()Ljava/util/List;

    move-result-object v1

    .line 511
    :goto_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_67

    .line 512
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTD()Ljava/lang/Byte;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 513
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTD()Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/16 v4, 0xf

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_64

    add-int/lit8 v2, v0, 0x1

    .line 515
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTA()Ljava/lang/Byte;

    move-result-object v4

    if-eqz v4, :cond_64

    .line 516
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTA()Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_55

    .line 518
    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mMinimumVoltageClass:I

    :cond_55
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_5c

    const/4 v1, 0x2

    .line 521
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mMinimumVoltageClass:I

    :cond_5c
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_63

    const/4 v0, 0x3

    .line 524
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mMinimumVoltageClass:I

    :cond_63
    return-void

    :cond_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 530
    :cond_67
    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mMinimumVoltageClass:I

    return-void
.end method

.method private blacklist getAnyValidPhoneId()I
    .registers 3

    .line 365
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 366
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_a

    return v0

    :cond_21
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist getPrintableIccIds()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 991
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccIds:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccSlot$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UiccSlot$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccSlot$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/UiccSlot$$ExternalSyntheticLambda1;-><init>()V

    .line 992
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private blacklist hasActivePort([Lcom/android/internal/telephony/uicc/IccSimPortInfo;)Z
    .registers 5

    .line 355
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_10

    aget-object v2, p1, v1

    .line 356
    iget-boolean v2, v2, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    if-eqz v2, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_10
    return v0
.end method

.method private blacklist isNightMode(Landroid/content/Context;)Z
    .registers 3

    const/4 p0, 0x0

    .line 798
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "display_night_theme"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_b} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_f

    if-eqz p1, :cond_e

    const/4 p0, 0x1

    :cond_e
    return p0

    :catch_f
    move-exception p1

    .line 802
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    :catch_14
    move-exception p1

    .line 800
    invoke-virtual {p1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :goto_18
    return p0
.end method

.method private blacklist isSlotRemovable(I)Z
    .registers 7

    .line 480
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x107019d

    .line 481
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_11

    return v0

    .line 485
    :cond_11
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_1e

    aget v4, p0, v3

    if-ne v4, p1, :cond_1b

    return v2

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_1e
    return v0
.end method

.method private static synthetic blacklist lambda$getPrintableIccIds$0(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 1

    .line 993
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 982
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->LOG_TAG_ID:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 986
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->LOG_TAG_ID:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist makeSIMErrorNotification(II)V
    .registers 9

    .line 808
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tablet"

    const-string v2, "ro.build.characteristics"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p2, v4, :cond_86

    .line 810
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSimErrorNotiDisplayed:Z

    const/4 p2, 0x0

    const v5, 0x1040d70

    .line 814
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-ne p1, v4, :cond_24

    const p1, 0x1040d6d

    .line 816
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 817
    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mApptype:I

    goto :goto_43

    :cond_24
    if-ne p1, v3, :cond_43

    .line 819
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_38

    const p1, 0x1040d6c

    .line 820
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3f

    :cond_38
    const p1, 0x1040d6b

    .line 821
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_3f
    move-object p2, p1

    const/4 p1, 0x5

    .line 822
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mApptype:I

    .line 825
    :cond_43
    :goto_43
    new-instance p1, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 826
    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 827
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const v0, 0x1080592

    .line 828
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 829
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const-wide/16 v0, 0x0

    .line 830
    invoke-virtual {p1, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 831
    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 832
    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const-string p2, "sim"

    .line 833
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 835
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    const-string p2, "notification"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 p2, 0x111

    .line 836
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_aa

    :cond_86
    if-ne p2, v3, :cond_aa

    .line 839
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9a

    const p1, 0x1040d6f

    .line 840
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_a1

    :cond_9a
    const p1, 0x1040d6e

    .line 841
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 842
    :goto_a1
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_aa
    :goto_aa
    return-void
.end method

.method private blacklist nullifyUiccCard(Z)V
    .registers 3

    .line 460
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_7

    .line 461
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 463
    :cond_7
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mStateIsUnknown:Z

    const/4 p1, 0x0

    .line 464
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    return-void
.end method

.method private blacklist onIccSwap(Z)V
    .registers 10

    .line 580
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_16

    .line 582
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->updateFlagInserted:Z

    if-eqz v3, :cond_16

    .line 583
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->updateFlagInserted:Z

    .line 584
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->updateFlagRemoved:Z

    const-string v3, "onIccSwap: ICC_CARD_STATE_CHANGED INSERTED"

    .line 585
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    goto :goto_25

    :cond_16
    if-nez p1, :cond_fe

    .line 586
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->updateFlagRemoved:Z

    if-eqz v3, :cond_fe

    .line 587
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->updateFlagRemoved:Z

    .line 588
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->updateFlagInserted:Z

    const-string v3, "onIccSwap: ICC_CARD_STATE_CHANGED REMOVED"

    .line 589
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 594
    :goto_25
    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSlotId:I

    const-string v4, "persist.sys.softsim.status"

    const-string v5, "default"

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "activating"

    .line 595
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    const-string v4, "activated"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 597
    :cond_3f
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSkipCardSwapDialog:Z

    :cond_41
    const/high16 v3, 0x1000000

    const/high16 v4, 0x10000000

    const-string v5, "onIccSwap: isHotSwapSupported is false, prompt for rebooting"

    if-eqz v0, :cond_96

    const-string v0, "onIccSwap: isHotSwapSupported is true, don\'t prompt for rebooting"

    .line 601
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 602
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "REASON"

    .line 603
    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 604
    iget v6, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSlotId:I

    const-string v7, "SIMSLOT"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 605
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 606
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 607
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.permission.SIMHOTSWAP"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    if-ne p1, v2, :cond_7b

    .line 610
    sget-object p0, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_7a

    .line 611
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p0, 0x0

    .line 612
    sput-object p0, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    :cond_7a
    return-void

    .line 617
    :cond_7b
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSlotId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 619
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSlotId:I

    if-ne v0, v2, :cond_8a

    const-string v0, "IS_CTC2"

    goto :goto_8c

    :cond_8a
    const-string v0, "IS_CTC"

    .line 622
    :goto_8c
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_c0

    .line 626
    :cond_96
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    if-nez p1, :cond_c0

    .line 628
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v6, "CscFeature_RIL_BroadcastNoSIMnoti"

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 629
    iget-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->NoSimNotyFlag:Z

    if-nez p1, :cond_bf

    .line 630
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.intent.action.NO_SIM_NOTY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 632
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 634
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->NoSimNotyFlag:Z

    :cond_bf
    return-void

    .line 641
    :cond_c0
    :goto_c0
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSkipCardSwapDialog:Z

    if-eqz v0, :cond_cc

    const-string p1, "do not display icc swap dialog here for tray pop up"

    .line 642
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 643
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSkipCardSwapDialog:Z

    return-void

    :cond_cc
    const-string v0, "ro.factory.factory_binary"

    const-string v1, "none"

    .line 647
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "factory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e2

    const-string p1, "do not display icc swap dialog here for factory"

    .line 649
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    return-void

    .line 654
    :cond_e2
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getAnyValidPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_f8

    .line 655
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_f8

    const-string p1, "onIccSwap: already doing shutdown, no need to prompt"

    .line 656
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    return-void

    .line 660
    :cond_f8
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 662
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->promptForRestart(Z)V

    :cond_fe
    return-void
.end method

.method private blacklist parseAtr(Ljava/lang/String;)V
    .registers 2

    .line 534
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseAtr(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/AnswerToReset;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    .line 535
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->checkIsEuiccSupported()V

    .line 536
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->checkMinimumVoltageClass()V

    return-void
.end method

.method private blacklist promptForRestart(Z)V
    .registers 12

    .line 666
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 696
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccSlot$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccSlot$1;-><init>(Lcom/android/internal/telephony/uicc/UiccSlot;)V

    .line 726
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 728
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    if-eqz v3, :cond_1d

    const-string v3, "promptForRestart: dialog is already displayed"

    .line 729
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 730
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 731
    sput-object v4, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    .line 738
    :cond_1d
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v3

    if-eqz v3, :cond_97

    const p1, 0x1040d77

    .line 741
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 742
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_6a

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isOneTray()Z

    move-result v5

    if-nez v5, :cond_6a

    .line 743
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_EMBEDDED_SIM"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 744
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string v7, "CscFeature_RIL_SupportEsim"

    invoke-virtual {v5, v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-ne v5, v6, :cond_6a

    .line 745
    :cond_54
    iget v5, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSlotId:I

    if-nez v5, :cond_60

    const v4, 0x1040d73

    .line 746
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_8f

    :cond_60
    if-ne v5, v6, :cond_8f

    const v4, 0x1040d74

    .line 748
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_8f

    .line 751
    :cond_6a
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110201

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_81

    const v4, 0x1040d72

    .line 752
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_8f

    :cond_81
    const p1, 0x1040d78

    .line 754
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v4, 0x1040d75

    .line 758
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_8f
    :goto_8f
    const v5, 0x104000a

    .line 762
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_c3

    :cond_97
    if-eqz p1, :cond_a1

    const v4, 0x1040d66

    .line 764
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_a8

    :cond_a1
    const v4, 0x1040d76

    .line 765
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_a8
    if-eqz p1, :cond_b2

    const p1, 0x1040d65

    .line 766
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_b9

    :cond_b2
    const p1, 0x1040d71

    .line 767
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_b9
    const v5, 0x1040d79

    .line 768
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v9, v4

    move-object v4, p1

    move-object p1, v9

    .line 771
    :goto_c3
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    .line 772
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UiccSlot;->isNightMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_cf

    const/4 v7, 0x4

    goto :goto_d0

    :cond_cf
    const/4 v7, 0x5

    :goto_d0
    invoke-direct {v5, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 773
    invoke-virtual {v5, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 774
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 775
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    if-eqz v2, :cond_e4

    .line 778
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 781
    :cond_e4
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    sput-object p1, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    .line 784
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x7d9

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    .line 786
    sget-object p1, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v1, 0x10

    .line 787
    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    .line 788
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string p1, "promptForRestart: dialog.show()"

    .line 789
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 791
    sget-object p0, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 792
    monitor-exit v0

    return-void

    :catchall_117
    move-exception p0

    monitor-exit v0
    :try_end_119
    .catchall {:try_start_3 .. :try_end_119} :catchall_117

    throw p0
.end method

.method private blacklist removeSIMErrorNotification(ZI)V
    .registers 4

    .line 847
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSimErrorNotiDisplayed:Z

    if-nez v0, :cond_a

    const-string p1, "mSimErrorNotiDisplayed is false"

    .line 848
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    return-void

    :cond_a
    const/4 v0, 0x1

    if-ne p1, v0, :cond_30

    .line 853
    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mApptype:I

    if-eq p2, p1, :cond_30

    .line 854
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "authSimtype and mApptype are different. authSimtype : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mApptype : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mApptype:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    return-void

    :cond_30
    const-string p1, "mSimErrorNotiDisplayed is true, remove NO_SIM_NOTIFICATION"

    .line 859
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 861
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSimErrorNotiDisplayed:Z

    .line 862
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    const-string p1, "notification"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 p1, 0x111

    .line 863
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private blacklist updateCardStateAbsent(III)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 448
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eq p1, v1, :cond_28

    .line 437
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    .line 439
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 438
    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v1, :cond_28

    const-string p1, "update: notify card removed"

    .line 441
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    const/16 p1, 0xd

    .line 442
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 444
    :cond_28
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {p1, v1, v0, p2}, Lcom/android/internal/telephony/uicc/UiccController;->updateInternalIccState(Landroid/content/Context;Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 447
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->nullifyUiccCard(Z)V

    .line 448
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_4d

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result p0

    if-nez p0, :cond_4d

    const-string p0, "ril.hasSimAbsent"

    const-string p1, "1"

    .line 451
    invoke-static {p2, p0, p1}, Lcom/android/internal/telephony/uicc/IccUtils;->setUiccProperty(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4d
    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 4

    const-string v0, "Disposing Slot"

    .line 274
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_8
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v1, :cond_13

    .line 277
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    const/4 v1, 0x1

    .line 278
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->nullifyUiccCard(Z)V

    .line 280
    :cond_13
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 281
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->unregisterForSimSwaped(Landroid/os/Handler;)V

    .line 282
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    const-string v0, "UiccSlot:"

    .line 1001
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsEuicc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isEuiccSupportsMultipleEnabledProfiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isMultipleEnabledProfileSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1004
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsRemovable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsRemovable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastRadioState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIccIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPrintableIccIds()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPortIdxToPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mEid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCardState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_f5

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUiccCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_fa

    :cond_f5
    const-string p0, " mUiccCard=null"

    .line 1016
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1018
    :goto_fa
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1019
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    const-string v0, "UiccSlot finalized"

    .line 575
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .registers 2

    .line 915
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 916
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-nez p0, :cond_b

    .line 917
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    monitor-exit v0

    return-object p0

    .line 919
    :cond_b
    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 921
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public blacklist getEid()Ljava/lang/String;
    .registers 1

    .line 566
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mEid:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIccId(I)Ljava/lang/String;
    .registers 2

    .line 562
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getMinimumVoltageClass()I
    .registers 1

    .line 545
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mMinimumVoltageClass:I

    return p0
.end method

.method public blacklist getPhoneIdFromPortIndex(I)I
    .registers 4

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    .line 411
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public blacklist getPortIndexFromIccId(Ljava/lang/String;)I
    .registers 5

    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccIds:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 399
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/android/internal/telephony/uicc/IccUtils;->compareIgnoreTrailingFs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 400
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :cond_31
    const/4 p0, -0x1

    .line 404
    monitor-exit v0

    return p0

    :catchall_34
    move-exception p0

    .line 405
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public blacklist getPortIndexFromPhoneId(I)I
    .registers 5

    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 388
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_d

    .line 389
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :cond_31
    const/4 p0, 0x0

    .line 392
    monitor-exit v0

    return p0

    :catchall_34
    move-exception p0

    .line 393
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public blacklist getPortList()[I
    .registers 3

    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/RadioConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/RadioConfig$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1c
    move-exception p0

    .line 377
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public blacklist getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .registers 2

    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 929
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 930
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 869
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd

    const-string v2, "ril.llus2"

    const-string v3, "ril.llus1"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v1, :cond_78

    const/16 v1, 0xe

    if-eq v0, v1, :cond_60

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2c

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->loge(Ljava/lang/String;)V

    goto/16 :goto_92

    .line 889
    :cond_2c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 890
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_3e

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSlotId:I

    if-ne v0, v1, :cond_92

    .line 891
    :cond_3e
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    aget p1, p1, v5

    .line 892
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 893
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSkipCardSwapDialog:Z

    :cond_4c
    if-eqz p1, :cond_50

    if-ne p1, v4, :cond_57

    :cond_50
    if-ne p1, v4, :cond_53

    goto :goto_54

    :cond_53
    move v4, v5

    .line 896
    :goto_54
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->onIccSwap(Z)V

    :cond_57
    if-eqz p1, :cond_5c

    const/4 v0, 0x2

    if-ne p1, v0, :cond_92

    .line 900
    :cond_5c
    invoke-direct {p0, v5, v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->removeSIMErrorNotification(ZI)V

    goto :goto_92

    .line 881
    :cond_60
    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSlotId:I

    if-nez p1, :cond_6a

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_74

    :cond_6a
    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSlotId:I

    if-ne p1, v4, :cond_92

    .line 882
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_92

    .line 883
    :cond_74
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->onIccSwap(Z)V

    goto :goto_92

    .line 872
    :cond_78
    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSlotId:I

    if-nez p1, :cond_82

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_8c

    :cond_82
    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSlotId:I

    if-ne p1, v4, :cond_8f

    .line 873
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_8f

    .line 874
    :cond_8c
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->onIccSwap(Z)V

    .line 876
    :cond_8f
    invoke-direct {p0, v5, v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->removeSIMErrorNotification(ZI)V

    :cond_92
    :goto_92
    return-void
.end method

.method public blacklist isActive()Z
    .registers 1

    .line 549
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    return p0
.end method

.method public blacklist isEuicc()Z
    .registers 1

    .line 540
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    return p0
.end method

.method public blacklist isExtendedApduSupported()Z
    .registers 1

    .line 570
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->isExtendedApduSupported()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public blacklist isMultipleEnabledProfileSupported()Z
    .registers 3

    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_14

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    if-eqz p0, :cond_14

    .line 427
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->isMultipleEnabledProfilesSupported()Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public blacklist isPortActive(I)Z
    .registers 4

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    .line 417
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 416
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1e
    move-exception p0

    .line 418
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public blacklist isRemovable()Z
    .registers 1

    .line 553
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsRemovable:Z

    return p0
.end method

.method public blacklist isStateUnknown()Z
    .registers 3

    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eqz v0, :cond_11

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_9

    goto :goto_11

    .line 475
    :cond_9
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0

    .line 470
    :cond_11
    :goto_11
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mStateIsUnknown:Z

    return p0
.end method

.method public blacklist isValidPortIndex(I)Z
    .registers 2

    .line 382
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist onRadioStateUnavailable(I)V
    .registers 5

    const/4 v0, 0x1

    .line 937
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->nullifyUiccCard(Z)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_21

    .line 940
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->updateInternalIccState(Landroid/content/Context;Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;I)V

    .line 942
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortIndexFromPhoneId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    .line 943
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 942
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    :cond_21
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    return-void
.end method

.method public blacklist update(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;II)V
    .registers 14

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cardStatus update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/IccCardStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_1b
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v2, v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 170
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 172
    iput p3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSlotId:I

    .line 174
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccIds:Ljava/util/HashMap;

    iget-object v3, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v3, v3, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 175
    iget-object v3, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_6c

    iget-object v3, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    if-eqz v3, :cond_6c

    const-string v7, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    if-eqz v2, :cond_6c

    const-string v3, ""

    .line 176
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    iget-object v3, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    move v2, v6

    goto :goto_6d

    :cond_6c
    move v2, v5

    .line 180
    :goto_6d
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccIds:Ljava/util/HashMap;

    iget-object v7, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v7, v7, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez v3, :cond_81

    goto :goto_83

    :cond_81
    instance-of v5, v3, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    .line 184
    :goto_83
    iget-object v3, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->parseAtr(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/uicc/UiccSlot;->isSlotRemovable(I)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsRemovable:Z

    .line 187
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSemCommandsInterfaces()[Lcom/android/internal/telephony/SemCommandsInterface;

    move-result-object p4

    aget-object p4, p4, p3

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 188
    invoke-static {p3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p4

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 191
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p4

    invoke-virtual {p4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p4

    if-le p4, v6, :cond_b9

    .line 192
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UiccSlot"

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->LOG_TAG_ID:Ljava/lang/String;

    .line 196
    :cond_b9
    iget-object p4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 v3, 0x64

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p4, p0, v3, v7}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForSimSwaped(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 199
    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p4

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update: radioState="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mLastRadioState="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 204
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->absentStateUpdateNeeded(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;)Z

    move-result v3

    if-eqz v3, :cond_11f

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update: oldIsEuicc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsEuicc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    if-ne v5, v6, :cond_112

    .line 207
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    if-nez v1, :cond_112

    .line 208
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSkipCardSwapDialog:Z

    .line 211
    :cond_112
    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p1

    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v1, v1, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-direct {p0, p1, p3, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->updateCardStateAbsent(III)V

    goto/16 :goto_213

    :cond_11f
    if-eqz v1, :cond_127

    if-eq v1, v4, :cond_127

    .line 217
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez v1, :cond_1b3

    :cond_127
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v1, v4, :cond_1b3

    const/4 v1, 0x2

    if-eq p4, v1, :cond_157

    .line 220
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    iget-object v3, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v3, v3, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    .line 221
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 221
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_157

    const-string v1, "update: notify card added"

    .line 224
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    const/16 v1, 0xe

    const/4 v2, 0x0

    .line 225
    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 229
    :cond_157
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v1, :cond_165

    const-string v1, "update: mUiccCard != null when card was present; disposing it now"

    .line 230
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->loge(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 234
    :cond_165
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    if-nez v1, :cond_17b

    .line 236
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v2, v1

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;Z)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    goto/16 :goto_213

    .line 240
    :cond_17b
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19f

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update: eid is missing. ics.eid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    iget-object v3, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    .line 242
    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->loge(Ljava/lang/String;)V

    .line 244
    :cond_19f
    new-instance v8, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isMultipleEnabledProfileSupported()Z

    move-result v7

    move-object v1, v8

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;Z)V

    iput-object v8, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    goto :goto_213

    .line 248
    :cond_1b3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v1, :cond_213

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update: oldIsEuicc = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsEuicc = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 251
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    if-ne v5, v1, :cond_1e6

    if-nez v1, :cond_1de

    if-eqz v2, :cond_1de

    goto :goto_1e6

    .line 260
    :cond_1de
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V

    goto :goto_213

    .line 252
    :cond_1e6
    :goto_1e6
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 253
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    if-eqz v1, :cond_203

    .line 254
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isMultipleEnabledProfileSupported()Z

    move-result v8

    move-object v2, v1

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;Z)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    goto :goto_213

    .line 257
    :cond_203
    new-instance v8, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;Z)V

    iput-object v8, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 265
    :cond_213
    :goto_213
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    iget-object p1, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget p1, p1, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    monitor-exit v0

    return-void

    :catchall_226
    move-exception p0

    monitor-exit v0
    :try_end_228
    .catchall {:try_start_1b .. :try_end_228} :catchall_226

    throw p0
.end method

.method public blacklist update([Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccSlotStatus;I)V
    .registers 10

    .line 290
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "slotStatus update: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 291
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 292
    :try_start_1b
    iget-object v0, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    .line 295
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->parseAtr(Ljava/lang/String;)V

    .line 298
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->eid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mEid:Ljava/lang/String;

    .line 299
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/UiccSlot;->isSlotRemovable(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsRemovable:Z

    const/4 p3, 0x0

    move v1, p3

    .line 301
    :goto_2e
    array-length v2, v0

    const/4 v3, -0x1

    if-ge v1, v2, :cond_84

    .line 302
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mLogicalSlotIndex:I

    .line 303
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-object v5, v0, v1

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    if-nez v2, :cond_81

    .line 307
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    .line 308
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mIccId:Ljava/lang/String;

    .line 307
    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->updateInternalIccStateForInactivePort(Landroid/content/Context;ILjava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v2, :cond_81

    .line 313
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->disposePort(I)V

    :cond_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 332
    :cond_84
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->hasActivePort([Lcom/android/internal/telephony/uicc/IccSimPortInfo;)Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_95

    .line 333
    iget-boolean p2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    if-eqz p2, :cond_97

    .line 334
    iput-boolean p3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    .line 335
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->nullifyUiccCard(Z)V

    goto :goto_97

    .line 338
    :cond_95
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    .line 340
    :cond_97
    :goto_97
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 341
    :goto_9c
    array-length p2, v0

    if-ge p3, p2, :cond_b9

    .line 343
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-object v2, v0, p3

    iget-boolean v4, v2, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    if-eqz v4, :cond_ae

    .line 344
    iget v2, v2, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mLogicalSlotIndex:I

    goto :goto_af

    :cond_ae
    move v2, v3

    .line 343
    :goto_af
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_9c

    .line 348
    :cond_b9
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz p2, :cond_c4

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isMultipleEnabledProfileSupported()Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/UiccCard;->updateSupportMultipleEnabledProfile(Z)V

    .line 351
    :cond_c4
    monitor-exit p1

    return-void

    :catchall_c6
    move-exception p0

    monitor-exit p1
    :try_end_c8
    .catchall {:try_start_1b .. :try_end_c8} :catchall_c6

    throw p0
.end method
