.class public Lcom/android/internal/telephony/ImsSmsDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "ImsSmsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;
    }
.end annotation


# static fields
.field public static final blacklist SOURCE_INJECTED_FROM_IMS:I = 0x1


# instance fields
.field private blacklist mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

.field private blacklist mConnectRunnable:Ljava/lang/Runnable;

.field private blacklist mConnectorFactory:Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;

.field private blacklist mCurSimIndex:I

.field private final blacklist mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

.field private blacklist mEmergencyPendingQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHandleStatus:I

.field private blacklist mImsManager:Lcom/android/ims/ImsManager;

.field private final blacklist mImsManagerConnector:Lcom/android/ims/FeatureConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/FeatureConnector<",
            "Lcom/android/ims/ImsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mImsSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

.field private blacklist mIsEmergencySearch:Z

.field private volatile blacklist mIsImsServiceUp:Z

.field private volatile blacklist mIsRegistered:Z

.field private volatile blacklist mIsSmsCapable:Z

.field private volatile blacklist mIsSmsOverImsOnly:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field public blacklist mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private blacklist mPrevVolteRegi:Z

.field private blacklist mQualCommModem:Z

.field private volatile blacklist mRegisteredTransportType:I

.field private blacklist mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

.field private blacklist mSelector:Lcom/android/internal/telephony/SmsDomainSelector;

.field private blacklist mSimMaxCount:I

.field private blacklist mSimUsedCount:I

