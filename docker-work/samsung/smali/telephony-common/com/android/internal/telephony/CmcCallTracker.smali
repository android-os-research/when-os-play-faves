.class public Lcom/android/internal/telephony/CmcCallTracker;
.super Landroid/os/Handler;
.source "CmcCallTracker.java"


# instance fields
.field private blacklist mCmcActivationChangeObserver:Landroid/database/ContentObserver;

.field private blacklist mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/ims/ImsCall;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mContext:Landroid/content/Context;

.field private blacklist mImsCmcCallListener:Lcom/android/ims/ImsCall$Listener;

.field blacklist mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private blacklist mImsPullListener:Lcom/android/ims/ImsCall$Listener;

.field blacklist mNeedConfirm:Z

.field blacklist mPendingSdPull:Z

.field blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPublishDialog:Lcom/android/internal/telephony/PublishDialog;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcheckMdecEnabled(Lcom/android/internal/telephony/CmcCallTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->checkMdecEnabled()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/CmcCallTracker;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misImsPhoneInCall(Lcom/android/internal/telephony/CmcCallTracker;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->isImsPhoneInCall()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .registers 7

    .line 99
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mNeedConfirm:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPendingSdPull:Z

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPublishDialog:Lcom/android/internal/telephony/PublishDialog;

    .line 1282
    new-instance v1, Lcom/android/internal/telephony/CmcCallTracker$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/CmcCallTracker$2;-><init>(Lcom/android/internal/telephony/CmcCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsCmcCallListener:Lcom/android/ims/ImsCall$Listener;

    .line 1404
    new-instance v1, Lcom/android/internal/telephony/CmcCallTracker$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/CmcCallTracker$3;-><init>(Lcom/android/internal/telephony/CmcCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPullListener:Lcom/android/ims/ImsCall$Listener;

    .line 100
    iput-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 102
    iput-object p3, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/16 p1, 0x65

    .line 103
    invoke-virtual {p2, p0, p1, p2}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 104
    iget-object p2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 p3, 0x64

    invoke-virtual {p2, p0, p3, v0}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 105
    iget-object p2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0x66

    invoke-interface {p2, p0, v1, v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 107
    iget-object p2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz p2, :cond_45

    .line 108
    invoke-virtual {p2, p0, p1, p2}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 109
    iget-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0, p3, v0}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 112
    :cond_45
    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->checkMdecEnabled()V

    .line 114
    iget-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "cmc_activation"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x1

    new-instance v0, Lcom/android/internal/telephony/CmcCallTracker$1;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mContext:Landroid/content/Context;

    .line 115
    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/CmcCallTracker$1;-><init>(Lcom/android/internal/telephony/CmcCallTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcActivationChangeObserver:Landroid/database/ContentObserver;

    .line 114
    invoke-virtual {p1, p2, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private blacklist checkConnectionEvent(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .registers 5

    .line 933
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.samsung.telephony.extra.CMC_CALL_MANAGE"

    .line 937
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 938
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 939
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "sdPull"

    .line 940
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 941
    new-instance v0, Landroid/util/Pair;

    const-string v2, "com.samsung.telecom.event.CALL_SECONDARY_DEVICE_PULL"

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :cond_29
    const-string v2, "sdPullComplete"

    .line 942
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, "com.samsung.telephony.extra.CMC_DEVICE_ID"

    .line 943
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 944
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    :cond_40
    new-instance v0, Landroid/util/Pair;

    const-string v2, "com.samsung.telephony.event.EVENT_CALL_CMC_SECONDARY_DEVICE_PULL_COMPLETED"

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    :goto_4a
    const-string v0, "com.samsung.telephony.extra.CMC_CALL_REQUEST_TYPE"

    .line 950
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 951
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 952
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_60

    .line 954
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    :cond_60
    new-instance p1, Landroid/util/Pair;

    const-string v0, "com.samsung.telephony.event.EVENT_CALL_CMC_SECONDARY_DEVICE_REQUEST_TYPE"

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6a
    return-object p0
.end method

.method private blacklist checkMdecEnabled()V
    .registers 3

    .line 1271
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->isMultiDeviceCallContinuityEnabledByUser()Z

    move-result p0
    :try_end_6
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_1f

    :catch_7
    move-exception p0

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMultiDeviceCallContinuityEnabledByUser failure. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CmcCallTracker"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1276
    :goto_1f
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->setUseMdecEnabled(Z)V

    return-void
.end method

.method private blacklist getClirGSmCdmaConnection(Lcom/android/internal/telephony/Call$State;)I
    .registers 5

    .line 970
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v0, 0x1

    if-nez p0, :cond_e

    return v0

    :cond_e
    const/4 v1, 0x0

    .line 976
    :goto_f
    array-length v2, p0

    if-ge v1, v2, :cond_26

    .line 977
    aget-object v2, p0, v1

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-ne v2, p1, :cond_23

    .line 978
    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getNumberPresentation()I

    move-result p0

    return p0

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_26
    return v0
.end method

.method private blacklist getClirImsPhoneConnection(Lcom/android/internal/telephony/Call$State;)I
    .registers 6

    .line 985
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_10

    return v1

    :cond_10
    const/4 v2, 0x0

    .line 992
    :goto_11
    :try_start_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4c

    .line 993
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    if-ne v3, p1, :cond_34

    .line 994
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getNumberPresentation()I

    move-result p0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_33} :catch_37

    return p0

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :catch_37
    move-exception p1

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClirImsPhoneConnection - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :cond_4c
    return v1
.end method

.method private blacklist getClirfromConnection(Lcom/android/internal/telephony/Call$State;)I
    .registers 3

    .line 962
    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->isImsPhoneInCall()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 963
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->getClirImsPhoneConnection(Lcom/android/internal/telephony/Call$State;)I

    move-result p0

    return p0

    .line 965
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->getClirGSmCdmaConnection(Lcom/android/internal/telephony/Call$State;)I

    move-result p0

    return p0
.end method

.method private blacklist getCmcCallInfoGsmCdmaConnection(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    .line 1095
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz p1, :cond_6c

    if-eqz p0, :cond_6c

    const/4 v0, 0x0

    .line 1097
    :goto_f
    array-length v1, p0

    if-ge v0, v1, :cond_6c

    .line 1098
    aget-object v1, p0, v0

    if-eqz v1, :cond_69

    invoke-virtual {v1}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_69

    aget-object v1, p0, v0

    .line 1099
    invoke-virtual {v1}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.samsung.telephony.extra.CMC_SESSION_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_69

    .line 1100
    aget-object p1, p0, v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 1102
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    const-string v2, "com.samsung.telephony.extra.CMC_CALL_STATE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    .line 1103
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_68

    .line 1104
    sget-object p0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    const-string v0, "com.samsung.telephony.extra.CMC_CALL_MANAGE"

    if-eq v1, p0, :cond_63

    sget-object p0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, p0, :cond_55

    goto :goto_63

    .line 1106
    :cond_55
    sget-object p0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, p0, :cond_5d

    sget-object p0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, p0, :cond_68

    :cond_5d
    const-string p0, "sdTerminate"

    .line 1107
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    :cond_63
    :goto_63
    const-string p0, "answer"

    .line 1105
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    :goto_68
    return-object p1

    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_6c
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getCmcCallInfoGsmCdmaConnection(Lcom/android/internal/telephony/Call$State;)Landroid/os/Bundle;
    .registers 7

    .line 1050
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v0, 0x0

    if-nez p0, :cond_e

    return-object v0

    :cond_e
    const/4 v1, 0x0

    .line 1055
    :goto_f
    array-length v2, p0

    if-ge v1, v2, :cond_34

    .line 1056
    aget-object v2, p0, v1

    if-eqz v2, :cond_31

    .line 1057
    invoke-virtual {v2}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_31

    const-string v3, "com.samsung.telephony.extra.CMC_CALL_STATE"

    .line 1058
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1059
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    aget-object v3, v4, v3

    if-ne p1, v3, :cond_31

    return-object v2

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_34
    return-object v0
.end method

.method private blacklist getCmcCallInfoImsPhoneConnection(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9

    const-string v0, "com.samsung.telephony.extra.CMC_SESSION_ID"

    .line 1118
    iget-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getConnections()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_89

    if-nez v1, :cond_15

    goto/16 :goto_89

    :cond_15
    const/4 v3, 0x0

    .line 1124
    :goto_16
    :try_start_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_89

    .line 1125
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_71

    .line 1126
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_71

    .line 1127
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_71

    .line 1128
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    const-string v0, "com.samsung.telephony.extra.CMC_CALL_STATE"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    aget-object p1, p1, v0

    .line 1129
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_70

    .line 1130
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_54} :catch_74

    const-string v1, "com.samsung.telephony.extra.CMC_CALL_MANAGE"

    if-eq p1, v0, :cond_6b

    :try_start_58
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_5d

    goto :goto_6b

    .line 1132
    :cond_5d
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v0, :cond_65

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_70

    :cond_65
    const-string p1, "sdTerminate"

    .line 1133
    invoke-virtual {v4, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70

    :cond_6b
    :goto_6b
    const-string p1, "answer"

    .line 1131
    invoke-virtual {v4, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_70} :catch_74

    :cond_70
    :goto_70
    return-object v4

    :cond_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :catch_74
    move-exception p1

    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCmcCallInfoImsPhoneConnection - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :cond_89
    :goto_89
    return-object v2
.end method

.method private blacklist getCmcCallInfoImsPhoneConnection(Lcom/android/internal/telephony/Call$State;)Landroid/os/Bundle;
    .registers 9

    const-string v0, "com.samsung.telephony.extra.CMC_CALL_STATE"

    .line 1070
    iget-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getConnections()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    return-object v2

    :cond_12
    const/4 v3, 0x0

    .line 1076
    :goto_13
    :try_start_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_41

    .line 1077
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 1078
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 1079
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 1080
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6
    :try_end_3b
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_3b} :catch_42
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_3b} :catch_42

    if-ne p1, v5, :cond_3e

    return-object v4

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_41
    return-object v2

    :catch_42
    move-exception p1

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCmcCallInfo - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    return-object v2
.end method

.method private blacklist getCmcSessionIdGsmCdmaConnection(Lcom/android/internal/telephony/Call$State;)I
    .registers 8

    .line 1004
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v0, -0x1

    if-nez p0, :cond_e

    return v0

    :cond_e
    const/4 v1, 0x0

    .line 1009
    :goto_f
    array-length v2, p0

    if-ge v1, v2, :cond_3a

    .line 1010
    aget-object v2, p0, v1

    if-eqz v2, :cond_37

    .line 1011
    invoke-virtual {v2}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_37

    const-string v3, "com.samsung.telephony.extra.CMC_SESSION_ID"

    .line 1013
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1014
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    const-string v5, "com.samsung.telephony.extra.CMC_CALL_STATE"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v5

    if-ne p1, v4, :cond_37

    .line 1016
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_3a
    return v0
.end method

.method private blacklist getCmcSessionIdImsPhoneConnection(Lcom/android/internal/telephony/Call$State;)I
    .registers 9

    const-string v0, "com.samsung.telephony.extra.CMC_SESSION_ID"

    .line 1025
    iget-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getConnections()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_12

    return v2

    :cond_12
    const/4 v3, 0x0

    .line 1031
    :goto_13
    :try_start_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5c

    .line 1032
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 1033
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 1035
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 1036
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    const-string v6, "com.samsung.telephony.extra.CMC_CALL_STATE"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6

    if-ne p1, v5, :cond_44

    .line 1038
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_43} :catch_47

    return p0

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :catch_47
    move-exception p1

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCmcSessionIdImsPhoneConnection - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :cond_5c
    return v2
.end method

.method private blacklist getCurrentCallInfoGsmCdmaConnection(Lcom/android/internal/telephony/PublishDialog;)Lcom/android/internal/telephony/PublishDialog;
    .registers 10

    .line 1147
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_f4

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_4e

    move v1, v4

    move v5, v1

    .line 1151
    :goto_14
    invoke-virtual {p1}, Lcom/android/internal/telephony/PublishDialog;->getCallCount()I

    move-result v6

    if-ge v1, v6, :cond_37

    .line 1152
    aget-object v6, v0, v1

    if-eqz v6, :cond_22

    iget v6, v6, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    if-ne v6, v2, :cond_34

    :cond_22
    const-string v5, "getCurrentCallInfoGsmCdmaConnection - setCallStatus to DISCONNECTED"

    .line 1153
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 1154
    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {p1, v1, v5}, Lcom/android/internal/telephony/PublishDialog;->setCallStatus(II)V

    .line 1155
    invoke-virtual {p1, v1, v4}, Lcom/android/internal/telephony/PublishDialog;->setCallMpty(IZ)V

    move v5, v3

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_37
    if-eqz v5, :cond_4d

    .line 1160
    invoke-virtual {p1}, Lcom/android/internal/telephony/PublishDialog;->getCallCount()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_4d

    move p0, v4

    .line 1161
    :goto_41
    invoke-virtual {p1}, Lcom/android/internal/telephony/PublishDialog;->getCallCount()I

    move-result v0

    if-ge p0, v0, :cond_4d

    .line 1162
    invoke-virtual {p1, p0, v4}, Lcom/android/internal/telephony/PublishDialog;->setCallMpty(IZ)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_41

    :cond_4d
    return-object p1

    .line 1167
    :cond_4e
    new-instance p0, Lcom/android/internal/telephony/PublishDialog;

    invoke-direct {p0}, Lcom/android/internal/telephony/PublishDialog;-><init>()V

    move p1, v4

    move v5, p1

    .line 1170
    :goto_55
    array-length v6, v0

    if-ge p1, v6, :cond_ee

    .line 1171
    aget-object v6, v0, p1

    if-eqz v6, :cond_ea

    iget v6, v6, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    if-le v6, v2, :cond_ea

    .line 1172
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PublishDialog;->addCallId(I)V

    .line 1173
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PublishDialog;->addCallDomain(I)V

    .line 1174
    aget-object v6, v0, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PublishDialog;->addCallStatus(I)V

    .line 1175
    aget-object v6, v0, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->isEmergencyCall()Z

    move-result v6

    if-eqz v6, :cond_81

    const/16 v6, 0x38f

    .line 1177
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PublishDialog;->addCallType(I)V

    goto :goto_84

    .line 1180
    :cond_81
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/PublishDialog;->addCallType(I)V

    .line 1182
    :goto_84
    aget-object v6, v0, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PublishDialog;->addCallDirection(I)V

    .line 1183
    aget-object v6, v0, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    if-eqz v6, :cond_a1

    .line 1184
    aget-object v6, v0, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PublishDialog;->addCallRemoteUri(Ljava/lang/String;)V

    goto :goto_a4

    .line 1186
    :cond_a1
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/PublishDialog;->addCallRemoteUri(Ljava/lang/String;)V

    .line 1188
    :goto_a4
    aget-object v6, v0, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/ConnectionBase;->getCmcPullable()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PublishDialog;->addCallPullable(Z)V

    .line 1189
    aget-object v6, v0, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->getNumberPresentation()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PublishDialog;->addCallNumberPresentation(I)V

    .line 1190
    aget-object v6, v0, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PublishDialog;->addCallCnapNamePresentation(I)V

    .line 1191
    aget-object v6, v0, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d1

    .line 1192
    aget-object v6, v0, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PublishDialog;->addCallCnapName(Ljava/lang/String;)V

    goto :goto_d4

    .line 1194
    :cond_d1
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/PublishDialog;->addCallCnapName(Ljava/lang/String;)V

    .line 1196
    :goto_d4
    aget-object v6, v0, p1

    const/16 v7, 0x100

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/ConnectionBase;->hasInternalAttribute(I)Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PublishDialog;->addCallMpty(Z)V

    .line 1197
    aget-object v6, v0, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/PublishDialog;->addConnectedTime(J)V

    add-int/lit8 v5, v5, 0x1

    :cond_ea
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_55

    :cond_ee
    if-lez v5, :cond_f4

    .line 1203
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PublishDialog;->setCallCount(I)V

    return-object p0

    :cond_f4
    return-object v1
.end method

.method private blacklist getCurrentCallInfoImsPhoneConnection(Lcom/android/internal/telephony/PublishDialog;)Lcom/android/internal/telephony/PublishDialog;
    .registers 9

    .line 1214
    iget-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getConnections()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_13c

    .line 1216
    new-instance v1, Lcom/android/internal/telephony/PublishDialog;

    invoke-direct {v1}, Lcom/android/internal/telephony/PublishDialog;-><init>()V

    .line 1218
    :try_start_14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1b

    return-object v0

    :cond_1b
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 1224
    :goto_1e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_120

    .line 1225
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_11c

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v5

    if-eqz v5, :cond_11c

    .line 1226
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/PublishDialog;->addCallId(I)V

    const/4 v5, 0x2

    .line 1227
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/PublishDialog;->addCallDomain(I)V

    .line 1228
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/ims/ImsCall;->getState()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/PublishDialog;->addCallStatus(I)V

    .line 1230
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/ConnectionExt;->isEmergencyImsConnection()Z

    move-result v5

    if-eqz v5, :cond_76

    const/16 v5, 0x38f

    .line 1231
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/PublishDialog;->addCallType(I)V

    goto :goto_8b

    .line 1233
    :cond_76
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/PublishDialog;->addCallType(I)V

    .line 1235
    :goto_8b
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v5

    if-eqz v5, :cond_99

    const/4 v5, 0x1

    goto :goto_9a

    :cond_99
    move v5, v2

    :goto_9a
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/PublishDialog;->addCallDirection(I)V

    .line 1236
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5
    :try_end_a7
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_a7} :catch_127
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_a7} :catch_127
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_a7} :catch_127

    const-string v6, ""

    if-eqz v5, :cond_b9

    .line 1237
    :try_start_ab
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/PublishDialog;->addCallRemoteUri(Ljava/lang/String;)V

    goto :goto_bc

    .line 1239
    :cond_b9
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/PublishDialog;->addCallRemoteUri(Ljava/lang/String;)V

    .line 1241
    :goto_bc
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/ConnectionBase;->getCmcPullable()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/PublishDialog;->addCallPullable(Z)V

    .line 1242
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getNumberPresentation()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/PublishDialog;->addCallNumberPresentation(I)V

    .line 1243
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/PublishDialog;->addCallCnapNamePresentation(I)V

    .line 1244
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_fd

    .line 1245
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/PublishDialog;->addCallCnapName(Ljava/lang/String;)V

    goto :goto_100

    .line 1247
    :cond_fd
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/PublishDialog;->addCallCnapName(Ljava/lang/String;)V

    .line 1249
    :goto_100
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isMultiparty()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/PublishDialog;->addCallMpty(Z)V

    .line 1250
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/telephony/PublishDialog;->addConnectedTime(J)V

    add-int/lit8 v4, v4, 0x1

    :cond_11c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1e

    :cond_120
    if-lez v4, :cond_126

    .line 1255
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/PublishDialog;->setCallCount(I)V
    :try_end_125
    .catch Ljava/lang/NullPointerException; {:try_start_ab .. :try_end_125} :catch_127
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ab .. :try_end_125} :catch_127
    .catch Ljava/lang/NumberFormatException; {:try_start_ab .. :try_end_125} :catch_127

    return-object v1

    :cond_126
    return-object v0

    :catch_127
    move-exception p1

    .line 1261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentCallInfoImsPhoneConnection - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    :cond_13c
    return-object v0
.end method

.method private blacklist getPhoneAccountHandleForCurrentPhone(I)Landroid/telecom/PhoneAccountHandle;
    .registers 9

    const/4 v0, 0x0

    .line 725
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 726
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getAllPhoneAccountHandles()Ljava/util/List;

    move-result-object v2

    .line 727
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 728
    invoke-virtual {v1, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v4

    const/4 v5, 0x4

    .line 729
    invoke-virtual {v4, v5}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 730
    iget-object v5, p0, Lcom/android/internal/telephony/CmcCallTracker;->mContext:Landroid/content/Context;

    const-class v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v4}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v4

    .line 731
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    if-nez v5, :cond_44

    const-string p1, "getPhoneAccountHandleForCurrentPhone - tempPhoneId is null"

    .line 734
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    return-object v0

    :cond_44
    const/4 v6, 0x0

    .line 737
    aget v5, v5, v6
    :try_end_47
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_47} :catch_4a

    if-ne v4, v5, :cond_13

    return-object v3

    :catch_4a
    move-exception p1

    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhoneAccountHandleForCurrentPhone - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :cond_5f
    return-object v0
