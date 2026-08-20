.class public Lcom/android/internal/telephony/SmsDispatchersController;
.super Landroid/os/Handler;
.source "SmsDispatchersController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;
    }
.end annotation


# static fields
.field protected static final blacklist EVENT_SMS_HANDLER_EXITING_WAITING_STATE:I = 0x11

.field private static final blacklist PHONE_ON_KEY:[Ljava/lang/String;

.field public static final blacklist SMS_STATUS_1X:I = 0x3

.field public static final blacklist SMS_STATUS_3GPP:I = 0x4

.field public static final blacklist SMS_STATUS_IMS:I = 0x2

.field public static final blacklist SMS_STATUS_INVALID:I = 0x0

.field public static final blacklist SMS_STATUS_NO_SMS:I = 0x1

.field private static blacklist gcf_flag:Z

.field private static blacklist retryGetSmsc:I

.field private static blacklist sBootCompleted:Z

.field private static blacklist sSimLoaded:Z


# instance fields
.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private blacklist mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field private final blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentWaitElapsedDuration:J

.field private blacklist mCurrentWaitStartTime:J

.field private blacklist mDcnAddress:Ljava/lang/String;

.field private blacklist mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDeliveryPendingMapFor3GPP2:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGcfModeReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private blacklist mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private blacklist mIms:Z

.field private blacklist mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

.field private blacklist mImsSmsFormat:Ljava/lang/String;

.field private blacklist mLastInServiceTime:J

.field private blacklist mLteSmsStatus:I

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPrevVolteRegi:Z

.field private final blacklist mResultReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

.field private blacklist mSmsc:Ljava/lang/String;

.field private final blacklist mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCi(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/CommandsInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/SmsDispatchersController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsSmsDispatcher(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/ImsSmsDispatcher;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLteSmsStatus(Lcom/android/internal/telephony/SmsDispatchersController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLteSmsStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLteSmsStatus(Lcom/android/internal/telephony/SmsDispatchersController;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLteSmsStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmsc(Lcom/android/internal/telephony/SmsDispatchersController;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbroadcastCbSettingsAvailable(Lcom/android/internal/telephony/SmsDispatchersController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->broadcastCbSettingsAvailable()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPHONE_ON_KEY()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/telephony/SmsDispatchersController;->PHONE_ON_KEY:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsBootCompleted()Z
    .registers 1

    sget-boolean v0, Lcom/android/internal/telephony/SmsDispatchersController;->sBootCompleted:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsSimLoaded()Z
    .registers 1

    sget-boolean v0, Lcom/android/internal/telephony/SmsDispatchersController;->sSimLoaded:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputretryGetSmsc(I)V
    .registers 1

    sput p0, Lcom/android/internal/telephony/SmsDispatchersController;->retryGetSmsc:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsBootCompleted(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/internal/telephony/SmsDispatchersController;->sBootCompleted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsSimLoaded(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/internal/telephony/SmsDispatchersController;->sSimLoaded:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    const-string v0, "phone1_on"

    const-string v1, "phone2_on"

    const-string v2, "phone3_on"

    const-string v3, "phone4_on"

    const-string v4, "phone5_on"

    .line 1246
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsDispatchersController;->PHONE_ON_KEY:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 1251
    sput-boolean v0, Lcom/android/internal/telephony/SmsDispatchersController;->gcf_flag:Z

    .line 1275
    sput v0, Lcom/android/internal/telephony/SmsDispatchersController;->retryGetSmsc:I

    .line 1286
    sput-boolean v0, Lcom/android/internal/telephony/SmsDispatchersController;->sBootCompleted:Z

    .line 1287
    sput-boolean v0, Lcom/android/internal/telephony/SmsDispatchersController;->sSimLoaded:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .registers 9

    .line 155
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v0, -0x1

    .line 108
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    const-wide/16 v2, 0x0

    .line 110
    iput-wide v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    .line 112
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    const-string v1, "unknown"

    .line 132
    iput-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;

    .line 138
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP2:Ljava/util/HashMap;

    .line 203
    new-instance v1, Lcom/android/internal/telephony/SmsDispatchersController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmsDispatchersController$1;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "4437501000"

    .line 1240
    iput-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDcnAddress:Ljava/lang/String;

    .line 1241
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPrevVolteRegi:Z

    const/4 v2, 0x0

    .line 1270
    iput-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    .line 1289
    iput v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLteSmsStatus:I

    .line 1874
    new-instance v0, Lcom/android/internal/telephony/SmsDispatchersController$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsDispatchersController$2;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 2009
    new-instance v0, Lcom/android/internal/telephony/SmsDispatchersController$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsDispatchersController$3;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGcfModeReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "SmsDispatchersController"

    const-string v3, "SmsDispatchersController created"

    .line 156
    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    .line 159
    iput-object p3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 160
    iget-object p3, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 162
    iget-object v3, p1, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iput-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 164
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 168
    new-instance v3, Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance v4, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsDispatchersController$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v3, p1, p0, v4}, Lcom/android/internal/telephony/ImsSmsDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    .line 169
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-direct {v3, p1, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 170
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p2, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 172
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    check-cast v4, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-static {v3, p2, p1, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 174
    new-instance p2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    iget-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-direct {p2, p1, p0, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 175
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-static {p2, v3, v4}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->initialize(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    .line 177
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler;->registerNewMessageNotificationActionHandler(Landroid/content/Context;)V

    const/16 p1, 0xb

    .line 179
    invoke-interface {p3, p0, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 p1, 0xc

    .line 180
    invoke-interface {p3, p0, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 182
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->registerSamsungEvent()V

    const-string p1, "user"

    .line 185
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 186
    invoke-virtual {p1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p1

    if-eqz p1, :cond_c7

    .line 191
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 p2, 0xe

    invoke-virtual {p1, p0, p2, v2}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 192
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->resetPartialSegmentWaitTimer()V

    goto :goto_d4

    .line 197
    :cond_c7
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.USER_UNLOCKED"

    .line 198
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_d4
    return-void
.end method

.method private blacklist broadcastCbSettingsAvailable()V
    .registers 2

    const/4 v0, -0x1

    .line 1868
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->broadcastCbSettingsAvailable(I)V

    return-void
.end method

.method private blacklist broadcastCbSettingsAvailable(I)V
    .registers 6

    const-string v0, "SmsDispatchersController"

    const-string v1, "[CB] broadcastCbSettingsAvailable method"

    .line 1343
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.provider.Telephony.CB_SETTINGS_AVAILABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, -0x1

    if-ne p1, v2, :cond_35

    .line 1346
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CB] broadcastCbSettingsAvailable method with phoneId = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {v1, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    goto :goto_4c

    .line 1349
    :cond_35
    invoke-static {v1, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CB] broadcastCbSettingsAvailable method phoneIdSimOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4c
    const/high16 p1, 0x10000000

    .line 1352
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    .line 1353
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1354
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p1, "android.provider.Telephony.CB_SETTINGS_AVAILABLE"

    .line 1355
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1356
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private blacklist dispatchSmsServiceCenter(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1773
    invoke-static {p1}, Lcom/android/internal/telephony/SmsDispatchersController;->extractSmscNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_f

    const-string p1, "NotSet"

    aput-object p1, v0, v1

    goto :goto_13

    :cond_f
    aput-object p1, v0, v1

    .line 1779
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    .line 1782
    :goto_13
    invoke-static {}, Lcom/android/internal/telephony/SmsLogger;->getInstance()Lcom/android/internal/telephony/SmsLogger;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GET_SMSC_ACTION smsc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1783
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v4, "SmsDispatchersController"

    .line 1782
    invoke-virtual {p1, v4, v2, v3}, Lcom/android/internal/telephony/SmsLogger;->addTimeline(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1784
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smsc = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    .line 1787
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 1788
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dispatchSmsServiceCenter function is not applicable for CDMA smsc: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1792
    :cond_6d
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.samsung.provider.Telephony.GET_SMSC"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 1794
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "smsc"

    .line 1795
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1796
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1800
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist disposeSamsungEvent()V
    .registers 2

    .line 1324
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 1325
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->unSetOnSmsDeviceReady(Landroid/os/Handler;)V

    .line 1326
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public static blacklist extractSmscNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "NotSet"

    const-string v1, "SmsDispatchersController"

    if-nez p0, :cond_c

    const-string p0, "smsc is null.\n"

    .line 1648
    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_c
    const-string v2, "\"?(\\+?)([0-9]+)\"?,([0-9]*)"

    .line 1653
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1654
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1656
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_6c

    const/4 v0, 0x1

    .line 1657
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x2

    .line 1661
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 1663
    :try_start_2d
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_35} :catch_36

    goto :goto_37

    :catch_36
    const/4 v2, 0x0

    :goto_37
    const/16 v6, 0x90

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_3d

    goto :goto_3e

    :cond_3d
    move v0, v3

    :goto_3e
    if-eqz v0, :cond_4f

    .line 1678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1680
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RilSmsc = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " smsc = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 1672
    :cond_6c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid smsc format. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private blacklist getTpmr()V
    .registers 4

    const-string v0, "SmsDispatchersController"

    const-string v1, "getTpmr"

    .line 1364
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    .line 1367
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 1369
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    if-nez p0, :cond_24

    const-string p0, "UsimRecords is null Can not update SMSS"

    .line 1371
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :cond_24
    const-string v1, "Usim is exists so get SMSS"

    .line 1373
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSMSS()V

    goto :goto_32

    :cond_2d
    const-string p0, "usimUiccApplication is null"

    .line 1377
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    return-void
.end method

.method private blacklist handleInService(J)V
    .registers 8

    .line 368
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    iput-wide p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    :cond_a
    const/16 v0, 0xf

    .line 372
    iget-wide v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    .line 373
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x5265c00

    iget-wide v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    sub-long/2addr v1, v3

    .line 372
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 377
    iput-wide p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    return-void
.end method

.method private blacklist handleOutOfService(J)V
    .registers 3

    const-wide/16 p1, -0x1

    .line 387
    iput-wide p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    return-void
.end method

.method private blacklist handlePartialSegmentTimerExpiry(J)V
    .registers 5

    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WaitingState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 392
    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_2e

    .line 405
    :cond_23
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->scanRawTable(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;J)V

    .line 411
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->resetPartialSegmentWaitTimer()V

    return-void

    :cond_2e
    :goto_2e
    const-string p1, "handlePartialSegmentTimerExpiry: ignoring timer expiry as InboundSmsHandler is in WaitingState"

    .line 393
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handleRadioStateChanged()V
    .registers 8

    const-string v0, "gsm.sim.state"

    const-string v1, ""

    .line 1389
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRadioStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmsDispatchersController"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    if-nez v1, :cond_38

    const-string v1, "get smsc because mSmsc is null"

    .line 1393
    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 1396
    :cond_38
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_42

    return-void

    .line 1398
    :cond_42
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v1

    if-nez v1, :cond_a0

    .line 1399
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v3, :cond_a0

    .line 1400
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 1401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PhoneId SIM off is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/SmsDispatchersController;->PHONE_ON_KEY:[Ljava/lang/String;

    rsub-int/lit8 v1, v1, 0x1

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_a0

    const-string v3, "LOADED,LOADED"

    .line 1405
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 1407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RADIO_OFF and SIM state is Ready(loaded), broadcast for SIM is on = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->broadcastCbSettingsAvailable(I)V

    :cond_a0
    return-void
.end method

.method private blacklist isInService()Z
    .registers 1

    .line 441
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 442
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 2

    const-string p0, "SmsDispatchersController"

    .line 1226
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist reevaluateTimerStatus()V
    .registers 7

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0xf

    .line 336
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 340
    iget-wide v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_18

    .line 341
    iget-wide v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    sub-long v2, v0, v2

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    .line 349
    :cond_18
    iget-wide v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_27

    .line 351
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->handlePartialSegmentTimerExpiry(J)V

    goto :goto_34

    .line 353
    :cond_27
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isInService()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 354
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->handleInService(J)V

    goto :goto_34

    .line 356
    :cond_31
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->handleOutOfService(J)V

    :goto_34
    return-void
.end method

.method private blacklist registerSamsungEvent()V
    .registers 6

    .line 1298
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1299
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 v1, 0x15

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/SemCommandsInterface;->setOnSmsDeviceReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1300
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x16

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1302
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.action.SIM_REFRESH_INIT"

    .line 1303
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 1304
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 1305
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.CUSTOMER_TEST_RESPONSE"

    .line 1306
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LTE_SMS_STATUS"

    .line 1307
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.ims.dm.DM_CHANGED"

    .line 1308
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.provider.action.DEFAULT_MSG_APP_INFO_LOGGING"

    .line 1309
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.EMERGENCY_SMS_SEARCH_READY"

    .line 1310
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1313
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.sec.android.phone.permission.AT_COMMAND"

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1314
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGcfModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.GCF_MODE_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist resetPartialSegmentWaitTimer()V
    .registers 5

    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0xf

    .line 417
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 418
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isInService()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 423
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    .line 424
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    .line 426
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x5265c00

    .line 425
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_28

    :cond_22
    const-wide/16 v0, -0x1

    .line 433
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    .line 434
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    :goto_28
    const-wide/16 v0, 0x0

    .line 437
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    return-void
.end method

.method private blacklist setImsSmsFormat(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_10

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    const-string p1, "unknown"

    .line 454
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    goto :goto_14

    :cond_b
    const-string p1, "3gpp2"

    .line 451
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    goto :goto_14

    :cond_10
    const-string p1, "3gpp"

    .line 448
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    :goto_14
    return-void
.end method

.method private blacklist triggerDeliveryIntent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Z
    .registers 6

    .line 1193
    iget-object p1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 1194
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "pdu"

    .line 1195
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p3, "format"

    .line 1196
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1198
    :try_start_11
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    const/4 p2, -0x1

    invoke-virtual {p1, p0, p2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_17
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_11 .. :try_end_17} :catch_19

    const/4 p0, 0x1

    return p0

    :catch_19
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist updateImsInfo(Landroid/os/AsyncResult;)V
    .registers 5

    .line 460
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    const/4 v0, 0x1

    .line 461
    aget v1, p1, v0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->setImsSmsFormat(I)V

    const/4 v1, 0x0

    .line 462
    aget p1, p1, v1

    if-ne p1, v0, :cond_1a

    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    const-string v2, "unknown"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    .line 463
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMS registration state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " format: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsDispatchersController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    .line 217
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->disposeSamsungEvent()V

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispose()V

    .line 223
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispose()V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 1218
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1219
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1220
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1221
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1222
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getDcnAddress()Ljava/lang/String;
    .registers 4

    .line 1808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDcnAddress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDcnAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsDispatchersController"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ACG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    .line 1810
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1811
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "312130"

    .line 1810
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string v0, "DcnAddress for ACG Appalachian"

    .line 1812
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "6066262100"

    .line 1813
    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDcnAddress:Ljava/lang/String;

    .line 1816
    :cond_4f
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDcnAddress:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getImsSmsFormat()Ljava/lang/String;
    .registers 1

    .line 672
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getInboundSmsHandler(Z)Lcom/android/internal/telephony/InboundSmsHandler;
    .registers 2

    if-eqz p1, :cond_5

    .line 1209
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    return-object p0

    .line 1210
    :cond_5
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    return-object p0
.end method

.method public blacklist getPremiumSmsPermission(Ljava/lang/String;)I
    .registers 2

    .line 1096
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getSmsc()Ljava/lang/String;
    .registers 3

    .line 1689
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 1690
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 1692
    :cond_f
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSmscNumber([BZ)Ljava/lang/String;
    .registers 13

    .line 1710
    new-instance p0, Ljava/lang/StringBuffer;

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    .line 1717
    aget-byte v1, p1, v0

    if-nez v1, :cond_f

    const-string p0, "NotSet"

    return-object p0

    :cond_f
    const/4 v1, 0x1

    .line 1721
    aget-byte v2, p1, v1

    const/16 v3, -0x6f

    if-ne v2, v3, :cond_1d

    const-string v2, "+"

    .line 1722
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    goto :goto_1e

    :cond_1d
    move v2, v0

    :goto_1e
    const/16 v3, 0xa

    new-array v4, v3, [B

    .line 1728
    array-length v5, p1

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {p1, v6, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v0

    :goto_29
    if-ge v5, v3, :cond_4a

    .line 1731
    aget-byte v7, v4, v5

    const/4 v8, -0x1

    if-ne v7, v8, :cond_31

    goto :goto_47

    :cond_31
    and-int/lit16 v8, v7, 0xff

    .line 1734
    div-int/lit8 v8, v8, 0x10

    and-int/lit8 v7, v7, 0xf

    const-string v9, "0123456789abcdef"

    .line 1736
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1737
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_47
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 1741
    :cond_4a
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1742
    aget-byte p1, p1, v0

    sub-int/2addr p1, v1

    mul-int/2addr p1, v6

    const-string v3, "SmsDispatchersController"

    if-eqz v2, :cond_70

    add-int/2addr p1, v1

    .line 1745
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1746
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "international even smsc = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 1748
    :cond_70
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_74
    if-eqz p2, :cond_7f

    .line 1752
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1755
    :cond_7f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "smsc = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public blacklist getSmscWithoutNullcheck()Ljava/lang/String;
    .registers 1

    .line 1764
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;
    .registers 1

    .line 1112
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 235
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    const/4 v3, 0x0

    const-string v4, "SmsDispatchersController"

    packed-switch v0, :pswitch_data_116

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    .line 324
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 325
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_114

    .line 300
    :pswitch_1d
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->handleRadioStateChanged()V

    goto/16 :goto_114

    .line 261
    :pswitch_22
    sput v3, Lcom/android/internal/telephony/SmsDispatchersController;->retryGetSmsc:I

    .line 262
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 263
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/SmsDispatchersController;->PHONE_ON_KEY:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5b

    const-string v0, "gsm.sim.state"

    const-string v1, ""

    .line 266
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOADED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5b

    const-string p1, "[CB] SimState is on and ready(loaded)"

    .line 268
    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->broadcastCbSettingsAvailable()V

    .line 272
    :cond_5b
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->getTpmr()V

    goto/16 :goto_114

    :pswitch_60
    const-string v0, "EVENT_GET_SMSC_DONE_EXTEND"

    .line 286
    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 289
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_114

    .line 290
    sget p1, Lcom/android/internal/telephony/SmsDispatchersController;->retryGetSmsc:I

    const/4 v0, 0x6

    if-ge p1, v0, :cond_114

    .line 291
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 292
    sget p0, Lcom/android/internal/telephony/SmsDispatchersController;->retryGetSmsc:I

    add-int/2addr p0, v1

    sput p0, Lcom/android/internal/telephony/SmsDispatchersController;->retryGetSmsc:I

    .line 293
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "retryGetSmsc count = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/internal/telephony/SmsDispatchersController;->retryGetSmsc:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_114

    .line 276
    :pswitch_98
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 277
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_ac

    const/16 v0, 0x14

    .line 278
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    .line 279
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_114

    .line 282
    :cond_ac
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->dispatchSmsServiceCenter(Ljava/lang/String;)V

    goto :goto_114

    .line 253
    :pswitch_b4
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p1

    if-nez p1, :cond_114

    const-string p1, "Radio state is OFF, mPrevVolteRegi = false"

    .line 254
    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iput-boolean v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPrevVolteRegi:Z

    goto :goto_114

    .line 316
    :pswitch_c4
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 317
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->resetPartialSegmentWaitTimer()V

    goto :goto_114

    .line 309
    :pswitch_d0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->handlePartialSegmentTimerExpiry(J)V

    goto :goto_114

    .line 305
    :pswitch_dc
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->reevaluateTimerStatus()V

    goto :goto_114

    .line 242
    :pswitch_e0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 244
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_ec

    .line 245
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->updateImsInfo(Landroid/os/AsyncResult;)V

    goto :goto_114

    .line 247
    :cond_ec
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMS State query failed with exp "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_114

    .line 238
    :pswitch_103
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    goto :goto_114

    .line 327
    :cond_10f
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    :cond_114
    :goto_114
    return-void

    nop

    :pswitch_data_116
    .packed-switch 0xb
        :pswitch_103
        :pswitch_103
        :pswitch_e0
        :pswitch_dc
        :pswitch_d0
        :pswitch_c4
        :pswitch_dc
        :pswitch_b4
        :pswitch_98
        :pswitch_60
        :pswitch_22
        :pswitch_1d
    .end packed-switch
.end method

.method public blacklist handleSmsStatusReport(Ljava/lang/String;[B)V
    .registers 10

    .line 1125
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    if-eqz v0, :cond_66

    .line 1127
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1128
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->semCreateFromPdu(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    if-eqz v0, :cond_9e

    .line 1132
    iget v3, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    .line 1133
    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP2:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-nez v4, :cond_35

    .line 1139
    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-eqz v4, :cond_35

    const/4 v5, 0x1

    goto :goto_36

    :cond_35
    move v5, v2

    :goto_36
    if-eqz v4, :cond_9e

    .line 1147
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getStatus()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit8 v0, v0, 0x3

    const/4 v6, 0x2

    if-eq v0, v6, :cond_60

    .line 1150
    iget-object v6, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_48

    move v1, v2

    :cond_48
    invoke-virtual {v4, v6, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    if-eqz v5, :cond_57

    .line 1157
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    .line 1159
    :cond_57
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP2:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    :cond_60
    :goto_60
    invoke-direct {p0, v4, p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerDeliveryIntent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Z

    move-result p0

    move v2, p0

    goto :goto_9e

    .line 1167
    :cond_66
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1168
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->semCreateFromPdu(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    if-eqz v0, :cond_9e

    .line 1171
    iget v3, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .line 1172
    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-eqz v4, :cond_9e

    .line 1174
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v0

    if-ge v0, v1, :cond_8c

    const/16 v1, 0x20

    if-ge v0, v1, :cond_9a

    .line 1177
    :cond_8c
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    .line 1179
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    :cond_9a
    invoke-direct {p0, v4, p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerDeliveryIntent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Z

    move-result v2

    :cond_9e
    :goto_9e
    if-nez v2, :cond_a7

    const-string p0, "SmsDispatchersController"

    const-string p1, "handleSmsStatusReport: can not handle the status report!"

    .line 1187
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a7
    return-void
.end method

.method public blacklist injectSmsPdu(Landroid/telephony/SmsMessage;Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;ZZ)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "SmsDispatchersController"

    const-string v1, "SmsDispatchersController:injectSmsPdu"

    .line 500
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-nez p1, :cond_13

    :try_start_a
    const-string p0, "injectSmsPdu: semCreateFromPdu returned null"

    .line 504
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-interface {p3, v1}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V

    return-void

    :cond_13
    if-nez p4, :cond_26

    .line 511
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object p4

    sget-object v2, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    if-eq p4, v2, :cond_26

    const-string p0, "injectSmsPdu: not class 1"

    .line 512
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-interface {p3, v1}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V

    return-void

    .line 517
    :cond_26
    new-instance p4, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {p4, p3, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-string v2, "3gpp"

    .line 519
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_32} :catch_a9

    const/4 v3, 0x1

    const/4 v4, 0x7

    const-string v5, ", format="

    const-string v6, "SmsDispatchersController:injectSmsText Sending msg="

    const/4 v7, 0x0

    if-eqz v2, :cond_62

    .line 520
    :try_start_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "to mGsmInboundSmsHandler"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    if-eqz p5, :cond_5d

    goto :goto_5e

    :cond_5d
    move v3, v7

    :goto_5e
    invoke-virtual {p0, v4, v3, v7, p4}, Lcom/android/internal/telephony/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_b2

    :cond_62
    const-string v2, "3gpp2"

    .line 524
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "to mCdmaInboundSmsHandler"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    if-eqz p5, :cond_8c

    goto :goto_8d

    :cond_8c
    move v3, v7

    :goto_8d
    invoke-virtual {p0, v4, v3, v7, p4}, Lcom/android/internal/telephony/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_b2

    .line 531
    :cond_91
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid pdu format: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-interface {p3, v1}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_a8} :catch_a9

    goto :goto_b2

    :catch_a9
    move-exception p0

    const-string p1, "injectSmsPdu failed: "

    .line 535
    invoke-static {v0, p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    invoke-interface {p3, v1}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V

    :goto_b2
    return-void
.end method

.method public blacklist injectSmsPdu([BLjava/lang/String;ZLcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 482
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0, p1, p2}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p4

    move v6, p3

    .line 484
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/SmsDispatchersController;->injectSmsPdu(Landroid/telephony/SmsMessage;Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;ZZ)V

    return-void
.end method

.method public blacklist isCdmaFormat(Ljava/lang/String;)Z
    .registers 2

    .line 741
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected blacklist isCdmaMo()Z
    .registers 10

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[lteStatus] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLteSmsStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsDispatchersController"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isIms()Z

    move-result v0

    const-string v2, "SPRINT"

    const/4 v3, 0x2

    const-string v4, "VZW"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_65

    .line 687
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v0

    filled-new-array {v4, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 688
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v0

    const-string v1, "USCC"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 689
    :cond_53
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->useLte3GPPSms()Z

    move-result v0

    if-eqz v0, :cond_5a

    return v6

    .line 693
    :cond_5a
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p0

    if-ne v3, p0, :cond_63

    goto :goto_64

    :cond_63
    move v5, v6

    :goto_64
    return v5

    .line 694
    :cond_65
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "LRA"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_195

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 695
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "ACG"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    goto/16 :goto_195

    .line 701
    :cond_8b
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "volte"

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 702
    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;

    move-result-object v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;

    move-result-object v0

    iget-object v8, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/SemTelephonyHelper;->isSupportCdma(I)I

    move-result v0

    if-ne v0, v5, :cond_d9

    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v2, :cond_10b

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/SemPhoneInternal;->hasCall(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10b

    const-string v0, "hybrid lte should send 3gpp2 sms over 1xrtt during cs call"

    .line 704
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p0

    if-ne v3, p0, :cond_d7

    goto :goto_d8

    :cond_d7
    move v5, v6

    :goto_d8
    return v5

    .line 707
    :cond_d9
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 708
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v2, :cond_10b

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/SemPhoneInternal;->hasCall(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10b

    const-string v0, "device should send 3gpp2 sms over 1xrtt during cs call (SPR)"

    .line 709
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p0

    if-ne v3, p0, :cond_109

    goto :goto_10a

    :cond_109
    move v5, v6

    :goto_10a
    return v5

    .line 715
    :cond_10b
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImsSmsFormat = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v0

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18e

    .line 719
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 720
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const/4 v2, 0x0

    const-string v7, "gsm.operator.isroaming"

    .line 719
    invoke-static {v0, v7, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 721
    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/16 v7, 0xe

    if-ne v2, v7, :cond_159

    goto :goto_15a

    :cond_159
    move v5, v6

    .line 723
    :goto_15a
    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_184

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 724
    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;

    move-result-object v2

    if-eqz v2, :cond_184

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/SemTelephonyHelper;->isSupportCdma(I)I

    move-result v2

    if-eq v2, v3, :cond_188

    :cond_184
    if-eqz v0, :cond_18e

    if-eqz v5, :cond_18e

    :cond_188
    const-string p0, "SMS Format 3GPP for Volte Roaming or CDMALESS"

    .line 726
    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 730
    :cond_18e
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_195
    :goto_195
    const-string v0, "device should send 3gpp sms for LRA and ACG if does not support CDMA"

    .line 696
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ro.product.first_api_level"

    .line 697
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1b8

    .line 698
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/SemTelephonyHelper;->isSupportCdma(I)I

    move-result p0

    if-ne p0, v5, :cond_1b7

    goto :goto_1b8

    :cond_1b7
    move v5, v6

    :cond_1b8
    :goto_1b8
    return v5
.end method

.method public blacklist isIms()Z
    .registers 7

    .line 647
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isImsforNonLegacyImsSms()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isIms : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPrevVolteRegi : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    .line 649
    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isPreVolteRegi()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsDispatchersController"

    .line 648
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    const/4 v3, 0x1

    goto :goto_3e

    :cond_3d
    move v3, v2

    .line 653
    :goto_3e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " datareg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " imsreg : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_64

    const-string p0, "ps is no service"

    .line 656
    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 659
    :cond_64
    iget-boolean p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    return p0
.end method

.method public blacklist putDeliveryPendingTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 3

    .line 147
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 148
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP2:Ljava/util/HashMap;

    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 150
    :cond_14
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDeliveryPendingMapFor3GPP:Ljava/util/HashMap;

    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1f
    return-void
.end method

.method public blacklist requestInitialImsRegistration()V
    .registers 4

    .line 1857
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.UPDATE_IMS_REGISTRATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 1858
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1859
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "phoneId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1860
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "SmsDispatchersController"

    const-string v0, "requestInitialImsRegistration"

    .line 1861
    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist sendAckSMSforCCTUnlock(Ljava/lang/String;)V
    .registers 3

    .line 1551
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    .line 1552
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1553
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendAckSMSforCCTUnlock(Ljava/lang/String;)V

    goto :goto_16

    .line 1555
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendAckSMSforCCTUnlock(Ljava/lang/String;)V

    :goto_16
    return-void
.end method

.method protected blacklist sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .registers 21

    move-object v0, p0

    .line 825
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 826
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    goto :goto_47

    .line 828
    :cond_1c
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 829
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    goto :goto_47

    .line 832
    :cond_35
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    :goto_47
    return-void
.end method

.method protected blacklist sendDatawithOrigPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 21

    move-object v0, p0

    .line 1465
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1466
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendDatawithOrigPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_47

    .line 1467
    :cond_1c
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1468
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/SMSDispatcher;->sendDatawithOrigPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_47

    .line 1470
    :cond_35
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/SMSDispatcher;->sendDatawithOrigPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :goto_47
    return-void
.end method

.method public blacklist sendDomainChangeSms(Ljava/lang/String;B)V
    .registers 10

    const/16 v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_10

    const/16 v0, 0x20

    if-eq p2, v0, :cond_d

    move v0, v1

    move v3, v2

    goto :goto_12

    :cond_d
    move v3, v1

    move v0, v2

    goto :goto_12

    :cond_10
    move v0, v2

    move v3, v0

    .line 1617
    :goto_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isE911Dan = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isNeededReset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SmsDispatchersController"

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isPreVolteRegi()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPrevVolteRegi:Z

    .line 1619
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPrevVolteRegi = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPrevVolteRegi:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_54

    .line 1621
    iget-boolean v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPrevVolteRegi:Z

    if-eqz v4, :cond_90

    .line 1622
    :cond_54
    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    .line 1623
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 1624
    iget-object v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->sendDomainChangeSms(Ljava/lang/String;B)V

    goto :goto_6a

    :cond_65
    const-string p1, "DomainChangeSMS is not supported in GsmSmsDispatcher"

    .line 1626
    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6a
    if-eqz v3, :cond_71

    .line 1629
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->setPreVolte(Z)V

    :cond_71
    if-nez v0, :cond_90

    .line 1631
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;

    move-result-object p1

    if-eqz p1, :cond_90

    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1632
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SemTelephonyHelper;->isSupportCdma(I)I

    move-result p1

    if-ne p1, v2, :cond_90

    .line 1633
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->requestInitialImsRegistration()V

    :cond_90
    return-void
.end method

.method protected blacklist sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    .line 1481
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    move-object v4, p2

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable(Ljava/lang/String;)Z

    .line 1482
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1483
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V

    goto :goto_30

    .line 1487
    :cond_1f
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V

    :goto_30
    return-void
.end method

.method protected blacklist sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZIJ)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "ZIZIJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1067
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1068
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v12, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v13, p11

    move-wide/from16 v14, p12

    invoke-virtual/range {v2 .. v15}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZIJ)V

    goto :goto_6a

    .line 1073
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1074
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-wide/from16 v14, p12

    invoke-virtual/range {v2 .. v15}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZIJ)V

    goto :goto_6a

    .line 1078
    :cond_4d
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-wide/from16 v14, p12

    invoke-virtual/range {v2 .. v15}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZIJ)V

    :goto_6a
    return-void
.end method

.method protected blacklist sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIII)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "ZIII)V"
        }
    .end annotation

    move-object v0, p0

    .line 1501
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    move-object v3, p1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable(Ljava/lang/String;)Z

    .line 1502
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1503
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v8, 0x0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIII)V

    goto :goto_40

    .line 1508
    :cond_27
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v8, 0x0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIII)V

    :goto_40
    return-void
.end method

.method protected blacklist sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1523
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable(Ljava/lang/String;)Z

    .line 1524
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p0, "SmsDispatchersController"

    const-string p1, "sendOTADomestic is only supported in GSM"

    .line 1525
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 1527
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/SMSDispatcher;->sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    return-void
.end method

.method protected blacklist sendRawPduSat(Ljava/lang/String;[B[BLjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 16

    .line 1590
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1591
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPduSat(Ljava/lang/String;[B[BLjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_33

    :cond_14
    const-string v0, "3gpp2"

    .line 1592
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1593
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPduSat(Ljava/lang/String;[B[BLjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_33

    .line 1595
    :cond_28
    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPduSat(Ljava/lang/String;[B[BLjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :goto_33
    return-void
.end method

.method public blacklist sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 546
    iget-object v2, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    .line 548
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "destAddr"

    .line 549
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 551
    iget-boolean v6, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    const/4 v8, 0x0

    if-nez v6, :cond_21

    iget-object v6, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    const/4 v6, 0x1

    goto :goto_22

    :cond_21
    move v6, v8

    :goto_22
    const/4 v9, 0x2

    if-eqz v6, :cond_2c

    .line 561
    iget-object v10, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v10}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v10

    goto :goto_41

    .line 562
    :cond_2c
    iget-object v10, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    if-ne v9, v10, :cond_3b

    .line 563
    iget-object v10, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v10}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v10

    goto :goto_41

    .line 564
    :cond_3b
    iget-object v10, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v10}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v10

    .line 566
    :goto_41
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "old format("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ") ==> new format ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SmsDispatchersController"

    invoke-static {v12, v11}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_184

    const-string v2, "scAddr"

    .line 571
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    const/4 v13, -0x1

    const/16 v14, 0x1e

    if-eqz v11, :cond_178

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_178

    const-string v4, "text"

    .line 572
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    const-string v15, "destPort"

    const-string v7, "data"

    if-nez v11, :cond_95

    .line 573
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_178

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_95

    goto/16 :goto_178

    .line 579
    :cond_95
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v5, :cond_a8

    const-string v2, "sendRetrySms failed due to null destAddr"

    .line 581
    invoke-static {v12, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v14, v13}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    return-void

    .line 588
    :cond_a8
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    const/4 v13, 0x0

    if-eqz v11, :cond_f4

    .line 589
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 590
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sms failed was text with length: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_c3

    move-object v11, v13

    goto :goto_cb

    .line 591
    :cond_c3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :goto_cb
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 590
    invoke-static {v12, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e7

    .line 594
    iget-object v7, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_e1

    const/4 v7, 0x1

    goto :goto_e2

    :cond_e1
    move v7, v8

    :goto_e2
    invoke-static {v2, v5, v4, v7, v13}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v4

    goto :goto_f2

    .line 597
    :cond_e7
    iget-object v7, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_ed

    const/4 v7, 0x1

    goto :goto_ee

    :cond_ed
    move v7, v8

    :goto_ee
    invoke-static {v2, v5, v4, v7, v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v4

    :goto_f2
    move-object v13, v4

    goto :goto_14a

    .line 600
    :cond_f4
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_149

    .line 601
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 602
    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 603
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sms failed was data with length: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_114

    const/4 v13, 0x0

    goto :goto_119

    .line 604
    :cond_114
    array-length v13, v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    :goto_119
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 603
    invoke-static {v12, v11}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_139

    .line 608
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v11, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_133

    const/4 v11, 0x1

    goto :goto_134

    :cond_133
    move v11, v8

    .line 607
    :goto_134
    invoke-static {v2, v5, v7, v4, v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v13

    goto :goto_14a

    .line 612
    :cond_139
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v11, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_143

    const/4 v11, 0x1

    goto :goto_144

    :cond_143
    move v11, v8

    .line 611
    :goto_144
    invoke-static {v2, v5, v7, v4, v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v13

    goto :goto_14a

    :cond_149
    const/4 v13, 0x0

    :goto_14a
    if-nez v13, :cond_167

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v2, v4, v8

    .line 620
    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const-string v2, "sendRetrySms failed to encode message.scAddr: %s, destPort: %s"

    .line 618
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v14, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    return-void

    .line 625
    :cond_167
    iget-object v2, v13, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    const-string v4, "smsc"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    iget-object v2, v13, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    const-string v4, "pdu"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iput-object v10, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    goto :goto_184

    :cond_178
    :goto_178
    const-string v2, "sendRetrySms failed to re-encode per missing fields!"

    .line 575
    invoke-static {v12, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v14, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    return-void

    :cond_184
    :goto_184
    if-eqz v6, :cond_189

    .line 632
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    goto :goto_194

    .line 633
    :cond_189
    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_192

    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    goto :goto_194

    :cond_192
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 635
    :goto_194
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method public blacklist sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 4

    .line 1418
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1419
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_21

    .line 1420
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1421
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_21

    .line 1423
    :cond_1c
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :goto_21
    return-void
.end method

.method public blacklist sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZIZJ)V
    .registers 30

    move-object v0, p0

    move-object/from16 v1, p1

    .line 939
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5a

    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isEmergencySmsSupport(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_5a

    .line 945
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 946
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-wide/from16 v13, p13

    invoke-virtual/range {v0 .. v14}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZIZJ)V

    goto :goto_78

    .line 950
    :cond_3a
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-wide/from16 v13, p13

    invoke-virtual/range {v0 .. v14}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZIZJ)V

    goto :goto_78

    .line 940
    :cond_5a
    :goto_5a
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v10, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v11, p11

    move/from16 v12, p12

    move-wide/from16 v13, p13

    invoke-virtual/range {v0 .. v14}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZIZJ)V

    :goto_78
    return-void
.end method

.method protected blacklist sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 20

    move-object v0, p0

    .line 1434
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    move-object v4, p2

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable(Ljava/lang/String;)Z

    .line 1435
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1436
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    goto :goto_30

    .line 1438
    :cond_1f
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    :goto_30
    return-void
.end method

.method protected blacklist sendTextAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    .registers 27

    move-object v0, p0

    .line 1567
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1568
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendTextAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    goto :goto_5f

    .line 1572
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1573
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendTextAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    goto :goto_5f

    .line 1577
    :cond_44
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/telephony/SMSDispatcher;->sendTextAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    :goto_5f
    return-void
.end method

.method protected blacklist sendTextNSRI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V
    .registers 20

    move-object v0, p0

    .line 1538
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    move-object v4, p2

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable(Ljava/lang/String;)Z

    .line 1539
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v0, "SmsDispatchersController"

    const-string v1, "sendTextNSRI is only supported in GSM"

    .line 1540
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 1542
    :cond_15
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/SMSDispatcher;->sendTextNSRI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V

    :goto_26
    return-void
.end method

.method protected blacklist sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIIII)V
    .registers 28

    move-object v0, p0

    .line 1449
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable(Ljava/lang/String;)Z

    .line 1450
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1451
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {v2 .. v14}, Lcom/android/internal/telephony/SMSDispatcher;->sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIIII)V

    goto :goto_49

    .line 1454
    :cond_2c
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {v2 .. v14}, Lcom/android/internal/telephony/SMSDispatcher;->sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIIII)V

    :goto_49
    return-void
.end method

.method public blacklist setDcnAddress(Ljava/lang/String;)V
    .registers 4

    .line 1824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDcnAddress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsDispatchersController"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mDcnAddress:Ljava/lang/String;

    return-void
.end method

.method public blacklist setPremiumSmsPermission(Ljava/lang/String;I)V
    .registers 3

    .line 1108
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->setPremiumSmsPermission(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setSmsc(Ljava/lang/String;)V
    .registers 3

    .line 1700
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mSmsc:Ljava/lang/String;

    .line 1701
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSmsc = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsDispatchersController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist updatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    const-string v0, "SmsDispatchersController"

    const-string v1, "In IMS updatePhoneObject "

    .line 1335
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    .line 1337
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    .line 1338
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    .line 1339
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public blacklist useLte3GPPSms()Z
    .registers 5

    .line 1838
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1839
    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SemTelephonyHelper;->isSupportCdma(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2f

    return v1

    .line 1841
    :cond_2f
    iget v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLteSmsStatus:I

    const/4 v2, 0x0

    if-nez v0, :cond_35

    return v2

    .line 1843
    :cond_35
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v3, 0xe

    if-ne v0, v3, :cond_49

    iget p0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLteSmsStatus:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_49

    return v1

    :cond_49
    return v2
.end method
