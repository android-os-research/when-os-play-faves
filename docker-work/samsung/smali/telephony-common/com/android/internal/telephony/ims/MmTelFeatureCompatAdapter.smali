.class public Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;
.super Landroid/telephony/ims/feature/MmTelFeature;
.source "MmTelFeatureCompatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$SecImsMmTelEventHandler;,
        Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ImsRegistrationListenerBase;,
        Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_IMS_INCOMING_CALL:Ljava/lang/String; = "com.android.ims.IMS_INCOMING_CALL"

.field public static final blacklist FEATURE_DISABLED:I = 0x0

.field public static final blacklist FEATURE_ENABLED:I = 0x1

.field public static final blacklist FEATURE_TYPE_CALL_COMPOSER:I = 0x8

.field public static final blacklist FEATURE_TYPE_SMS_OVER_LTE:I = 0x6

.field public static final blacklist FEATURE_TYPE_SMS_OVER_WIFI:I = 0x7

.field public static final blacklist FEATURE_TYPE_UNKNOWN:I = -0x1

.field public static final blacklist FEATURE_TYPE_UT_OVER_LTE:I = 0x4

.field public static final blacklist FEATURE_TYPE_UT_OVER_WIFI:I = 0x5

.field public static final blacklist FEATURE_TYPE_VIDEO_OVER_LTE:I = 0x1

.field public static final blacklist FEATURE_TYPE_VIDEO_OVER_WIFI:I = 0x3

.field public static final blacklist FEATURE_TYPE_VOICE_OVER_LTE:I = 0x0

.field public static final blacklist FEATURE_TYPE_VOICE_OVER_WIFI:I = 0x2

.field public static final blacklist FEATURE_UNKNOWN:I = -0x1