.end method

.method private varargs blacklist iLog(Ljava/lang/String;I[Ljava/lang/Object;)V
    .registers 10

    .line 1423
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyLogger()Lcom/android/internal/telephony/TelephonyLogger;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v1, 0x7

    const/4 v2, 0x6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .line 1425
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyLogger;->writeImsPhoneFlowLog(IILjava/lang/String;I[Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method private blacklist isImsPhoneInCall()Z
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    return v1

    .line 162
    :cond_12
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_23

    return v1

    .line 163
    :cond_23
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_34

    return v1

    :cond_34
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 4

    .line 1415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CmcCallTracker"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final blacklist loge(Ljava/lang/String;)V
    .registers 4

    .line 1419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CmcCallTracker"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist updateCmcCallInfoGsmCdmaConnection(Landroid/os/Bundle;)V
    .registers 14

    .line 773
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz p1, :cond_11

    const-string v1, "updateCmcCallInfoGsmCdmaConnection"

    .line 775
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    :cond_11
    const-string v1, "sdSrvcc"

    const/4 v2, 0x0

    const-string v3, "com.samsung.telephony.extra.CMC_CALL_MANAGE"

    if-nez p1, :cond_50

    if-eqz v0, :cond_50

    move v4, v2

    .line 779
    :goto_1b
    array-length v5, v0

    if-ge v4, v5, :cond_50

    .line 780
    aget-object v5, v0, v4

    if-eqz v5, :cond_4d

    .line 781
    invoke-virtual {v5}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_4d

    .line 782
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 783
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d

    const-string p1, "updateCmcCallInfoGsmCdmaConnection - Set request"

    .line 784
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    const-string p0, "com.samsung.telephony.extra.CMC_CALL_REQUEST_TYPE"

    const-string p1, "end"

    .line 785
    invoke-virtual {v5, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 787
    aget-object p0, v0, v4

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;)V

    return-void

    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_50
    const-string v4, "sdClearInfo"

    const/4 v5, 0x1

    const-string v6, "com.samsung.telephony.extra.CMC_SESSION_ID"

    if-eqz p1, :cond_d9

    .line 795
    iget-object v7, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    if-eqz v7, :cond_d9

    .line 796
    iget-object v7, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/Connection;

    if-eqz v8, :cond_6d

    .line 798
    invoke-virtual {v8}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_6d

    .line 801
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateCmcCallInfoGsmCdmaConnection - hoConn is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 802
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateCmcCallInfoGsmCdmaConnection - cmcCallInfo is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v9, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_6d

    .line 805
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d2

    .line 806
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d2

    .line 807
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    invoke-virtual {v8, p1, v5}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;Z)V

    goto :goto_d8

    .line 810
    :cond_d2
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-virtual {v8, p1}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;)V

    :goto_d8
    return-void

    :cond_d9
    if-eqz p1, :cond_174

    if-eqz v0, :cond_174

    move v1, v2

    .line 821
    :goto_de
    array-length v7, v0

    if-ge v1, v7, :cond_136

    .line 822
    aget-object v7, v0, v1

    if-eqz v7, :cond_133

    invoke-virtual {v7}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_133

    aget-object v7, v0, v1

    .line 823
    invoke-virtual {v7}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_133

    .line 824
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->checkConnectionEvent(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p0

    .line 826
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_121

    .line 827
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_121

    .line 828
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11b

    .line 829
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, v5, p0}, Lcom/android/internal/telephony/Connection;->setCmcExtras(Landroid/os/Bundle;ZLjava/util/ArrayList;)V

    goto :goto_132

    .line 831
    :cond_11b
    aget-object p0, v0, v1

    invoke-virtual {p0, p1, v5}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;Z)V

    goto :goto_132

    .line 834
    :cond_121
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12d

    .line 835
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    goto :goto_132

    .line 837
    :cond_12d
    aget-object p0, v0, v1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;)V

    :goto_132
    return-void

    :cond_133
    add-int/lit8 v1, v1, 0x1

    goto :goto_de

    .line 844
    :cond_136
    :goto_136
    array-length v1, v0

    if-ge v2, v1, :cond_174

    .line 845
    aget-object v1, v0, v2

    if-eqz v1, :cond_171

    .line 846
    invoke-virtual {v1}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 847
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->checkConnectionEvent(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v1, :cond_15f

    .line 850
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_171

    .line 851
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_159

    .line 852
    aget-object p0, v0, v2

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    goto :goto_15e

    .line 854
    :cond_159
    aget-object p0, v0, v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;)V

    :goto_15e
    return-void

    .line 859
    :cond_15f
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_16b

    .line 860
    aget-object p0, v0, v2

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    goto :goto_170

    .line 862
    :cond_16b
    aget-object p0, v0, v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;)V

    :goto_170
    return-void

    :cond_171
    add-int/lit8 v2, v2, 0x1

    goto :goto_136

    :cond_174
    return-void
