.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
.super Lcom/samsung/android/knox/net/nap/INetworkAnalytics$Stub;
.source "NetworkAnalyticsService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;,
        Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;,
        Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;,
        Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;
    }
.end annotation


# static fields
.field public static final BIND_AVAILABLE_PROCEED:I = 0x0

.field public static final BIND_NOT_OK:I = -0x1

.field public static final BIND_OK:I = 0x1

.field public static final DBG:Z

.field public static final NPA_VERSION_STRING:Ljava/lang/String; = "0"

.field public static final SERVICE_CONNECTION_TIMEOUT:J = 0xbb8L

.field public static final TAG:Ljava/lang/String; = "NetworkAnalytics:Service"

.field public static mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

.field public static mDeviceUniqueId:Ljava/lang/String;


# instance fields
.field public mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

.field public mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

.field public mContext:Landroid/content/Context;

.field public mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

.field public mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 95
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics$Stub;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 79
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 80
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 81
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    .line 82
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 83
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 84
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    .line 85
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 86
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics$Stub;-><init>()V

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 79
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 80
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 81
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    .line 82
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 83
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 84
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    .line 85
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 86
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    return-void
.end method

.method public static getCidFromTransformedName(Ljava/lang/String;)I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public static declared-synchronized getDRKService(Landroid/content/Context;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    monitor-enter v0

    .line 646
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    if-nez v1, :cond_e

    .line 647
    new-instance v1, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    .line 649
    :cond_e
    sget-object p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final _activateNAPClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)Z
    .registers 12

    .line 870
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getBinderForPackage(Ljava/lang/String;)Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    move-result-object v0

    .line 872
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget-object v2, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 874
    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getJsonString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 877
    :goto_1e
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    const-string v3, "NetworkAnalytics:Service"

    if-eqz v2, :cond_38

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_activateNAPClient: activation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    const/4 v4, 0x0

    if-eqz v0, :cond_be

    if-nez v1, :cond_3f

    goto/16 :goto_be

    :cond_3f
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v6, p2, :cond_79

    .line 885
    :try_start_43
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getDeviceUniqueKey()Ljava/lang/String;

    move-result-object p0

    if-eqz v2, :cond_5d

    .line 886
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_activateNAPClient: Device unique Key = "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_5d
    invoke-interface {v0, v1, p3, p0}, Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;->onActivateProfile(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    if-eqz v2, :cond_96

    .line 888
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onActivateProfile: returnValue = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    .line 891
    :cond_79
    iget-object p0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-interface {v0, p0, p3}, Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;->onDeactivateProfile(Ljava/lang/String;I)I

    move-result v5

    if-eqz v2, :cond_96

    .line 892
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onDeactivateProfile: returnValue = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_96
    :goto_96
    if-eqz v2, :cond_ac

    .line 894
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "_activateNAPClient: onActivate from client is "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_ac
    iget-object p0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    if-eqz p0, :cond_ba

    .line 897
    invoke-interface {p0, v5}, Lcom/samsung/android/knox/net/nap/IStatusCallback;->onCallComplete(I)V
    :try_end_b3
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_b3} :catch_b4

    goto :goto_ba

    :catch_b4
    move-exception p0

    const-string p1, "_activateNAPClient: Remote Exception"

    .line 899
    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_ba
    :goto_ba
    if-nez v5, :cond_bd

    move v4, v6

    :cond_bd
    return v4

    :cond_be
    :goto_be
    if-eqz v2, :cond_dc

    .line 879
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "_activateNAPClient: Null values found. INetworkAnalyticsService = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or json = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dc
    return v4
.end method

