.class public Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;
.super Ljava/lang/Object;
.source "ImsExternalCallTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;,
        Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;,
        Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_IMS_EXTERNAL_CALL_ID:Ljava/lang/String; = "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

.field public static final blacklist TAG:Ljava/lang/String; = "ImsExternalCallTracker"


# instance fields
.field private blacklist mCallPuller:Lcom/android/internal/telephony/imsphone/ImsPullCall;

.field private final blacklist mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

.field private blacklist mExternalCallPullableState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExternalCallStateListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

.field private final blacklist mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

.field private blacklist mExternalConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/imsphone/ImsExternalConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHasActiveCalls:Z

.field private blacklist mIsVideoCapable:Z

.field private final blacklist mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallPuller(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPullCall;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallPuller:Lcom/android/internal/telephony/imsphone/ImsPullCall;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleVideoCapabilitiesChanged(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;Landroid/os/AsyncResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->handleVideoCapabilitiesChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPullCall;Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;Ljava/util/concurrent/Executor;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    .line 139
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    .line 143
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    .line 149
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHandler:Landroid/os/Handler;

    .line 166
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 167
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    .line 168
    new-instance p1, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    invoke-direct {p1, p0, p4}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallStateListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    .line 169
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallPuller:Lcom/android/internal/telephony/imsphone/ImsPullCall;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    .line 139
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    .line 143
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    .line 149
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHandler:Landroid/os/Handler;

    .line 173
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 174
    new-instance p1, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$2;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$2;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    .line 185
    new-instance p1, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    invoke-direct {p1, p0, p2}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallStateListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    .line 186
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->registerForNotifications()V

    return-void
.end method

.method private blacklist containsCallId(Ljava/util/List;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;I)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 465
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsExternalCallState;

    .line 466
    invoke-virtual {v0}, Landroid/telephony/ims/ImsExternalCallState;->getCallId()I

    move-result v0

    if-ne v0, p2, :cond_8

    const/4 p0, 0x1

    :cond_1b
    return p0
.end method

.method private blacklist createExternalConnection(Landroid/telephony/ims/ImsExternalCallState;)V
    .registers 9

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createExternalConnection : state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsExternalCallTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {p1}, Landroid/telephony/ims/ImsExternalCallState;->getCallType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v0

    .line 332
    invoke-virtual {p1}, Landroid/telephony/ims/ImsExternalCallState;->isCallPullable()Z

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->isCallPullPermitted(ZI)Z

    move-result v2

    .line 333
    new-instance v3, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 334
    invoke-virtual {p1}, Landroid/telephony/ims/ImsExternalCallState;->getCallId()I

    move-result v5

    .line 335
    invoke-virtual {p1}, Landroid/telephony/ims/ImsExternalCallState;->getAddress()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;-><init>(Lcom/android/internal/telephony/Phone;ILandroid/net/Uri;Z)V

    .line 337
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/Connection;->setVideoState(I)V

    .line 338
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->addListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V

    .line 341
    invoke-virtual {p1}, Landroid/telephony/ims/ImsExternalCallState;->isCallHeld()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 342
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setHolding()V

    .line 346
    :cond_46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createExternalConnection - pullable state : externalCallId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ; isPullable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ; networkPullable = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {p1}, Landroid/telephony/ims/ImsExternalCallState;->isCallPullable()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ; isVideo = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ; videoEnabled = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ; hasActiveCalls = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsExternalCallState;->isCallPullable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    invoke-interface {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method private blacklist handleVideoCapabilitiesChanged(Landroid/os/AsyncResult;)V
    .registers 3

    .line 481
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    .line 482
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleVideoCapabilitiesChanged : isVideoCapable = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsExternalCallTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->refreshCallPullState()V

    return-void
.end method

.method private varargs blacklist iLog(Ljava/lang/String;I[Ljava/lang/Object;)V
    .registers 10

    .line 514
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getTelephonyLogger()Lcom/android/internal/telephony/TelephonyLogger;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v1, 0x6

    const/4 v2, 0x5

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .line 516
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyLogger;->writeImsPhoneFlowLog(IILjava/lang/String;I[Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method private blacklist isCallPullPermitted(ZI)Z
    .registers 4

    .line 498
    invoke-static {p2}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    iget-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    if-nez p2, :cond_c

    return v0

    .line 504
    :cond_c
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    if-eqz p0, :cond_11

    return v0

    :cond_11
    return p1
.end method

.method private blacklist refreshCallPullState()V
    .registers 8

    const-string v0, "ImsExternalCallTracker"

    const-string v1, "refreshCallPullState"

    .line 432
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    .line 435
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    .line 436
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 437
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 439
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->isCallPullPermitted(ZI)Z

    move-result v4

    .line 440
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshCallPullState : externalCallId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ; isPullable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ; networkPullable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ; isVideo = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ; videoEnabled = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ; hasActiveCalls = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 440
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setIsPullable(Z)V

    goto :goto_11

    :cond_89
    return-void
.end method

.method private blacklist registerForNotifications()V
    .registers 4

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_29

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registering: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsExternalCallTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForVideoCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_29
    return-void
.end method

.method private blacklist unregisterForNotifications()V
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_27

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregistering: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsExternalCallTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForVideoCapabilityChanged(Landroid/os/Handler;)V

    :cond_27
    return-void
.end method

.method private blacklist updateExistingConnection(Lcom/android/internal/telephony/imsphone/ImsExternalConnection;Landroid/telephony/ims/ImsExternalCallState;)V
    .registers 9

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateExistingConnection : state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsExternalCallTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 378
    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->getCallState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    .line 379
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    goto :goto_26

    :cond_24
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 381
    :goto_26
    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->getCallState()I

    move-result v4

    if-ne v4, v3, :cond_34

    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->isCallHeld()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 382
    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    :cond_34
    if-eq v0, v2, :cond_77

    .line 387
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v0, :cond_43

    .line 388
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setActive()V

    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    invoke-interface {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;->notifyPreciseCallStateChanged()V

    goto :goto_77

    .line 391
    :cond_43
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v0, :cond_50

    .line 392
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setHolding()V

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    invoke-interface {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;->notifyPreciseCallStateChanged()V

    goto :goto_77

    .line 396
    :cond_50
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setTerminated()V

    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->removeListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    invoke-interface {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;->notifyPreciseCallStateChanged()V

    .line 404
    :cond_77
    :goto_77
    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->getCallType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v0

    .line 405
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v3

    if-eq v0, v3, :cond_88

    .line 406
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setVideoState(I)V

    .line 409
    :cond_88
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->getCallId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->isCallPullable()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->isCallPullable()Z

    move-result v3

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->isCallPullPermitted(ZI)Z

    move-result v0

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateExistingConnection - pullable state : externalCallId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ; state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ; isPullable = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ; networkPullable = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->isCallPullable()Z

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " ; isVideo = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result p2

    invoke-static {p2}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " ; videoEnabled = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " ; hasActiveCalls = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 411
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setIsPullable(Z)V

    return-void
.end method


# virtual methods
.method public blacklist getConnectionById(I)Lcom/android/internal/telephony/Connection;
    .registers 2

    .line 317
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/Connection;

    return-object p0
.end method

.method public blacklist getExternalCallStateListener()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;
    .registers 1

    .line 206
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallStateListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    return-object p0
.end method

.method public blacklist onPhoneStateChanged(Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/PhoneConstants$State;)V
    .registers 4

    .line 217
    sget-object p1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    const/4 v0, 0x1

    if-eq p2, p1, :cond_7

    move p1, v0

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPhoneStateChanged : hasActiveCalls = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImsExternalCallTracker"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz p1, :cond_59

    invoke-static {}, Lcom/android/internal/telephony/SemCallTrackerHelper;->useMdecEnabled()Z

    move-result p1

    if-eqz p1, :cond_59

    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 222
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;

    move-result-object p1

    if-eqz p1, :cond_59

    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemTelephonyHelper;->isVoiceCapable()Z

    move-result p1

    if-eqz p1, :cond_59

    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 223
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 224
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    const-string p1, "onPhoneStateChanged : Update hasActiveCalls to true"

    .line 225
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_59
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->refreshCallPullState()V

    return-void
.end method

.method public blacklist refreshExternalCallState(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "refreshExternalCallState"

    const/4 v4, 0x3

    .line 264
    invoke-direct {p0, v3, v4, v1}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    const-string v1, "ImsExternalCallTracker"

    .line 266
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    .line 271
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 273
    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 274
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 275
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 277
    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->containsCallId(Ljava/util/List;I)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 278
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    .line 279
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setTerminated()V

    .line 280
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->removeListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V

    .line 281
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v2, v0

    goto :goto_1b

    :cond_4a
    if-eqz v2, :cond_51

    .line 288
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    invoke-interface {v2}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;->notifyPreciseCallStateChanged()V

    :cond_51
    if-eqz p1, :cond_ac

    .line 292
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ac

    .line 293
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsExternalCallState;

    .line 294
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsExternalCallState;->getCallId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_98

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshExternalCallState: got = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {v2}, Landroid/telephony/ims/ImsExternalCallState;->getCallState()I

    move-result v3

    if-eq v3, v0, :cond_94

    goto :goto_5d

    .line 301
    :cond_94
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->createExternalConnection(Landroid/telephony/ims/ImsExternalCallState;)V

    goto :goto_5d

    .line 303
    :cond_98
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsExternalCallState;->getCallId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->updateExistingConnection(Lcom/android/internal/telephony/imsphone/ImsExternalConnection;Landroid/telephony/ims/ImsExternalCallState;)V

    goto :goto_5d

    :cond_ac
    return-void
.end method

.method public blacklist setCallPuller(Lcom/android/internal/telephony/imsphone/ImsPullCall;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallPuller:Lcom/android/internal/telephony/imsphone/ImsPullCall;

    return-void
.end method

.method public blacklist tearDown()V
    .registers 1

    .line 193
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->unregisterForNotifications()V

    return-void
.end method