.end method

.method private blacklist updateCmcCallInfoImsPhoneConnection(Landroid/os/Bundle;)V
    .registers 8

    const-string v0, "com.samsung.telephony.extra.CMC_CALL_MANAGE"

    .line 872
    iget-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getConnections()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz p1, :cond_f6

    if-nez v1, :cond_14

    goto/16 :goto_f6

    :cond_14
    const/4 v2, 0x0

    move v3, v2

    .line 878
    :goto_16
    :try_start_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1a} :catch_e1

    const-string v5, "com.samsung.telephony.extra.CMC_SESSION_ID"

    if-ge v3, v4, :cond_88

    .line 879
    :try_start_1e
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_85

    .line 880
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_85

    .line 881
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_85

    .line 882
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->checkConnectionEvent(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v2

    .line 884
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6b

    const-string v4, "sdClearInfo"

    .line 885
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 886
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_61

    .line 887
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, p1, v4, v2}, Lcom/android/internal/telephony/Connection;->setCmcExtras(Landroid/os/Bundle;ZLjava/util/ArrayList;)V

    goto :goto_84

    .line 889
    :cond_61
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, p1, v4}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;Z)V

    goto :goto_84

    .line 892
    :cond_6b
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 893
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, p1, v2}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    goto :goto_84

    .line 895
    :cond_7b
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;)V

    :goto_84
    return-void

    :cond_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 903
    :cond_88
    :goto_88
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_f6

    .line 904
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_de

    .line 905
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 906
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->checkConnectionEvent(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v0, :cond_c4

    .line 909
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_de

    .line 910
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ba

    .line 911
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, p1, v3}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    goto :goto_c3

    .line 913
    :cond_ba
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;)V

    :goto_c3
    return-void

    .line 918
    :cond_c4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d4

    .line 919
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, p1, v3}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    goto :goto_dd

    .line 921
    :cond_d4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_dd} :catch_e1

    :goto_dd
    return-void

    :cond_de
    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    :catch_e1
    move-exception p1

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCmcCallInfoImsPhoneConnection - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :cond_f6
    :goto_f6
    return-void