.method public final _bindAndActivate(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V
    .registers 4

    return-void
.end method

.method public final _bindAndActivate(Ljava/lang/String;Z)V
    .registers 9

    .line 1075
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    const-string v1, "NetworkAnalytics:Service"

    if-eqz v0, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_bindAndActivate:ACTION_INITIALIZE_NAP: adding profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_1a
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v2

    if-nez v2, :cond_39

    if-eqz v0, :cond_38

    .line 1078
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "_bindAndActivate: ERROR NAPActivationProfile is null for profile: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-void

    .line 1081
    :cond_39
    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationState()I

    move-result v3

    if-nez v3, :cond_47

    if-eqz v0, :cond_46

    const-string p0, "_bindAndActivate: ERROR NAPActivationProfile is not activated. No need to bind."

    .line 1082
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    return-void

    .line 1085
    :cond_47
    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v2

    if-nez v2, :cond_64

    if-eqz v0, :cond_63

    .line 1087
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "_bindAndActivate: ERROR NAPConfigProfile is null for profile: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    return-void

    :cond_64
    if-eqz p2, :cond_93

    .line 1091
    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1092
    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v5

    .line 1091
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->validateNAPClient(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_93

    if-eqz v0, :cond_92

    .line 1094
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "_bindAndActivate: ERROR Valid package has not been installed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    return-void

    .line 1098
    :cond_93
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    .line 1099
    invoke-static {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 1100
    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 1101
    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v1

    iput v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    const/4 v1, 0x0

    .line 1102
    iput-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    .line 1103
    invoke-static {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V

    return-void
.end method

.method public final _bindAndActivateOnReboot()V
    .registers 1

    return-void
.end method

.method public final _bindAndActivateOnReboot(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final _bindToClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public final _cleanUpConnectionDetails(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V
    .registers 2

    return-void
.end method

.method public final _deactivateAllProfiles()V
    .registers 1

    return-void
.end method

.method public final _deactivateAllProfiles(I)V
    .registers 2

    return-void
.end method

.method public final _getDataDeliveryHelper(Ljava/lang/String;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;I)Lcom/android/server/enterprise/nap/DataDeliveryHelper;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public final _handleNewProfileRegistration(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final _packageAddedAction(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public final _packageRemovedAction(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public final _unbindClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V
    .registers 2

    return-void
.end method

.method public final _unregisterAllProfiles(I)V
    .registers 2

    return-void
.end method

.method public final _userRemovedAction(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final _validateNAPClient(Ljava/lang/String;ILjava/lang/String;)I
    .registers 4

    const/4 p0, -0x1

    return p0
.end method

.method public final activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I
    .registers 3

    const/4 p0, -0x1

    return p0
.end method

.method public final constructObjectForBroadcast(IILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public final enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDeviceUniqueKey()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getNPAVersion()Ljava/lang/String;
    .registers 1

    monitor-enter p0

    .line 478
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNetworkMonitorProfiles(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 410
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    const-string v1, "NetworkAnalytics:Service"

    if-eqz v0, :cond_1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkMonitorProfiles API caller is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-eqz v0, :cond_38

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkMonitorProfiles API caller with updated contextInfo is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    const/4 v0, 0x0

    .line 416
    :try_start_39
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, v2, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getClientProfiles(II)Ljava/util/List;

    move-result-object v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_43} :catch_44

    goto :goto_4a

    :catch_44
    move-exception p0

    const-string p1, "Get NVM client profiles. Exception"

    .line 418
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4a
    return-object v0
.end method

.method public final getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPackageNameForUid(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProfiles(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/nap/Profile;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized handleNAPClientCall(Ljava/lang/String;Landroid/os/Bundle;Z)I
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    monitor-enter p0

    const/4 v4, -0x1

    .line 229
    :try_start_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 230
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 231
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x4

    if-eqz v0, :cond_38e

    if-eqz v7, :cond_38e

    if-gez v6, :cond_1f

    goto/16 :goto_38e

    .line 238
    :cond_1f
    invoke-virtual {v1, v5, v6, v3, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->validateNAPClient(IIZLjava/lang/String;)I

    move-result v5

    if-gez v5, :cond_46

    const-string v0, "NetworkAnalytics:Service"

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleNAPClientCall: Caller validation failed:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " doStart:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_44} :catch_3a9
    .catchall {:try_start_a .. :try_end_44} :catchall_3a7

    .line 241
    monitor-exit p0

    return v5

    .line 244
    :cond_46
    :try_start_46
    invoke-virtual {v1, v7, v0, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->listOfProfilesForOperation(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_38c

    .line 245
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_38c

    .line 246
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_56
    const/16 v10, -0x12

    :goto_58
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_38c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    if-nez v5, :cond_89

    const-string v5, "NetworkAnalytics:Service"

    .line 248
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleNAPClientCall: Profile does not exist for name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x3

    const-string v11, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    .line 250
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_84} :catch_3a9
    .catchall {:try_start_46 .. :try_end_84} :catchall_3a7

    if-eqz v11, :cond_87

    goto :goto_58

    :cond_87
    monitor-exit p0

    return v5

    .line 252
    :cond_89
    :try_start_89
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b6

    const-string v5, "NetworkAnalytics:Service"

    .line 253
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleNAPClientCall: NAP client activating un-owned profile: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    .line 255
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_b0} :catch_3a9
    .catchall {:try_start_89 .. :try_end_b0} :catchall_3a7

    if-eqz v5, :cond_b4

    move v5, v10

    goto :goto_58

    :cond_b4
    monitor-exit p0

    return v10

    :cond_b6
    if-eqz v3, :cond_d3

    .line 257
    :try_start_b8
    invoke-virtual {v1, v5, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->isAllowedRecordingForUsers(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)Z

    move-result v11

    if-nez v11, :cond_d3

    const-string v5, "NetworkAnalytics:Service"

    const-string/jumbo v11, "handleNAPClientCall: Client installed in wrong user trying to collect data"

    .line 258
    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x11

    const-string v11, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    .line 260
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_ce} :catch_3a9
    .catchall {:try_start_b8 .. :try_end_ce} :catchall_3a7

    if-eqz v11, :cond_d1

    goto :goto_58

    :cond_d1
    monitor-exit p0

    return v5

    :cond_d3
    if-nez v3, :cond_e5

    .line 263
    :try_start_d5
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v11

    if-eq v11, v6, :cond_e5

    const-string v0, "NetworkAnalytics:Service"

    const-string/jumbo v2, "handleNAPClientCall: NAP client failed to stop the connection since not started by same user"

    .line 264
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_e3} :catch_3a9
    .catchall {:try_start_d5 .. :try_end_e3} :catchall_3a7

    .line 266
    monitor-exit p0

    return v10

    :cond_e5
    const/16 v13, -0x3e7

    if-eqz v3, :cond_28e

    if-nez v2, :cond_f5

    :try_start_eb
    const-string v0, "NetworkAnalytics:Service"

    const-string/jumbo v2, "handleNAPClientCall: Client trying to collect data with null bundle flow information"

    .line 271
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_f3} :catch_3a9
    .catchall {:try_start_eb .. :try_end_f3} :catchall_3a7

    .line 273
    monitor-exit p0

    return v8

    :cond_f5
    :try_start_f5
    const-string/jumbo v14, "record_type"

    .line 275
    invoke-virtual {v2, v14, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    if-ltz v14, :cond_284

    const/4 v15, 0x2

    if-le v14, v15, :cond_103

    goto/16 :goto_284

    :cond_103
    const-string/jumbo v15, "interval_value"

    .line 281
    invoke-virtual {v2, v15, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    const/16 v4, 0x3840

    const/16 v10, 0x3c

    if-eq v15, v13, :cond_11e

    if-lt v15, v10, :cond_114

    if-le v15, v4, :cond_11e

    :cond_114
    const-string v0, "NetworkAnalytics:Service"

    const-string/jumbo v2, "handleNAPClientCall: Client trying to collect data with Invalid interval information"

    .line 283
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_11c} :catch_3a9
    .catchall {:try_start_f5 .. :try_end_11c} :catchall_3a7

    .line 285
    monitor-exit p0

    return v8

    :cond_11e
    if-eq v15, v13, :cond_16b

    if-lt v15, v10, :cond_16b

    if-gt v15, v4, :cond_16b

    .line 289
    :try_start_124
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_16b

    .line 290
    sget-object v4, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v4

    .line 291
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v10

    const-string v13, "NetworkAnalytics:Service"

    .line 292
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleNAPClientCall: intermediate flows : current knox version : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " supported knox version : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v10, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_16b

    const-string v0, "NetworkAnalytics:Service"

    const-string/jumbo v2, "handleNAPClientCall: Client trying to collect data not supported in current version"

    .line 294
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_169} :catch_3a9
    .catchall {:try_start_124 .. :try_end_169} :catchall_3a7

    .line 296
    monitor-exit p0

    return v8

    .line 301
    :cond_16b
    :try_start_16b
    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getSetActivatedProfiles()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_1af

    .line 302
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v10

    if-lez v10, :cond_1af

    .line 303
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17d
    :goto_17d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1af

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 304
    iget-object v11, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v11, v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v10

    if-nez v10, :cond_192

    goto :goto_17d

    .line 308
    :cond_192
    invoke-virtual {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationState()I

    move-result v11

    const/4 v12, 0x1

    if-ne v12, v11, :cond_17d

    .line 309
    invoke-virtual {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationFlowType()I

    move-result v11

    if-ne v11, v14, :cond_1a5

    invoke-virtual {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationIntervalValue()I

    move-result v10

    if-eq v10, v15, :cond_17d

    :cond_1a5
    const-string v0, "NetworkAnalytics:Service"

    const-string/jumbo v2, "handleNAPClientCall: Client trying to collect data with wrong flow or interval"

    .line 310
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ad
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_1ad} :catch_3a9
    .catchall {:try_start_16b .. :try_end_1ad} :catchall_3a7

    .line 312
    monitor-exit p0

    return v8

    .line 317
    :cond_1af
    :try_start_1af
    invoke-virtual {v5, v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->setFlowTypeForProfile(I)V

    .line 318
    invoke-virtual {v5, v15}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->setIntervalValueForProfile(I)V

    .line 321
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_25d

    .line 323
    sget-object v4, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 324
    invoke-virtual {v4}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v4

    .line 326
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v10

    .line 327
    invoke-virtual {v10, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_201

    .line 328
    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    move-result v4

    if-gez v4, :cond_230

    const-string v0, "NetworkAnalytics:Service"

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleNAPClientCall: file descriptor failed for profile:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " doStart:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ff
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_1ff} :catch_3a9
    .catchall {:try_start_1af .. :try_end_1ff} :catchall_3a7

    .line 331
    monitor-exit p0

    return v4

    :cond_201
    const/4 v12, 0x0

    .line 334
    :try_start_202
    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    move-result v4

    if-gez v4, :cond_230

    const-string v0, "NetworkAnalytics:Service"

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleNAPClientCall: file descriptor failed for profile:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " doStart:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22e
    .catch Ljava/lang/Exception; {:try_start_202 .. :try_end_22e} :catch_3a9
    .catchall {:try_start_202 .. :try_end_22e} :catchall_3a7

    .line 337
    monitor-exit p0

    return v4

    .line 346
    :cond_230
    :try_start_230
    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->checkNcmVersionMismatch()I

    move-result v4

    if-gez v4, :cond_28f

    const-string v0, "NetworkAnalytics:Service"

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleNAPClientCall: ncm version match failed for profile:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " doStart:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25b
    .catch Ljava/lang/Exception; {:try_start_230 .. :try_end_25b} :catch_3a9
    .catchall {:try_start_230 .. :try_end_25b} :catchall_3a7

    .line 349
    monitor-exit p0

    return v4

    :cond_25d
    const/16 v0, -0x13

    :try_start_25f
    const-string v2, "NetworkAnalytics:Service"

    .line 342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleNAPClientCall: file descriptor failed for profile:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " doStart:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_282
    .catch Ljava/lang/Exception; {:try_start_25f .. :try_end_282} :catch_3a9
    .catchall {:try_start_25f .. :try_end_282} :catchall_3a7

    .line 343
    monitor-exit p0

    return v0

    :cond_284
    :goto_284
    :try_start_284
    const-string v0, "NetworkAnalytics:Service"

    const-string/jumbo v2, "handleNAPClientCall: Client trying to collect data with Invalid flow information"

    .line 277
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28c
    .catch Ljava/lang/Exception; {:try_start_284 .. :try_end_28c} :catch_3a9
    .catchall {:try_start_284 .. :try_end_28c} :catchall_3a7

    .line 279
    monitor-exit p0

    return v8

    :cond_28e
    const/4 v12, 0x0

    .line 352
    :cond_28f
    :try_start_28f
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v4

    const/16 v10, -0x3e7

    if-ne v4, v10, :cond_2d6

    .line 353
    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v11

    invoke-virtual {v4, v10, v11, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->updateBindUserIdForProfile(Ljava/lang/String;II)I

    move-result v4

    if-gez v4, :cond_32c

    const-string v10, "NetworkAnalytics:Service"

    .line 355
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleNAPClientCall: bind userId updation failed for profile:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " doStart:"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    .line 356
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2d0
    .catch Ljava/lang/Exception; {:try_start_28f .. :try_end_2d0} :catch_3a9
    .catchall {:try_start_28f .. :try_end_2d0} :catchall_3a7

    if-eqz v5, :cond_2d4

    goto/16 :goto_388

    :cond_2d4
    monitor-exit p0

    return v4

    .line 358
    :cond_2d6
    :try_start_2d6
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v4

    const/16 v10, -0x3e7

    if-eq v4, v10, :cond_32c

    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 359
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isProfileActivatedForUser(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_32c

    .line 360
    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v11

    invoke-virtual {v4, v10, v11, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->updateBindUserIdForProfile(Ljava/lang/String;II)I

    move-result v4

    if-gez v4, :cond_32c

    const-string v10, "NetworkAnalytics:Service"

    .line 362
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleNAPClientCall: bind userId updation failed for profile after default check:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " doStart:"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    .line 363
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_327
    .catch Ljava/lang/Exception; {:try_start_2d6 .. :try_end_327} :catch_3a9
    .catchall {:try_start_2d6 .. :try_end_327} :catchall_3a7

    if-eqz v5, :cond_32a

    goto :goto_388

    :cond_32a
    monitor-exit p0

    return v4

    :cond_32c
    if-eqz v3, :cond_330

    const/4 v4, 0x1

    goto :goto_331

    :cond_330
    move v4, v12

    .line 366
    :goto_331
    :try_start_331
    invoke-virtual {v1, v5, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I

    move-result v4

    if-gez v4, :cond_365

    const-string v10, "NetworkAnalytics:Service"

    .line 369
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleNAPClientCall: activation failed for profile:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " doStart:"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    .line 370
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_360
    .catch Ljava/lang/Exception; {:try_start_331 .. :try_end_360} :catch_3a9
    .catchall {:try_start_331 .. :try_end_360} :catchall_3a7

    if-eqz v5, :cond_363

    goto :goto_388

    :cond_363
    monitor-exit p0

    return v4

    .line 373
    :cond_365
    :try_start_365
    new-instance v10, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v10, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    .line 374
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 375
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 376
    iput v6, v10, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    const/4 v11, 0x0

    .line 377
    iput-object v11, v10, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    if-eqz v3, :cond_37f

    const/4 v11, 0x1

    goto :goto_380

    :cond_37f
    move v11, v12

    .line 380
    :goto_380
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v5

    const/4 v12, 0x1

    .line 378
    invoke-virtual {v1, v12, v11, v5, v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    :goto_388
    move v5, v4

    const/4 v4, -0x1

    goto/16 :goto_56

    :cond_38c
    move v4, v5

    goto :goto_3c2

    :cond_38e
    :goto_38e
    const-string v0, "NetworkAnalytics:Service"

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleNAPClientCall: Invalid parameters. doStart:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a5
    .catch Ljava/lang/Exception; {:try_start_365 .. :try_end_3a5} :catch_3a9
    .catchall {:try_start_365 .. :try_end_3a5} :catchall_3a7

    .line 235
    monitor-exit p0

    return v8

    :catchall_3a7
    move-exception v0

    goto :goto_3c4

    :catch_3a9
    move-exception v0

    :try_start_3aa
    const-string v2, "NetworkAnalytics:Service"

    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleNAPClientCall: Exception in doStart:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c1
    .catchall {:try_start_3aa .. :try_end_3c1} :catchall_3a7

    const/4 v4, -0x1

    .line 387
    :goto_3c2
    monitor-exit p0

    return v4

    :goto_3c4
    monitor-exit p0

    throw v0
.end method

.method public final initializeHandlerThread()V
    .registers 1

    return-void
.end method

.method public final initializeNapData()V
    .registers 1

    return-void
.end method

.method public final isAllowedRecordingForUsers(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public isProfileActivatedForUser(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .registers 7

    .line 444
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    const-string v1, "NetworkAnalytics:Service"

    if-eqz v0, :cond_1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileActivatedForUser API caller is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-eqz v0, :cond_3a

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileActivatedForUser API caller with updated contextInfo is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_3a
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-lez v0, :cond_84

    if-nez p2, :cond_41

    goto :goto_84

    .line 453
    :cond_41
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->doesAdminOwnProfile(ILjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_72

    .line 455
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileActivatedForUser: Profile "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "is absent or does not belong to adminUid "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " return="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 459
    :cond_72
    :try_start_72
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isProfileActivatedForUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7a} :catch_7b

    goto :goto_83

    :catch_7b
    move-exception p0

    const-string/jumbo p1, "isProfileActivatedForUser: Remove profile to database falied. Exception"

    .line 461
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    :goto_83
    return p0

    :cond_84
    :goto_84
    const-string/jumbo p0, "isProfileActivatedForUser: Invalid parameters"

    .line 450
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    return p0
.end method

.method public final isValidAppInstalled(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    const/4 p0, -0x1

    return p0
.end method

.method public final listOfProfilesForOperation(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public registerNetworkMonitorProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .registers 9

    .line 177
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    const-string v1, "NetworkAnalytics:Service"

    if-eqz v0, :cond_1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerNetworkMonitorProfile API caller is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-eqz v0, :cond_3a

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerNetworkMonitorProfile API caller with updated contextInfo is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    if-eqz p1, :cond_ee

    if-nez p2, :cond_40

    goto/16 :goto_ee

    :cond_40
    if-eqz v0, :cond_61

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerNetworkMonitorProfile: allowUserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " profile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_61
    :try_start_61
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getJSonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 189
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->validateJsonContent(Lorg/json/JSONObject;)I

    move-result v3

    if-gez v3, :cond_85

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerNetworkMonitorProfile: JSON validation failed:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 194
    :cond_85
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v4, v2, p2, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->addProfileToDatabase(ILorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_a7

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerNetworkMonitorProfile: Add profile to database failed:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_a7
    if-nez v2, :cond_c4

    .line 200
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getClientProfileNames(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c4

    .line 201
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c4

    if-eqz v0, :cond_c1

    const-string v0, "The Knox NAP feature has been enabled"

    .line 202
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_c1
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    .line 206
    :cond_c4
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    const-string/jumbo v3, "profile_name"

    invoke-virtual {v0, v3, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileObjectFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_cc
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_cc} :catch_d6
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_cc} :catch_cd

    goto :goto_de

    :catch_cd
    move-exception v0

    const-string/jumbo v2, "registerNetworkMonitorProfile: Exception"

    .line 212
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x1

    goto :goto_de

    :catch_d6
    move-exception v0

    const-string/jumbo v2, "registerNetworkMonitorProfile: JSON Parsing Exception"

    .line 209
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x2

    :goto_de
    if-nez v2, :cond_ed

    .line 216
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_e8

    .line 217
    invoke-virtual {p0, v1, v1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->constructObjectForBroadcast(IILjava/lang/String;)V

    .line 219
    :cond_e8
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->constructObjectForBroadcast(IILjava/lang/String;)V

    :cond_ed
    return v2

    :cond_ee
    :goto_ee
    const-string/jumbo p0, "registerNetworkMonitorProfile: Invalid parameters."

    .line 182
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    return p0
.end method

.method public final sendMessageToHandler(IIILjava/lang/Object;)V
    .registers 5

    return-void
.end method

.method public final sendStatusToClient(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final setFeatureProperty(Z)V
    .registers 2

    return-void
.end method

.method public final setupIntentFilter()V
    .registers 1

    return-void
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public final unregisterNetworkMonitorProfile(ILjava/lang/String;)I
    .registers 3

    const/4 p0, -0x1

    return p0
.end method

.method public unregisterNetworkMonitorProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .registers 7

    .line 469
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    const-string v1, "NetworkAnalytics:Service"

    if-eqz v0, :cond_1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterNetworkMonitorProfile API caller is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-eqz v0, :cond_3a

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterNetworkMonitorProfile API caller with updated contextInfo is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_3a
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->unregisterNetworkMonitorProfile(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final validateNAPClient(IIZLjava/lang/String;)I
    .registers 5

    const/4 p0, -0x1

    return p0
.end method

.method public final validateNAPClient(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    const/4 p0, -0x1

    return p0
.end method
