.class public Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "CdmaInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;,
        Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;,
        Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final blacklist TEST_MODE:Z

.field private static blacklist sTestBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;

.field private static blacklist sTestScpBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;


# instance fields
.field private final blacklist mCheckForDuplicatePortsInOmadmWapPush:Z

.field private blacklist mDuplicateFilter:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

.field private blacklist mLastAcknowledgedSmsFingerprint:[B

.field private blacklist mLastDispatchedSmsFingerprint:[B

.field private blacklist mScpCallback:Landroid/os/RemoteCallback;

.field private final blacklist mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;


# direct methods
.method public static synthetic blacklist $r8$lambda$zlOOu6u8burGdcgPF3oOuQvoLMQ(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->lambda$new$0(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScpCallback(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)Landroid/os/RemoteCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mScpCallback:Landroid/os/RemoteCallback;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    .line 96
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    move v1, v2

    :cond_b
    sput-boolean v1, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->TEST_MODE:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V
    .registers 6

    const-string v0, "CdmaInboundSmsHandler"

    .line 107
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;)V

    .line 92
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1110129

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 108
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 110
    new-instance p2, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;-><init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mDuplicateFilter:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

    .line 112
    iget-object p2, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    invoke-interface {p2, p3, p4, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 114
    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-virtual {p2}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->enable()V

    .line 115
    new-instance p2, Landroid/os/RemoteCallback;

    new-instance p3, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    invoke-direct {p2, p3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mScpCallback:Landroid/os/RemoteCallback;

    .line 168
    sget-boolean p2, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->TEST_MODE:Z

    if-eqz p2, :cond_70

    .line 169
    sget-object p2, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sTestBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;

    const/4 p3, 0x2

    if-nez p2, :cond_56

    .line 170
    new-instance p2, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;-><init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    sput-object p2, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sTestBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;

    .line 171
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p4, "com.android.internal.telephony.cdma.TEST_TRIGGER_CELL_BROADCAST"

    .line 172
    invoke-virtual {p2, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    sget-object p4, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sTestBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;

    invoke-virtual {p1, p4, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 176
    :cond_56
    sget-object p2, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sTestScpBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;

    if-nez p2, :cond_70

    .line 177
    new-instance p2, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;-><init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    sput-object p2, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sTestScpBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;

    .line 178
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.android.internal.telephony.cdma.TEST_TRIGGER_SCP_MESSAGE"

    .line 179
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    sget-object p2, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sTestScpBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;

    invoke-virtual {p1, p2, p0, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_70
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)V
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)[B
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->decodeHexString(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$200(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)V
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)Lcom/android/internal/telephony/CellBroadcastServiceManager;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    return-object p0
.end method

.method static synthetic blacklist access$400(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)[B
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->decodeHexString(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$500(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)V
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$600(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)[B
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->decodeHexString(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$700(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)V
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$800(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)Lcom/android/internal/telephony/CellBroadcastServiceManager;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    return-object p0
.end method

.method static synthetic blacklist access$900(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method private blacklist addVoicemailSmsToMetrics(I)V
    .registers 5

    .line 771
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "3gpp2"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingVoiceMailSms(ILjava/lang/String;)V

    .line 773
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/metrics/SmsStats;->onIncomingSmsVoicemail(ZI)V

    return-void
.end method

.method private static blacklist checkDuplicatePortOmadmWapPush([BI)Z
    .registers 5

    add-int/lit8 p1, p1, 0x4

    .line 745
    array-length v0, p0

    sub-int/2addr v0, p1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 746
    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 748
    new-instance p0, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    const/4 p1, 0x2

    .line 752
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v0

    if-nez v0, :cond_17

    return v2

    .line 756
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v0

    add-int/2addr v0, p1

    .line 759
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result p1

    if-nez p1, :cond_23

    return v2

    .line 763
    :cond_23
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "application/vnd.syncml.notification"

    .line 764
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;I)V
    .registers 9

    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    .line 627
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessagePriority()I

    move-result v1

    .line 629
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v2

    .line 630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Voicemail count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    const/16 v3, 0x63

    if-gez v2, :cond_28

    const/4 v2, -0x1

    goto :goto_2b

    :cond_28
    if-le v2, v3, :cond_2b

    move v2, v3

    .line 641
    :cond_2b
    :goto_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VM count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CdmaInboundSmsHandler"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VM prev : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VM priority : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result p1

    if-eq v0, p1, :cond_a6

    .line 646
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 647
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vm_count_key_cdma"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "vm_priority_key_cdma"

    .line 649
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 650
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 652
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/Phone;->setVoiceMessageCount(I)V

    .line 654
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->updateVoicemailCount(I)V

    .line 656
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->addVoicemailSmsToMetrics(I)V

    :cond_a6
    return-void
.end method

.method private synthetic blacklist lambda$new$0(Landroid/os/Bundle;)V
    .registers 7

    if-nez p1, :cond_8

    const-string p1, "SCP results error: missing extras"

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string v0, "sender"

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    const-string p1, "SCP results error: missing sender extra."

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return-void

    :cond_16
    const-string v1, "results"

    .line 125
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_24

    const-string p1, "SCP results error: missing results extra."

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return-void

    .line 131
    :cond_24
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    const/4 v2, 0x2

    .line 132
    iput v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 133
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 134
    iput-object p1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    .line 135
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object p1

    .line 137
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 138
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x1006

    .line 140
    :try_start_46
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v3, 0x0

    .line 141
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 142
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 144
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    .line 145
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 146
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 147
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 148
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 149
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 150
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 152
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 153
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 154
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 155
    array-length v0, p1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 156
    array-length v0, p1

    invoke-virtual {v2, p1, v3, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 158
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_94} :catch_9a
    .catchall {:try_start_46 .. :try_end_94} :catchall_98

    .line 163
    :goto_94
    :try_start_94
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_a1

    goto :goto_a1

    :catchall_98
    move-exception p0

    goto :goto_a2

    :catch_9a
    move-exception p1

    :try_start_9b
    const-string v0, "exception creating SCP results PDU"

    .line 160
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a0
    .catchall {:try_start_9b .. :try_end_a0} :catchall_98

    goto :goto_94

    :catch_a1
    :goto_a1
    return-void

    .line 163
    :goto_a2
    :try_start_a2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_a5

    .line 166
    :catch_a5
    throw p0
.end method

.method public static blacklist makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .registers 5

    .line 202
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    .line 204
    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->start()V

    return-object v0
.end method

.method private blacklist processCdmaWapPdu([BILjava/lang/String;Ljava/lang/String;JI)I
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 675
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x1

    if-eqz v3, :cond_12

    const-string v1, "Received a WAP SMS which is not WDP. Discard."

    .line 677
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return v4

    :cond_12
    const/4 v5, 0x2

    .line 680
    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x3

    .line 681
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    if-lt v5, v6, :cond_3c

    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WDP bad segment #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " expecting 0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return v4

    :cond_3c
    if-nez v5, :cond_81

    const/4 v4, 0x4

    .line 693
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    const/4 v8, 0x5

    .line 694
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v7

    const/4 v7, 0x6

    .line 695
    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    const/4 v9, 0x7

    .line 696
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v8

    .line 701
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x1110129

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_73

    iget-object v8, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 702
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v8

    const-string v10, "sms_check_duplicate_port_omadm_wappush"

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 704
    :cond_73
    invoke-static {v1, v9}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->checkDuplicatePortOmadmWapPush([BI)Z

    move-result v8

    if-eqz v8, :cond_7e

    const/16 v8, 0xb

    move v12, v7

    move v7, v8

    goto :goto_83

    :cond_7e
    move v12, v7

    move v7, v9

    goto :goto_83

    :cond_81
    move v4, v2

    move v12, v4

    .line 711
    :goto_83
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received WAP PDU. Type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", originator = "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", src-port = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", dst-port = "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ID = "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", segment# = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 716
    array-length v8, v1

    sub-int/2addr v8, v7

    new-array v10, v8, [B

    move-object v9, v10

    .line 717
    array-length v8, v1

    sub-int/2addr v8, v7

    invoke-static {v1, v7, v10, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 718
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v1

    const-class v7, Lcom/android/internal/telephony/InboundSmsTracker;

    .line 719
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v7

    iget-object v8, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    const/16 v19, 0x1

    .line 722
    invoke-static {v10}, Lcom/android/internal/telephony/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 724
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v22

    move-wide/from16 v10, p5

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move/from16 v16, p2

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v23, p7

    .line 719
    invoke-virtual/range {v7 .. v23}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker(Landroid/content/Context;[BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;ZII)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v1

    .line 728
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    move-result v0

    return v0
.end method

.method private static blacklist resultToCause(I)I
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_10

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    const/16 p0, 0x27

    return p0

    :cond_f
    return v0

    :cond_10
    const/16 p0, 0x23

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected blacklist acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .registers 7

    .line 583
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->checkEcmPolicy(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 588
    :cond_d
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->resultToCause(I)I

    move-result p2

    .line 589
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    if-nez p2, :cond_1e

    .line 592
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    .line 594
    :cond_1e
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    return-void
.end method

.method protected blacklist dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;I)I
    .registers 36

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 228
    iget-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_12

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->checkEcmPolicy(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v0, -0x1

    return v0

    .line 232
    :cond_12
    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 234
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    .line 236
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCDMAMessageType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v7, v6, :cond_22

    move v6, v7

    goto :goto_23

    :cond_22
    move v6, v4

    :goto_23
    if-eqz v6, :cond_30

    const-string v0, "Broadcast type message"

    .line 240
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 241
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->sendCdmaMessageToHandler(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    return v7

    .line 246
    :cond_30
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 250
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 251
    sget-boolean v8, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v8, :cond_58

    .line 252
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pdu : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    :cond_58
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " | Encoding : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageEncoding()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8a

    const-string v8, " | da : "

    .line 256
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    const-string v9, "(?<=.{2}).(?=.{2})"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8a
    if-eqz v5, :cond_a4

    .line 260
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " | "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/SmsHeader;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    :cond_a4
    iget-object v5, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Delivering SMS information : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    const-string v9, "CdmaInboundSmsHandler"

    invoke-virtual {v5, v9, v6, v8}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 266
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    .line 267
    iget-object v6, v1, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    if-eqz v6, :cond_d7

    .line 268
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_d7

    return v7

    .line 275
    :cond_d7
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v5

    .line 277
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "teleService : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v6, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v6

    const/16 v8, 0x1004

    const/16 v10, 0x1002

    if-nez v6, :cond_109

    if-eq v5, v10, :cond_109

    if-eq v5, v8, :cond_109

    const-string v0, "Tablet doesn\'t support WMT and WAP messages"

    .line 280
    invoke-static {v9, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_109
    const/16 v6, 0x1092

    if-ne v5, v6, :cond_113

    const-string v0, "DCN Delivery report is received"

    .line 285
    invoke-static {v9, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_113
    const/4 v6, 0x2

    const/4 v11, 0x4

    const v12, 0xfdf1

    const v13, 0xfdea

    const-string v14, "sms_wap_push_format_sms"

    const-string v15, "LGU"

    const/high16 v3, 0x40000

    const-string v10, "1"

    if-eq v5, v13, :cond_1a0

    const v4, 0xfded

    if-eq v5, v4, :cond_174

    if-eq v5, v12, :cond_174

    if-eq v5, v3, :cond_186

    packed-switch v5, :pswitch_data_4c6

    .line 343
    iget-object v4, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsConfig;->getMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_146

    goto :goto_174

    .line 346
    :cond_146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported teleservice 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 348
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "CISH_dispatchMessageRadioSpecific_Unsupported"

    invoke-virtual {v0, v10, v2, v1}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return v11

    .line 317
    :pswitch_16c
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mScpCallback:Landroid/os/RemoteCallback;

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->sendCdmaScpMessageToHandler(Lcom/android/internal/telephony/cdma/SmsMessage;Landroid/os/RemoteCallback;)V

    return v7

    :cond_174
    :goto_174
    :pswitch_174
    move/from16 v4, p2

    goto :goto_1bc

    .line 306
    :pswitch_177
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v4

    if-eqz v4, :cond_174

    .line 307
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    if-nez v0, :cond_182

    return v6

    .line 310
    :cond_182
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    return v7

    .line 293
    :cond_186
    :pswitch_186
    iget-object v4, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsConfig;->getMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_174

    move/from16 v4, p2

    .line 295
    invoke-direct {v1, v2, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;I)V

    return v7

    :cond_1a0
    move/from16 v4, p2

    .line 321
    iget-object v3, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b4

    const-string v3, "handle SmsEnvelope.TELESERVICE_WAP_CTC"

    .line 322
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_1bc

    .line 325
    :cond_1b4
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->preprocessCdmaFdeaWap()Z

    move-result v3

    if-nez v3, :cond_1bb

    return v7

    :cond_1bb
    move v5, v8

    .line 353
    :goto_1bc
    iget-object v3, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v3

    if-nez v3, :cond_1db

    .line 354
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v3

    sget-object v12, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v3, v12, :cond_1db

    .line 359
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "CISH_dispatchMessageRadioSpecific_OutOfMemory"

    invoke-virtual {v0, v10, v2, v1}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x3

    return v0

    :cond_1db
    if-ne v8, v5, :cond_209

    .line 368
    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    .line 369
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v6

    .line 368
    invoke-virtual {v3, v5, v6, v7}, Lcom/android/internal/telephony/WapPushOverSms;->setWpaPushAddressTimeStamp(Ljava/lang/String;J)V

    .line 374
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v0

    iget v3, v2, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    .line 375
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    .line 376
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v7

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v4, v5

    move-object v5, v6

    move-wide v6, v7

    move/from16 v8, p2

    .line 374
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;Ljava/lang/String;JI)I

    move-result v0

    return v0

    .line 380
    :cond_209
    iget-object v3, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f7

    if-ne v13, v5, :cond_2f7

    .line 384
    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 385
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v8

    .line 384
    invoke-virtual {v3, v4, v8, v9}, Lcom/android/internal/telephony/WapPushOverSms;->setWpaPushAddressTimeStamp(Ljava/lang/String;J)V

    .line 389
    new-instance v0, Lcom/android/internal/telephony/BitwiseInputStream;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/BitwiseInputStream;-><init>([B)V

    .line 390
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v3

    const-string v4, "CTC Push Message Decoding"

    .line 393
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    const/16 v4, 0x14

    .line 415
    :try_start_238
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/BitwiseInputStream;->skip(I)V

    const/16 v4, 0x8

    .line 416
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v5
    :try_end_241
    .catch Lcom/android/internal/telephony/BitwiseInputStream$AccessException; {:try_start_238 .. :try_end_241} :catch_2c9

    shl-int/2addr v5, v4

    .line 417
    :try_start_242
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v8

    or-int/2addr v5, v8

    .line 418
    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/BitwiseInputStream;->skip(I)V

    .line 419
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CTC Wap Push Reference Id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v8

    if-eq v8, v7, :cond_278

    .line 438
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ERR] CTC Wap Push ID is wrong! "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 441
    :cond_278
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v7

    .line 442
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CTCPush]length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    const/4 v8, 0x5

    .line 443
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/BitwiseInputStream;->skip(I)V

    .line 445
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v8

    .line 446
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CTC Wap Push num_fileds: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    sub-int/2addr v7, v6

    if-ge v8, v7, :cond_2b5

    const-string v6, "[ERR] CTC Wap Push num_fileds is set wrong!"

    .line 451
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    move v8, v7

    .line 455
    :cond_2b5
    new-array v3, v8, [B

    const/4 v6, 0x0

    :goto_2b8
    if-ge v6, v8, :cond_2c4

    .line 457
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v3, v6
    :try_end_2c1
    .catch Lcom/android/internal/telephony/BitwiseInputStream$AccessException; {:try_start_242 .. :try_end_2c1} :catch_2c6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2b8

    :cond_2c4
    move v4, v5

    goto :goto_2df

    :catch_2c6
    move-exception v0

    move v4, v5

    goto :goto_2cb

    :catch_2c9
    move-exception v0

    const/4 v4, 0x0

    .line 460
    :goto_2cb
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BearerData decode failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 464
    :goto_2df
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    .line 465
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v6

    move-object/from16 v1, p0

    move-object v2, v3

    move v3, v4

    move-object v4, v0

    move/from16 v8, p2

    .line 463
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;Ljava/lang/String;JI)I

    move-result v0

    return v0

    .line 467
    :cond_2f7
    iget-object v3, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34d

    const v3, 0xfdf1

    if-ne v3, v5, :cond_34d

    const-string v0, "CTC DM Message Decoding"

    .line 469
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseCtcFota()V

    .line 471
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->isCtcFota()Z

    move-result v0

    if-eqz v0, :cond_34c

    .line 472
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v19

    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v21

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v22

    const/16 v24, 0xb84

    const/16 v25, 0x1

    const/16 v26, 0x1

    .line 473
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    iget-object v2, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v31

    move-object/from16 v20, v0

    move/from16 v32, p2

    .line 472
    invoke-virtual/range {v19 .. v32}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker(Landroid/content/Context;[BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v0

    const/4 v2, 0x0

    .line 474
    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    move-result v0

    return v0

    :cond_34c
    return v7

    .line 481
    :cond_34d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->checkIfVVMReceiver()Z

    move-result v3

    .line 483
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    iget-object v6, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    const-string v8, "CscFeature_Common_SupportHuxAppDirectedSms"

    invoke-virtual {v4, v6, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_367

    const/16 v4, 0x1002

    if-eq v5, v4, :cond_369

    :cond_367
    if-eqz v3, :cond_3b0

    .line 485
    :cond_369
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v3

    if-eqz v3, :cond_373

    .line 487
    iget-object v3, v3, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v3, :cond_3b0

    .line 490
    :cond_373
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_382

    .line 492
    sget-object v4, Lcom/android/internal/telephony/AppDirectedSMS;->INSTANCE:Lcom/android/internal/telephony/AppDirectedSMS;

    iget-object v6, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6, v3}, Lcom/android/internal/telephony/AppDirectedSMS;->checkIfAppDirSMS(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;

    move-result-object v3

    goto :goto_383

    :cond_382
    const/4 v3, 0x0

    :goto_383
    if-eqz v3, :cond_3b0

    .line 494
    invoke-virtual {v3}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->getappdirsmsstatus()Z

    move-result v4

    if-ne v7, v4, :cond_3b0

    .line 495
    invoke-virtual {v3}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->checkifcomponentpresent()Z

    move-result v0

    if-ne v7, v0, :cond_3aa

    const-string v0, "[DirectedSMS] Dispatch App Directed SMS message"

    .line 496
    invoke-static {v9, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {v3}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->getcomponentnameDirectedSms()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->getappMsgBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->getAppPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v4, v3, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchAppDirectedSMS(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_3aa
    const-string v0, "[DirectedSMS] matched package not found or not a valid format"

    .line 500
    invoke-static {v9, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 506
    :cond_3b0
    iget-object v3, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsConfig;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_417

    const/16 v3, 0x1003

    const/16 v4, 0x1002

    if-eq v5, v4, :cond_405

    const/16 v4, 0x1005

    if-eq v5, v4, :cond_405

    if-eq v5, v3, :cond_405

    const/high16 v4, 0x40000

    if-eq v5, v4, :cond_407

    const/16 v4, 0x1001

    if-eq v5, v4, :cond_405

    const v4, 0xc00e

    if-eq v5, v4, :cond_405

    const v4, 0xc00f

    if-eq v5, v4, :cond_405

    const v4, 0xc010

    if-eq v5, v4, :cond_405

    const v4, 0xc263

    if-eq v5, v4, :cond_405

    const v4, 0xc265

    if-eq v5, v4, :cond_405

    const v4, 0xc267

    if-eq v5, v4, :cond_405

    const v4, 0xc00a

    if-eq v5, v4, :cond_405

    .line 519
    iget-object v2, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v0, v5, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchLGTTeleserviceMessage(Lcom/android/internal/telephony/SmsMessageBase;II)V

    return v7

    :cond_405
    const/high16 v4, 0x40000

    :cond_407
    if-eq v5, v4, :cond_40b

    if-ne v5, v3, :cond_417

    .line 522
    :cond_40b
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v3

    if-nez v3, :cond_417

    const-string v0, "Received voice SMS with count 0"

    .line 523
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return v7

    .line 532
    :cond_417
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v3

    .line 534
    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    .line 535
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v11

    .line 534
    invoke-virtual {v4, v5, v11, v12}, Lcom/android/internal/telephony/WapPushOverSms;->setWpaPushAddressTimeStamp(Ljava/lang/String;J)V

    .line 536
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    if-eqz v3, :cond_43a

    .line 538
    iget-object v5, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v5, :cond_43a

    const/16 v6, 0xb84

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne v6, v5, :cond_43a

    move v5, v7

    goto :goto_43b

    :cond_43a
    const/4 v5, 0x0

    :goto_43b
    if-nez v5, :cond_48a

    .line 540
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v5

    const/16 v6, 0x17

    const-string v8, "CISH_dispatchMessageRadioSpecific_MdmDiscard"

    if-eqz v5, :cond_458

    .line 541
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v10, v8, v1}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return v6

    .line 545
    :cond_458
    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v11

    .line 546
    invoke-virtual {v11}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled()Z

    move-result v4

    if-eqz v4, :cond_48a

    const/4 v12, 0x1

    .line 548
    :try_start_463
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v13

    .line 549
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getEncoding()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 548
    invoke-virtual/range {v11 .. v18}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_478
    .catch Ljava/lang/Exception; {:try_start_463 .. :try_end_478} :catch_479

    goto :goto_47e

    :catch_479
    const-string v0, "fail to store blocked sms on mdm database"

    .line 551
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 554
    :goto_47e
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v10, v8, v1}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return v6

    .line 561
    :cond_48a
    iget-object v4, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v4

    const-string v5, "VZW_US:CCT"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c1

    if-eqz v3, :cond_4c1

    .line 562
    iget-object v3, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v3, :cond_4c1

    const/16 v4, 0x2454

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne v4, v3, :cond_4c1

    .line 563
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "20868"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c1

    const-string v0, "Comcast SIM Unlock message"

    .line 564
    invoke-static {v9, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->parseOTAUnlockMessage(Ljava/lang/String;)V

    return v7

    .line 570
    :cond_4c1
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;I)I

    move-result v0

    return v0

    :pswitch_data_4c6
    .packed-switch 0x1001
        :pswitch_177
        :pswitch_177
        :pswitch_186
        :pswitch_174
        :pswitch_177
        :pswitch_16c
    .end packed-switch
.end method

.method protected blacklist getEncoding()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method protected blacklist getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "3gpp2"

    return-object p0
.end method

.method protected blacklist handleBlockedSms([BI)V
    .registers 4

    .line 915
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getEncoding()I

    move-result v0

    if-ne p2, v0, :cond_9

    .line 916
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchBlockedSms([BI)V

    :cond_9
    return-void
.end method

.method protected blacklist is3gpp2()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected blacklist isDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .registers 3

    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mDuplicateFilter:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->isDuplicated(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "CdmaInboundSmsHandler"

    const-string p1, "Duplicate found. Samsung"

    .line 936
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 940
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mDuplicateFilter:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->addMessage(Lcom/android/internal/telephony/SmsMessageBase;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist onQuitting()V
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSms(Landroid/os/Handler;)V

    const-string v0, "unregistered for 3GPP2 SMS"

    .line 193
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 194
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    return-void
.end method

.method protected blacklist onUpdatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .registers 2

    .line 895
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method protected blacklist removeDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .registers 2

    .line 881
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mDuplicateFilter:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->removeMessage(Lcom/android/internal/telephony/SmsMessageBase;)Z

    const/4 p0, 0x1

    return p0
.end method
