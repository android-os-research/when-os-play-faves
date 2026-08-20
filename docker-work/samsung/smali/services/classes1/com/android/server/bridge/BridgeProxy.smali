.class public Lcom/android/server/bridge/BridgeProxy;
.super Ljava/lang/Object;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;
    }
.end annotation


# static fields
.field public static final DST_FILENAME:Ljava/lang/String; = "dstCreateFile"

.field public static final FILE_EXPORT_POLICY_TYPE:I = 0x1

.field public static final FILE_IMPORT_POLICY_TYPE:I = 0x2

.field public static final INTENT_MOVE_TO_KNOX:Ljava/lang/String; = "com.sec.knox.bridge.MOVE_TO_KNOX"

.field public static final PATH_MNT_EXTSD:Ljava/lang/String; = "/mnt/extSdCard"

.field public static final PATH_MNT_INTERNALSD:Ljava/lang/String; = "/mnt/sdcard"

.field public static final PATH_STORAGE_EXTSD:Ljava/lang/String; = "/storage/extSdCard"

.field public static final PATH_STORAGE_USB:Ljava/lang/String; = "/storage/"

.field public static final SRC_FILENAME:Ljava/lang/String; = "srcCreateFile"

.field public static final TAG:Ljava/lang/String; = "BridgeProxy"


# instance fields
.field public mContainerAgentSwitchActivity:Ljava/lang/String;

.field public mContainerCorePkg:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mDelegateUserHandle:Landroid/os/UserHandle;

.field public mDelegateUserId:I

.field public final mIRCPInterfaceCallBack:Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

.field public mSecureFolderPkg:Ljava/lang/String;

.field public mSecureFolderSwitchActivity:Ljava/lang/String;

.field public mSemRemoteContentManager:Lcom/samsung/android/knox/SemRemoteContentManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContainerAgentSwitchActivity(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy;->mContainerAgentSwitchActivity:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContainerCorePkg(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy;->mContainerCorePkg:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDelegateUserHandle(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDelegateUserId(Lcom/android/server/bridge/BridgeProxy;)I
    .registers 1

    iget p0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecureFolderPkg(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureFolderPkg:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecureFolderSwitchActivity(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureFolderSwitchActivity:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSemRemoteContentManager(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemRemoteContentManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy;->mSemRemoteContentManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mclearIdentityAndStartActivityAsUser(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/bridge/BridgeProxy;->clearIdentityAndStartActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetFilesPolicy(Lcom/android/server/bridge/BridgeProxy;II)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/bridge/BridgeProxy;->getFilesPolicy(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetSecureFolderId(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->getSecureFolderId(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack-IA;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIRCPInterfaceCallBack:Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

    .line 66
    iput-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mSemRemoteContentManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 69
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    const-string v0, "com.samsung.android.knox.containercore"

    .line 70
    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mContainerCorePkg:Ljava/lang/String;

    const-string v0, "com.samsung.knox.securefolder"

    .line 71
    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureFolderPkg:Ljava/lang/String;

    const-string v0, ".switcher.SwitchAliasActivity"

    .line 72
    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureFolderSwitchActivity:Ljava/lang/String;

    const-string v0, ".rcpcomponents.move.activity.KnoxCoreSwitchMainActivity"

    .line 73
    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mContainerAgentSwitchActivity:Ljava/lang/String;

    .line 99
    iput p1, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 100
    new-instance p1, Landroid/os/UserHandle;

    iget v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-direct {p1, v0}, Landroid/os/UserHandle;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 6

    .line 83
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCallerPermissionFor, ServiceName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Proxy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , MethodName : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 85
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 84
    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_32

    const/4 p0, 0x0

    return p0

    .line 86
    :cond_32
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Security Exception Occurred while pid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] with uid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] trying to access methodName ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] in ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] service"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 92
    throw p0
.end method

.method public final clearIdentityAndStartActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 6

    .line 558
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_19

    if-eqz p2, :cond_19

    if-nez p3, :cond_9

    goto :goto_19

    .line 559
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 561
    :try_start_d
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_14

    .line 563
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 564
    throw p0

    :cond_19
    :goto_19
    return-void
.end method

.method public final getFilesPolicy(II)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public final getSecureFolderId(Landroid/content/Context;)I
    .registers 2

    .line 567
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public start(Landroid/content/Context;)V
    .registers 4

    .line 104
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    .line 105
    sget-object p1, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreate BridgeProxy is starting for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "rcp"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/SemRemoteContentManager;

    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mSemRemoteContentManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 107
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIRCPInterfaceCallBack:Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

    iget p0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerRCPInterface(Landroid/content/IRCPInterface;I)V

    return-void
.end method

.method public stop()V
    .registers 2

    .line 554
    sget-object p0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v0, "----- stop called -----"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
