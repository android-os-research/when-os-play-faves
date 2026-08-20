.class public Lcom/android/server/RCPManagerService;
.super Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RCPManagerService$ExchangeDataInfo;
    }
.end annotation


# static fields
.field public static final POLICY_NOT_ALLOWED:I = -0xf4240

.field public static final REGISTRATION_EXCEPTION:I = -0xf4241

.field public static final REMOTE_EXCEPTION:I = -0xf4242

.field public static TAG:Ljava/lang/String; = "RCPManagerService"

.field public static sContext:Landroid/content/Context;


# instance fields
.field public final KNOX_DEBUG:Z

.field public final OWNER_ID:I

.field public knoxCaptureInputFilter:Lcom/android/server/KnoxCaptureInputFilter;

.field public mBridgeHandler:Landroid/os/Handler;

.field public mBridgeProxyAliveList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/bridge/BridgeProxy;",
            ">;"
        }
    .end annotation
.end field

.field public mBridgeRunnable:Ljava/lang/Runnable;

.field public mContainerstateReceiver:Landroid/os/ContainerStateReceiver;

.field public mContext:Landroid/content/Context;

.field public final mEmergencyModeReceiver:Landroid/content/BroadcastReceiver;

.field public mExchangeDataInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/RCPManagerService$ExchangeDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mIMMS:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public mInputManagerService:Lcom/android/server/input/InputManagerService;

.field public mIsInitialized:Z

.field public mPm:Lcom/samsung/android/knox/SemPersonaManager;

.field public mRCPInterfaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/content/IRCPInterface;",
            ">;"
        }
    .end annotation
.end field

.field public mUm:Landroid/os/UserManager;