.field private static final blacklist REG_TECH_TO_NET_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mImsSmsImplAdapter:[Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;


# instance fields
.field private final blacklist mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

.field private final blacklist mListener:Lcom/android/ims/internal/IImsRegistrationListener;

.field private blacklist mMmTelEventHandler:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$SecImsMmTelEventHandler;

.field private blacklist mMmTelEventHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mPhoneId:I

.field private blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mRegCompatAdapter:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

.field private final blacklist mSecMmtelListener:Lcom/android/ims/internal/ISecImsMmTelEventListener;

.field private blacklist mSessionId:I

.field private final blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCompatFeature(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMmTelEventHandler(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$SecImsMmTelEventHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mMmTelEventHandler:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$SecImsMmTelEventHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionId(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mSessionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mconvertCapabilities(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;[I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->convertCapabilities([I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 76
    sput-object v1, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mImsSmsImplAdapter:[Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;

    .line 81
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    const/4 v3, 0x3

    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0x14

    .line 85
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 84
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xd

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 86
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x12

    .line 89
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 88
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/internal/telephony/ims/MmTelInterfaceAdapter;)V
    .registers 5

    .line 384
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;-><init>()V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mSessionId:I

    .line 79
    iput v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mPhoneId:I

    .line 173
    new-instance v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$1;-><init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 310
    new-instance v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$2;-><init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 330
    new-instance v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$3;-><init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mSecMmtelListener:Lcom/android/ims/internal/ISecImsMmTelEventListener;

    .line 385
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->initialize(Landroid/content/Context;I)V

    .line 387
    iput p2, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mPhoneId:I

    const-string p1, "MmTelFeatureCompat"

    const-string p2, "creator set state STATE_READY"

    .line 388
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 389
    invoke-virtual {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->setFeatureState(I)V

    .line 391
    iput-object p3, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    .line 392
    iget-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string p2, "phone"

    .line 393
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private blacklist convertCapabilities([I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .registers 7

    .line 599
    array-length p0, p1

    new-array p0, p0, [Z

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    const/16 v2, 0x8

    const/4 v3, 0x1

    if-gt v1, v2, :cond_1c

    .line 602
    array-length v4, p1

    if-ge v1, v4, :cond_1c

    .line 604
    aget v2, p1, v1

    if-ne v2, v1, :cond_14

    .line 605
    aput-boolean v3, p0, v1

    goto :goto_19

    :cond_14
    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    .line 608
    aput-boolean v0, p0, v1

    :cond_19
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 611
    :cond_1c
    new-instance p1, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {p1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    .line 612
    aget-boolean v0, p0, v0

    const/4 v1, 0x2

    if-nez v0, :cond_2a

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_2d

    .line 615
    :cond_2a
    invoke-virtual {p1, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 617
    :cond_2d
    aget-boolean v0, p0, v3

    if-nez v0, :cond_36

    const/4 v0, 0x3

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_39

    .line 620
    :cond_36
    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    :cond_39
    const/4 v0, 0x4

    .line 622
    aget-boolean v1, p0, v0

    if-nez v1, :cond_43

    const/4 v1, 0x5

    aget-boolean v1, p0, v1

    if-eqz v1, :cond_46

    .line 625
    :cond_43
    invoke-virtual {p1, v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    :cond_46
    const/4 v0, 0x6

    .line 629
    aget-boolean v0, p0, v0

    if-nez v0, :cond_50

    const/4 v0, 0x7

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_53

    .line 632
    :cond_50
    invoke-virtual {p1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 635
    :cond_53
    aget-boolean p0, p0, v2

    if-eqz p0, :cond_5c

    const/16 p0, 0x10

    .line 637
    invoke-virtual {p1, p0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 640
    :cond_5c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "convertCapabilities - capabilities: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MmTelFeatureCompat"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private blacklist createIncomingCallPendingIntent()Landroid/app/PendingIntent;
    .registers 4

    .line 645
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ims.IMS_INCOMING_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.phone"

    .line 646
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    iget-object p0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0xa000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist addRegistrationAdapter(Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    iput-object p1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mRegCompatAdapter:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    return-void
.end method

.method public blacklist changeAudioPath(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 718
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->changeAudioPath(II)V

    return-void
.end method

.method public whitelist changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .registers 3

    return-void
.end method

.method public whitelist createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .registers 4

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mSessionId:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 482
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist createCallSessionInterface(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mSessionId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public blacklist disableIms()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 579
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->turnOffIms()V

    return-void
.end method

.method public blacklist enableIms()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->turnOnIms()V

    return-void
.end method

.method public blacklist getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 499
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getFeatureState()I
    .registers 2

    .line 510
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getFeatureState()I

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 512
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;
    .registers 1

    .line 713
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->getSmsInstance()Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSmsInstance()Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;
    .registers 6

    .line 705
    sget-object v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mImsSmsImplAdapter:[Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;

    iget v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mPhoneId:I

    aget-object v2, v0, v1

    if-nez v2, :cond_13

    .line 706
    new-instance v2, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget v4, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mPhoneId:I

    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;-><init>(Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;I)V

    aput-object v2, v0, v1

    .line 708
    :cond_13
    sget-object v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mImsSmsImplAdapter:[Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;

    iget p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mPhoneId:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public blacklist getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 738
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getUtInterface()Lcom/android/ims/internal/IImsUt;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 494
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object p0

    return-object p0
.end method

.method public blacklist initImsSmsImplAdapter()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 696
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 697
    sget-object v1, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mImsSmsImplAdapter:[Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;

    aget-object v2, v1, v0

    if-eqz v2, :cond_2d

    const/4 v2, 0x0

    .line 698
    aput-object v2, v1, v0

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initImsSmsImplAdapter["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MmTelFeatureCompat"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_30
    return-void
.end method

.method public blacklist isCmcEmergencyCallSupported(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 748
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->isCmcEmergencyCallSupported(I)Z

    move-result p0

    return p0
.end method

.method public whitelist onFeatureReady()V
    .registers 6

    const-string v0, "MmTelFeatureCompat"

    const-string v1, "onFeatureReady called!"

    .line 549
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.ims.IMS_INCOMING_CALL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 553
    iget-object v2, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 555
    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mMmTelEventHandler:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$SecImsMmTelEventHandler;

    if-nez v1, :cond_32

    .line 556
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SecImsMmTelEventHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mMmTelEventHandlerThread:Landroid/os/HandlerThread;

    .line 557
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 558
    new-instance v1, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$SecImsMmTelEventHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mMmTelEventHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$SecImsMmTelEventHandler;-><init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mMmTelEventHandler:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$SecImsMmTelEventHandler;

    .line 563
    :cond_32
    :try_start_32
    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget v2, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mPhoneId:I

    iget-object v3, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mSecMmtelListener:Lcom/android/ims/internal/ISecImsMmTelEventListener;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->setSecImsMmTelEventListener(ILcom/android/ims/internal/ISecImsMmTelEventListener;)V

    .line 565
    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->createIncomingCallPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ImsRegistrationListenerBase;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ImsRegistrationListenerBase;-><init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ImsRegistrationListenerBase-IA;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mSessionId:I

    .line 567
    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 568
    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mRegCompatAdapter:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->getRegistrationListener()Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_5f} :catch_60

    goto :goto_79

    :catch_60
    move-exception p0

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t start compat feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_79
    return-void
.end method

.method public whitelist onFeatureRemoved()V
    .registers 5

    const-string v0, "MmTelFeatureCompat"

    .line 531
    :try_start_2
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_23

    :catch_a
    move-exception v1

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver not registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :goto_23
    :try_start_23
    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget v2, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mSessionId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->endSession(I)V

    .line 537
    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 538
    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mRegCompatAdapter:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    if-eqz v1, :cond_58

    .line 539
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    .line 540
    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->getRegistrationListener()Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v1

    .line 539
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3e} :catch_3f

    goto :goto_58

    :catch_3f
    move-exception p0

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFeatureRemoved: Couldn\'t end session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    :goto_58
    return-void
.end method

.method public whitelist queryCapabilityConfiguration(II)Z
    .registers 5

    .line 398
    sget-object v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, -0x1

    .line 399
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 398
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 401
    :try_start_15
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mPhoneId:I

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->queryCapabilityConfiguration(III)Z

    move-result p0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    const-string p0, "MmTelFeatureCompat"

    const-string p1, "queryCapabilityConfiguration"

    .line 403
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 743
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V

    return-void
.end method

.method public whitelist setUiTtyMode(ILandroid/os/Message;)V
    .registers 3

    .line 519
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->setUiTTYMode(ILandroid/os/Message;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 521
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setVideoCrtAudio(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 733
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->setVideoCrtAudio(IZ)V

    return-void
.end method

.method public blacklist startLocalRingBackTone(III)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 723
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->startLocalRingBackTone(III)I

    move-result p0

    return p0
.end method

.method public blacklist stopLocalRingBackTone()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 728
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->stopLocalRingBackTone()I

    move-result p0

    return p0
.end method
