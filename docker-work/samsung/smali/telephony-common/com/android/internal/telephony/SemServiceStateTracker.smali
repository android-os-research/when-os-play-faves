.class public Lcom/android/internal/telephony/SemServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "SemServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemServiceStateTracker$SstSubscriptionsChangedListener;
    }
.end annotation


# instance fields
.field private blacklist mAllowedNetworkTypes:I

.field private final blacklist mCallBlockLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mCallUnblockDialog:Landroid/app/AlertDialog;

.field private greylist mCi:Lcom/android/internal/telephony/CommandsInterface;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final greylist mCr:Landroid/content/ContentResolver;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private blacklist mDeniedDialog:Landroid/app/AlertDialog;

.field private greylist mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mIsReadyReceiveCall:Z

.field private blacklist mLteRoamingModeChangeObserver:Landroid/database/ContentObserver;

.field private blacklist mMockCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNitzAfterRadioOn:Landroid/os/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/TimestampedValue<",
            "Lcom/android/internal/telephony/NitzData;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/SemServiceStateTracker$SstSubscriptionsChangedListener;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private blacklist mRescanDialog:Landroid/app/AlertDialog;

.field private blacklist mRetryCount:I

.field private greylist mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private blacklist mSendReqUnblockCp:J

.field private blacklist mSuccessUnblockCp:J