.end method


# virtual methods
.method public blacklist confirmSdCallPullRequest(I)V
    .registers 6

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "confirmSdCallPullRequest - sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 288
    iput-boolean v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mNeedConfirm:Z

    .line 290
    iget-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    const-string p1, "confirmSdCallPullRequest - mCmcCall is empty"

    .line 291
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 295
    :cond_25
    iget-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/ims/ImsCall;

    if-eqz p1, :cond_71

    :try_start_33
    const-string v1, "confirmSdCallPullRequest - accept"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 298
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/CmcCallTracker;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/ims/ImsCall;->accept(I)V
    :try_end_5b
    .catch Lcom/android/ims/ImsException; {:try_start_33 .. :try_end_5b} :catch_5c
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_5b} :catch_5c

    goto :goto_71

    :catch_5c
    move-exception p1

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "confirmSdCallPullRequest - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :cond_71
    :goto_71
    return-void
.end method

.method public blacklist dispose()V
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_11

    .line 126
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 131
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_1d

    .line 132
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 135
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcActivationChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public blacklist forking(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)V
    .registers 15

    const-string v0, "com.samsung.telephony.extra.CMC_SESSION_ID"

    const-string v1, "forking - makeCall"

    const-string v2, "forking - createCallProfile"

    const-string v3, "android.telephony.ims.extra.OEM_EXTRAS"

    .line 200
    iget-object v4, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPublishDialog:Lcom/android/internal/telephony/PublishDialog;

    const/4 v5, 0x1

    if-eqz v4, :cond_21

    .line 201
    invoke-virtual {v4}, Lcom/android/internal/telephony/PublishDialog;->getCallCount()I

    move-result v4

    if-ne v4, v5, :cond_1a

    .line 202
    sget-object v4, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CmcCallTracker;->getClirfromConnection(Lcom/android/internal/telephony/Call$State;)I

    move-result v4

    goto :goto_22

    .line 204
    :cond_1a
    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CmcCallTracker;->getClirfromConnection(Lcom/android/internal/telephony/Call$State;)I

    move-result v4

    goto :goto_22

    :cond_21
    move v4, v5

    .line 210
    :goto_22
    iget v6, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    invoke-static {v6}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v6

    :try_start_28
    new-array v7, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    .line 215
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-direct {p0, v2, v5, v10}, Lcom/android/internal/telephony/CmcCallTracker;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 216
    iget-object v10, p0, Lcom/android/internal/telephony/CmcCallTracker;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Lcom/android/ims/ImsManager;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v6

    const-string v10, "oir"

    .line 217
    invoke-static {v4}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v4

    invoke-virtual {v6, v10, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v6, v4, v8

    .line 218
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-direct {p0, v2, v9, v4}, Lcom/android/internal/telephony/CmcCallTracker;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 220
    iget-object p2, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    if-nez p2, :cond_72

    .line 222
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_72
    const-string v2, "com.samsung.telephony.extra.CMC_TYPE"

    .line 226
    invoke-virtual {p2, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "com.samsung.telephony.extra.CMC_DIAL_FROM"

    .line 229
    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 233
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_9a

    .line 234
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9a

    const-string v2, "com.samsung.telephony.extra.CMC_BOUND_SESSION_ID"

    .line 235
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 241
    :cond_9a
    iget-object p1, v6, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    aget-object v0, v7, v8

    .line 243
    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p1, v8

    aput-object v6, p1, v5

    invoke-static {p2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, p1, v9

    invoke-direct {p0, v1, v5, p1}, Lcom/android/internal/telephony/CmcCallTracker;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 244
    iget-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsCmcCallListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p1, v6, v7, p2}, Lcom/android/ims/ImsManager;->makeCall(Landroid/telephony/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object p1

    new-array p2, v5, [Ljava/lang/Object;

    aput-object p1, p2, v8

    .line 245
    invoke-direct {p0, v1, v9, p2}, Lcom/android/internal/telephony/CmcCallTracker;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 249
    iget-object p2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object p2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)V
    :try_end_dd
    .catch Lcom/android/ims/ImsException; {:try_start_28 .. :try_end_dd} :catch_de

    goto :goto_f3

    :catch_de
    move-exception p1

    .line 252
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "forking - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :goto_f3
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage - what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    goto :goto_33

    .line 152
    :pswitch_1c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->handleSuppServiceNotification(Landroid/os/AsyncResult;)V

    goto :goto_33

    .line 148
    :pswitch_24
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->update(Landroid/os/AsyncResult;)V

    goto :goto_33

    .line 144
    :pswitch_2c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->onDisconnect(Landroid/os/AsyncResult;)V

    :goto_33
    return-void

    :pswitch_data_34
    .packed-switch 0x64
        :pswitch_2c
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method

.method public blacklist handleSuppServiceNotification(Landroid/os/AsyncResult;)V
    .registers 4

    .line 169
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 171
    iget v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_43

    .line 173
    iget p1, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    const/4 v0, 0x2

    const/4 v1, -0x1

    if-ne p1, v0, :cond_28

    .line 174
    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->isImsPhoneInCall()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 175
    sget-object p1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->getCmcSessionIdImsPhoneConnection(Lcom/android/internal/telephony/Call$State;)I

    move-result p1

    goto :goto_22

    .line 177
    :cond_1c
    sget-object p1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->getCmcSessionIdGsmCdmaConnection(Lcom/android/internal/telephony/Call$State;)I

    move-result p1

    :goto_22
    if-eq p1, v1, :cond_43

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->hold(I)V

    goto :goto_43

    :cond_28
    const/4 v0, 0x3

    if-ne p1, v0, :cond_43

    .line 184
    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->isImsPhoneInCall()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 185
    sget-object p1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->getCmcSessionIdImsPhoneConnection(Lcom/android/internal/telephony/Call$State;)I

    move-result p1

    goto :goto_3e

    .line 187
    :cond_38
    sget-object p1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->getCmcSessionIdGsmCdmaConnection(Lcom/android/internal/telephony/Call$State;)I

    move-result p1

    :goto_3e
    if-eq p1, v1, :cond_43

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->resume(I)V

    :cond_43
    :goto_43
    return-void
.end method

.method public blacklist hold(I)V
    .registers 4

    .line 749
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/ims/ImsCall;

    if-eqz p1, :cond_27

    .line 753
    :try_start_e
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->hold()V
    :try_end_11
    .catch Lcom/android/ims/ImsException; {:try_start_e .. :try_end_11} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_27

    :catch_12
    move-exception p1

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hold - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public blacklist onDisconnect(Landroid/os/AsyncResult;)V
    .registers 10

    .line 453
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/Connection;

    if-nez p1, :cond_c

    const-string p1, "onDisconnect - conn is null"

    .line 455
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 459
    :cond_c
    instance-of v0, p1, Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v0, :cond_17

    .line 460
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPublishDialog:Lcom/android/internal/telephony/PublishDialog;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/CmcCallTracker;->sendPublishDialog(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/PublishDialog;)V

    .line 463
    :cond_17
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string p1, "onDisconnect - mCmcCall is empty"

    .line 464
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 468
    :cond_25
    invoke-virtual {p1}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_31

    const-string p1, "onDisconnect - extras is null"

    .line 471
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    return-void

    :cond_31
    const/4 v1, -0x1

    .line 474
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnect - extras: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    const-string v2, "com.samsung.telephony.extra.CMC_SESSION_ID"

    .line 477
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5f

    .line 478
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 481
    :cond_5f
    iget-object v2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/ImsCall;

    .line 483
    iget-object v3, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPublishDialog:Lcom/android/internal/telephony/PublishDialog;

    if-eqz v3, :cond_71

    invoke-virtual {v3}, Lcom/android/internal/telephony/PublishDialog;->getCallCount()I

    move-result v3

    if-nez v3, :cond_a7

    :cond_71
    if-nez v2, :cond_a7

    .line 485
    iget-object v3, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-eq v3, v4, :cond_a7

    .line 486
    iget-object v3, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_85
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 487
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 488
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ims/ImsCall;

    .line 489
    invoke-virtual {v5}, Lcom/android/ims/ImsCall;->getState()I

    move-result v6

    if-eq v6, v4, :cond_a6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_85

    :cond_a6
    move-object v2, v5

    :cond_a7
    if-eqz v2, :cond_be

    const/16 v3, 0xfa5

    .line 499
    invoke-virtual {v2, v3}, Lcom/android/ims/ImsCall;->terminate(I)V

    const-string v3, "com.samsung.telephony.extra.CMC_CALL_REQUEST_TYPE"

    .line 500
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p1, v0, v4}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;Z)V

    .line 502
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/CmcCallTracker;->removeCmcCallInfo(ILcom/android/ims/ImsCall;)V

    goto :goto_c3

    :cond_be
    const-string p1, "onDisconnect - imsCall is null"

    .line 504
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    :goto_c3
    return-void
.end method

.method public blacklist onIncomingCmcCall(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    .registers 12

    const-string v0, "onIncomingCmcCall - takeCall"

    const-string v1, "com.samsung.telephony.extra.CMC_DIAL_TO"

    const-string v2, "com.samsung.telephony.extra.CMC_SESSION_ID"

    const-string v3, "onIncomingCmcCall - "

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_b
    new-array v7, v5, [Ljava/lang/Object;

    .line 310
    invoke-direct {p0, v0, v6, v7}, Lcom/android/internal/telephony/CmcCallTracker;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 311
    iget-object v7, p0, Lcom/android/internal/telephony/CmcCallTracker;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsCmcCallListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {v7, p1, v8}, Lcom/android/ims/ImsManager;->takeCall(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object p1
    :try_end_22
    .catch Lcom/android/ims/ImsException; {:try_start_b .. :try_end_22} :catch_60
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_22} :catch_60

    const/4 v7, 0x2

    :try_start_23
    new-array v8, v6, [Ljava/lang/Object;

    aput-object p1, v8, v5

    .line 312
    invoke-direct {p0, v0, v7, v8}, Lcom/android/internal/telephony/CmcCallTracker;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->isCmcEmergencyCallSupported()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 318
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 319
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/internal/telephony/SemCallTrackerHelper;->isEmergencyNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/16 v0, 0xfa7

    .line 320
    invoke-virtual {p1, v0}, Lcom/android/ims/ImsCall;->reject(I)V

    return-void

    .line 324
    :cond_4a
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Lcom/android/ims/ImsException; {:try_start_23 .. :try_end_5d} :catch_5e
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_5d} :catch_5e

    goto :goto_74

    :catch_5e
    move-exception v0

    goto :goto_62

    :catch_60
    move-exception v0

    move-object p1, v4

    .line 328
    :goto_62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :cond_74
    :goto_74
    const-string v0, "com.samsung.telephony.extra.CMC_REPLACE_CALL_ID"

    .line 332
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_db

    if-eqz p1, :cond_9b

    .line 334
    :try_start_7e
    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->isImsPhoneInCall()Z

    move-result v0

    if-nez v0, :cond_9b

    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v0

    if-nez v0, :cond_9b

    const-string p2, "Reject because not exist regular call"

    .line 335
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    const/16 p2, 0x1f8

    .line 336
    invoke-virtual {p1, p2}, Lcom/android/ims/ImsCall;->reject(I)V

    return-void

    :catch_99
    move-exception p1

    goto :goto_c8

    :cond_9b
    if-eqz p1, :cond_ad

    .line 339
    iget-boolean v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mNeedConfirm:Z

    if-nez v0, :cond_ad

    .line 340
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/ims/ImsCall;->accept(I)V

    goto :goto_b4

    :cond_ad
    const-string v0, "com.samsung.telephony.extra.CMC_CALL_MANAGE"

    const-string v1, "sdPull"

    .line 342
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_b4
    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->isImsPhoneInCall()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;Lcom/android/internal/telephony/Phone;)V

    goto :goto_c5

    .line 347
    :cond_c0
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;Lcom/android/internal/telephony/Phone;)V

    .line 350
    :goto_c5
    iput-boolean v6, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPendingSdPull:Z
    :try_end_c7
    .catch Lcom/android/ims/ImsException; {:try_start_7e .. :try_end_c7} :catch_99
    .catch Ljava/lang/NullPointerException; {:try_start_7e .. :try_end_c7} :catch_99

    goto :goto_da

    .line 352
    :goto_c8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :goto_da
    return-void

    .line 358
    :cond_db
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_107

    .line 360
    iget-object v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->isFdnBlocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_107

    const/16 p2, 0xf1

    .line 362
    :try_start_ef
    invoke-virtual {p1, p2}, Lcom/android/ims/ImsCall;->reject(I)V
    :try_end_f2
    .catch Lcom/android/ims/ImsException; {:try_start_ef .. :try_end_f2} :catch_f3
    .catch Ljava/lang/NullPointerException; {:try_start_ef .. :try_end_f2} :catch_f3

    goto :goto_106

    :catch_f3
    move-exception p1

    .line 364
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :goto_106
    return-void

    .line 368
    :cond_107
    new-instance p1, Landroid/content/Intent;

    const-string v1, "tel"

    invoke-static {v1, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 369
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 371
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_128

    .line 372
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "com.samsung.telephony.extra.CMC_BOUND_SESSION_ID"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_128
    const-string v0, "com.samsung.telephony.extra.CMC_TYPE"

    .line 376
    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 379
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "com.samsung.telephony.extra.CMC_CALL_STATE"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.samsung.telephony.extra.CMC_EXTERNAL_CALL"

    .line 380
    invoke-virtual {p2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIncomingCmcCall - extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    const-string v0, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    .line 383
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "com.samsung.telephony.extra.CMC_PHONE_ID"

    .line 386
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_166

    .line 387
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 391
    :cond_166
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/CmcCallTracker;->getPhoneAccountHandleForCurrentPhone(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p2

    if-eqz p2, :cond_185

    :try_start_16c
    const-string v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    .line 394
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_171
    .catch Ljava/lang/NullPointerException; {:try_start_16c .. :try_end_171} :catch_172

    goto :goto_185

    :catch_172
    move-exception p2

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    .line 401
    :cond_185
    :goto_185
    :try_start_185
    iget-object p2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_18a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_185 .. :try_end_18a} :catch_18b

    goto :goto_19e

    :catch_18b
    move-exception p1

    .line 403
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :goto_19e
    return-void
.end method

.method public blacklist pull(I)V
    .registers 8

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/ims/ImsCall;

    if-eqz p1, :cond_3d

    .line 260
    :try_start_e
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPullListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p1, v0}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V

    const-string v0, "pull - terminate"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xfa3

    .line 261
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/CmcCallTracker;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 262
    invoke-virtual {p1, v4}, Lcom/android/ims/ImsCall;->terminate(I)V
    :try_end_27
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_27} :catch_28

    goto :goto_3d

    :catch_28
    move-exception p1

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t accept call because of no terminate call. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public blacklist removeCmcCallInfo(ILcom/android/ims/ImsCall;)V
    .registers 3

    .line 720
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist requireConfirmationBeforeSdCallPull(Z)V
    .registers 4

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requireConfirmationBeforeSdCallPull - needConfirm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 282
    iput-boolean p1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mNeedConfirm:Z

    return-void
.end method

.method public blacklist resume(I)V
    .registers 4

    .line 761
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/ims/ImsCall;

    if-eqz p1, :cond_27

    .line 765
    :try_start_e
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->resume()V
    :try_end_11
    .catch Lcom/android/ims/ImsException; {:try_start_e .. :try_end_11} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_27

    :catch_12
    move-exception p1

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resume - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public blacklist sendPublishDialog(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/PublishDialog;)V
    .registers 4

    const/4 v0, 0x0

    .line 654
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/CmcCallTracker;->sendPublishDialog(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/PublishDialog;I)V

    return-void
.end method

.method public blacklist sendPublishDialog(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/PublishDialog;I)V
    .registers 5

    const/4 v0, 0x1

    if-ne p3, v0, :cond_9

    const-string p1, "sendPublishDialog STATE_ED_ACCEPT"

    .line 659
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 664
    :cond_9
    instance-of p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz p1, :cond_14

    .line 665
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CmcCallTracker;->getCurrentCallInfoImsPhoneConnection(Lcom/android/internal/telephony/PublishDialog;)Lcom/android/internal/telephony/PublishDialog;

    move-result-object p1

    .line 666
    iput-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPublishDialog:Lcom/android/internal/telephony/PublishDialog;

    goto :goto_1f

    .line 668
    :cond_14
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CmcCallTracker;->getCurrentCallInfoGsmCdmaConnection(Lcom/android/internal/telephony/PublishDialog;)Lcom/android/internal/telephony/PublishDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 669
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CmcCallTracker;->getCurrentCallInfoGsmCdmaConnection(Lcom/android/internal/telephony/PublishDialog;)Lcom/android/internal/telephony/PublishDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPublishDialog:Lcom/android/internal/telephony/PublishDialog;

    :goto_1f
    if-eqz p1, :cond_45

    :try_start_21
    const-string p2, "sendPublishDialog"

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    .line 675
    invoke-direct {p0, p2, v0, p3}, Lcom/android/internal/telephony/CmcCallTracker;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 676
    iget-object p2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->sendPublishDialog(Lcom/android/internal/telephony/PublishDialog;)V
    :try_end_2e
    .catch Lcom/android/ims/ImsException; {:try_start_21 .. :try_end_2e} :catch_2f

    goto :goto_4a

    :catch_2f
    move-exception p1

    .line 678
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendPublishDialog - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_4a

    :cond_45
    const-string p1, "sendPublishDialog - publishDialog is null"

    .line 681
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    :goto_4a
    return-void
.end method

.method public blacklist setCmcPullable()V
    .registers 3

    const-string v0, "setCmcPullable"

    .line 270
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->isImsPhoneInCall()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/CmcCallTracker;->sendPublishDialog(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/PublishDialog;)V

    goto :goto_17

    .line 275
    :cond_12
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/CmcCallTracker;->sendPublishDialog(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/PublishDialog;)V

    :goto_17
    return-void
.end method

.method public blacklist setSdRequestType(Landroid/os/Bundle;Landroid/os/Bundle;I)V
    .registers 14

    if-eqz p2, :cond_c9

    .line 593
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    const-string v1, "com.samsung.telephony.extra.CMC_CALL_STATE"

    if-eqz p1, :cond_13

    .line 595
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    aget-object p1, v2, p1

    goto :goto_14

    :cond_13
    move-object p1, v0

    .line 597
    :goto_14
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v1, v2, v1

    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSdRequestType - prevCallStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", currentCallStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 603
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const-string v3, "com.samsung.telephony.extra.CMC_CALL_MANAGE"

    const/4 v4, 0x4

    const/4 v5, 0x1

    const-string v6, "com.samsung.telephony.extra.CMC_CALL_REQUEST_TYPE"

    const/4 v7, 0x0

    if-ne v1, v2, :cond_74

    .line 604
    sget-object p0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    const/4 v1, 0x6

    if-ne p1, p0, :cond_53

    const/4 p0, 0x3

    if-ne p3, p0, :cond_53

    const-string p0, "resume"

    .line 605
    invoke-virtual {p2, v6, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    :cond_53
    if-eq p3, v1, :cond_64

    .line 606
    sget-object p0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq p1, p0, :cond_5f

    if-eq p1, v0, :cond_5f

    sget-object p0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, p0, :cond_64

    :cond_5f
    const-string p0, "answer"

    .line 608
    invoke-virtual {p2, v6, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    :goto_64
    if-ne p3, v4, :cond_68

    move v5, v7

    goto :goto_69

    :cond_68
    move v7, v5

    :goto_69
    if-ne p3, v1, :cond_70

    const-string p0, "sdPullComplete"

    .line 617
    invoke-virtual {p2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    move v9, v7

    move v7, v5

    move v5, v9

    goto :goto_bf

    .line 620
    :cond_74
    sget-object v8, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v8, :cond_83

    if-ne p1, v2, :cond_bf

    const/4 p0, 0x2

    if-ne p3, p0, :cond_bf

    const-string p0, "hold"

    .line 622
    invoke-virtual {p2, v6, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bf

    .line 624
    :cond_83
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_b5

    if-eq p3, v5, :cond_98

    const/4 p0, 0x7

    if-ne p3, p0, :cond_8d

    goto :goto_98

    :cond_8d
    const/4 p0, 0x5

    if-eq p3, p0, :cond_92

    if-ne p3, v4, :cond_be

    :cond_92
    const-string p0, "sdClearInfo"

    .line 637
    invoke-virtual {p2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_be

    .line 627
    :cond_98
    :goto_98
    sget-object p0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq p1, p0, :cond_a5

    sget-object p0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq p1, p0, :cond_a5

    if-ne p1, v0, :cond_a3

    goto :goto_a5

    :cond_a3
    move p0, v5

    goto :goto_a6

    :cond_a5
    :goto_a5
    move p0, v7

    :goto_a6
    if-ne p3, v5, :cond_ae

    const-string p1, "end"

    .line 631
    invoke-virtual {p2, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b3

    :cond_ae
    const-string p1, "reject"

    .line 633
    invoke-virtual {p2, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b3
    move v5, p0

    goto :goto_bf

    .line 642
    :cond_b5
    sget-object p1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, p1, :cond_bf

    const-string p1, "setSdRequestType: TODO"

    .line 643
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    :cond_be
    :goto_be
    move v5, v7

    :cond_bf
    :goto_bf
    const-string p0, "com.samsung.telephony.extra.CMC_EXTERNAL_CALL"

    .line 648
    invoke-virtual {p2, p0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.samsung.telephony.extra.CMC_PULLABLE"

    .line 649
    invoke-virtual {p2, p0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_c9
    return-void
.end method

.method public blacklist update(Landroid/os/AsyncResult;)V
    .registers 16

    const-string v0, "answer"

    const-string v1, "com.samsung.telephony.extra.CMC_CALL_MANAGE"

    .line 509
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/Phone;

    .line 512
    iget-object v2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "com.samsung.telephony.extra.CMC_CALL_REQUEST_TYPE"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v5, :cond_f5

    .line 513
    iget-object v2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v7, v3

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_120

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 514
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 515
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/ims/ImsCall;

    .line 517
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update - sessionId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 518
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 519
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v12, "com.samsung.telephony.extra.CMC_SESSION_ID"

    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 522
    instance-of v11, p1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v11, :cond_63

    .line 523
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/CmcCallTracker;->getCmcCallInfoImsPhoneConnection(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    goto :goto_67

    .line 525
    :cond_63
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/CmcCallTracker;->getCmcCallInfoGsmCdmaConnection(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    :goto_67
    if-eqz v10, :cond_ee

    .line 531
    :try_start_69
    invoke-virtual {v10, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_71
    .catch Lcom/android/ims/ImsException; {:try_start_69 .. :try_end_71} :catch_d7
    .catch Ljava/lang/NullPointerException; {:try_start_69 .. :try_end_71} :catch_d7

    const-string v12, "com.samsung.telephony.extra.CMC_CALL_TYPE"

    const-string v13, "com.samsung.telephony.extra.CMC_CALL_STATE"

    if-eqz v11, :cond_86

    :try_start_77
    const-string v11, "accept forking call from SD"

    .line 532
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/ims/ImsCall;->accept(I)V

    .line 534
    invoke-virtual {v10, v13, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 537
    :cond_86
    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a4

    const-string v9, "accept from ED"

    .line 538
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/ims/ImsCall;->accept(I)V

    .line 540
    invoke-virtual {v10, v13, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 541
    invoke-virtual {v10, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move v7, v5

    goto :goto_cf

    :cond_a4
    const-string v11, "sdTerminate"

    .line 543
    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_cf

    const-string v11, "terminate SD when PD answered"

    .line 544
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v8, v6}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V

    const/16 v11, 0x1f5

    .line 546
    invoke-virtual {v8, v11}, Lcom/android/ims/ImsCall;->terminate(I)V

    const/16 v11, 0x8

    .line 547
    invoke-virtual {v10, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 548
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9, v8}, Lcom/android/internal/telephony/CmcCallTracker;->removeCmcCallInfo(ILcom/android/ims/ImsCall;)V

    const-string v8, "sdClearInfo"

    .line 550
    invoke-virtual {v10, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v6

    .line 552
    :cond_cf
    :goto_cf
    invoke-virtual {v10, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0, v8, v10, p1}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;Lcom/android/internal/telephony/Phone;)V
    :try_end_d5
    .catch Lcom/android/ims/ImsException; {:try_start_77 .. :try_end_d5} :catch_d7
    .catch Ljava/lang/NullPointerException; {:try_start_77 .. :try_end_d5} :catch_d7

    goto/16 :goto_20

    :catch_d7
    move-exception v8

    .line 555
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/CmcCallTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_ee
    const-string v8, "update - prevCmcCallInfo is null"

    .line 558
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_20

    .line 564
    :cond_f5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 565
    instance-of v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_105

    .line 566
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CmcCallTracker;->getCmcCallInfoImsPhoneConnection(Lcom/android/internal/telephony/Call$State;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_10b

    .line 568
    :cond_105
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CmcCallTracker;->getCmcCallInfoGsmCdmaConnection(Lcom/android/internal/telephony/Call$State;)Landroid/os/Bundle;

    move-result-object v1

    :goto_10b
    if-eqz v1, :cond_116

    const-string v0, "end"

    .line 572
    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0, v6, v1, p1}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;Lcom/android/internal/telephony/Phone;)V

    goto :goto_11f

    :cond_116
    if-eqz v0, :cond_11c

    .line 576
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfoImsPhoneConnection(Landroid/os/Bundle;)V

    goto :goto_11f

    .line 578
    :cond_11c
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfoGsmCdmaConnection(Landroid/os/Bundle;)V

    :goto_11f
    move v7, v3

    .line 583
    :cond_120
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v0

    if-nez v0, :cond_14c

    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->isImsPhoneInCall()Z

    move-result v0

    if-nez v0, :cond_14c

    iget-boolean v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mNeedConfirm:Z

    if-ne v0, v5, :cond_14c

    .line 584
    iput-boolean v3, p0, Lcom/android/internal/telephony/CmcCallTracker;->mNeedConfirm:Z

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update - mNeedConfirm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/CmcCallTracker;->mNeedConfirm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 588
    :cond_14c
    invoke-virtual {p0, p1, v6, v7}, Lcom/android/internal/telephony/CmcCallTracker;->sendPublishDialog(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/PublishDialog;I)V

    return-void
.end method

.method public blacklist updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;I)V
    .registers 5

    .line 409
    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->isImsPhoneInCall()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;Lcom/android/internal/telephony/Phone;I)V

    goto :goto_11

    .line 412
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;Lcom/android/internal/telephony/Phone;I)V

    :goto_11
    return-void
.end method

.method public blacklist updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;Lcom/android/internal/telephony/Phone;)V
    .registers 5

    const/4 v0, 0x0

    .line 417
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;Lcom/android/internal/telephony/Phone;I)V

    return-void
.end method

.method public blacklist updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;Lcom/android/internal/telephony/Phone;I)V
    .registers 10

    if-nez p2, :cond_8

    const-string p1, "updateCmcCallInfo - cmcCallInfo is null"

    .line 422
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 426
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCmcCallInfo - cmcCallInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "com.samsung.telephony.extra.CMC_SESSION_ID"

    if-eqz p1, :cond_51

    .line 428
    iget-object v2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v0, :cond_51

    iget-object v2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_51

    .line 429
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_51

    .line 430
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/CmcCallTracker;->removeCmcCallInfo(ILcom/android/ims/ImsCall;)V

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6e

    :cond_51
    if-eqz p1, :cond_6e

    .line 432
    iget-object v2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    .line 433
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_6e

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mCmcCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_6e
    :goto_6e
    instance-of p1, p3, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz p1, :cond_77

    .line 440
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CmcCallTracker;->getCmcCallInfoImsPhoneConnection(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    goto :goto_7b

    .line 442
    :cond_77
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CmcCallTracker;->getCmcCallInfoGsmCdmaConnection(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    .line 444
    :goto_7b
    invoke-virtual {p0, p3, p2, p4}, Lcom/android/internal/telephony/CmcCallTracker;->setSdRequestType(Landroid/os/Bundle;Landroid/os/Bundle;I)V

    if-eqz p1, :cond_84

    .line 446
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfoImsPhoneConnection(Landroid/os/Bundle;)V

    goto :goto_87

    .line 448
    :cond_84
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfoGsmCdmaConnection(Landroid/os/Bundle;)V

    :goto_87
    return-void
.end method

.method public blacklist updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)V
    .registers 4

    const/4 v0, 0x0

    .line 686
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    return-void
.end method

.method public blacklist updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V
    .registers 9

    .line 690
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v1, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-nez v0, :cond_1c

    const-string p1, "updateCmcCallstatus - cmcCallInfo is null"

    .line 693
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    return-void

    :cond_1c
    const-string v1, "com.samsung.telephony.extra.CMC_SESSION_ID"

    .line 698
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v2, v3, :cond_2b

    .line 699
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2c

    :cond_2b
    move v1, v4

    .line 702
    :goto_2c
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v2

    const-string v3, "com.samsung.telephony.extra.CMC_SERVICE_TYPE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 703
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v2

    const-string v3, "com.samsung.telephony.extra.CMC_CALL_TYPE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 704
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "com.samsung.telephony.extra.CMC_CALL_STATE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCmcCallstatus - cmcCallInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CmcCallTracker;->log(Ljava/lang/String;)V

    .line 708
    invoke-direct {p0}, Lcom/android/internal/telephony/CmcCallTracker;->isImsPhoneInCall()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 709
    iget-object v2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, p1, v0, v2, p3}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;Lcom/android/internal/telephony/Phone;I)V

    goto :goto_78

    .line 711
    :cond_73
    iget-object v2, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1, v0, v2, p3}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallInfo(Lcom/android/ims/ImsCall;Landroid/os/Bundle;Lcom/android/internal/telephony/Phone;I)V

    .line 714
    :goto_78
    sget-object p3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne p2, p3, :cond_81

    if-eq v1, v4, :cond_81

    .line 715
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/CmcCallTracker;->removeCmcCallInfo(ILcom/android/ims/ImsCall;)V

    :cond_81
    return-void
.end method