.field public blacklist mTrackers:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUsimDownloadMsg:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$nLYM6J-F2AbnM43SMBttniZNU2g(Lcom/android/internal/telephony/ImsSmsDispatcher;Landroid/telephony/SmsMessage;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->lambda$injectSms$0(Landroid/telephony/SmsMessage;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectRunnable(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mConnectRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsManagerConnector(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/ims/FeatureConnector;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetrics(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsimDownloadMsg(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mUsimDownloadMsg:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmImsManager(Lcom/android/internal/telephony/ImsSmsDispatcher;Lcom/android/ims/ImsManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsManager:Lcom/android/ims/ImsManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsImsServiceUp(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsRegistered(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsRegistered:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsSmsCapable(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsCapable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRegisteredTransportType(Lcom/android/internal/telephony/ImsSmsDispatcher;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mRegisteredTransportType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mconvertErrorCodeToNetworkReasonCode(Lcom/android/internal/telephony/ImsSmsDispatcher;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->convertErrorCodeToNetworkReasonCode(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetImsManager(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/ims/ImsManager;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleImsSmsSendComplete(Lcom/android/internal/telephony/ImsSmsDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;III)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ImsSmsDispatcher;->handleImsSmsSendComplete(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleVzwSmsWriteUicc(Lcom/android/internal/telephony/ImsSmsDispatcher;IIILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ImsSmsDispatcher;->handleVzwSmsWriteUicc(IIILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSamsungSmsReceived(Lcom/android/internal/telephony/ImsSmsDispatcher;ILjava/lang/String;[B)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->onSamsungSmsReceived(ILjava/lang/String;[B)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetListeners(Lcom/android/internal/telephony/ImsSmsDispatcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->setListeners()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;)V
    .registers 11

    .line 563
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V

    .line 112
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    .line 114
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 116
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mLock:Ljava/lang/Object;

    const/4 p2, -0x1

    .line 121
    iput p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mRegisteredTransportType:I

    .line 125
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 129
    new-instance p2, Lcom/android/internal/telephony/ImsSmsDispatcher$1;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$1;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    iput-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mConnectRunnable:Ljava/lang/Runnable;

    .line 140
    new-instance p2, Lcom/android/internal/telephony/ImsSmsDispatcher$2;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$2;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    iput-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 175
    new-instance p2, Lcom/android/internal/telephony/ImsSmsDispatcher$3;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$3;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    iput-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 187
    new-instance p2, Lcom/android/internal/telephony/ImsSmsDispatcher$4;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$4;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    iput-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 p2, 0x0

    .line 949
    iput p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    .line 950
    iput-boolean p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mQualCommModem:Z

    const/16 v0, 0x3e8

    .line 951
    iput v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSimMaxCount:I

    .line 952
    iput v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSimUsedCount:I

    .line 953
    iput-boolean p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPrevVolteRegi:Z

    const/4 v0, 0x1

    .line 954
    iput-boolean v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsOverImsOnly:Z

    .line 957
    iput v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mHandleStatus:I

    .line 962
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mUsimDownloadMsg:Ljava/util/HashMap;

    .line 968
    iput-boolean p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsEmergencySearch:Z

    .line 564
    iput-object p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mConnectorFactory:Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;

    .line 566
    new-instance p2, Lcom/android/internal/telephony/SmsDomainSelector;

    iget-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3, v0}, Lcom/android/internal/telephony/SmsDomainSelector;-><init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSelector:Lcom/android/internal/telephony/SmsDomainSelector;

    .line 568
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mConnectorFactory:Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    new-instance v5, Lcom/android/internal/telephony/ImsSmsDispatcher$5;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$5;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    new-instance v6, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    const-string v4, "ImsSmsDispatcher"

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;->create(Landroid/content/Context;ILjava/lang/String;Lcom/android/ims/FeatureConnector$Listener;Ljava/util/concurrent/Executor;)Lcom/android/ims/FeatureConnector;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;

    .line 593
    iget-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mConnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 595
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p3, 0x1b

    const/4 v0, 0x0

    invoke-interface {p2, p0, p3, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 598
    new-instance p2, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    iget-object p3, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-direct {p2, p1, p3, v0}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;I)V

    iput-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    .line 601
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mEmergencyPendingQueue:Ljava/util/LinkedList;

    return-void
.end method

.method private blacklist Class2SmsToSim(I[BLandroid/telephony/SmsMessage;)V
    .registers 12

    .line 1407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class2SmsToSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    invoke-virtual {p3}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "Class2 replace msg received"

    .line 1409
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origAddr = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " protocolId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 v1, 0x18

    iget-object p3, p3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget p3, p3, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    .line 1412
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p2

    .line 1411
    invoke-virtual {p0, v1, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->oemGetStoredMsgCountFromSim(Landroid/os/Message;)V

    return-void

    .line 1416
    :cond_5d
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->getSimFullStatus()Z

    move-result v0

    if-nez v0, :cond_74

    const/4 v3, 0x3

    .line 1417
    iget-object p3, p3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget v5, p3, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    const/4 v7, 0x2

    move-object v2, p0

    move v4, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/ImsSmsDispatcher;->writeSmsToSim(III[BI)V

    goto :goto_9a

    .line 1420
    :cond_74
    :try_start_74
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object p0

    iget-object p2, p3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget p2, p2, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    const/4 p3, 0x3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V
    :try_end_80
    .catch Lcom/android/ims/ImsException; {:try_start_74 .. :try_end_80} :catch_81

    goto :goto_9a

    :catch_81
    move-exception p0

    .line 1423
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to acknowledgeSms(). Error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9a
    return-void
.end method

.method private blacklist convertErrorCodeToNetworkReasonCode(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist failPendingEmergencySms()V
    .registers 4

    const-string v0, "failPendingEmergencySms"

    .line 989
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logi(Ljava/lang/String;)V

    .line 990
    :goto_5
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mEmergencyPendingQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 991
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mEmergencyPendingQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    const/16 v1, 0x11

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->handleImsSmsSendComplete(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;III)V

    goto :goto_5

    :cond_1c
    return-void
.end method

.method private blacklist getImsManager()Lcom/android/ims/ImsManager;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 877
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 878
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz p0, :cond_9

    .line 882
    monitor-exit v0

    return-object p0

    .line 879
    :cond_9
    new-instance p0, Lcom/android/ims/ImsException;

    const-string v1, "ImsManager not up"

    const/16 v2, 0x6a

    invoke-direct {p0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p0

    :catchall_13
    move-exception p0

    .line 883
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method private blacklist handleImsSmsSendComplete(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;III)V
    .registers 20

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3c

    .line 1164
    iget-object v6, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v6

    const-string v7, "sms_max_retries_zero"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    move v6, v3

    goto :goto_2b

    .line 1166
    :cond_1a
    iget-object v6, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v6

    const-string v7, "sms_max_retries_one"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    move v6, v4

    goto :goto_2b

    :cond_2a
    move v6, v5

    .line 1171
    :goto_2b
    iget v7, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ge v7, v6, :cond_3c

    add-int/2addr v7, v4

    .line 1172
    iput v7, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 1173
    invoke-virtual {p0, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    .line 1174
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1179
    :cond_3c
    iget-object v6, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    const-string v7, "ImsSmsDispatcher"

    if-eqz v6, :cond_60

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_60

    .line 1180
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requested Application : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_60
    iget-object v6, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v6

    const-string v8, "sms_network_search_for_e911"

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7e

    iget-object v6, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7e

    const-string v6, "EMERGENCY_MODE_FINISHED"

    .line 1183
    invoke-static {v7, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendEmergencyNetworkControl(I)V

    .line 1187
    :cond_7e
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->setTPMRvalueToSim()V

    if-ne v2, v4, :cond_d8

    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x1

    .line 1194
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    .line 1195
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    const-string v12, "SMSDispatcher"

    const-string v13, "Sending sms succeeded."

    .line 1193
    invoke-static/range {v8 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1198
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/Phone;->notifyCatSendSmsResult(I)V

    .line 1199
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 1200
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1202
    :try_start_a4
    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    iget-object v6, v0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v7, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1203
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .line 1202
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onSent(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_bb
    .catchall {:try_start_a4 .. :try_end_bb} :catchall_bf

    .line 1205
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c9

    :catchall_bf
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1206
    throw v0

    .line 1208
    :cond_c4
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onSent(Landroid/content/Context;)V

    .line 1211
    :goto_c9
    iget-object v2, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_13f

    .line 1213
    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->putDeliveryPendingTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1214
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsApplication;->setPendingDeliveryIntent(Landroid/app/PendingIntent;)V

    goto :goto_13f

    :cond_d8
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 1220
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 1221
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    const-string v6, "SMSDispatcher"

    const-string v7, "Sending SMS failed."

    .line 1219
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1223
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v2

    if-eqz v2, :cond_fd

    .line 1224
    invoke-virtual {v2}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v3

    if-eqz v3, :cond_fd

    .line 1226
    invoke-virtual {v2}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->decreaseNumberOfOutgoingSms()Z

    .line 1230
    :cond_fd
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    const v3, 0xffff

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/Phone;->notifyCatSendSmsResult(I)V

    .line 1231
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_136

    .line 1232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1234
    :try_start_10f
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1235
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 1234
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;IIILjava/lang/String;)V
    :try_end_12d
    .catchall {:try_start_10f .. :try_end_12d} :catchall_131

    .line 1237
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_13f

    :catchall_131
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1238
    throw v0

    .line 1240
    :cond_136
    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    :cond_13f
    :goto_13f
    return-void
.end method

.method private blacklist handleVzwSmsWriteUicc(IIILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 12

    const-string v0, "ImsSmsDispatcher"

    .line 1015
    :try_start_2
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->getSmsFormat()Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_25

    :catch_b
    move-exception v1

    .line 1017
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to getSmsFormat(). Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1020
    :goto_25
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v2

    if-eqz v2, :cond_bd

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ImsPreference;->isSmsWriteUiccSupported()Z

    move-result v2

    if-eqz v2, :cond_bd

    if-eqz v1, :cond_bd

    const-string v2, "3gpp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    const-string v1, "SmsWriteUiccSupported : VZW send msg"

    .line 1021
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne p3, v1, :cond_4d

    const/4 p3, 0x5

    goto :goto_4e

    :cond_4d
    const/4 p3, 0x7

    :goto_4e
    move v2, p3

    .line 1029
    invoke-virtual {p4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object p3

    const-string p4, "pdu"

    .line 1031
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [B

    const-string v1, "smsc"

    .line 1032
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    if-nez p3, :cond_87

    .line 1035
    iget-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {p3}, Lcom/android/internal/telephony/SmsDispatchersController;->getSmsc()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object p3

    .line 1036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use default smsc = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    if-eqz p4, :cond_b8

    .line 1040
    array-length v1, p3

    array-length v3, p4

    add-int/2addr v1, v3

    new-array v5, v1, [B

    .line 1041
    array-length v1, p3

    const/4 v3, 0x0

    invoke-static {p3, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1042
    array-length p3, p3

    array-length v1, p4

    invoke-static {p4, v3, v5, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1043
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mergedPdu = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    move v4, p2

    .line 1044
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/ImsSmsDispatcher;->writeSmsToSim(III[BI)V

    goto :goto_bd

    :cond_b8
    const-string p0, "UICC WRITE FAIL! PDU is NULL"

    .line 1046
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bd
    :goto_bd
    return-void
.end method

.method private blacklist injectSms(ILjava/lang/String;Landroid/telephony/SmsMessage;)V
    .registers 11

    const-string v0, "3gpp"

    .line 1250
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1252
    iget-object v0, p3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iput p1, v0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    .line 1254
    :cond_c
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    new-instance v4, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p3, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;Landroid/telephony/SmsMessage;I)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p3

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/SmsDispatchersController;->injectSmsPdu(Landroid/telephony/SmsMessage;Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;ZZ)V

    return-void
.end method

.method private blacklist isClass2Writable()Z
    .registers 2

    .line 1453
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object p0

    const-string v0, "VZW"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isEmergencySmsPossible()Z
    .registers 2

    .line 627
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isLteService()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isLimitedLteService()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private blacklist isLimitedLteService()Z
    .registers 3

    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1c

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 623
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method private blacklist isLteService()Z
    .registers 3

    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1c

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 617
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    .line 618
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method private blacklist isShortMessageType0Msg(Landroid/telephony/SmsMessage;)Z
    .registers 2

    .line 1443
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result p0

    const/16 p1, 0x40

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private blacklist isUsimDataDownload(Landroid/telephony/SmsMessage;)Z
    .registers 3

    .line 1433
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object p0

    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne p0, v0, :cond_1a

    .line 1434
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result p0

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_18

    .line 1435
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result p0

    const/16 p1, 0x7c

    if-ne p0, p1, :cond_1a

    :cond_18
    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private synthetic blacklist lambda$injectSms$0(Landroid/telephony/SmsMessage;II)V
    .registers 10

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMS handled result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq p3, v0, :cond_27

    if-eq p3, v5, :cond_27

    if-eq p3, v4, :cond_25

    if-eq p3, v3, :cond_28

    move v3, v2

    goto :goto_28

    :cond_25
    move v3, v4

    goto :goto_28

    :cond_27
    move v3, v5

    :cond_28
    :goto_28
    if-ne p3, v4, :cond_4d

    const-string v0, "IMS Memory full: SMS_REJECTED_ACTION"

    .line 1274
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "result"

    .line 1277
    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1278
    iget-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p3

    const-string v4, "subId"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1279
    iget-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {p3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_4d
    if-eqz p1, :cond_91

    .line 1283
    :try_start_4f
    iget-object p3, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz p3, :cond_91

    .line 1284
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "token = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mMessageRef = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    iget p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mHandleStatus:I

    if-ne p3, v5, :cond_83

    .line 1287
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object p0

    iget-object p1, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget p1, p1, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {p0, p2, p1, v3}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V

    goto :goto_b7

    .line 1290
    :cond_83
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object p0

    iget-object p1, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget p1, p1, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {p0, p2, p1, v2}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V

    goto :goto_b7

    :catch_8f
    move-exception p0

    goto :goto_9f

    :cond_91
    const-string p1, "SMS Received with a PDU that could not be parsed."

    .line 1294
    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, v3}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V
    :try_end_9e
    .catch Lcom/android/ims/ImsException; {:try_start_4f .. :try_end_9e} :catch_8f

    goto :goto_b7

    .line 1298
    :goto_9f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to acknowledgeSms(). Error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b7
    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 4

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsSmsDispatcher ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 4

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsSmsDispatcher ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .registers 4

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsSmsDispatcher ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onSamsungSmsReceived(ILjava/lang/String;[B)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 1056
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1058
    :try_start_c
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1059
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1, v9, v8}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v12
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1ce

    const/4 v13, 0x1

    const-string v14, "Failed to acknowledgeSms(). Error: "

    const-string v15, "3gpp"

    const-string v6, "ImsSmsDispatcher"

    if-nez v12, :cond_5a

    .line 1062
    :try_start_1f
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    move v1, v7

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    .line 1063
    :goto_28
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    const-string v3, "1"

    const-string v4, "ISH_onSamsungSmsReceived_MessageNullPdu"

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1064
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0, v7, v1, v13}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V
    :try_end_3e
    .catch Lcom/android/ims/ImsException; {:try_start_1f .. :try_end_3e} :catch_3f
    .catchall {:try_start_1f .. :try_end_3e} :catchall_1ce

    goto :goto_56

    :catch_3f
    move-exception v0

    .line 1066
    :try_start_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_1ce

    .line 1140
    :goto_56
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1071
    :cond_5a
    :try_start_5a
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1073
    iget-object v1, v12, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iput v7, v1, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    .line 1076
    :cond_64
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v1

    const-string v2, "sms_nsri_security_solution"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 1078
    invoke-direct {v0, v9, v7}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendNsriRemoteControl([BI)V
    :try_end_75
    .catchall {:try_start_5a .. :try_end_75} :catchall_1ce

    .line 1140
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1082
    :cond_79
    :try_start_79
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1083
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "IncomingSms: - IMS Deliver "

    .line 1084
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " format ="

    .line 1085
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " token ="

    .line 1086
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1088
    sget-boolean v3, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v3, :cond_a3

    const-string v3, " pdu : "

    .line 1089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1092
    :cond_a3
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v6, v2, v3}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1094
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v1

    const-string v2, "sms_write_uicc_supported"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fb

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1095
    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v1

    if-eqz v1, :cond_fb

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsPreference;->isSmsWriteUiccSupported()Z

    move-result v1

    if-eqz v1, :cond_fb

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 1096
    invoke-virtual {v12}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v1

    sget-object v2, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v1, v2, :cond_fb

    const-string v1, "SmsWriteUiccSupported : VZW Recieved msg"

    .line 1097
    invoke-static {v6, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    .line 1098
    iget-object v1, v12, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget v4, v1, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v5, p3

    move-object v13, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/ImsSmsDispatcher;->writeSmsToSim(III[BI)V

    goto :goto_fc

    :cond_fb
    move-object v13, v6

    .line 1100
    :goto_fc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message class = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c2

    invoke-virtual {v12}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v1

    sget-object v2, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v1, v2, :cond_1c2

    const-string v1, "class2 message"

    .line 1102
    invoke-static {v13, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    .line 1104
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isClass2Writable()Z

    move-result v1

    if-nez v1, :cond_162

    .line 1105
    invoke-direct {v0, v12}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isUsimDataDownload(Landroid/telephony/SmsMessage;)Z

    move-result v1

    if-nez v1, :cond_13b

    .line 1106
    invoke-direct {v0, v7, v9, v12}, Lcom/android/internal/telephony/ImsSmsDispatcher;->Class2SmsToSim(I[BLandroid/telephony/SmsMessage;)V
    :try_end_137
    .catchall {:try_start_79 .. :try_end_137} :catchall_1ce

    .line 1140
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_13b
    :try_start_13b
    const-string v1, "isUsimDataDownload for vzw"

    .line 1109
    invoke-static {v13, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v4

    .line 1111
    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    iget-object v2, v12, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget v3, v2, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    move/from16 v2, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleUsimDataDownloadWithPdu(IILcom/android/internal/telephony/uicc/UsimServiceTable;[BI)V

    .line 1112
    iget-object v0, v0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mUsimDownloadMsg:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15e
    .catchall {:try_start_13b .. :try_end_15e} :catchall_1ce

    .line 1140
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1116
    :cond_162
    :try_start_162
    invoke-direct {v0, v12}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isUsimDataDownload(Landroid/telephony/SmsMessage;)Z

    move-result v1

    if-eqz v1, :cond_190

    const-string v1, "isUsimDataDownload"

    .line 1117
    invoke-static {v13, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v4

    .line 1119
    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    iget-object v2, v12, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget v3, v2, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    const/4 v6, 0x1

    move/from16 v2, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleUsimDataDownloadWithPdu(IILcom/android/internal/telephony/uicc/UsimServiceTable;[BI)V

    .line 1120
    iget-object v0, v0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mUsimDownloadMsg:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18c
    .catchall {:try_start_162 .. :try_end_18c} :catchall_1ce

    .line 1140
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1123
    :cond_190
    :try_start_190
    invoke-direct {v0, v12}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isShortMessageType0Msg(Landroid/telephony/SmsMessage;)Z

    move-result v1
    :try_end_194
    .catchall {:try_start_190 .. :try_end_194} :catchall_1ce

    if-eqz v1, :cond_1be

    .line 1125
    :try_start_196
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    iget-object v1, v12, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget v1, v1, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    const/4 v2, 0x1

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V
    :try_end_1a2
    .catch Lcom/android/ims/ImsException; {:try_start_196 .. :try_end_1a2} :catch_1a3
    .catchall {:try_start_196 .. :try_end_1a2} :catchall_1ce

    goto :goto_1ba

    :catch_1a3
    move-exception v0

    .line 1128
    :try_start_1a4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ba
    .catchall {:try_start_1a4 .. :try_end_1ba} :catchall_1ce

    .line 1140
    :goto_1ba
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1133
    :cond_1be
    :try_start_1be
    invoke-direct {v0, v7, v9, v12}, Lcom/android/internal/telephony/ImsSmsDispatcher;->Class2SmsToSim(I[BLandroid/telephony/SmsMessage;)V

    goto :goto_1ca

    :cond_1c2
    const-string v1, "Normal SMS received"

    .line 1136
    invoke-static {v13, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-direct {v0, v7, v8, v12}, Lcom/android/internal/telephony/ImsSmsDispatcher;->injectSms(ILjava/lang/String;Landroid/telephony/SmsMessage;)V
    :try_end_1ca
    .catchall {:try_start_1be .. :try_end_1ca} :catchall_1ce

    .line 1140
    :goto_1ca
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1ce
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1141
    throw v0
.end method

.method private blacklist sendNsriRemoteControl([BI)V
    .registers 12

    const-string v0, "Failed to close stream, exception is: "

    const-string v1, "ImsSmsDispatcher"

    .line 1480
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1481
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x0

    .line 1483
    aget-byte v5, p1, v4

    .line 1484
    array-length v6, p1

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    new-array v6, v6, [B

    add-int/lit8 v7, v5, 0x1

    .line 1485
    array-length v8, p1

    sub-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x1

    invoke-static {p1, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1486
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    const/16 v4, 0x25

    .line 1489
    :try_start_2c
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x6

    .line 1490
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1491
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1492
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1493
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send NSRI TPDU: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/16 v5, 0x1d

    invoke-virtual {p0, v5, p2, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, v4, p0}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_78} :catch_88
    .catchall {:try_start_2c .. :try_end_78} :catchall_86

    .line 1501
    :try_start_78
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1502
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7e} :catch_7f

    goto :goto_a7

    :catch_7f
    move-exception p0

    .line 1504
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_9a

    :catchall_86
    move-exception p0

    goto :goto_a8

    :catch_88
    :try_start_88
    const-string p0, "IOException during send NSRI Remote Control"

    .line 1498
    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catchall {:try_start_88 .. :try_end_8d} :catchall_86

    .line 1501
    :try_start_8d
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1502
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_93} :catch_94

    goto :goto_a7

    :catch_94
    move-exception p0

    .line 1504
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_9a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a7
    return-void

    .line 1501
    :goto_a8
    :try_start_a8
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1502
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ae} :catch_af

    goto :goto_c2

    :catch_af
    move-exception p1

    .line 1504
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :goto_c2
    throw p0
.end method

.method private blacklist setListeners()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 606
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    new-instance v2, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsManager;->addRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;Ljava/util/concurrent/Executor;)V

    .line 607
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    new-instance v2, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsManager;->addCapabilitiesCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 609
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->initImsSmsImplAdapter()V

    .line 611
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getSmsListener()Landroid/telephony/ims/aidl/IImsSmsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 612
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->onSmsReady()V

    return-void
.end method

.method private blacklist writeSmsToSim(III[BI)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p5

    const/4 v4, 0x0

    .line 1380
    aget-byte v5, v2, v4

    add-int/lit8 v6, v5, 0x1

    .line 1381
    new-array v7, v6, [B

    .line 1382
    array-length v8, v2

    sub-int/2addr v8, v5

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    new-array v8, v8, [B

    .line 1383
    invoke-static {v2, v4, v7, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1384
    array-length v10, v2

    sub-int/2addr v10, v5

    sub-int/2addr v10, v9

    invoke-static {v2, v6, v8, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v3, :cond_3e

    .line 1387
    iget-object v11, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iget v12, v0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v15

    const/16 v3, 0x1a

    .line 1388
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    move/from16 v4, p3

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    move/from16 v13, p1

    .line 1387
    invoke-interface/range {v11 .. v16}, Lcom/android/internal/telephony/SemCommandsInterface;->secWriteSmsToSim(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_85

    :cond_3e
    if-ne v3, v9, :cond_56

    .line 1390
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1391
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x17

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    move/from16 v4, p1

    .line 1390
    invoke-interface {v1, v4, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_85

    :cond_56
    const/4 v4, 0x2

    if-ne v3, v4, :cond_7e

    .line 1393
    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1394
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v4, "3gpp"

    invoke-static {v3, v2, v4}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 1395
    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x3

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x16

    iget-object v8, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget v8, v8, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    .line 1396
    invoke-virtual {v0, v7, v1, v8, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1395
    invoke-interface {v3, v4, v5, v6, v0}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_85

    :cond_7e
    const-string v0, "ImsSmsDispatcher"

    const-string v1, "Invalid Write Type"

    .line 1398
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_85
    return-void
.end method


# virtual methods
.method protected blacklist calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 3

    .line 702
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result p0

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->calculateLength(ZLjava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 4

    if-eqz p3, :cond_7

    .line 1468
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthForEms(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    return-object p0

    .line 1471
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result p0

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->calculateLength(ZLjava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    return-object p0
.end method

.method public blacklist domainSelector(ILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1309
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSelector:Lcom/android/internal/telephony/SmsDomainSelector;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsRegistered:Z

    iget v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mRegisteredTransportType:I

    iget-boolean v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsCapable:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SmsDomainSelector;->setImgRegiAndCapability(ZIZ)V

    .line 1310
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSelector:Lcom/android/internal/telephony/SmsDomainSelector;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/SmsDomainSelector;->getSmsDomain(ILjava/lang/String;)I

    move-result p1

    .line 1311
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DomainSelector : domain = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSelector:Lcom/android/internal/telephony/SmsDomainSelector;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsDomainSelector;->convertToDomainName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ImsSmsDispatcher"

    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_38

    const/4 p2, 0x5

    if-ne p1, p2, :cond_34

    goto :goto_38

    :cond_34
    const/4 p1, 0x0

    .line 1316
    iput-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsOverImsOnly:Z

    goto :goto_3b

    :cond_38
    :goto_38
    const/4 p1, 0x1

    .line 1314
    iput-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsOverImsOnly:Z

    :goto_3b
    return-void
.end method

.method public blacklist fallbackToPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 888
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method protected blacklist getFormat()Ljava/lang/String;
    .registers 1

    .line 674
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "3gpp2"

    goto :goto_b

    :cond_9
    const-string p0, "3gpp"

    :goto_b
    return-object p0
.end method

.method public blacklist getImsSmsFormat()Ljava/lang/String;
    .registers 3

    .line 1001
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSmsFormat()Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get sms format. Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImsSmsDispatcher"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "unknown"

    return-object p0
.end method

.method public blacklist getSmsListener()Landroid/telephony/ims/aidl/IImsSmsListener;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 900
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    return-object p0
.end method

.method protected blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 12

    .line 696
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 16

    .line 689
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSubmitPduForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 16

    .line 1152
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduForAutoLogin(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 16

    .line 383
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_32e

    const/16 v1, 0x1d

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "ImsSmsDispatcher"

    if-eq v0, v1, :cond_2e9

    const/16 v1, 0x1e

    const/4 v5, 0x0

    if-eq v0, v1, :cond_2de

    const/16 v1, 0xff

    const/16 v6, 0x19

    const-string v7, "3gpp"

    packed-switch v0, :pswitch_data_33c

    .line 557
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_33a

    .line 390
    :pswitch_20
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p1

    if-nez p1, :cond_33a

    const-string p1, "Radio state is OFF, mPrevVolteRegi = false"

    .line 391
    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iput-boolean v5, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPrevVolteRegi:Z

    goto/16 :goto_33a

    .line 531
    :pswitch_31
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 532
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 535
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 537
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v7}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v1

    const-string v5, "EVENT_SEC_WRITE_SMS_COMPLETE"

    .line 539
    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_54

    const-string v0, "Successfully write replace message to UICC"

    .line 541
    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iput v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mHandleStatus:I

    goto :goto_5b

    :cond_54
    const-string v3, "Failed to write replace message to UICC"

    .line 544
    invoke-static {v4, v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    iput v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mHandleStatus:I

    .line 547
    :goto_5b
    invoke-direct {p0, p1, v7, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->injectSms(ILjava/lang/String;Landroid/telephony/SmsMessage;)V

    goto/16 :goto_33a

    .line 468
    :pswitch_60
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 469
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 470
    iget v11, p1, Landroid/os/Message;->arg2:I

    .line 471
    iget-object p1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v2, "EVENT_READ_SMS_COMPLETE"

    .line 473
    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_218

    .line 475
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurSimIndex = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->pdu:Ljava/lang/String;

    if-eqz v2, :cond_204

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_204

    .line 479
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v2, :cond_d1

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read SIM Msg: index = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->index:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " status = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->status:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pdu = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->pdu:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " smsc = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->smsc:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_d1
    iget v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    iget v5, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSimMaxCount:I

    if-gt v2, v5, :cond_11e

    iget-object v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->pdu:Ljava/lang/String;

    if-eqz v2, :cond_e1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_11e

    .line 489
    :cond_e1
    iget v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    iget v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSimMaxCount:I

    if-ne v0, v2, :cond_f9

    .line 490
    iput v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    const-string v0, "last index! write replace msg 1"

    .line 491
    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x3

    .line 492
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v13, 0x0

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/ImsSmsDispatcher;->writeSmsToSim(III[BI)V

    goto :goto_11d

    .line 494
    :cond_f9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current index is empty. read next, mCurSimIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    invoke-virtual {p0, v6, v10, v11, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->oemReadSmsFromSim(ILandroid/os/Message;)V

    :goto_11d
    return-void

    .line 500
    :cond_11e
    iget-object v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->pdu:Ljava/lang/String;

    if-eqz v2, :cond_33a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_33a

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->smsc:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->pdu:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v7}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 504
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v7}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 505
    sget-boolean v5, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v5, :cond_17f

    .line 506
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readMsg: isReplace = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " addr = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " pid = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 506
    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_17f
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v5

    if-eqz v5, :cond_1c5

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1c5

    .line 510
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c5

    .line 511
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v0

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v2

    if-ne v0, v2, :cond_1c5

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "match! write replace msg, mCurSimIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x3

    .line 513
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v13, 0x0

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/ImsSmsDispatcher;->writeSmsToSim(III[BI)V

    goto/16 :goto_33a

    .line 515
    :cond_1c5
    iget v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    iget v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSimMaxCount:I

    if-ne v0, v2, :cond_1de

    .line 516
    iput v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    const-string v0, "last index! write replace msg 2"

    .line 517
    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x3

    .line 518
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v13, 0x0

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/ImsSmsDispatcher;->writeSmsToSim(III[BI)V

    goto/16 :goto_33a

    .line 520
    :cond_1de
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not match! read next msg, mCurSimIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    invoke-virtual {p0, v6, v10, v11, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->oemReadSmsFromSim(ILandroid/os/Message;)V

    goto/16 :goto_33a

    :cond_204
    const-string v0, "Read SIM Msg is Null"

    .line 484
    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    invoke-virtual {p0, v6, v10, v11, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->oemReadSmsFromSim(ILandroid/os/Message;)V

    return-void

    :cond_218
    const-string v0, "Fail to read sms"

    .line 526
    invoke-static {v4, v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    invoke-virtual {p0, v6, v10, v11, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->oemReadSmsFromSim(ILandroid/os/Message;)V

    goto/16 :goto_33a

    .line 442
    :pswitch_22d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 443
    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 444
    iget v10, p1, Landroid/os/Message;->arg2:I

    .line 445
    iget-object p1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v2, "EVENT_GET_STORED_MESSAGE_COUNT_COMPLETE"

    .line 446
    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_29b

    .line 448
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "token = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " usedCount = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;->usedCount:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " totalCount = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;->totalCount:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iput v5, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    .line 451
    iget v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;->totalCount:I

    iput v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSimMaxCount:I

    .line 452
    iget v0, v0, Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;->usedCount:I

    iput v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSimUsedCount:I

    if-nez v0, :cond_28d

    .line 454
    iput v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    const-string v0, "SIM msg is empty."

    .line 455
    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x3

    .line 457
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v11

    const/4 v12, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/ImsSmsDispatcher;->writeSmsToSim(III[BI)V

    goto/16 :goto_33a

    .line 459
    :cond_28d
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    add-int/2addr v5, v3

    iput v5, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    invoke-virtual {p0, v6, v9, v10, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, v5, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->oemReadSmsFromSim(ILandroid/os/Message;)V

    goto/16 :goto_33a

    :cond_29b
    const-string p0, "Fail to stored msg count"

    .line 462
    invoke-static {v4, p0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33a

    .line 433
    :pswitch_2a2
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 434
    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p0, :cond_2b1

    const-string p0, "Successfully write SMS to UICC"

    .line 435
    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33a

    :cond_2b1
    const-string p1, "Failed to write SMS to UICC"

    .line 437
    invoke-static {v4, p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33a

    .line 416
    :pswitch_2b8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 417
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 420
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/SmsMessage;

    const-string v5, "EVENT_CLASS2_MSG_WRITE_COMPLETE"

    .line 422
    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2d3

    const-string v0, "Successfully write class2 message to UICC"

    .line 424
    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iput v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mHandleStatus:I

    goto :goto_2da

    :cond_2d3
    const-string v3, "Failed to write class2 message to UICC"

    .line 427
    invoke-static {v4, v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    iput v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mHandleStatus:I

    .line 430
    :goto_2da
    invoke-direct {p0, p1, v7, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->injectSms(ILjava/lang/String;Landroid/telephony/SmsMessage;)V

    goto :goto_33a

    :cond_2de
    const-string p1, "emergency search fail"

    .line 551
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logd(Ljava/lang/String;)V

    .line 552
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->failPendingEmergencySms()V

    .line 553
    iput-boolean v5, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsEmergencySearch:Z

    goto :goto_33a

    :cond_2e9
    const-string v0, "EVENT_SEND_NSRI_DONE"

    .line 396
    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 398
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 399
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 401
    :try_start_2f6
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_307

    const-string v0, "Successfully send NSRI remote control"

    .line 402
    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object p0

    invoke-virtual {p0, v1, p1, v3}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V

    goto :goto_33a

    :cond_307
    const-string v3, "Failed to send NSRI remote control"

    .line 406
    invoke-static {v4, v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object p0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V
    :try_end_313
    .catch Lcom/android/ims/ImsException; {:try_start_2f6 .. :try_end_313} :catch_314

    goto :goto_33a

    :catch_314
    move-exception p0

    .line 411
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to acknowledgeSms(). Error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33a

    :cond_32e
    const-string v0, "SMS retry.."

    .line 385
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logd(Ljava/lang/String;)V

    .line 386
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :cond_33a
    :goto_33a
    return-void

    nop

    :pswitch_data_33c
    .packed-switch 0x16
        :pswitch_2b8
        :pswitch_2a2
        :pswitch_22d
        :pswitch_60
        :pswitch_31
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist isAvailable()Z
    .registers 2

    const/4 v0, 0x0

    .line 667
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isAvailable(Ljava/lang/String;)Z
    .registers 7

    .line 1325
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1b

    .line 1326
    :try_start_6
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsDispatchersController;->getDcnAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string p0, "ImsSmsDispatcher"

    const-string p1, "DCN should be sent over 1x, isAvailable = false"

    .line 1327
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_25

    return v1

    .line 1332
    :cond_1b
    :try_start_1b
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->domainSelector(ILjava/lang/String;)V
    :try_end_24
    .catch Lcom/android/ims/ImsException; {:try_start_1b .. :try_end_24} :catch_27
    .catchall {:try_start_1b .. :try_end_24} :catchall_25

    goto :goto_42

    :catchall_25
    move-exception p0

    goto :goto_83

    :catch_27
    move-exception p1

    :try_start_28
    const-string v2, "ImsSmsDispatcher"

    .line 1334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDomainSelector failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_42
    const-string p1, "ImsSmsDispatcher"

    .line 1336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailable: up= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", reg= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", cap= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsCapable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", smsOverImsOnly = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsOverImsOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    iget-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z

    if-eqz p1, :cond_81

    iget-boolean p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsOverImsOnly:Z

    if-eqz p0, :cond_81

    const/4 v1, 0x1

    :cond_81
    monitor-exit v0

    return v1

    .line 1340
    :goto_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_28 .. :try_end_84} :catchall_25

    throw p0
.end method

.method protected blacklist isCdmaMo()Z
    .registers 1

    .line 894
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result p0

    return p0
.end method

.method public blacklist isEmergencySmsSupport(Ljava/lang/String;)Z
    .registers 10

    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ImsSmsDispatcher"

    const/4 v2, 0x0

    if-nez v0, :cond_24

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not emergency number"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logi(Ljava/lang/String;)V

    return v2

    .line 638
    :cond_24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 640
    :try_start_28
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v5, "carrier_config"

    .line 641
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-nez v0, :cond_3d

    const-string p1, "configManager is null"

    .line 643
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->loge(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_99

    .line 661
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 646
    :cond_3d
    :try_start_3d
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_50

    const-string p1, "PersistableBundle is null"

    .line 648
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->loge(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_99

    .line 661
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_50
    :try_start_50
    const-string v5, "support_emergency_sms_over_ims_bool"

    .line 651
    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 653
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isEmergencySmsPossible()Z

    move-result v5

    .line 654
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isEmergencySmsSupport emergencySmsCarrierSupport: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " destAddr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mIsImsServiceUp: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " lteOrLimitedLte: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 654
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logi(Ljava/lang/String;)V

    if-eqz v0, :cond_95

    .line 659
    iget-boolean p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z
    :try_end_90
    .catchall {:try_start_50 .. :try_end_90} :catchall_99

    if-eqz p0, :cond_95

    if-eqz v5, :cond_95

    const/4 v2, 0x1

    .line 661
    :cond_95
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_99
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 662
    throw p0
.end method

.method public blacklist isImsforNonLegacyImsSms()Z
    .registers 3

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isImsforNonLegacyImsSms: reg= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cap= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsCapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", smsOverImsOnly = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsOverImsOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    iget-boolean v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsRegistered:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsCapable:Z

    if-eqz v0, :cond_3a

    iget-boolean p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsOverImsOnly:Z

    if-eqz p0, :cond_3a

    const/4 p0, 0x1

    goto :goto_3b

    :cond_3a
    const/4 p0, 0x0

    :goto_3b
    return p0
.end method

.method public blacklist isPreVolteRegi()Z
    .registers 1

    .line 1372
    iget-boolean p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPrevVolteRegi:Z

    return p0
.end method

.method protected blacklist sendDatawithOrigPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 9

    const-string p0, "ImsSmsDispatcher"

    const-string p1, "sendDatawithOrigPort is not supported in ImsSmsDispatcher"

    .line 1556
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .registers 9
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

    const-string p0, "ImsSmsDispatcher"

    const-string p1, "sendMultipartText is not supported in ImsSmsDispatcher"

    .line 1526
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIII)V
    .registers 12
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

    const-string p0, "ImsSmsDispatcher"

    const-string p1, "sendMultipartTextwithOptions is not supported in ImsSmsDispatcher"

    .line 1547
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist sendPendingEmergencySms()V
    .registers 3

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendPendingEmergencySms count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mEmergencyPendingQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logi(Ljava/lang/String;)V

    const/16 v0, 0x1e

    .line 976
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 977
    :goto_1f
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mEmergencyPendingQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 978
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mEmergencyPendingQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 979
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1f

    :cond_33
    const/4 v0, 0x0

    .line 981
    iput-boolean v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsEmergencySearch:Z

    return-void
.end method

.method public blacklist sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSms:  mRetryCount="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mMessageRef="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " SS="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 710
    invoke-interface {v5}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 707
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 714
    iput-boolean v0, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    .line 716
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "destAddr"

    .line 718
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 720
    iget-object v8, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v8

    const-string v9, "sms_network_search_for_e911"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_78

    iget-boolean v8, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsEmergencySearch:Z

    if-nez v8, :cond_78

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/SMSDispatcher;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_78

    const-string v3, "emergency sms network search start"

    .line 721
    invoke-direct {v1, v3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logd(Ljava/lang/String;)V

    .line 722
    iget-object v3, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mEmergencyPendingQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 723
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendEmergencyNetworkControl(I)V

    const/16 v2, 0x1e

    .line 724
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 725
    iput-boolean v0, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsEmergencySearch:Z

    return-void

    .line 731
    :cond_78
    invoke-virtual {v1, v7, v0}, Lcom/android/internal/telephony/SMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_a5

    .line 733
    :try_start_7f
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v3

    .line 734
    invoke-virtual {v3, v8}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 736
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string v4, "LastSentMsg"

    .line 737
    invoke-virtual {v12, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 738
    iget-object v9, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v10, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 739
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v16

    .line 738
    invoke-virtual/range {v9 .. v16}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_9f} :catch_a0

    goto :goto_a4

    :catch_a0
    move-exception v0

    .line 741
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a4
    return-void

    :cond_a5
    const-string v7, "pdu"

    .line 748
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    const-string v9, "smsc"

    .line 749
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 750
    iget v11, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-lez v11, :cond_bb

    move v14, v0

    goto :goto_bc

    :cond_bb
    move v14, v8

    .line 752
    :goto_bc
    iget-object v11, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    const-string v15, "3gpp2"

    const-string v12, "3gpp"

    if-nez v11, :cond_cd

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result v11

    if-eqz v11, :cond_cc

    move-object v11, v15

    goto :goto_cd

    :cond_cc
    move-object v11, v12

    :cond_cd
    :goto_cd
    move-object v13, v11

    .line 757
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e7

    if-eqz v14, :cond_e7

    .line 761
    aget-byte v11, v7, v8

    and-int/lit8 v8, v11, 0x1

    if-ne v8, v0, :cond_e7

    or-int/lit8 v8, v11, 0x4

    int-to-byte v8, v8

    const/4 v11, 0x0

    .line 762
    aput-byte v8, v7, v11

    .line 763
    iget v8, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    int-to-byte v8, v8

    aput-byte v8, v7, v0

    .line 768
    :cond_e7
    iget-object v8, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v11

    if-nez v11, :cond_14c

    if-eqz v8, :cond_14c

    iget-object v11, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 771
    invoke-interface {v11}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v11

    const/16 v0, 0x14

    if-eq v11, v0, :cond_14c

    .line 772
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    const v3, 0xffff

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/Phone;->notifyCatSendSmsResult(I)V

    .line 773
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_141

    .line 774
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 776
    :try_start_119
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/internal/telephony/SMSDispatcher;->getNotInServiceError(I)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 777
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    iget-object v6, v1, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p1

    move-object v2, v0

    .line 776
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;IIILjava/lang/String;)V
    :try_end_138
    .catchall {:try_start_119 .. :try_end_138} :catchall_13c

    .line 779
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_14b

    :catchall_13c
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 780
    throw v0

    .line 782
    :cond_141
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/internal/telephony/SMSDispatcher;->getNotInServiceError(I)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    :goto_14b
    return-void

    .line 787
    :cond_14c
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_160

    const-string v6, "(?<=.{2}).(?=.{2})"

    const-string v11, ""

    .line 789
    invoke-virtual {v0, v6, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_160
    move-object v6, v0

    const-string v11, "ImsSmsDispatcher"

    if-nez v10, :cond_180

    .line 794
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->getSmsc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v10

    .line 795
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    const-string v0, "use default smsc"

    .line 796
    invoke-static {v11, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v19

    goto :goto_185

    .line 799
    :cond_180
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_185
    if-eqz v10, :cond_19a

    .line 803
    array-length v9, v10

    if-lez v9, :cond_19a

    const/4 v9, 0x0

    .line 804
    aget-byte v0, v10, v9

    and-int/lit16 v0, v0, 0xff

    if-lez v0, :cond_19a

    .line 805
    array-length v9, v10

    if-lt v9, v0, :cond_19a

    const/4 v9, 0x1

    .line 806
    invoke-static {v10, v9, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_19b

    :cond_19a
    const/4 v0, 0x0

    .line 810
    :goto_19b
    iget-object v9, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v10, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/SemPhoneInternal;->isFdnBlocked(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_300

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b5

    iget-object v9, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->isFdnBlocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    goto/16 :goto_300

    .line 827
    :cond_1b5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPhone.getPhoneId() = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v0, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v12

    .line 830
    iget-object v0, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    :try_start_1de
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    iget v9, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v0, v12, v9}, Lcom/android/ims/ImsManager;->setRetryCount(II)V

    .line 834
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v9

    iget v0, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I
    :try_end_1ed
    .catch Lcom/android/ims/ImsException; {:try_start_1de .. :try_end_1ed} :catch_216

    move v10, v12

    move-object/from16 v22, v11

    move v11, v0

    move/from16 v23, v12

    move-object v12, v13

    move-object/from16 v24, v13

    move-object v13, v5

    move-object/from16 v25, v6

    move-object v6, v15

    move-object v15, v7

    :try_start_1fb
    invoke-virtual/range {v9 .. v15}, Lcom/android/ims/ImsManager;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 837
    iget-object v0, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v9, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v17

    const/16 v19, 0x1

    iget-wide v9, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    move-object/from16 v16, v0

    move-object/from16 v18, v24

    move-wide/from16 v20, v9

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeImsServiceSendSms(ILjava/lang/String;IJ)V
    :try_end_213
    .catch Lcom/android/ims/ImsException; {:try_start_1fb .. :try_end_213} :catch_214

    goto :goto_278

    :catch_214
    move-exception v0

    goto :goto_220

    :catch_216
    move-exception v0

    move-object/from16 v25, v6

    move-object/from16 v22, v11

    move/from16 v23, v12

    move-object/from16 v24, v13

    move-object v6, v15

    .line 840
    :goto_220
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendSms failed. Falling back to PSTN. Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->loge(Ljava/lang/String;)V

    .line 841
    iget-object v0, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->fallbackToPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 843
    iget-object v0, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v9, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v17

    const/16 v19, 0x4

    iget-wide v9, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    move-object/from16 v16, v0

    move-object/from16 v18, v24

    move-wide/from16 v20, v9

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeImsServiceSendSms(ILjava/lang/String;IJ)V

    .line 845
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v9

    const/4 v10, 0x1

    move-object/from16 v11, v24

    .line 847
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    const/16 v13, 0xf

    iget-wide v14, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 851
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isFromDefaultSmsApplication(Landroid/content/Context;)Z

    move-result v16

    .line 852
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getInterval()J

    move-result-wide v17

    .line 845
    invoke-virtual/range {v9 .. v18}, Lcom/android/internal/telephony/metrics/SmsStats;->onOutgoingSms(ZZZIJZJ)V

    .line 855
    :goto_278
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 856
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "sendSms: - IMS "

    .line 857
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " isIms()="

    .line 858
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v7, " mno="

    .line 859
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/SmsConfig;->getMnoName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " token="

    .line 860
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v7, v23

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v7, " mRetryCount="

    .line 861
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v7, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v7, " mImsRetry="

    .line 862
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v7, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 863
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 864
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " smsc="

    .line 865
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " da="

    .line 866
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v2, v25

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 868
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v2, :cond_2ee

    const-string v2, " pdu : "

    .line 869
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 872
    :cond_2ee
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    move-object/from16 v3, v22

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_300
    :goto_300
    move-object v3, v11

    const-string v0, "FdnBlocked"

    .line 811
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    const v3, 0xffff

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/Phone;->notifyCatSendSmsResult(I)V

    .line 813
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_33d

    .line 814
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 816
    :try_start_318
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v3, 0x6

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 817
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    iget-object v6, v1, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p1

    move-object v2, v0

    .line 816
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;IIILjava/lang/String;)V
    :try_end_334
    .catchall {:try_start_318 .. :try_end_334} :catchall_338

    .line 819
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_344

    :catchall_338
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 820
    throw v0

    .line 822
    :cond_33d
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    :goto_344
    return-void
.end method

.method protected blacklist sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 9

    const-string p0, "ImsSmsDispatcher"

    const-string p1, "sendText is not supported in ImsSmsDispatcher"

    .line 1516
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIIII)V
    .registers 13

    const-string p0, "ImsSmsDispatcher"

    const-string p1, "sendTextwithOptions is not supported in ImsSmsDispatcher"

    .line 1536
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setPreVolte(Z)V
    .registers 4

    .line 1358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreVolte: isVoiceOverCellularImsEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isWifiCallingEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_30

    .line 1360
    iput-boolean v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPrevVolteRegi:Z

    goto :goto_46

    :cond_30
    if-eqz p1, :cond_43

    .line 1362
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result p1

    if-nez p1, :cond_44

    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_44

    :cond_43
    const/4 v0, 0x0

    :cond_44
    :goto_44
    iput-boolean v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPrevVolteRegi:Z

    .line 1364
    :goto_46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPreVolte: mPrevVolteRegi = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPrevVolteRegi:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist shouldBlockSmsForEcbm()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