.field private greylist mUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field blacklist onCallUnblockDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field blacklist onDenidedDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field blacklist onRescanDialogClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAllowedNetworkTypes(Lcom/android/internal/telephony/SemServiceStateTracker;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mAllowedNetworkTypes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCi(Lcom/android/internal/telephony/SemServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMockCellInfoList(Lcom/android/internal/telephony/SemServiceStateTracker;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mMockCellInfoList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallUnblockDialog(Lcom/android/internal/telephony/SemServiceStateTracker;Landroid/app/AlertDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCallUnblockDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMockCellInfoList(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mMockCellInfoList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRescanDialog(Lcom/android/internal/telephony/SemServiceStateTracker;Landroid/app/AlertDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckAndNotifyRilConnected(Lcom/android/internal/telephony/SemServiceStateTracker;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->checkAndNotifyRilConnected()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misNrNotSupported(Lcom/android/internal/telephony/SemServiceStateTracker;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->isNrNotSupported()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misUiccSlotReady(Lcom/android/internal/telephony/SemServiceStateTracker;Landroid/content/Intent;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->isUiccSlotReady(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyTimeChanged(Lcom/android/internal/telephony/SemServiceStateTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->notifyTimeChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monChangeLteRoamingMode(Lcom/android/internal/telephony/SemServiceStateTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->onChangeLteRoamingMode()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msemLog(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msemLoge(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLoge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendNetworkRejectToTUI(Lcom/android/internal/telephony/SemServiceStateTracker;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->sendNetworkRejectToTUI(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPlmnBarringTimer(Lcom/android/internal/telephony/SemServiceStateTracker;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->setPlmnBarringTimer(I)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 8

    .line 244
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 127
    new-instance v1, Lcom/android/internal/telephony/SemServiceStateTracker$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SemServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/SemServiceStateTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    new-instance v1, Lcom/android/internal/telephony/SemServiceStateTracker$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/SemServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/SemServiceStateTracker;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mLteRoamingModeChangeObserver:Landroid/database/ContentObserver;

    .line 225
    iput-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mMockCellInfoList:Ljava/util/List;

    .line 228
    iput-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    .line 231
    iput-boolean v1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mIsReadyReceiveCall:Z

    const-wide/16 v2, 0x0

    .line 232
    iput-wide v2, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mSendReqUnblockCp:J

    .line 233
    iput-wide v2, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mSuccessUnblockCp:J

    .line 234
    iput v1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mRetryCount:I

    .line 235
    iput-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCallUnblockDialog:Landroid/app/AlertDialog;

    .line 236
    new-instance v2, Lcom/android/internal/telephony/LocalLog;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCallBlockLog:Lcom/android/internal/telephony/LocalLog;

    .line 241
    iput-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mDeniedDialog:Landroid/app/AlertDialog;

    .line 958
    new-instance v2, Lcom/android/internal/telephony/SemServiceStateTracker$4;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SemServiceStateTracker$4;-><init>(Lcom/android/internal/telephony/SemServiceStateTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->onRescanDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1111
    new-instance v2, Lcom/android/internal/telephony/SemServiceStateTracker$7;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SemServiceStateTracker$7;-><init>(Lcom/android/internal/telephony/SemServiceStateTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->onCallUnblockDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1142
    new-instance v2, Lcom/android/internal/telephony/SemServiceStateTracker$9;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SemServiceStateTracker$9;-><init>(Lcom/android/internal/telephony/SemServiceStateTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->onDenidedDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 245
    iput-object p2, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 246
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSemCommandsInterfaces()[Lcom/android/internal/telephony/SemCommandsInterface;

    move-result-object p2

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    aget-object p2, p2, v2

    iput-object p2, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 247
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    .line 250
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 251
    new-instance v2, Lcom/android/internal/telephony/SemServiceStateTracker$SstSubscriptionsChangedListener;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker$SstSubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/SemServiceStateTracker;Lcom/android/internal/telephony/SemServiceStateTracker$SstSubscriptionsChangedListener-IA;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/SemServiceStateTracker$SstSubscriptionsChangedListener;

    .line 252
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 254
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.TIME_SET"

    .line 255
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    .line 256
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

    .line 257
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    sget-boolean v3, Landroid/os/Build;->IS_ENG:Z

    if-eqz v3, :cond_99

    const-string v3, "com.samsung.intent.action.tplmn_barring"

    .line 260
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    :cond_99
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "eng"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    const-string v3, "com.samsung.intent.action.ACTION_MOCK_CELL"

    .line 264
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_a8
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    .line 267
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    .line 268
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    .line 269
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.samsung.intent.action.regist_reject"

    .line 271
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.samsung.intent.action.LTE_REJECT"

    .line 272
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 276
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x3f8

    invoke-interface {p1, p0, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 278
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x3f5

    invoke-interface {p1, p0, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 280
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x29

    invoke-interface {p1, p0, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 p1, 0x3ef

    .line 281
    invoke-virtual {p0, p0, p1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 p1, 0x3f0

    .line 282
    invoke-virtual {p0, p0, p1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 286
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "USA"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_102

    .line 287
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 v2, 0x3fe

    invoke-virtual {p1, p0, v2, v0}, Lcom/android/internal/telephony/Phone;->registerForPreferredNetworkTypeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_102
    const/16 p1, 0x3f9

    .line 291
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string p1, "lte_roaming_mode_on"

    .line 294
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mLteRoamingModeChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p2, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private blacklist checkAndNotifyRilConnected()Z
    .registers 2

    .line 1083
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mIsReadyReceiveCall:Z

    if-nez v0, :cond_10

    const-string v0, "checkAndNotifyRilConnected - Online booting. Notify RIL and Telephony are READY"

    .line 1084
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1085
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mIsReadyReceiveCall:Z

    .line 1086
    invoke-direct {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->notifyRilConnected()V

    return v0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist checkRescanDialogCondition()V
    .registers 5

    const/16 v0, 0x3f1

    .line 921
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_90

    iget-object v1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_90

    .line 922
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_90

    iget-object v1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 923
    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1d

    goto/16 :goto_90

    .line 930
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 931
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 932
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8f

    .line 934
    :try_start_36
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_8f

    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 936
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_62

    const/4 v2, 0x0

    .line 939
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_62

    .line 940
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    :cond_62
    if-nez v1, :cond_66

    const-string v1, "NULL"

    .line 946
    :cond_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRescanDialogCondition - mTopActivity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    const-string v0, "com.samsung.networkui/com.samsung.networkui.NetworkSetting"

    .line 947
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8f

    const-string v0, "checkRescanDialogCondition - Run showRescanDialog"

    .line 948
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 949
    invoke-direct {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->showRescanDialog()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_8a} :catch_8b

    goto :goto_8f

    :catch_8b
    move-exception p0

    .line 953
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8f
    :goto_8f
    return-void

    .line 924
    :cond_90
    :goto_90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRescanDialogCondition - Radio on timer running: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", SIM loaded: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_b3

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->isLoaded()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_b5

    :cond_b3
    const-string v0, "null"

    :goto_b5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", RadioState: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 926
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 924
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist clearSavedNetworkSelection()V
    .registers 4

    .line 1185
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 1186
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1187
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network_selection_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1188
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network_selection_name_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1189
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network_selection_short_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1190
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5c
    return-void
.end method

.method private blacklist dismissDeniedDialog()V
    .registers 3

    .line 1169
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mDeniedDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    :try_start_5
    const-string v1, "Dismiss deniedDialog"

    .line 1171
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 1172
    iget-object v1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mDeniedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_14
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    goto :goto_14

    :catchall_10
    move-exception v1

    .line 1176
    iput-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mDeniedDialog:Landroid/app/AlertDialog;

    .line 1177
    throw v1

    .line 1176
    :catch_14
    :goto_14
    iput-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mDeniedDialog:Landroid/app/AlertDialog;

    :cond_16
    return-void
.end method

.method private blacklist getNetworkModeSync()V
    .registers 4

    .line 1209
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v0

    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->current_plmn()Ljava/util/List;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "oversea"

    .line 1210
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-direct {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->isNrNotSupported()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1211
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3fa

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getAllowedNetworkTypesBitmap(Landroid/os/Message;)V

    .line 1213
    :cond_2a
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result p0

    const-string v0, "false"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->updateLimitedLteReject(ILjava/lang/String;)V

    return-void
.end method

.method private blacklist insertNewNitzInDb(Ljava/lang/String;)V
    .registers 7

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 860
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Operator Numeric: "

    .line 863
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_33

    .line 866
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 867
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 869
    :cond_2a
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->getDataOperatorNumeric(Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    :goto_33
    :try_start_33
    const-string v1, ", AutoTimezone: "

    .line 874
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v2, "auto_time_zone"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_40} :catch_60

    const-string v2, "ON"

    const-string v3, "OFF"

    if-lez v1, :cond_48

    move-object v1, v2

    goto :goto_49

    :cond_48
    move-object v1, v3

    :goto_49
    :try_start_49
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", AutoTime: "

    .line 875
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v4, "auto_time"

    invoke-static {v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_5c

    goto :goto_5d

    :cond_5c
    move-object v2, v3

    :goto_5d
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_60} :catch_60

    .line 879
    :catch_60
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "nitz_status"

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private blacklist insertTimezoneStatusLog()V
    .registers 8

    .line 798
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    rem-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_e

    return-void

    .line 803
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 805
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_29

    const-string v1, "00000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 806
    :cond_29
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getDataOperatorNumeric(Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v0

    .line 809
    :cond_2f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_134

    const-string v1, "45001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_134

    const-string v1, "00101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    goto/16 :goto_134

    .line 813
    :cond_47
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_59

    .line 814
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    goto :goto_69

    .line 816
    :cond_59
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_68

    .line 817
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    goto :goto_69

    :cond_68
    move-object v1, v3

    :goto_69
    if-eqz v1, :cond_134

    .line 821
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v2

    if-eqz v2, :cond_134

    const/16 v2, 0x3ea

    .line 822
    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 823
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 828
    :cond_7c
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v4, Landroid/location/LocationManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    const/4 v4, -0x1

    if-eqz v2, :cond_9c

    .line 829
    invoke-virtual {v2}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 830
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->getLacFromCellIdentity(Landroid/telephony/CellIdentity;)I

    move-result v1

    goto :goto_9d

    :cond_9c
    move v1, v4

    :goto_9d
    if-eqz v0, :cond_b5

    .line 835
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x4

    if-le v2, v5, :cond_b5

    const/4 v2, 0x0

    const/4 v5, 0x3

    .line 836
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 837
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b7

    :cond_b5
    move-object v0, v3

    move-object v2, v0

    .line 840
    :goto_b7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{\"MCC\":\""

    .line 841
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"MNC\":\""

    .line 842
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"TAC\":\""

    .line 843
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\",\"LAC\":\""

    .line 844
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\",\"NITZ\":\""

    .line 845
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mNitzAfterRadioOn:Landroid/os/TimestampedValue;

    if-eqz v0, :cond_ef

    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/NitzData;

    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzData;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_ef
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.intent.action.BIG_DATA_INFO"

    .line 848
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x1001

    const-string v2, "feature"

    .line 849
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 850
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bigdata_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BigData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 853
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_134
    :goto_134
    return-void
.end method

.method private blacklist isNrNotSupported()Z
    .registers 6

    .line 1340
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->default_network()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 1341
    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result p0

    int-to-long v1, p0

    const-wide/32 v3, 0x80000

    and-long/2addr v1, v3

    cmp-long p0, v1, v3

    if-eqz p0, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method private blacklist isOtherSlotAbsent(I)Z
    .registers 4

    .line 1093
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3f

    const-string v0, "isOtherSlotAbsent - Try Unblock IPC to send here in Absent. Other cases in other area"

    .line 1094
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    if-lez p1, :cond_14

    sub-int/2addr p1, v1

    goto :goto_15

    :cond_14
    add-int/2addr p1, v1

    .line 1097
    :goto_15
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 1099
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result p0

    if-eqz p0, :cond_30

    const-string p0, "NOT_READY"

    .line 1100
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/SemTelephonyHelper;->isSimStateEqualsTo(I[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3d

    return v1

    :cond_30
    const-string p0, "ABSENT"

    .line 1103
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/SemTelephonyHelper;->isSimStateEqualsTo(I[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3d

    return v1

    :cond_3d
    const/4 p0, 0x0

    return p0

    :cond_3f
    return v1
.end method

.method private blacklist isUiccSlotReady(Landroid/content/Intent;)Z
    .registers 6

    const-string v0, "phone"

    const/4 v1, 0x0

    .line 1070
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "ss"

    .line 1071
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1072
    iget-object v2, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v2

    const-string v3, "ABSENT"

    .line 1074
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    if-eqz v2, :cond_32

    .line 1075
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "NOT_READY"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 1076
    :cond_2b
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->isOtherSlotAbsent(I)Z

    move-result p0

    if-eqz p0, :cond_32

    return v1

    :cond_32
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist notifyRilConnected()V
    .registers 9

    const-string v0, "notifyRilConnected: "

    const-string v1, "notifyRilConnected - close fail. "

    .line 1044
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1045
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0xb

    .line 1048
    :try_start_10
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x18

    .line 1049
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x5

    .line 1050
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v4, 0x0

    .line 1051
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1053
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mSendReqUnblockCp:J

    .line 1054
    iget-object v4, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/16 v6, 0x3f6

    invoke-virtual {p0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1055
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mSendReqUnblockCp:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 1056
    iget-object v4, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCallBlockLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mSendReqUnblockCp:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_5f} :catch_6f
    .catchall {:try_start_10 .. :try_end_5f} :catchall_6d

    .line 1061
    :try_start_5f
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1062
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_65} :catch_66

    goto :goto_9e

    :catch_66
    move-exception v0

    .line 1064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_91

    :catchall_6d
    move-exception v0

    goto :goto_9f

    :catch_6f
    move-exception v0

    .line 1058
    :try_start_70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyRilConnected - fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLoge(Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_70 .. :try_end_84} :catchall_6d

    .line 1061
    :try_start_84
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1062
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_8a} :catch_8b

    goto :goto_9e

    :catch_8b
    move-exception v0

    .line 1064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_91
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLoge(Ljava/lang/String;)V

    :goto_9e
    return-void

    .line 1061
    :goto_9f
    :try_start_9f
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1062
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a5} :catch_a6

    goto :goto_b9

    :catch_a6
    move-exception v2

    .line 1064
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLoge(Ljava/lang/String;)V

    .line 1066
    :goto_b9
    throw v0
.end method

.method private blacklist notifyTimeChanged()V
    .registers 7

    const-string v0, "notifyTimeChanged - close fail. "

    .line 661
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 662
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x11

    .line 664
    :try_start_e
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x2

    .line 665
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    .line 666
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 667
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_23} :catch_40
    .catchall {:try_start_e .. :try_end_23} :catchall_3e

    .line 672
    :try_start_23
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 673
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_29} :catch_2a

    goto :goto_63

    :catch_2a
    move-exception v1

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLoge(Ljava/lang/String;)V

    goto :goto_63

    :catchall_3e
    move-exception v3

    goto :goto_64

    :catch_40
    move-exception v3

    .line 669
    :try_start_41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyTimeChanged - fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLoge(Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_41 .. :try_end_55} :catchall_3e

    .line 672
    :try_start_55
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 673
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5b} :catch_5c

    goto :goto_63

    :catch_5c
    move-exception v1

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_30

    :goto_63
    return-void

    .line 672
    :goto_64
    :try_start_64
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 673
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_6a} :catch_6b

    goto :goto_7e

    :catch_6b
    move-exception v1

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLoge(Ljava/lang/String;)V

    .line 677
    :goto_7e
    throw v3
.end method

.method private blacklist onChangeLteRoamingMode()V
    .registers 6

    .line 1196
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v1, "lte_roaming_mode_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_d

    goto :goto_e

    :cond_d
    move v2, v1

    .line 1197
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeLteRoamingMode - lte_roaming_mode_on db is changed. mode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 1199
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-nez v0, :cond_44

    .line 1200
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v0

    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->current_plmn()Ljava/util/List;

    move-result-object v3

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "domestic"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    :cond_44
    if-eqz v2, :cond_49

    const/16 v0, 0x9

    goto :goto_4a

    :cond_49
    const/4 v0, 0x3

    .line 1202
    :goto_4a
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1203
    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    int-to-long v2, v0

    const/4 v0, 0x0

    .line 1202
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/internal/telephony/Phone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    :cond_55
    return-void
.end method

.method private final greylist semLog(Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SST-SEM"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final greylist semLoge(Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SST-SEM"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist sendNetworkRejectToTUI(Landroid/content/Intent;)V
    .registers 12

    const-string v0, "DOMAIN"

    const-string v1, "RTS"

    const-string v2, "content://com.samsung.android.app.telephonyui.internal"

    .line 1301
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1310
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.intent.action.regist_reject"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_14} :catch_d7

    const-string v4, "CAUSE"

    const-string v5, "SLOT"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_4c

    :try_start_1d
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4c

    const-string v0, "3G"

    .line 1312
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "POPUPUI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1313
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v8, :cond_49

    .line 1315
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_49
    move p1, v6

    move v6, v1

    goto :goto_80

    .line 1317
    :cond_4c
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.samsung.intent.action.LTE_REJECT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7e

    .line 1318
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1319
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1320
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_7a
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_7a} :catch_d7

    move v9, v6

    move v6, p1

    move p1, v9

    goto :goto_80

    :cond_7e
    move p1, v6

    move-object v0, v7

    :goto_80
    if-eqz v0, :cond_d6

    .line 1327
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    if-ne v6, v1, :cond_d6

    .line 1328
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "show"

    .line 1329
    invoke-virtual {v1, v3, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "domain"

    .line 1330
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cause"

    .line 1331
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "slotid"

    .line 1332
    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNetworkRejectToTUI - domain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", show: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", cause: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", slotid: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 1335
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string p1, "update_rts_reject_dialog"

    invoke-virtual {p0, v2, p1, v7, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_d6
    return-void

    :catch_d7
    move-exception p1

    .line 1323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendNetworkRejectToTUI - Parsing fail. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setMobileNetworkStatus()V
    .registers 7

    const-string v0, "setMobileNetworkStatus - close fail. "

    .line 884
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 885
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 886
    iget-object v3, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v4, "mobile_network_status"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    .line 888
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMobileNetworkStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    const/16 v4, 0x16

    .line 890
    :try_start_2c
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0xb

    .line 891
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x5

    .line 892
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 893
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 894
    iget-object v3, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_45} :catch_62
    .catchall {:try_start_2c .. :try_end_45} :catchall_60

    .line 899
    :try_start_45
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 900
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4b} :catch_4c

    goto :goto_85

    :catch_4c
    move-exception v1

    .line 902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    goto :goto_85

    :catchall_60
    move-exception v3

    goto :goto_86

    :catch_62
    move-exception v3

    .line 896
    :try_start_63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMobileNetworkStatus - fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_63 .. :try_end_77} :catchall_60

    .line 899
    :try_start_77
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 900
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7d} :catch_7e

    goto :goto_85

    :catch_7e
    move-exception v1

    .line 902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_52

    :goto_85
    return-void

    .line 899
    :goto_86
    :try_start_86
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 900
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8c} :catch_8d

    goto :goto_a0

    :catch_8d
    move-exception v1

    .line 902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 904
    :goto_a0
    throw v3
.end method

.method private blacklist setPlmnBarringTimer(I)V
    .registers 8

    const-string v0, "setPlmnBarringTimer - close fail. "

    if-gtz p1, :cond_19

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlmnBarringTimer - invalid timer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    return-void

    .line 1020
    :cond_19
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1021
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x8

    const/16 v4, 0x11

    .line 1024
    :try_start_27
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x84

    .line 1025
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1026
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1027
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1028
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1029
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPlmnBarringTimer - timer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_53} :catch_63
    .catchall {:try_start_27 .. :try_end_53} :catchall_61

    .line 1034
    :try_start_53
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1035
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_59} :catch_5a

    goto :goto_92

    :catch_5a
    move-exception p1

    .line 1037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_85

    :catchall_61
    move-exception p1

    goto :goto_93

    :catch_63
    move-exception p1

    .line 1031
    :try_start_64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPlmnBarringTimer - fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLoge(Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_64 .. :try_end_78} :catchall_61

    .line 1034
    :try_start_78
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1035
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7e} :catch_7f

    goto :goto_92

    :catch_7f
    move-exception p1

    .line 1037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLoge(Ljava/lang/String;)V

    :goto_92
    return-void

    .line 1034
    :goto_93
    :try_start_93
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1035
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_99} :catch_9a

    goto :goto_ad

    :catch_9a
    move-exception v1

    .line 1037
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLoge(Ljava/lang/String;)V

    .line 1039
    :goto_ad
    throw p1
.end method

.method private blacklist showCallUnblockFailDialog()V
    .registers 5

    .line 1119
    sget-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v0, :cond_53

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCallUnblockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_f

    goto :goto_53

    :cond_f
    const-string v0, "showCallUnblockDialog"

    .line 1123
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 1125
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1127
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v2, "Call unblock status is failed, Please attach Log(*#9900#) and ScreenShot to PLM."

    .line 1128
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    .line 1129
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->onCallUnblockDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1131
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCallUnblockDialog:Landroid/app/AlertDialog;

    .line 1132
    new-instance v1, Lcom/android/internal/telephony/SemServiceStateTracker$8;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SemServiceStateTracker$8;-><init>(Lcom/android/internal/telephony/SemServiceStateTracker;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1137
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCallUnblockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1138
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCallUnblockDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_53
    :goto_53
    return-void
.end method

.method private blacklist showRescanDialog()V
    .registers 5

    const-string v0, "showRescanDialog"

    .line 985
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 987
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 989
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x1040b81

    .line 990
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    .line 991
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->onRescanDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    .line 992
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->onRescanDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 993
    new-instance v0, Lcom/android/internal/telephony/SemServiceStateTracker$5;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemServiceStateTracker$5;-><init>(Lcom/android/internal/telephony/SemServiceStateTracker;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 999
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    .line 1000
    new-instance v1, Lcom/android/internal/telephony/SemServiceStateTracker$6;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SemServiceStateTracker$6;-><init>(Lcom/android/internal/telephony/SemServiceStateTracker;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1005
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1006
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private blacklist syncNetworkSelectionInfo()V
    .registers 4

    const/16 v0, 0x3f3

    .line 1011
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist updateNetworkModeSync(I)V
    .registers 9

    .line 1217
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->default_network()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1219
    invoke-direct {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->isNrNotSupported()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 1220
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v2

    const-string v3, "45006"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 1221
    iget-object v2, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v3, "lte_roaming_mode_on"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1222
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v3

    .line 1223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateNetworkModeSync - isLteModeOn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", netTypeBitMask: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", defaultMode: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/16 v5, 0x9

    if-ne v2, v4, :cond_6e

    if-eq v3, v5, :cond_6e

    if-eq v3, v0, :cond_6e

    .line 1229
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1230
    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    int-to-long v2, v0

    .line 1229
    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/internal/telephony/Phone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    goto :goto_7e

    :cond_6e
    if-nez v2, :cond_7e

    if-eq v3, v5, :cond_74

    if-ne v3, v0, :cond_7e

    .line 1233
    :cond_74
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1234
    invoke-static {v1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    int-to-long v2, v0

    .line 1233
    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/internal/telephony/Phone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    :cond_7e
    :goto_7e
    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 3

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/SemServiceStateTracker$SstSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 345
    invoke-virtual {p0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 346
    invoke-virtual {p0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNetworkDetached(Landroid/os/Handler;)V

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForPreferredNetworkTypeChanged(Landroid/os/Handler;)V

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mLteRoamingModeChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 354
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->dispose()V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1348
    invoke-super/range {p0 .. p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string v4, "SemServiceStateTracker:"

    .line 1349
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1350
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 1352
    new-instance v4, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v5, "    "

    invoke-direct {v4, v2, v5}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Status of ebootup (SST-SEM["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "])"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1356
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1357
    iget-wide v6, v0, Lcom/android/internal/telephony/SemServiceStateTracker;->mSendReqUnblockCp:J

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1358
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSendReqUnblockCp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/android/internal/telephony/SemServiceStateTracker;->mSendReqUnblockCp:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    const-string v8, "never"

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/4 v9, 0x6

    const-string v10, "%tm-%td %tH:%tM:%tS.%tL"

    if-nez v7, :cond_60

    move-object v7, v8

    goto :goto_72

    :cond_60
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v5, v7, v16

    aput-object v5, v7, v15

    aput-object v5, v7, v14

    aput-object v5, v7, v13

    aput-object v5, v7, v12

    aput-object v5, v7, v11

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_72
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1359
    iget-wide v6, v0, Lcom/android/internal/telephony/SemServiceStateTracker;->mSuccessUnblockCp:J

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1360
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSuccessUnblockCp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v0, Lcom/android/internal/telephony/SemServiceStateTracker;->mSuccessUnblockCp:J

    const-wide/16 v17, 0x0

    cmp-long v11, v11, v17

    if-nez v11, :cond_94

    goto :goto_a8

    :cond_94
    new-array v8, v9, [Ljava/lang/Object;

    aput-object v5, v8, v16

    aput-object v5, v8, v15

    aput-object v5, v8, v14

    aput-object v5, v8, v13

    const/4 v9, 0x4

    aput-object v5, v8, v9

    const/4 v7, 0x5

    aput-object v5, v8, v7

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_a8
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1361
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mRetryCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/internal/telephony/SemServiceStateTracker;->mRetryCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1362
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mIsReadyReceiveCall="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/internal/telephony/SemServiceStateTracker;->mIsReadyReceiveCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1363
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    const-string v5, " Call Block Status Log:"

    .line 1365
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1366
    invoke-virtual {v4}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1367
    iget-object v5, v0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCallBlockLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v5, v1, v4, v3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1368
    invoke-virtual {v4}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1369
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 1371
    iget-object v0, v0, Lcom/android/internal/telephony/SemServiceStateTracker;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SemRIL;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1372
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getAllCellInfo()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 766
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mMockCellInfoList:Ljava/util/List;

    if-eqz v0, :cond_2b

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MockCell - size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mMockCellInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mMockCellInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 768
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mMockCellInfoList:Ljava/util/List;

    return-object p0

    .line 770
    :cond_2b
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getCdmaMin()Ljava/lang/String;
    .registers 4

    .line 1281
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    .line 1283
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "USC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "1111110111"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v0, "Unactivated Min value returning null"

    .line 1284
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1288
    :cond_23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_43

    const-string v1, "mMin is null, re-Read from RuimRecords"

    .line 1289
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1290
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v1, :cond_43

    const-string v0, "mMin Read from RuimRecords"

    .line 1292
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1293
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMin()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_43
    return-object v0
.end method

.method public blacklist getMdnNumber()Ljava/lang/String;
    .registers 4

    .line 1266
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getMdnNumber()Ljava/lang/String;

    move-result-object v0

    .line 1268
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "mMdn is null, re-Read from RuimRecords"

    .line 1269
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1270
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v1, :cond_24

    const-string v0, "mMdn Read from RuimRecords"

    .line 1272
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    return-object v0
.end method

.method public blacklist getRadioPowerOffDelayTimeoutForImsRegistration()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 786
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getRadioPowerOffDelayTimeoutForImsRegistration()I

    move-result v0

    .line 787
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0}, Lcom/android/internal/telephony/CommandsInterface;->getModemService()Ljava/lang/String;

    move-result-object p0

    const-string v1, "default"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_16

    if-nez v0, :cond_16

    const/16 v0, 0xbb8

    :cond_16
    return v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 13

    .line 383
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    const-wide/16 v2, 0x78

    const/16 v4, 0x3eb

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v0, v1, :cond_34d

    const/16 v1, 0xe

    if-eq v0, v1, :cond_337

    const/16 v1, 0x29

    const/16 v7, 0xc

    const/16 v8, 0x3f1

    const/4 v9, 0x0

    const/16 v10, 0x3ea

    if-eq v0, v1, :cond_2ff

    const/16 v1, 0x32

    if-eq v0, v1, :cond_2e4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2c8

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2b0

    if-eq v0, v10, :cond_29c

    if-eq v0, v4, :cond_28e

    const/16 v1, 0x3fd

    if-eq v0, v1, :cond_281

    const/16 v1, 0x3fe

    if-eq v0, v1, :cond_27c

    packed-switch v0, :pswitch_data_3b2

    packed-switch v0, :pswitch_data_3bc

    const-wide/16 v1, 0x12c

    const/16 v3, 0x3f9

    packed-switch v0, :pswitch_data_3c6

    .line 655
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_3b1

    :pswitch_45
    const-string v0, "EVENT_SEM_GET_PREF_NETWORK_TYPE_DONE"

    .line 647
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 648
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 649
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3b1

    .line 650
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->updateNetworkModeSync(I)V

    goto/16 :goto_3b1

    :pswitch_5d
    const-string p1, "EVENT_SEM_CHECK_NOTIFY_RIL_CONNECTED"

    .line 583
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 584
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mIsReadyReceiveCall:Z

    if-nez p1, :cond_3b1

    .line 585
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 586
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 587
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    const-string v0, "READY"

    const-string v1, "LOADED"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->isSimStateEqualsTo(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a0

    .line 588
    invoke-direct {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->showCallUnblockFailDialog()V

    goto :goto_a0

    .line 591
    :cond_8a
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCallBlockLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscription ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 594
    :cond_a0
    :goto_a0
    iput-boolean v5, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mIsReadyReceiveCall:Z

    .line 595
    invoke-direct {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->notifyRilConnected()V

    goto/16 :goto_3b1

    :pswitch_a7
    const-string p1, "EVENT_SEM_RADIO_NOT_AVAILABLE"

    .line 621
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 622
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mIsReadyReceiveCall:Z

    if-eqz p1, :cond_b2

    .line 623
    iput-boolean v6, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mIsReadyReceiveCall:Z

    .line 625
    :cond_b2
    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3b1

    .line 626
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_3b1

    :pswitch_bd
    const-string p1, "EVENT_SEM_RETRY_NOTIFY_RIL_CONNECTED"

    .line 631
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 632
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mIsReadyReceiveCall:Z

    if-nez p1, :cond_3b1

    .line 633
    iput-boolean v5, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mIsReadyReceiveCall:Z

    .line 634
    invoke-direct {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->notifyRilConnected()V

    goto/16 :goto_3b1

    :pswitch_cd
    const-string v0, "EVENT_SEM_NOTIFY_RIL_CONNECTED_DONE"

    .line 600
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 601
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_f7

    .line 602
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_f7

    .line 603
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mIsReadyReceiveCall:Z

    if-eqz p1, :cond_e2

    .line 604
    iput-boolean v6, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mIsReadyReceiveCall:Z

    .line 606
    :cond_e2
    iget p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mRetryCount:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_3b1

    const/16 p1, 0x3f7

    .line 607
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 608
    iget p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mRetryCount:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mRetryCount:I

    goto/16 :goto_3b1

    .line 611
    :cond_f7
    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_100

    .line 612
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_100
    const-string p1, "Success to send telephony ready message"

    .line 614
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 615
    iput v6, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mRetryCount:I

    .line 616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mSuccessUnblockCp:J

    goto/16 :goto_3b1

    .line 509
    :pswitch_10f
    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_118

    .line 510
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    :cond_118
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 515
    invoke-direct {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->notifyTimeChanged()V

    goto/16 :goto_3b1

    .line 566
    :pswitch_12a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_179

    .line 567
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_179

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_179

    .line 568
    check-cast p1, [I

    .line 569
    aget v0, p1, v6

    const-string v1, ")"

    if-nez v0, :cond_15e

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset saved network selection after network mode change ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v6

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 571
    invoke-direct {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->clearSavedNetworkSelection()V

    goto/16 :goto_3b1

    .line 573
    :cond_15e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t reset saved network selection if network selection is automatic ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v6

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    goto/16 :goto_3b1

    :cond_179
    const-string p1, "Don\'t reset saved network selection because network selection mode is failed"

    .line 576
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    goto/16 :goto_3b1

    .line 562
    :pswitch_180
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0x3f4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    goto/16 :goto_3b1

    .line 550
    :pswitch_18d
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p1

    if-eqz p1, :cond_3b1

    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 551
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1, v7}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result p1

    if-eqz p1, :cond_3b1

    .line 552
    invoke-direct {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->checkRescanDialogCondition()V

    goto/16 :goto_3b1

    .line 534
    :pswitch_1a6
    invoke-virtual {p0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1af

    .line 535
    invoke-virtual {p0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 537
    :cond_1af
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_1bf

    const-string p1, "dismissRescanDialog"

    .line 538
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 539
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 540
    iput-object v9, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    .line 543
    :cond_1bf
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result p1

    const-string v0, "LGT"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3b1

    .line 544
    invoke-direct {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->getNetworkModeSync()V

    goto/16 :goto_3b1

    .line 453
    :pswitch_1d4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 454
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_20d

    .line 455
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reRegiCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLoge(Ljava/lang/String;)V

    const/4 v2, 0x2

    if-ge v1, v2, :cond_20d

    .line 458
    iput-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/16 p1, 0x14

    .line 459
    invoke-virtual {p0, p1, v1, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x578

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 463
    :cond_20d
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 464
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "USA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b1

    .line 465
    invoke-direct {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->syncNetworkSelectionInfo()V

    goto/16 :goto_3b1

    .line 436
    :pswitch_225
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 437
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_239

    .line 438
    new-instance v1, Lcom/android/internal/telephony/SemServiceStateTracker$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/internal/telephony/SemServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/SemServiceStateTracker;Landroid/os/Message;Landroid/os/AsyncResult;)V

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3b1

    .line 445
    :cond_239
    iget-object p0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz p0, :cond_3b1

    .line 446
    check-cast p0, Landroid/os/Message;

    invoke-static {p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p0

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 447
    iget-object p0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3b1

    .line 470
    :pswitch_250
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 471
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_265

    .line 472
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v6

    iput v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mAllowedNetworkTypes:I

    .line 473
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_3b1

    .line 474
    :cond_265
    iget-object p0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz p0, :cond_3b1

    .line 475
    check-cast p0, Landroid/os/Message;

    invoke-static {p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p0

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 476
    iget-object p0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3b1

    .line 558
    :cond_27c
    invoke-direct {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->syncNetworkSelectionInfo()V

    goto/16 :goto_3b1

    :cond_281
    const-string p1, "EVENT_SEM_LU_REJECT_CAUSE"

    .line 640
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 641
    invoke-direct {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->dismissDeniedDialog()V

    .line 642
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_3b1

    :cond_28e
    const-string v0, "EVENT_SEM_TELEPHONY_DB_NITZ"

    .line 529
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 530
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->insertNewNitzInDb(Ljava/lang/String;)V

    goto/16 :goto_3b1

    :cond_29c
    const-string p1, "EVENT_SEM_TIMEZONE_AFTER_RADIO_ON"

    .line 521
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 522
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCombinedRegStateMobileData(Landroid/telephony/ServiceState;)I

    move-result p1

    if-nez p1, :cond_3b1

    .line 523
    invoke-direct {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->insertTimezoneStatusLog()V

    goto/16 :goto_3b1

    .line 482
    :cond_2b0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 483
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result p1

    const-string v0, "KTT"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3b1

    .line 484
    invoke-direct {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->setMobileNetworkStatus()V

    goto/16 :goto_3b1

    .line 490
    :cond_2c8
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 491
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p1

    if-eqz p1, :cond_3b1

    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 492
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1, v7}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result p1

    if-eqz p1, :cond_3b1

    .line 493
    invoke-direct {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->checkRescanDialogCondition()V

    goto/16 :goto_3b1

    :cond_2e4
    const-string v0, "EVENT_PHONE_TYPE_SWITCHED"

    .line 386
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-eq v0, v5, :cond_2fa

    .line 389
    invoke-virtual {p0, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2fa

    .line 390
    invoke-virtual {p0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 393
    :cond_2fa
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_3b1

    .line 398
    :cond_2ff
    iput-object v9, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mNitzAfterRadioOn:Landroid/os/TimestampedValue;

    .line 399
    invoke-virtual {p0, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 402
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p1

    if-eqz p1, :cond_3b1

    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 403
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1, v7}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result p1

    if-eqz p1, :cond_3b1

    .line 404
    invoke-virtual {p0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3b1

    .line 405
    invoke-virtual {p0, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3b1

    .line 498
    :cond_337
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 499
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v1

    if-eqz v1, :cond_349

    .line 500
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto :goto_3b1

    .line 502
    :cond_349
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_3b1

    .line 410
    :cond_34d
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 412
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 414
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 415
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, [Ljava/lang/Object;

    aget-object v6, v7, v6

    check-cast v6, Ljava/lang/String;

    .line 416
    check-cast p1, [Ljava/lang/Object;

    aget-object p1, p1, v5

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 418
    invoke-static {v6}, Lcom/android/internal/telephony/NitzData;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/NitzData;

    move-result-object p1

    if-eqz p1, :cond_378

    .line 420
    new-instance v5, Landroid/os/TimestampedValue;

    invoke-direct {v5, v7, v8, p1}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    iput-object v5, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mNitzAfterRadioOn:Landroid/os/TimestampedValue;

    .line 423
    :cond_378
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 425
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NITZ: "

    .line 426
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " start="

    .line 427
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " delay="

    .line 428
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v0, v7

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 431
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3b1
    :goto_3b1
    return-void

    :pswitch_data_3b2
    .packed-switch 0x13
        :pswitch_250
        :pswitch_225
        :pswitch_1d4
    .end packed-switch

    :pswitch_data_3bc
    .packed-switch 0x3ef
        :pswitch_1a6
        :pswitch_18d
        :pswitch_18d
    .end packed-switch

    :pswitch_data_3c6
    .packed-switch 0x3f3
        :pswitch_180
        :pswitch_12a
        :pswitch_10f
        :pswitch_cd
        :pswitch_bd
        :pswitch_a7
        :pswitch_5d
        :pswitch_45
    .end packed-switch
.end method

.method protected blacklist handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .registers 4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3a

    const/16 v0, 0xe

    if-eq p1, v0, :cond_b

    .line 329
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    goto :goto_4e

    .line 315
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    .line 317
    iget-object p1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 320
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p2

    if-eqz p2, :cond_4e

    const/4 p2, 0x0

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4e

    .line 321
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSavedNetworkSelection()Lcom/android/internal/telephony/OperatorInfo;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 322
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 323
    :cond_36
    invoke-direct {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->clearSavedNetworkSelection()V

    goto :goto_4e

    .line 301
    :cond_3a
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    .line 303
    iget-object p1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/NetworkRegistrationInfo;

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNetworkCode(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "TGY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_4e
    :goto_4e
    return-void
.end method

.method protected blacklist hangupAndPowerOff()V
    .registers 4

    .line 759
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v1, "hangupAndPowerOff"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "shutdown"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    .line 760
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    return-void
.end method

.method protected blacklist inSameCountry(Ljava/lang/String;)Z
    .registers 11

    .line 702
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_fd

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_10

    goto/16 :goto_fd

    .line 705
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getHomeOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 706
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_fd

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v2, :cond_22

    goto/16 :goto_fd

    :cond_22
    const/4 v2, 0x3

    .line 710
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 711
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "001"

    .line 714
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fb

    const-string v3, "999"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    goto/16 :goto_fb

    .line 719
    :cond_3d
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v2

    const-string v3, "TMO"

    const-string v4, "MTR"

    const-string v5, "ASR"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    const-string v3, "311170"

    const-string v4, "310400"

    const-string v5, "310470"

    const-string v6, "310140"

    const-string v7, "310110"

    if-eqz v2, :cond_aa

    const-string v2, "310500"

    .line 720
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    const-string v2, "310970"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    const-string v2, "310033"

    .line 721
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    const-string v2, "310370"

    .line 722
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    const-string v2, "310032"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    .line 723
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    const-string v2, "311250"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    .line 724
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    .line 725
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    :cond_a9
    return v1

    .line 731
    :cond_aa
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v2

    const-string v8, "ATC"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    const-string v2, "208090"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    return v1

    .line 736
    :cond_c5
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v0

    const-string v2, "ATT"

    const-string v8, "AIO"

    filled-new-array {v2, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 737
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    .line 738
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    .line 739
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    :cond_f5
    return v1

    .line 743
    :cond_f6
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_fb
    :goto_fb
    const/4 p0, 0x1

    return p0

    :cond_fd
    :goto_fd
    return v1
.end method

.method public greylist isConcurrentVoiceAndDataAllowed()Z
    .registers 4
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 683
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    return v1

    .line 685
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_43

    .line 686
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v2, :cond_35

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 687
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v2, :cond_35

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v2, "volte"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SemPhoneInternal;->hasCall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    return v1

    .line 692
    :cond_35
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToAccessNetworkType(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_43

    return v1

    .line 697
    :cond_43
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result p0

    return p0
.end method

.method public blacklist onAirplaneModeChanged(Z)V
    .registers 7

    .line 1242
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->onAirplaneModeChanged(Z)V

    .line 1245
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v0

    if-nez v0, :cond_2e

    .line 1246
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Airplane Mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v0, :cond_1e

    const-string p1, "ON"

    goto :goto_20

    :cond_1e
    const-string p1, "OFF"

    .line 1247
    :goto_20
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "airplane_mode_status"

    .line 1246
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method protected blacklist onUpdateIccAvailability()V
    .registers 4

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_33

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    goto :goto_27

    .line 365
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    :goto_27
    if-nez v0, :cond_2d

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    goto :goto_33

    .line 371
    :cond_2d
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 374
    :cond_33
    :goto_33
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onUpdateIccAvailability()V

    return-void
.end method

.method public blacklist powerOffRadioSafely()V
    .registers 3

    .line 775
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely()V

    const/16 v0, 0x26

    .line 776
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 778
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v0, "Wait up to 10s for data to disconnect"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "shutdown"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public blacklist requestAllCellInfo(Landroid/os/WorkSource;Landroid/os/Message;)V
    .registers 5

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestAllCellInfo - UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", PID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 916
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->requestAllCellInfo(Landroid/os/WorkSource;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist requestCellIdentity(Landroid/os/WorkSource;Landroid/os/Message;)V
    .registers 5

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCellIdentity - UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", PID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->semLog(Ljava/lang/String;)V

    .line 910
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->requestCellIdentity(Landroid/os/WorkSource;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist requestShutdown()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 749
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isDeviceShuttingDown()Z

    move-result v0

    if-nez v0, :cond_13

    .line 751
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v1, "requestShutdown"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "shutdown"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    .line 753
    :cond_13
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->requestShutdown()V

    return-void
.end method
