.class public Lcom/android/internal/telephony/TelephonyComponentFactory;
.super Ljava/lang/Object;
.source "TelephonyComponentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TelephonyComponentFactory"

.field private static blacklist sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;


# instance fields
.field private blacklist mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

.field private final blacklist mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/android/internal/telephony/TelephonyFacade;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyFacade;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;
    .registers 1

    .line 238
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    if-nez v0, :cond_b

    .line 243
    new-instance v0, Lcom/android/internal/telephony/SemTelephonyComponentFactory;

    invoke-direct {v0}, Lcom/android/internal/telephony/SemTelephonyComponentFactory;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    .line 246
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    return-object v0
.end method


# virtual methods
.method public blacklist getCdmaSubscriptionSourceManagerInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
    .registers 6

    .line 441
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getIDeviceIdleController()Landroid/os/IDeviceIdleController;
    .registers 1

    const-string p0, "deviceidle"

    .line 447
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 446
    invoke-static {p0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getTelephonyFacade()Lcom/android/internal/telephony/TelephonyFacade;
    .registers 1

    .line 251
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    return-object p0
.end method

.method public blacklist initMultiSimSettingController(Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;)Lcom/android/internal/telephony/MultiSimSettingController;
    .registers 3

    .line 485
    invoke-static {p1, p2}, Lcom/android/internal/telephony/MultiSimSettingController;->init(Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;)Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object p0

    return-object p0
.end method

.method public blacklist initSubscriptionController(Landroid/content/Context;)Lcom/android/internal/telephony/SubscriptionController;
    .registers 2

    .line 468
    invoke-static {p1}, Lcom/android/internal/telephony/SubscriptionController;->init(Landroid/content/Context;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p0

    return-object p0
.end method

.method public blacklist inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;
    .registers 3

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    if-eqz v0, :cond_11

    invoke-static {v0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->-$$Nest$misComponentInjected(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 291
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->-$$Nest$fgetmInjectedInstance(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p0

    return-object p0

    .line 293
    :cond_11
    sget-object p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    return-object p0
.end method

.method public blacklist injectTheComponentFactory(Landroid/content/res/XmlResourceParser;)V
    .registers 5

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    if-eqz v0, :cond_c

    .line 269
    sget-object p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->TAG:Ljava/lang/String;

    const-string p1, "Already injected."

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    if-eqz p1, :cond_4e

    .line 274
    new-instance v0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;-><init>(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    .line 275
    invoke-static {v0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->-$$Nest$mparseXml(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 276
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->-$$Nest$mmakeInjectedInstance(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)V

    .line 277
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->-$$Nest$mgetValidatedPaths(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 278
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total components injected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_43

    .line 279
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->-$$Nest$fgetmComponentNames(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    goto :goto_44

    :cond_43
    const/4 p0, 0x0

    :goto_44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 278
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    return-void
.end method

.method public blacklist makeAccessNetworksManager(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)Lcom/android/internal/telephony/data/AccessNetworksManager;
    .registers 3

    .line 435
    new-instance p0, Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V

    return-object p0
.end method

.method public blacklist makeAppSmsManager(Landroid/content/Context;)Lcom/android/internal/telephony/AppSmsManager;
    .registers 2

    .line 416
    new-instance p0, Lcom/android/internal/telephony/AppSmsManager;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/AppSmsManager;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public blacklist makeCarrierActionAgent(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CarrierActionAgent;
    .registers 2

    .line 341
    new-instance p0, Lcom/android/internal/telephony/CarrierActionAgent;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object p0
.end method

.method public blacklist makeCarrierResolver(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CarrierResolver;
    .registers 2

    .line 345
    new-instance p0, Lcom/android/internal/telephony/CarrierResolver;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierResolver;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object p0
.end method

.method public blacklist makeCarrierSignalAgent(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CarrierSignalAgent;
    .registers 2

    .line 337
    new-instance p0, Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierSignalAgent;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object p0
.end method

.method public blacklist makeDataEnabledSettings(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
    .registers 2

    .line 457
    new-instance p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object p0
.end method

.method public blacklist makeDataNetworkController(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)Lcom/android/internal/telephony/data/DataNetworkController;
    .registers 3

    .line 516
    new-instance p0, Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V

    return-object p0
.end method

.method public blacklist makeDataProfileManager(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)Lcom/android/internal/telephony/data/DataProfileManager;
    .registers 12

    .line 534
    new-instance p0, Lcom/android/internal/telephony/data/DataProfileManager;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/data/DataProfileManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V

    return-object p0
.end method

.method public blacklist makeDataSettingsManager(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)Lcom/android/internal/telephony/data/DataSettingsManager;
    .registers 5

    .line 551
    new-instance p0, Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/DataSettingsManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    return-object p0
.end method

.method public blacklist makeDcTracker(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .registers 3

    .line 333
    new-instance p0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/Phone;I)V

    return-object p0
.end method

.method public blacklist makeDeviceStateMonitor(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/DeviceStateMonitor;
    .registers 2

    .line 420
    new-instance p0, Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object p0
.end method

.method public blacklist makeDisplayInfoController(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/DisplayInfoController;
    .registers 2

    .line 480
    new-instance p0, Lcom/android/internal/telephony/DisplayInfoController;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DisplayInfoController;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object p0
.end method

.method public blacklist makeEmergencyNumberTracker(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;
    .registers 3

    .line 316
    new-instance p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object p0
.end method

.method public blacklist makeEriManager(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/cdma/EriManager;
    .registers 3

    .line 365
    new-instance p0, Lcom/android/internal/telephony/cdma/EriManager;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;-><init>(Lcom/android/internal/telephony/Phone;I)V

    return-object p0
.end method

.method public blacklist makeGsmCdmaCallTracker(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .registers 2

    .line 297
    new-instance p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    return-object p0
.end method

.method public blacklist makeIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .registers 2

    .line 349
    new-instance p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object p0
.end method

.method public blacklist makeIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .registers 2

    .line 353
    new-instance p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object p0
.end method

.method public blacklist makeImsExternalCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;
    .registers 3

    .line 409
    new-instance p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/util/concurrent/Executor;)V

    return-object p0
.end method

.method public blacklist makeImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .registers 3

    .line 404
    new-instance p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v0, Lcom/android/internal/telephony/SemTelephonyComponentFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/SemTelephonyComponentFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ConnectorFactory;)V

    return-object p0
.end method

.method public blacklist makeInboundSmsTracker(Landroid/content/Context;Landroid/database/Cursor;Z)Lcom/android/internal/telephony/InboundSmsTracker;
    .registers 4

    .line 400
    new-instance p0, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    return-object p0
.end method

.method public blacklist makeInboundSmsTracker(Landroid/content/Context;[BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;ZII)Lcom/android/internal/telephony/InboundSmsTracker;
    .registers 35

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    .line 390
    new-instance v17, Lcom/android/internal/telephony/InboundSmsTracker;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(Landroid/content/Context;[BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;ZII)V

    return-object v17
.end method

.method public blacklist makeInboundSmsTracker(Landroid/content/Context;[BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Lcom/android/internal/telephony/InboundSmsTracker;
    .registers 29

    .line 379
    new-instance v14, Lcom/android/internal/telephony/InboundSmsTracker;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(Landroid/content/Context;[BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    return-object v14
.end method

.method public blacklist makeLinkBandwidthEstimator(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator;
    .registers 3

    .line 504
    new-instance v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/TelephonyFacade;)V

    return-object v0
.end method

.method public blacklist makeLocaleTracker(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/NitzStateMachine;Landroid/os/Looper;)Lcom/android/internal/telephony/LocaleTracker;
    .registers 4

    .line 453
    new-instance p0, Lcom/android/internal/telephony/LocaleTracker;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/LocaleTracker;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/NitzStateMachine;Landroid/os/Looper;)V

    return-object p0
.end method

.method public blacklist makeNitzStateMachine(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/NitzStateMachine;
    .registers 2

    .line 325
    invoke-static {p1}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->createInstance(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    move-result-object p0

    return-object p0
.end method

.method public blacklist makePhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)Lcom/android/internal/telephony/Phone;
    .registers 14

    .line 463
    new-instance p0, Lcom/android/internal/telephony/GsmCdmaPhone;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/GsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V

    return-object p0
.end method

.method public blacklist makePhoneSwitcher(ILandroid/content/Context;Landroid/os/Looper;)Lcom/android/internal/telephony/data/PhoneSwitcher;
    .registers 4

    .line 473
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->make(ILandroid/content/Context;Landroid/os/Looper;)Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object p0

    return-object p0
.end method

.method public blacklist makeServiceStateTracker(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ServiceStateTracker;
    .registers 3

    .line 309
    new-instance p0, Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object p0
.end method

.method public blacklist makeSignalStrengthController(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/SignalStrengthController;
    .registers 2

    .line 492
    new-instance p0, Lcom/android/internal/telephony/SignalStrengthController;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object p0
.end method

.method public blacklist makeSimActivationTracker(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SimActivationTracker;
    .registers 2

    .line 329
    new-instance p0, Lcom/android/internal/telephony/SimActivationTracker;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimActivationTracker;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object p0
.end method

.method public blacklist makeSmsStorageMonitor(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SmsStorageMonitor;
    .registers 2

    .line 301
    new-instance p0, Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsStorageMonitor;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object p0
.end method

.method public blacklist makeSmsUsageMonitor(Landroid/content/Context;)Lcom/android/internal/telephony/SmsUsageMonitor;
    .registers 2

    .line 305
    new-instance p0, Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public blacklist makeSubscriptionInfoUpdater(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;)Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .registers 4

    .line 497
    new-instance p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;)V

    return-object p0
.end method

.method public blacklist makeTransportManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/dataconnection/TransportManager;
    .registers 2

    .line 424
    new-instance p0, Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/TransportManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object p0
.end method

.method public blacklist makeUiccProfile(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;)Lcom/android/internal/telephony/uicc/UiccProfile;
    .registers 14

    .line 361
    new-instance p0, Lcom/android/internal/telephony/uicc/UiccProfile;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/UiccProfile;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;)V

    return-object p0
.end method

.method public blacklist makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;
    .registers 2

    .line 369
    new-instance p0, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    return-object p0
.end method