.field public final mUserReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBridgeProxyAliveList(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckIfGearConnected(Lcom/android/server/RCPManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->checkIfGearConnected()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetPersonas(Lcom/android/server/RCPManagerService;Z)Ljava/util/List;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/RCPManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mscanAndStartBridgeProxy(Lcom/android/server/RCPManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/RCPManagerService;->scanAndStartBridgeProxy(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendRCPPolicyBroadcastToGearManager(Lcom/android/server/RCPManagerService;Landroid/content/Context;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/RCPManagerService;->sendRCPPolicyBroadcastToGearManager(Landroid/content/Context;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterBridgeProxy(Lcom/android/server/RCPManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/RCPManagerService;->unregisterBridgeProxy(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smcheckCallerPermissionFor(Ljava/lang/String;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 366
    invoke-direct {p0}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;-><init>()V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/android/server/RCPManagerService;->OWNER_ID:I

    const-string/jumbo v1, "ro.build.type"

    .line 92
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eng"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcom/android/server/RCPManagerService;->mUm:Landroid/os/UserManager;

    .line 94
    iput-object v1, p0, Lcom/android/server/RCPManagerService;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    .line 96
    iput-boolean v0, p0, Lcom/android/server/RCPManagerService;->mIsInitialized:Z

    .line 99
    iput-object v1, p0, Lcom/android/server/RCPManagerService;->mIMMS:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 100
    iput-object v1, p0, Lcom/android/server/RCPManagerService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 124
    iput-object v1, p0, Lcom/android/server/RCPManagerService;->mBridgeHandler:Landroid/os/Handler;

    .line 125
    new-instance v0, Lcom/android/server/RCPManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/RCPManagerService$1;-><init>(Lcom/android/server/RCPManagerService;)V

    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 169
    new-instance v0, Lcom/android/server/RCPManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/RCPManagerService$2;-><init>(Lcom/android/server/RCPManagerService;)V

    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mEmergencyModeReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    new-instance v0, Lcom/android/server/RCPManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/RCPManagerService$3;-><init>(Lcom/android/server/RCPManagerService;)V

    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mContainerstateReceiver:Landroid/os/ContainerStateReceiver;

    .line 382
    new-instance v0, Lcom/android/server/RCPManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/RCPManagerService$4;-><init>(Lcom/android/server/RCPManagerService;)V

    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mBridgeRunnable:Ljava/lang/Runnable;

    .line 799
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mExchangeDataInfos:Ljava/util/List;

    .line 367
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_65

    .line 371
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Context is null(). Failed to start service"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 375
    :cond_65
    iput-object p1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 376
    sput-object p1, Lcom/android/server/RCPManagerService;->sContext:Landroid/content/Context;

    .line 377
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    return-void
.end method

.method public static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 5

    .line 107
    sget-object v0, Lcom/android/server/RCPManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 108
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "RCPManagerService"

    .line 107
    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    const/4 p0, 0x0

    return p0

    .line 109
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security Exception Occurred while pid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] with uid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] trying to access methodName ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] in ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] service"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 117
    throw v0
.end method


# virtual methods
.method public cancelCopyChunks(J)V
    .registers 6

    .line 780
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    if-nez v0, :cond_e

    .line 782
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string p1, "failed to cancelCopyChunks"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const-string v0, "cancelCopyChunks"

    .line 785
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 786
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v1, "P_OS_RCP cancelCopyChunks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelCopyChunks() sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 789
    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    .line 790
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->cancelCopyChunks(J)V

    return-void
.end method

.method public final checkIfGearConnected()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I
    .registers 25

    .line 761
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    if-nez v0, :cond_f

    .line 763
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v1, "failed to copyChunks"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_f
    const-string v0, "copyChunks"

    .line 766
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 767
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v1, "P_OS_RCP copyChunks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyChunks() srcContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; srcFilePath="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; destContainerId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; destFilePath="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; offset="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p5

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "; length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p7

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; sessionId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p8

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "; deleteSrc="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p10

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    .line 773
    iget-object v0, v0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 774
    invoke-static {v0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object v3

    move v5, p1

    .line 775
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->copyChunks(Ljava/lang/String;ILjava/lang/String;IJIJZ)I

    move-result v0

    return v0
.end method

.method public copyFile(ILjava/lang/String;ILjava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 933
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_f

    .line 935
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string p1, "failed to copyFile"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    const-string v0, "copyFile"

    .line 938
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 940
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 942
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v1, "copyFile  getRCPInterface not NULL "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/content/IRCPInterface;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0

    .line 946
    :cond_26
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string p1, "copyFile  getRCPInterface NULL "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I
    .registers 13

    .line 632
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    if-nez v0, :cond_f

    .line 634
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string p1, "failed to copyFileInternal"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_f
    const-string v0, "copyFile"

    .line 637
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 639
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFile() srcContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; srcFilePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; destContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; destFilePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/RCPManagerService;->getAppNameByPID(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.bbc.bbcagent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const/4 v6, 0x3

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move-object v4, p4

    move v5, p3

    .line 644
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/RCPManagerService;->copyPackageData(Ljava/lang/String;ILjava/lang/String;II)I

    move-result p0

    return p0

    .line 649
    :cond_5d
    invoke-virtual {p0, p2}, Lcom/android/server/RCPManagerService;->isPackageDataRelatedPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_75

    invoke-virtual {p0, p4}, Lcom/android/server/RCPManagerService;->isPackageDataRelatedPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    goto :goto_75

    .line 658
    :cond_6a
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    .line 659
    invoke-virtual {p0, p2, p1, p4, p3}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->copy(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p0

    return p0

    :cond_75
    :goto_75
    const-string v0, "TAG"

    const-string v1, "Package data related copy; calling proper delegation method"

    .line 651
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x3

    move-object v2, p0

    move-object v3, p2

    move v4, p1

    move-object v5, p4

    move v6, p3

    .line 653
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/RCPManagerService;->copyPackageData(Ljava/lang/String;ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public copyPackageData(Ljava/lang/String;ILjava/lang/String;II)I
    .registers 12

    .line 1005
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1007
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string p1, "failed to copyPackageData"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1010
    :cond_f
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v1, "copyPackageData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 1012
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->copy(Ljava/lang/String;ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public deleteAllPersonaData(I)V
    .registers 2

    .line 609
    invoke-virtual {p0, p1}, Lcom/android/server/RCPManagerService;->unregisterBridgeProxy(I)V

    .line 610
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public deleteFile(Ljava/lang/String;I)Z
    .registers 6

    .line 730
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    if-nez v0, :cond_f

    .line 732
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string p1, "failed to deleteFile"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_f
    const-string v0, "deleteFile"

    .line 735
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 737
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFile() containerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 739
    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    .line 740
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->deleteFile(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    .line 1017
    sget-object p1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string p3, "RCP DumpState Started"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    iget-object p1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    .line 1019
    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3e

    .line 1020
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: can\'t dump RCPManagerService from from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1020
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1025
    :cond_3e
    iget-object p1, p0, Lcom/android/server/RCPManagerService;->mUm:Landroid/os/UserManager;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_103

    .line 1027
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_103

    .line 1029
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1030
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No of Personas : "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    iget-object p3, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3, p2}, Lcom/android/server/bridge/operations/RCPDumpState;->getInstance(Landroid/content/Context;Ljava/io/PrintWriter;)Lcom/android/server/bridge/operations/RCPDumpState;

    move-result-object p3

    .line 1038
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_73
    :goto_73
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 1039
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1040
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 1041
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    .line 1042
    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mUm:Landroid/os/UserManager;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v5

    .line 1043
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PersonaId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , isKnoxId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , isUserRunning : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "++++++++++++++++"

    if-eqz v4, :cond_d4

    if-eqz v5, :cond_d4

    .line 1046
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "++++++++++++++++FileOpsTable of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p3, p2, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateFileOpsTable(Ljava/io/PrintWriter;I)V

    .line 1049
    :cond_d4
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 1050
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v5, "BNR logs"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "++++++++++++++++Start of BackupAndRestore dump for Persona ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {p3, p2, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpBackupAndRestoreHistory(Ljava/io/PrintWriter;I)V

    goto/16 :goto_73

    .line 1057
    :cond_ff
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_108

    :cond_103
    const-string p0, "No of Personas : Zero"

    .line 1059
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_108
    return-void
.end method

.method public declared-synchronized exchangeData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    monitor-enter p0

    .line 884
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 886
    sget-object p1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string p2, "failed to exchangeData"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_cf

    .line 887
    monitor-exit p0

    return-object v1

    :cond_11
    :try_start_11
    const-string v0, "exchangeData"

    .line 890
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    if-eqz p1, :cond_b7

    if-gez p2, :cond_1c

    goto/16 :goto_b7

    :cond_1c
    if-eqz p3, :cond_97

    const-string v0, "action"

    .line 900
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_97

    const-string v0, "action"

    .line 901
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 904
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_97

    const-string v2, "ImeReq"

    .line 905
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 906
    invoke-virtual {p0, p3}, Lcom/android/server/RCPManagerService;->processImeRequest(Landroid/os/Bundle;)V
    :try_end_3f
    .catchall {:try_start_11 .. :try_end_3f} :catchall_cf

    .line 907
    monitor-exit p0

    return-object v1

    :cond_41
    :try_start_41
    const-string/jumbo v2, "updateKnoxCaptureFilter"

    .line 908
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6d

    const-string/jumbo p1, "input"

    .line 909
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/InputManagerService;

    iput-object p1, p0, Lcom/android/server/RCPManagerService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const-string p1, "add"

    .line 910
    invoke-virtual {p3, p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 911
    iget-object p1, p0, Lcom/android/server/RCPManagerService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    iget-object p2, p0, Lcom/android/server/RCPManagerService;->knoxCaptureInputFilter:Lcom/android/server/KnoxCaptureInputFilter;

    invoke-virtual {p1, p2}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    goto :goto_6b

    .line 913
    :cond_66
    iget-object p1, p0, Lcom/android/server/RCPManagerService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V
    :try_end_6b
    .catchall {:try_start_41 .. :try_end_6b} :catchall_cf

    .line 915
    :goto_6b
    monitor-exit p0

    return-object v1

    :cond_6d
    :try_start_6d
    const-string/jumbo v2, "updateInputDeviceId"

    .line 916
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    const-string p1, "add"

    .line 917
    invoke-virtual {p3, p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 918
    iget-object p1, p0, Lcom/android/server/RCPManagerService;->knoxCaptureInputFilter:Lcom/android/server/KnoxCaptureInputFilter;

    const-string p2, "deviceId"

    invoke-virtual {p3, p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/KnoxCaptureInputFilter;->markInputDeviceAsScanner(I)V

    goto :goto_95

    .line 920
    :cond_8a
    iget-object p1, p0, Lcom/android/server/RCPManagerService;->knoxCaptureInputFilter:Lcom/android/server/KnoxCaptureInputFilter;

    const-string p2, "deviceId"

    invoke-virtual {p3, p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/KnoxCaptureInputFilter;->unmarkInputDeviceAsScanner(I)V
    :try_end_95
    .catchall {:try_start_6d .. :try_end_95} :catchall_cf

    .line 922
    :goto_95
    monitor-exit p0

    return-object v1

    .line 927
    :cond_97
    :try_start_97
    sget-object p3, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR | exchange Data | from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", to user id : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_97 .. :try_end_b5} :catchall_cf

    .line 928
    monitor-exit p0

    return-object v1

    .line 894
    :cond_b7
    :goto_b7
    :try_start_b7
    sget-object p1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exchangeData() return false for input param is not valid"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catchall {:try_start_b7 .. :try_end_cd} :catchall_cf

    .line 897
    monitor-exit p0

    return-object v1

    :catchall_cf
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getAllUserIds()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 415
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 416
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 433
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 435
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2f
    return-object v0
.end method

.method public final getAppNameByPID(I)Ljava/lang/String;
    .registers 4

    .line 663
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 664
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 667
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 668
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 669
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, p1, :cond_1a

    .line 670
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_2d
    const-string p0, ""

    return-object p0
.end method

.method public final getExchangeDataMap(IZ)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/IRunnableCallback;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 806
    :goto_1
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mExchangeDataInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 807
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mExchangeDataInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/RCPManagerService$ExchangeDataInfo;

    .line 809
    iget-object v2, v1, Lcom/android/server/RCPManagerService$ExchangeDataInfo;->cbMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 810
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1b

    .line 811
    iget-object p0, v1, Lcom/android/server/RCPManagerService$ExchangeDataInfo;->cbMap:Ljava/util/HashMap;

    return-object p0

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_33
    const/4 p1, 0x0

    if-nez p2, :cond_37

    return-object p1

    .line 820
    :cond_37
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 821
    new-instance v0, Lcom/android/server/RCPManagerService$ExchangeDataInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/server/RCPManagerService$ExchangeDataInfo;-><init>(Lcom/android/server/RCPManagerService;Lcom/android/server/RCPManagerService$ExchangeDataInfo-IA;)V

    .line 823
    iput-object p2, v0, Lcom/android/server/RCPManagerService$ExchangeDataInfo;->cbMap:Ljava/util/HashMap;

    .line 825
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mExchangeDataInfos:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 6

    .line 744
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    if-nez v0, :cond_13

    .line 746
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string p1, "failed to getFileInfo"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    :cond_13
    const-string v0, "getFileInfo"

    .line 749
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 750
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v1, "P_OS_RCP getFileInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileInfo() containerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 754
    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    .line 755
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getFiles(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 713
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    if-nez v0, :cond_13

    .line 715
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string p1, "failed to getFiles"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_13
    const-string v0, "getFiles"

    .line 718
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 719
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v1, "P_OS_RCP getFiles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFiles() containerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 722
    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    .line 723
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getFiles(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getPersonas(Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 289
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2d

    .line 290
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 291
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 292
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 293
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2d
    const/4 p1, 0x0

    :cond_2e
    return-object p1
.end method

.method public final getRCPDataPolicyForUser(Lcom/samsung/android/knox/SemPersonaManager;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1065
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result p0

    if-nez p0, :cond_f

    .line 1067
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string p1, "failed to getRCPDataPolicyForUser"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1070
    :cond_f
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getRCPDataPolicyForUser | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    invoke-virtual {p1, p2, p3, p4}, Lcom/samsung/android/knox/SemPersonaManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRCPInterface()Landroid/content/IRCPInterface;
    .registers 5

    const-string/jumbo v0, "getRCPInterface"

    .line 592
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 593
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRCPInterface My Context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    new-instance v0, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 595
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRCPInterface getting User Id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_52

    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/IRCPInterface;

    return-object p0

    .line 598
    :cond_52
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getRCPInterfaceMap.get(userId) is null. Calling scanAndStartBridgeProxy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :try_start_5a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/RCPManagerService;->scanAndStartBridgeProxy(I)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_61} :catch_62

    goto :goto_66

    :catch_62
    move-exception v1

    .line 602
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 605
    :goto_66
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/IRCPInterface;

    return-object p0
.end method

.method public final initService()Z
    .registers 11

    const-string/jumbo v0, "ms elapsed"

    const-string/jumbo v1, "initService End, "

    .line 300
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initService Start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 304
    iget-boolean v4, p0, Lcom/android/server/RCPManagerService;->mIsInitialized:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_22

    .line 306
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "initService is already done"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_105

    .line 309
    :cond_22
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "initService is doing ... "

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :try_start_2a
    iget-object v4, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    if-nez v4, :cond_55

    .line 313
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "initService, failed to getContext"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_36} :catch_10a
    .catchall {:try_start_2a .. :try_end_36} :catchall_107

    .line 357
    iput-boolean v6, p0, Lcom/android/server/RCPManagerService;->mIsInitialized:Z

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 359
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_43
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_55
    :try_start_55
    const-string/jumbo v7, "user"

    .line 316
    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, p0, Lcom/android/server/RCPManagerService;->mUm:Landroid/os/UserManager;

    if-nez v4, :cond_78

    .line 319
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "initService, failed to get USER_SERVICE"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_6a} :catch_10a
    .catchall {:try_start_55 .. :try_end_6a} :catchall_107

    .line 357
    iput-boolean v6, p0, Lcom/android/server/RCPManagerService;->mIsInitialized:Z

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 359
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_43

    .line 322
    :cond_78
    :try_start_78
    iget-object v4, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "persona"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v4, p0, Lcom/android/server/RCPManagerService;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v4, :cond_9d

    .line 325
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "initService, failed to get SEM_PERSONA_SERVICE"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_8f} :catch_10a
    .catchall {:try_start_78 .. :try_end_8f} :catchall_107

    .line 357
    iput-boolean v6, p0, Lcom/android/server/RCPManagerService;->mIsInitialized:Z

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 359
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_43

    .line 330
    :cond_9d
    :try_start_9d
    iget-object v4, p0, Lcom/android/server/RCPManagerService;->mBridgeHandler:Landroid/os/Handler;

    if-nez v4, :cond_b3

    .line 332
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/RCPManagerService;->mBridgeHandler:Landroid/os/Handler;

    .line 334
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mBridgeRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x2710

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    :cond_b3
    new-instance v4, Landroid/content/IntentFilter;

    const-string v7, "com.samsung.android.plugin.ACTION_PLUGIN_CHANGE_NOTI"

    invoke-direct {v4, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 338
    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/RCPManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 341
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 342
    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/RCPManagerService;->mEmergencyModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 345
    iget-object v4, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mContainerstateReceiver:Landroid/os/ContainerStateReceiver;

    invoke-static {v4, v7}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    .line 348
    new-instance v4, Lcom/android/server/KnoxCaptureInputFilter;

    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/android/server/KnoxCaptureInputFilter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/RCPManagerService;->knoxCaptureInputFilter:Lcom/android/server/KnoxCaptureInputFilter;
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_e7} :catch_10a
    .catchall {:try_start_9d .. :try_end_e7} :catchall_107

    .line 357
    iput-boolean v6, p0, Lcom/android/server/RCPManagerService;->mIsInitialized:Z

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 359
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v2

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_105
    move v5, v6

    goto :goto_132

    :catchall_107
    move-exception v4

    move v5, v6

    goto :goto_134

    :catch_10a
    move-exception v4

    .line 353
    :try_start_10b
    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "initService is not completed due to... "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_116
    .catchall {:try_start_10b .. :try_end_116} :catchall_133

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 359
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_132
    return v5

    :catchall_133
    move-exception v4

    :goto_134
    if-eqz v5, :cond_138

    .line 357
    iput-boolean v6, p0, Lcom/android/server/RCPManagerService;->mIsInitialized:Z

    .line 358
    :cond_138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 359
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v5, v2

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    throw v4
.end method

.method public isFileExist(Ljava/lang/String;I)Z
    .registers 6

    .line 697
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    if-nez v0, :cond_f

    .line 699
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string p1, "failed to isFileExist"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_f
    const-string/jumbo v0, "isFileExist"

    .line 702
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 703
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v1, "P_OS_RCP isFileExist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isFileExist() containerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 707
    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    .line 708
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isFileExist(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isGearBTDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5

    .line 456
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "isGearBTDevice"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_10

    return p1

    .line 463
    :cond_10
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    .line 464
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btclassvalue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x704

    if-ne p0, v0, :cond_38

    .line 467
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "it is GearDevice"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 471
    :cond_38
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "isGearBTDevice return false"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public final isPackageDataRelatedPath(Ljava/lang/String;)Z
    .registers 5

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    const-string v0, "/data/data"

    .line 1078
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "/data/user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "/data/user_de"

    .line 1079
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_35

    .line 1084
    :cond_1d
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not a package path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 1080
    :cond_35
    :goto_35
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package path detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public moveFile(ILjava/lang/String;ILjava/lang/String;)I
    .registers 8

    .line 680
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    if-nez v0, :cond_f

    .line 682
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string p1, "failed to moveFile"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_f
    const-string/jumbo v0, "moveFile"

    .line 685
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 686
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v1, "P_OS_RCP moveFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveFile() srcContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; srcFilePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; destContainerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; destFilePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 691
    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    .line 692
    invoke-virtual {p0, p2, p1, p4, p3}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->move(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public moveFilesForApp(ILjava/util/List;Ljava/util/List;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo p0, "moveFilesForApp"

    .line 952
    invoke-static {p0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 953
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string p1, "ERROR | called move Files For App"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 980
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_10

    .line 982
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string p1, "failed to moveFilesForAppEx"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_10
    const-string/jumbo v0, "moveFilesForApp"

    .line 985
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 987
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 990
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "moveFilesForAppEx  getRCPInterface not NULL "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/content/IRCPInterface;->moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J

    move-result-wide p0

    return-wide p0

    .line 994
    :cond_29
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "moveFilesForAppEx  getRCPInterface NULL "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public moveUnlimitedFiles(ILandroid/net/Uri;II)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 960
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_10

    .line 962
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string p1, "failed to moveUnlimitedFiles"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    .line 968
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 970
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "moveFilesForAppEx moveFiles(>500) getRCPInterface not NULL "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/content/IRCPInterface;->moveUnlimitedFilesForApp(ILandroid/net/Uri;II)J

    move-result-wide p0

    return-wide p0

    .line 974
    :cond_23
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "moveFiles(>500) getRCPInterface NULL "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public final processImeRequest(Landroid/os/Bundle;)V
    .registers 5

    const-string/jumbo v0, "keyEvent"

    const-string v1, "commitText"

    .line 858
    :try_start_5
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mIMMS:Lcom/android/server/inputmethod/InputMethodManagerService;

    if-nez v2, :cond_14

    const-string/jumbo v2, "input_method"

    .line 859
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-object v2, p0, Lcom/android/server/RCPManagerService;->mIMMS:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 863
    :cond_14
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mIMMS:Lcom/android/server/inputmethod/InputMethodManagerService;

    if-eqz v2, :cond_39

    .line 864
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 865
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mIMMS:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendInputText(Ljava/lang/CharSequence;)V

    .line 868
    :cond_27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 869
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mIMMS:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_46

    .line 872
    :cond_39
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "mIMMS is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p0

    .line 876
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_46
    :goto_46
    return-void
.end method

.method public registerExchangeData(Ljava/lang/String;Landroid/os/IRunnableCallback;I)Z
    .registers 6

    .line 845
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_f

    .line 847
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string p1, "failed to registerExchangeData"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_f
    const-string/jumbo p0, "registerExchangeData"

    .line 850
    invoke-static {p0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 851
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerExchangeData User calling is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public registerRCPInterface(Landroid/content/IRCPInterface;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    if-nez v0, :cond_e

    .line 274
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string p1, "failed to registerRCPInterface"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const-string/jumbo v0, "registerRCPInterface"

    .line 277
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 278
    iget-boolean v0, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    if-eqz v0, :cond_46

    .line 279
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerRCPInterface My Context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerRCPInterface  User calling is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_46
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeExchangeDataInfo(I)V
    .registers 5

    const/4 v0, 0x0

    .line 831
    :goto_1
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mExchangeDataInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 832
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mExchangeDataInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/RCPManagerService$ExchangeDataInfo;

    .line 833
    iget-object v1, v1, Lcom/android/server/RCPManagerService$ExchangeDataInfo;->cbMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 834
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1b

    .line 835
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mExchangeDataInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_35
    return-void
.end method

.method public final scanAndStartBridgeProxy(I)V
    .registers 7

    .line 523
    iget-boolean v0, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    if-eqz v0, :cond_1a

    .line 524
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " scanAndStartBridgeProxy called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_1a
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_41

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 527
    iget-boolean v0, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    if-eqz v0, :cond_94

    .line 528
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scanAndStartBridgeProxy : starting BridgeProxy for persona - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 532
    :cond_41
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 533
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, p1, :cond_69

    .line 534
    iget-boolean v0, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    if-eqz v0, :cond_94

    .line 535
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scanAndStartBridgeProxy : starting BridgeProxy for persona - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 540
    :cond_69
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_15a

    .line 541
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_79

    goto/16 :goto_15a

    .line 549
    :cond_79
    iget-boolean v0, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    if-eqz v0, :cond_94

    .line 550
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scanAndStartBridgeProxy : starting BridgeProxy for owner - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_94
    :goto_94
    :try_start_94
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "ultra_powersaving_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_a6

    move v0, v1

    goto :goto_a7

    :cond_a6
    move v0, v3

    .line 560
    :goto_a7
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "emergency_mode"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_b6

    goto :goto_b7

    :cond_b6
    move v1, v3

    .line 562
    :goto_b7
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RCPManagerService : ultraPwrEnabled-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " emergencyModeEnabled-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_137

    if-eqz v1, :cond_da

    goto :goto_137

    .line 568
    :cond_da
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_dd} :catch_13f

    .line 569
    :try_start_dd
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_105

    .line 570
    iget-boolean p0, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    if-eqz p0, :cond_103

    .line 571
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Returning...BridgeProxy already active for user - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_103
    monitor-exit v0

    return-void

    .line 576
    :cond_105
    new-instance v1, Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {v1, p1}, Lcom/android/server/bridge/BridgeProxy;-><init>(I)V

    .line 577
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/bridge/BridgeProxy;->start(Landroid/content/Context;)V

    .line 578
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    iget-boolean p0, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    if-eqz p0, :cond_132

    .line 581
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindToBridgeProxy : started BridgeProxy for user - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_132
    monitor-exit v0

    goto :goto_159

    :catchall_134
    move-exception p0

    monitor-exit v0
    :try_end_136
    .catchall {:try_start_dd .. :try_end_136} :catchall_134

    :try_start_136
    throw p0

    .line 564
    :cond_137
    :goto_137
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v0, "RCPManagerService : device in either emergency or ups mode hence not starting BridgeProxy"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_13e} :catch_13f

    return-void

    :catch_13f
    move-exception p0

    .line 585
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No need to start BridgeProxy for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_159
    return-void

    .line 542
    :cond_15a
    :goto_15a
    iget-boolean p0, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    if-eqz p0, :cond_17a

    .line 543
    sget-object p0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scanAndStartBridgeProxy: NOT starting Bridge Proxy for user = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; because it doesn\'t have personas or it is a guest!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17a
    return-void
.end method

.method public final sendRCPPolicyBroadcastToGearManager(Landroid/content/Context;I)V
    .registers 12

    const-string/jumbo v0, "persona"

    .line 484
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_6e

    const/4 v1, -0x1

    const-string v2, "com.samsung.permission.READ_KNOX_NOTIFICATION"

    const-string/jumbo v3, "policy"

    const-string/jumbo v4, "personaId"

    const-string/jumbo v5, "samsung.knox.intent.action.NOTIFICATION_POLICY_CHANGED"

    const-string/jumbo v6, "knox-sanitize-data"

    const-string v7, "Notifications"

    if-ne p2, v1, :cond_5a

    .line 488
    iget-object p2, p0, Lcom/android/server/RCPManagerService;->mUm:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6e

    .line 490
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_30
    :goto_30
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    if-eqz v5, :cond_30

    .line 492
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 493
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v8, v7, v6}, Lcom/android/server/RCPManagerService;->getRCPDataPolicyForUser(Lcom/samsung/android/knox/SemPersonaManager;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 498
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 499
    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v5, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_30

    .line 507
    :cond_5a
    invoke-virtual {p0, v0, p2, v7, v6}, Lcom/android/server/RCPManagerService;->getRCPDataPolicyForUser(Lcom/samsung/android/knox/SemPersonaManager;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 510
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 512
    invoke-virtual {v0, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    sget-object p0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_6e
    return-void
.end method

.method public final unregisterBridgeProxy(I)V
    .registers 5

    .line 615
    iget-boolean v0, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    if-eqz v0, :cond_1f

    .line 616
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----- unregisterBridgeProxy : for user - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_1f
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/bridge/BridgeProxy;

    if-eqz v0, :cond_30

    .line 621
    invoke-virtual {v0}, Lcom/android/server/bridge/BridgeProxy;->stop()V

    .line 623
    :cond_30
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
