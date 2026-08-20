.class public Lcom/samsung/ucm/ucmservice/CredentialManagerService;
.super Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;,
        Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmVendorSpecific;,
        Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;,
        Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;,
        Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;
    }
.end annotation


# static fields
.field public static final ACTION_ENFORCE_LOCKTYPE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ACTION_ENFORCE_LOCKTYPE"

.field public static final CMC_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.cmc"

.field public static final CMP_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.cmp"

.field public static DBG:Z = false

.field public static final DECRYPT_CHECK_PROPERTY:Ljava/lang/String; = "vold.decrypt"

.field public static final KEYGUARD_ATTRIBUTE_CONTAINER_OWNER:Ljava/lang/String; = "container_owner"

.field public static final KEYGUARD_ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field public static final KEYGUARD_ATTRIBUTE_OWNER:Ljava/lang/String; = "owner"

.field public static final MIN_PERSONA_ID:I = 0xa

.field public static final MSG_CREDENTIAL_STORAGE_AVAILABLE:I = 0x3

.field public static final MSG_CREDENTIAL_STORAGE_CHANGED:I = 0x2

.field public static final MSG_PACKAGE_LICENSE_UPDATE:I = 0x4

.field public static final MSG_REFRESH_ACTIVE_AGENTS:I = 0x1

.field public static final MSG_REFRESH_APPLET_INFO:I = 0x5

.field public static final MSG_SHOW_ODE_NOTIFICATION:I = 0x6

.field public static final ODE_CONFIG_PATH:Ljava/lang/String; = "/efs/sec_efs"

.field public static final SCEP_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.scep"

.field public static final TAG:Ljava/lang/String; = "UcmService"

.field public static final TEMP_DEK_FILE_1:Ljava/lang/String; = "ucm_ode_key"

.field public static final TEMP_DEK_FILE_2:Ljava/lang/String; = "ucm_ode_key2"

.field public static final TEMP_DEK_PATH:Ljava/lang/String; = "/efs/sec_efs/tz_esecomm"

.field public static final UCM_CREDENTIAL_STORAGE_NAME:Ljava/lang/String; = "lockscreen.ucscredentialstoragename"

.field public static final UCM_ENFORCE_LOCKTYPE_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "UCM_KEYGUARD_NOTIFICATION"

.field public static final UCM_ENFORCE_LOCKTYPE_NOTIFICATION_ID:I = 0x1f40

.field public static final UCM_ODE_PROGRESS_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "UCM_ODE_NOTIFICATION"

.field public static final UCM_ODE_PROGRESS_NOTIFICATION_ID:I = 0x2328

.field public static final UCM_PROPERTY_UCM_VERSION:Ljava/lang/String; = "security.ucm_version"

.field public static final UCM_VERSION:Ljava/lang/String; = "1.11"

.field public static final UCS_ODE_CHECK_PROPERTY:Ljava/lang/String; = "persist.security.ucs"

.field public static final UNCRYPT_CHECK_PROPERTY:Ljava/lang/String; = "ro.crypto.state"

.field public static final certEnrollSystemApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sContext:Landroid/content/Context;


# instance fields
.field public final mAppletsInfoLock:Ljava/lang/Object;

.field public mConfigAppletRequestIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mEmergencyEnabled:Z

.field public mEsePluginDelegationHelper:Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;

.field public mHandler:Landroid/os/Handler;

.field public mHandlerthread:Landroid/os/HandlerThread;

.field public mIsFbeEnabled:Z

.field public mIsVoldCompleteNotified:Z

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mOnLccmConnection:Landroid/content/ServiceConnection;

.field public mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field public final mPersistentAppletInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;",
            ">;"
        }
    .end annotation
.end field

.field public final mPersistentAppletInfoFile:Landroid/util/AtomicFile;

.field public mPersona:Lcom/samsung/android/knox/SemPersonaManager;

.field public mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field public mPm:Landroid/content/pm/IPackageManager;

.field public mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

.field public mRefreshReceiver:Landroid/content/BroadcastReceiver;

.field public final mSignHelperFactory:Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;

.field public mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

.field public mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

.field public mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

.field public mUcmErcomSpecific:Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;

.field public mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;


# direct methods
.method public static synthetic $r8$lambda$God4BYFUS-ZzrZZ1uaffjuFEb_8(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->lambda$runLccmScript$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAppletsInfoLock(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEmergencyEnabled(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsFbeEnabled(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsFbeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsVoldCompleteNotified(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsVoldCompleteNotified:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmEmergencyEnabled(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceLockType(Lcom/samsung/ucm/ucmservice/CredentialManagerService;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->enforceLockType(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgenerateWrappedDek(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateWrappedDek(Ljava/lang/String;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetODEAgent(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getODEAgent()Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetResponseParcel(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUCMMDMService(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misActivePlugin(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isActivePlugin(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misAppletPluginExist(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isAppletPluginExist()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misUcmDarEnabled(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isUcmDarEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadPersistentAppletsInfoLocked(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentAppletsInfoLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrefreshAgentList(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgentList(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrunLccmScript(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->runLccmScript()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrunSefTestForEseCommTA(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->runSefTestForEseCommTA()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendRefreshFinishIntent(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sendRefreshFinishIntent(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowODEProgressNotification(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->showODEProgressNotification()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munwrapDek(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;[BLcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->unwrapDek(Ljava/lang/String;[BLcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateMDMPolicies(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateMDMPolicies(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwritePersistentAppletsInfoLocked(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->writePersistentAppletsInfoLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "ro.build.type"

    .line 124
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    const/4 v0, 0x0

    .line 153
    sput-object v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.certenrollservice.scep"

    const-string v1, "com.samsung.android.certenrollservice.cmp"

    const-string v2, "com.samsung.android.certenrollservice.cmc"

    .line 169
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 202
    new-instance v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;

    invoke-direct {v0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 206
    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    .line 160
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "appletsConfig.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    .line 161
    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 162
    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    .line 163
    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 164
    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 165
    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 173
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    .line 174
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    .line 175
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    .line 186
    iput-boolean v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsFbeEnabled:Z

    .line 187
    iput-boolean v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsVoldCompleteNotified:Z

    .line 189
    iput-boolean v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    .line 424
    new-instance v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;

    invoke-direct {v2, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mOnLccmConnection:Landroid/content/ServiceConnection;

    .line 454
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mConfigAppletRequestIds:Ljava/util/List;

    .line 544
    new-instance v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$5;

    invoke-direct {v2, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$5;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 638
    new-instance v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;

    invoke-direct {v2, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mRefreshReceiver:Landroid/content/BroadcastReceiver;

    .line 3763
    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 5834
    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmErcomSpecific:Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;

    .line 207
    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 208
    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    .line 209
    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;->getUcmSignHelperFactory()Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mSignHelperFactory:Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;

    .line 210
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->updateOdeStatus()V

    .line 211
    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;->getPolicyManager()Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    .line 212
    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/TADriver;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    .line 213
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 214
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 215
    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;->getUcmServiceAgentManager()Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    .line 216
    new-instance p1, Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;

    invoke-direct {p1}, Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;-><init>()V

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEsePluginDelegationHelper:Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;

    const-string/jumbo p1, "ro.crypto.type"

    const-string/jumbo v2, "unknown"

    .line 218
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "file"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsFbeEnabled:Z

    .line 220
    new-instance p1, Landroid/os/HandlerThread;

    const-string v2, "CredentialManagerServiceThread"

    invoke-direct {p1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandlerthread:Landroid/os/HandlerThread;

    .line 221
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 222
    new-instance p1, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandlerthread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    .line 289
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.android.knox.intent.action.ACTION_ENFORCE_LOCKTYPE"

    .line 290
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;

    invoke-direct {v3, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    const-string v4, "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

    invoke-virtual {v2, v3, p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 301
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 302
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 304
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mRefreshReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, p1, v0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 307
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;

    invoke-direct {v0, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 334
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object p1

    if-eqz p1, :cond_122

    .line 335
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_122

    const-string p1, "UcmService"

    const-string v0, "Already Emergency Status"

    .line 336
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 337
    iput-boolean p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    .line 340
    :cond_122
    monitor-enter v1

    .line 341
    :try_start_123
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentAppletsInfoLocked()V

    .line 342
    monitor-exit v1
    :try_end_127
    .catchall {:try_start_123 .. :try_end_127} :catchall_1c6

    .line 344
    iget-boolean p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsFbeEnabled:Z

    if-eqz p1, :cond_158

    const-string p1, "UcmService"

    const-string v0, "fbe is enabled"

    .line 345
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "persist.security.ucs"

    const-string v0, "none"

    .line 346
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14c

    .line 347
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->getOdeStatus()I

    move-result p1

    if-nez p1, :cond_14c

    .line 348
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteODEConfigInFileIfExist()V

    .line 351
    :cond_14c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateKeyguardConfig(I)V

    goto :goto_1ba

    :cond_158
    const-string p1, "UcmService"

    const-string v0, "fbe is not enabled"

    .line 353
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "ro.crypto.state"

    const-string v0, "none"

    .line 354
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "unencrypted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_195

    const-string/jumbo p1, "vold.decrypt"

    const-string v0, "none"

    .line 355
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "trigger_restart_framework"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_195

    const-string/jumbo p1, "vold.decrypt"

    const-string v0, "none"

    .line 356
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "trigger_reset_main"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1ba

    :cond_195
    const-string/jumbo p1, "persist.security.ucs"

    const-string v0, "none"

    .line 357
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1af

    .line 358
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->getOdeStatus()I

    move-result p1

    if-nez p1, :cond_1af

    .line 359
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteODEConfigInFileIfExist()V

    .line 362
    :cond_1af
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateKeyguardConfig(I)V

    .line 366
    :cond_1ba
    :goto_1ba
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->registerPersonaObserver()V

    const-string/jumbo p0, "security.ucm_version"

    const-string p1, "1.11"

    .line 368
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_1c6
    move-exception p0

    .line 342
    :try_start_1c7
    monitor-exit v1
    :try_end_1c8
    .catchall {:try_start_1c7 .. :try_end_1c8} :catchall_1c6

    throw p0
.end method

.method public static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 7

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCallerPermissionFor is called for method-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    return v2

    :cond_1e
    const-string v0, "CredentialManagerService"

    .line 718
    sget-object v3, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v3, v4, v5, v0, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_31

    return v2

    .line 719
    :cond_31
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security Exception Occurred while pid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] with uid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] trying to access methodName ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] in ["

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] service"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 721
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The exception occurs "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    throw v2
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 8

    .line 1037
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1038
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_2a

    .line 1040
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 1041
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    :cond_2a
    return-object v1
.end method

.method private synthetic lambda$runLccmScript$0()V
    .registers 7

    const-string v0, "UcmService"

    .line 403
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.skms.android.agent.CcmService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.skms.android.agent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    .line 408
    :cond_10
    :try_start_10
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mOnLccmConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    add-int/2addr v2, v5

    .line 410
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindCcmService() bound = ; tries ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2e} :catch_3e

    const-wide/16 v4, 0x3e8

    .line 412
    :try_start_30
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_33} :catch_34
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_3e

    goto :goto_38

    :catch_34
    move-exception v4

    .line 414
    :try_start_35
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_3e

    :goto_38
    if-nez v3, :cond_5a

    const/4 v3, 0x3

    if-le v2, v3, :cond_10

    goto :goto_5a

    :catch_3e
    move-exception p0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindCcmService() exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public static native registerHALService()I
.end method


# virtual methods
.method public APDUCommand(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APDUCommand : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0x10

    const-string v3, "errorresponse"

    if-eqz p1, :cond_ba

    const-string v4, ""

    .line 4256
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v5, v4, :cond_2c

    goto/16 :goto_ba

    :cond_2c
    if-nez p2, :cond_37

    const-string p0, "apdu is null"

    .line 4263
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4264
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_37
    const-string v2, "boot_test"

    .line 4269
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v5, v2, :cond_46

    const-string v2, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    .line 4270
    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    goto :goto_4e

    .line 4272
    :cond_46
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    :goto_4e
    const/16 v4, 0xe

    if-nez v2, :cond_6e

    .line 4276
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no agent found for Source = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4277
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 4281
    :cond_6e
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    if-eqz v5, :cond_95

    .line 4282
    new-instance v5, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v5}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 4283
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 4284
    iget-object p1, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object p1, v5, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 4285
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {p1, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    .line 4288
    :cond_95
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result p0

    if-nez p0, :cond_a4

    const-string p0, "agent is not bound"

    .line 4289
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4290
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 4294
    :cond_a4
    invoke-virtual {v2, p2, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_b9

    const-string p0, "ERROR: Null Response received from agent"

    .line 4296
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4297
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/16 p1, 0xd

    .line 4298
    invoke-virtual {p0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_b9
    return-object p0

    :cond_ba
    :goto_ba
    const-string/jumbo p0, "uri is empty"

    .line 4257
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4258
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final applyMDMPolicies(ZIILjava/lang/String;I)Z
    .registers 25

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    const-string v7, "]"

    .line 4434
    invoke-virtual {v1, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4435
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyMDMPolicies adminUid-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", userId-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", pluginPkg-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", apply-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UcmService"

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4437
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 4439
    :try_start_44
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 4440
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v14, 0xa

    if-eqz v4, :cond_57

    if-lt v4, v14, :cond_53

    goto :goto_57

    :cond_53
    move-wide/from16 v16, v11

    goto/16 :goto_51c

    .line 4443
    :cond_57
    :goto_57
    new-instance v15, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v9, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v14, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v14, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_60} :catch_528
    .catchall {:try_start_44 .. :try_end_60} :catchall_523

    move-wide/from16 v16, v11

    const/4 v11, 0x0

    :try_start_63
    invoke-direct {v15, v9, v14, v11}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/os/Handler;)V

    if-eqz v3, :cond_51c

    if-eqz v8, :cond_51c

    const/16 v8, 0xa

    if-lt v4, v8, :cond_8d

    .line 4448
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 4449
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "applyMDMPolicies adminUserId -"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v8, v4, :cond_8a

    const/4 v8, 0x1

    goto :goto_8b

    :cond_8a
    const/4 v8, 0x0

    :goto_8b
    const/4 v9, 0x1

    goto :goto_8f

    :cond_8d
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 4454
    :goto_8f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "applyMDMPolicies isContainer ["

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, "] isBYODContainer ["

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_ae} :catch_521
    .catchall {:try_start_63 .. :try_end_ae} :catchall_549

    const-string v12, "applyMDMPolicies setAdminRemovable status-"

    const-string v14, "applyMDMPolicies admin pkg -"

    const-string v11, "applyMDMPolicies inside container logic"

    move-object/from16 v18, v7

    if-eqz v2, :cond_2d4

    if-nez v8, :cond_193

    .line 4459
    :try_start_ba
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4460
    iget-object v5, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    if-nez v9, :cond_ed

    if-eqz v5, :cond_ed

    .line 4464
    array-length v8, v5

    const/4 v7, 0x0

    :goto_cb
    if-ge v7, v8, :cond_ed

    move/from16 v18, v8

    aget-object v8, v5, v7

    .line 4465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4466
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move/from16 v8, v18

    goto :goto_cb

    .line 4470
    :cond_ed
    invoke-interface {v2, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4471
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 4473
    invoke-virtual {v15}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    move-result v1

    .line 4474
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyMDMPolicies addPackagesToForceStopBlackList status-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4477
    invoke-virtual {v15}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToClearCacheBlackList(Ljava/util/List;)Z

    move-result v1

    .line 4478
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyMDMPolicies addPackagesToClearCacheBlackList status-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4481
    invoke-virtual {v15}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToClearDataBlackList(Ljava/util/List;)Z

    move-result v1

    .line 4482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyMDMPolicies addPackagesToClearDataBlackList status-"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_17b

    if-eqz v5, :cond_17b

    .line 4486
    array-length v1, v5

    const/4 v2, 0x0

    :goto_156
    if-ge v2, v1, :cond_17b

    aget-object v7, v5, v2

    const/4 v8, 0x0

    .line 4487
    invoke-virtual {v15, v8, v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->setAdminRemovable(ZLjava/lang/String;)Z

    move-result v14

    .line 4488
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4490
    invoke-virtual {v15}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_156

    .line 4496
    :cond_17b
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_193

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4497
    invoke-virtual {v15}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    goto :goto_17f

    :cond_193
    if-eqz v9, :cond_2d1

    const/4 v1, -0x1

    if-eq v6, v1, :cond_2d1

    .line 4501
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4502
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v2, p0

    .line 4503
    invoke-virtual {v2, v3, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUid0FromUid(II)I

    move-result v5

    .line 4504
    new-instance v7, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v8, v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    invoke-direct {v7, v8, v9, v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/os/Handler;)V

    .line 4505
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v5

    .line 4506
    iget-object v8, v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v5, v8, v9}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v3

    if-eqz v3, :cond_2d1

    .line 4508
    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v6}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_1ca} :catch_521
    .catchall {:try_start_ba .. :try_end_1ca} :catchall_549

    const-string v4, "applyMDMPolicies disable uninstall pkg -"

    if-eqz v2, :cond_1f3

    .line 4510
    :try_start_1ce
    array-length v5, v2

    const/4 v8, 0x0

    :goto_1d0
    if-ge v8, v5, :cond_1f3

    aget-object v6, v2, v8

    .line 4511
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4513
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    .line 4514
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1d0

    .line 4518
    :cond_1f3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_24d

    .line 4520
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    move-result v2

    .line 4521
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyMDMPolicies inside container addPackagesToForceStopBlackList status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4524
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToClearCacheBlackList(Ljava/util/List;)Z

    move-result v2

    .line 4525
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyMDMPolicies inside container addPackagesToClearCacheBlackList status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4528
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToClearDataBlackList(Ljava/util/List;)Z

    move-result v1

    .line 4529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyMDMPolicies inside container addPackagesToClearDataBlackList status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4533
    :cond_24d
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2d1

    .line 4535
    invoke-virtual {v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    move-result v1

    .line 4536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyMDMPolicies addPackagesToForceStopBlackList for plugin. status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4539
    invoke-virtual {v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToClearCacheBlackList(Ljava/util/List;)Z

    move-result v1

    .line 4540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyMDMPolicies addPackagesToClearCacheBlackList for plugin. status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4543
    invoke-virtual {v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToClearDataBlackList(Ljava/util/List;)Z

    move-result v1

    .line 4544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyMDMPolicies addPackagesToClearDataBlackList for plugin. status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4545
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2ab
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4548
    invoke-virtual {v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    goto :goto_2ab

    :cond_2d1
    const/4 v9, 0x1

    goto/16 :goto_51d

    :cond_2d4
    move-object v2, v1

    const/4 v1, 0x0

    .line 4556
    invoke-virtual {v2, v5, v4, v3, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPluginUsedInOtherUser(Ljava/lang/String;IIZ)Z

    move-result v7

    .line 4557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyMDMPolicies ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] isPluginUsedInOtherUser ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_3da

    .line 4560
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4561
    iget-object v4, v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-nez v9, :cond_330

    if-eqz v4, :cond_330

    .line 4564
    array-length v5, v4

    const/4 v8, 0x0

    :goto_30e
    if-ge v8, v5, :cond_330

    move/from16 v18, v5

    aget-object v5, v4, v8

    .line 4565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4566
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p0

    move/from16 v5, v18

    goto :goto_30e

    :cond_330
    if-nez v7, :cond_335

    .line 4571
    invoke-interface {v1, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4573
    :cond_335
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 4575
    invoke-virtual {v15}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z

    move-result v2

    .line 4576
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyMDMPolicies removePackagesFromForceStopBlackList status-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4579
    invoke-virtual {v15}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromClearCacheBlackList(Ljava/util/List;)Z

    move-result v2

    .line 4580
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyMDMPolicies removePackagesFromClearCacheBlackList status-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4583
    invoke-virtual {v15}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromClearDataBlackList(Ljava/util/List;)Z

    move-result v1

    .line 4584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyMDMPolicies removePackagesFromClearDataBlackList status-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_3c0

    if-eqz v4, :cond_3c0

    .line 4588
    array-length v1, v4

    const/4 v8, 0x0

    :goto_39b
    if-ge v8, v1, :cond_3c0

    aget-object v2, v4, v8

    const/4 v5, 0x1

    .line 4590
    invoke-virtual {v15, v5, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->setAdminRemovable(ZLjava/lang/String;)Z

    move-result v14

    .line 4591
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4593
    invoke-virtual {v15}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_39b

    :cond_3c0
    if-nez v7, :cond_3da

    .line 4600
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3da

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4601
    invoke-virtual {v15}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    goto :goto_3c6

    :cond_3da
    if-eqz v9, :cond_2d1

    const/4 v1, -0x1

    if-eq v6, v1, :cond_2d1

    .line 4606
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4607
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v2, p0

    move/from16 v4, p3

    .line 4608
    invoke-virtual {v2, v3, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUid0FromUid(II)I

    move-result v5

    .line 4609
    new-instance v8, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v9, v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    invoke-direct {v8, v9, v11, v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/os/Handler;)V

    .line 4610
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v5

    .line 4611
    iget-object v9, v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v5, v9, v11}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v3

    .line 4612
    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v6}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_411
    .catch Ljava/lang/Exception; {:try_start_1ce .. :try_end_411} :catch_521
    .catchall {:try_start_1ce .. :try_end_411} :catchall_549

    if-eqz v3, :cond_2d1

    const-string v4, "applyMDMPolicies enable uninstall pkg -"

    if-eqz v2, :cond_43c

    .line 4615
    :try_start_417
    array-length v5, v2

    const/4 v6, 0x0

    :goto_419
    if-ge v6, v5, :cond_43c

    aget-object v9, v2, v6

    .line 4616
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4618
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    .line 4619
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_419

    .line 4623
    :cond_43c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_496

    .line 4624
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z

    move-result v2

    .line 4625
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyMDMPolicies inside container removePackagesFromForceStopBlackList status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4628
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromClearCacheBlackList(Ljava/util/List;)Z

    move-result v2

    .line 4629
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyMDMPolicies inside container removePackagesFromClearCacheBlackList status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4632
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromClearDataBlackList(Ljava/util/List;)Z

    move-result v1

    .line 4633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyMDMPolicies inside container removePackagesFromClearDataBlackList status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4637
    :cond_496
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2d1

    if-nez v7, :cond_2d1

    .line 4638
    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z

    move-result v1

    .line 4639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyMDMPolicies removePackagesFromForceStopBlackList for plugin status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4642
    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromClearCacheBlackList(Ljava/util/List;)Z

    move-result v1

    .line 4643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyMDMPolicies removePackagesFromClearCacheBlackList for plugin status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4646
    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromClearDataBlackList(Ljava/util/List;)Z

    move-result v1

    .line 4647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyMDMPolicies removePackagesFromClearDataBlackList for plugin status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4648
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4f6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4649
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4651
    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V
    :try_end_51b
    .catch Ljava/lang/Exception; {:try_start_417 .. :try_end_51b} :catch_521
    .catchall {:try_start_417 .. :try_end_51b} :catchall_549

    goto :goto_4f6

    :cond_51c
    :goto_51c
    const/4 v9, 0x0

    .line 4664
    :goto_51d
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_548

    :catch_521
    move-exception v0

    goto :goto_52b

    :catchall_523
    move-exception v0

    move-wide/from16 v16, v11

    :goto_526
    move-object v1, v0

    goto :goto_54b

    :catch_528
    move-exception v0

    move-wide/from16 v16, v11

    :goto_52b
    move-object v1, v0

    .line 4662
    :try_start_52c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The exception occurs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_544
    .catchall {:try_start_52c .. :try_end_544} :catchall_549

    .line 4664
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v9, 0x0

    :goto_548
    return v9

    :catchall_549
    move-exception v0

    goto :goto_526

    :goto_54b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4665
    throw v1
.end method

.method public final applyMetaData(Landroid/os/Bundle;Ljava/lang/String;I)V
    .registers 4

    .line 5456
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 5457
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    return-void
.end method

.method public changePin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changePin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0x10

    const-string v3, "errorresponse"

    if-eqz p1, :cond_f0

    const-string v4, ""

    .line 3915
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v6, v5, :cond_2c

    goto/16 :goto_f0

    :cond_2c
    if-eqz p2, :cond_e7

    .line 3921
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v6, v5, :cond_36

    goto/16 :goto_e7

    :cond_36
    if-eqz p3, :cond_de

    .line 3927
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v6, v4, :cond_40

    goto/16 :goto_de

    :cond_40
    const-string v2, "boot_test"

    .line 3934
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v6, v2, :cond_4f

    const-string v2, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    .line 3935
    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    goto :goto_57

    .line 3937
    :cond_4f
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    :goto_57
    const/16 v4, 0xe

    if-nez v2, :cond_77

    .line 3941
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no agent found for Source = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3942
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 3946
    :cond_77
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    if-eqz v5, :cond_9e

    .line 3947
    new-instance v5, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v5}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 3948
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 3949
    iget-object v6, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 3950
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v6, v7, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    .line 3953
    :cond_9e
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v5

    if-nez v5, :cond_ad

    const-string p0, "agent is not bound"

    .line 3954
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3955
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 3959
    :cond_ad
    invoke-virtual {v2, p2, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_c3

    const-string p0, "ERROR: Null Response received from agent"

    .line 3961
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3962
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/16 p1, 0xd

    .line 3963
    invoke-virtual {p0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0

    :cond_c3
    const/4 p3, -0x1

    const-string/jumbo v0, "state"

    .line 3967
    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    const/16 v0, 0x85

    if-ne p3, v0, :cond_d8

    const-string/jumbo p3, "state is changed to blocked"

    .line 3968
    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3969
    invoke-virtual {p0, v0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sendStateChangeBroadcast(ILjava/lang/String;)V

    .line 3971
    :cond_d8
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->displayToastFromAgentResponse(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object p2

    :cond_de
    :goto_de
    const-string p0, "newPin is empty"

    .line 3928
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3929
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_e7
    :goto_e7
    const-string p0, "oldPin is empty"

    .line 3922
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3923
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_f0
    :goto_f0
    const-string/jumbo p0, "uri is empty"

    .line 3916
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3917
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final checkCaller(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 5989
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    .line 5990
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method

.method public final checkIfNotify(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z
    .registers 7

    .line 1139
    new-instance v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v0}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 1140
    iget-object v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 1141
    iget-object v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "UcmService"

    if-eqz v1, :cond_8e

    .line 1142
    iget-object v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 1143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIfNotify for cs Name = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Package name = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    if-eqz p1, :cond_87

    const-string p1, "notifying to managed plugin"

    .line 1151
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 1153
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    .line 1156
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1157
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 1158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIfNotify: Valid userid - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isStorageEnabled(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    if-eqz v2, :cond_5c

    :cond_86
    return v2

    :cond_87
    const-string p0, "notifying to unmanaged plugin"

    .line 1165
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_8e
    const-string p0, "Package name for CS found NULL. Cannot notify."

    .line 1145
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final checkPluginUsed(ILjava/lang/String;)Z
    .registers 6

    .line 3689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPluginUsed for the uri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UcmService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3691
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object p0

    .line 3692
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p0, :cond_49

    const-string v1, "none"

    .line 3693
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    if-eqz p1, :cond_49

    .line 3694
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v0, :cond_49

    const-string p0, "This plugin is already used in keyguard"

    .line 3695
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_49
    const-string/jumbo p0, "persist.security.ucs.csname"

    const-string p1, "None"

    .line 3701
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_62

    if-eqz p2, :cond_62

    .line 3703
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v0, :cond_62

    const-string p0, "This plugin is already used in ODE"

    .line 3704
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_62
    const/4 p0, 0x0

    return p0
.end method

.method public final checkSystemCaller()V
    .registers 2

    .line 5978
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemCaller()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 5979
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final compareCallingPkg([B[B)Z
    .registers 14

    const-string p0, ","

    const-string v0, "UTF-8"

    const-string v1, "UcmService"

    const-string v2, "compareCallingPkg is called..."

    .line 5133
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5136
    :try_start_d
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 5137
    invoke-virtual {v4, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 5138
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 5139
    invoke-virtual {v4, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 5141
    array-length p2, p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_20} :catch_6c

    move v0, v3

    move v4, v0

    :goto_22
    if-ge v0, p2, :cond_87

    :try_start_24
    aget-object v5, p0, v0

    .line 5142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compareCallingPkg pkg - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5143
    array-length v6, p1

    move v7, v3

    :goto_3c
    if-ge v7, v6, :cond_66

    aget-object v8, p1, v7

    .line 5144
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "compareCallingPkg cachePkg -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5145
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_58} :catch_69

    if-eqz v8, :cond_63

    :try_start_5a
    const-string v4, "compareCallingPkg match found..."

    .line 5147
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5f} :catch_61

    move v4, v2

    goto :goto_66

    :catch_61
    move-exception p0

    goto :goto_6e

    :cond_63
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    :cond_66
    :goto_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :catch_69
    move-exception p0

    move v2, v4

    goto :goto_6e

    :catch_6c
    move-exception p0

    move v2, v3

    .line 5153
    :goto_6e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The exception occurs "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    :cond_87
    return v4
.end method

.method public configureKeyguardSettings(ILjava/lang/String;)Z
    .registers 32

    move-object/from16 v7, p0

    move/from16 v8, p1

    .line 4734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configureKeyguardSettings userId-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "UcmService"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4735
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemCaller()Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "configureKeyguardSettings"

    .line 4736
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    :cond_25
    const/16 v10, 0xa

    const-string v11, "The exception occurs "

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz p2, :cond_1db

    .line 4739
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    goto/16 :goto_1db

    .line 4775
    :cond_35
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4776
    iget-object v0, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v0, v13

    :goto_44
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 4777
    iget-object v1, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c2

    .line 4778
    iget-object v1, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    if-eqz v1, :cond_1c2

    .line 4779
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAdminForEnforcedCredentialStorageAsUser(I)I

    move-result v0

    .line 4780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configuratorId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_86

    const-string v0, "enforced null"

    .line 4782
    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    .line 4785
    :cond_86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v14, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->setKeyguardStorageForCurrentUser(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_128

    .line 4787
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 4789
    :try_start_a1
    invoke-virtual {v7, v14}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a5} :catch_107
    .catchall {:try_start_a1 .. :try_end_a5} :catchall_105

    if-nez v8, :cond_bd

    const/4 v2, 0x1

    const/16 v19, -0x1

    move-object/from16 v1, p0

    move v3, v0

    move/from16 v4, p1

    move-object v0, v5

    move-object v5, v14

    move-object/from16 v20, v6

    move/from16 v6, v19

    .line 4791
    :try_start_b5
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z

    move-result v16

    move-object v10, v0

    goto :goto_d6

    :catch_bb
    move-exception v0

    goto :goto_10a

    :cond_bd
    move-object/from16 v20, v6

    move-object v6, v5

    if-lt v8, v10, :cond_d5

    .line 4794
    iget-object v1, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v3

    const/4 v2, 0x1

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object v5, v14

    move-object v10, v6

    move v6, v0

    .line 4796
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z

    move-result v16

    goto :goto_d6

    :cond_d5
    move-object v10, v6

    .line 4799
    :goto_d6
    iget-object v0, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 4800
    invoke-virtual {v0, v12, v8}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v0

    if-ne v12, v0, :cond_e0

    move v0, v12

    goto :goto_e1

    :cond_e0
    move v0, v13

    :goto_e1
    if-eqz v0, :cond_e8

    .line 4802
    iget-object v0, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v12, v13, v8}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricState(III)V

    .line 4806
    :cond_e8
    iget-object v0, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v1, 0x100

    .line 4807
    invoke-virtual {v0, v1, v8}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v0

    if-ne v12, v0, :cond_f4

    move v0, v12

    goto :goto_f5

    :cond_f4
    move v0, v13

    :goto_f5
    if-eqz v0, :cond_fc

    .line 4809
    iget-object v0, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1, v13, v8}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricState(III)V

    .line 4813
    :cond_fc
    invoke-virtual {v7, v12, v8, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sendUCMKeyguardIntent(ZILjava/lang/String;)V

    if-nez v8, :cond_120

    .line 4816
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->disableAutoFactoryReset()V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_104} :catch_bb
    .catchall {:try_start_b5 .. :try_end_104} :catchall_105

    goto :goto_120

    :catchall_105
    move-exception v0

    goto :goto_124

    :catch_107
    move-exception v0

    move-object/from16 v20, v6

    .line 4818
    :goto_10a
    :try_start_10a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_120
    .catchall {:try_start_10a .. :try_end_120} :catchall_105

    .line 4820
    :cond_120
    :goto_120
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_12a

    :goto_124
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4821
    throw v0

    :cond_128
    move-object/from16 v20, v6

    :goto_12a
    if-nez v8, :cond_1c0

    move-object/from16 v1, v20

    .line 4825
    :try_start_12e
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    .line 4827
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    .line 4828
    invoke-virtual {v7, v14}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-result-object v2

    if-eqz v2, :cond_147

    .line 4829
    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    if-eqz v2, :cond_147

    move-object v0, v2

    .line 4833
    :cond_147
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getStorageTypeIndex(Ljava/lang/String;)I

    move-result v23

    if-gez v23, :cond_162

    .line 4835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UCM does not support this storage type for KG : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    .line 4839
    :cond_162
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledSCP:Ljava/lang/String;

    .line 4840
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getSCPTypeIndex(Ljava/lang/String;)I

    move-result v24

    if-gez v24, :cond_181

    .line 4842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UCM does not support this SCP type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    .line 4846
    :cond_181
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v1, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    .line 4847
    iget v2, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    .line 4848
    iget v3, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    .line 4849
    iget v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    .line 4851
    new-instance v5, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B

    move-object/from16 v20, v5

    move-object/from16 v22, v0

    move/from16 v25, v1

    move/from16 v26, v2

    move/from16 v27, v3

    move/from16 v28, v4

    invoke-direct/range {v20 .. v28}, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;-><init>([B[BIIIIII)V

    .line 4852
    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/EFSProperties;->saveKeyguardConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z

    move-result v0
    :try_end_1a2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12e .. :try_end_1a2} :catch_1a9

    if-eqz v0, :cond_1a7

    if-eqz v16, :cond_1a7

    goto :goto_1a8

    :cond_1a7
    move v12, v13

    :goto_1a8
    return v12

    :catch_1a9
    move-exception v0

    .line 4854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c0
    move/from16 v0, v16

    :cond_1c2
    const/16 v10, 0xa

    goto/16 :goto_44

    .line 4860
    :cond_1c6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureKeyguardSettings return : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1db
    :goto_1db
    const-string v0, "disable keyguard in UCS"

    .line 4740
    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4741
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v5

    .line 4742
    invoke-virtual {v7, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4743
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageOwnerForCurrentUser(I)Ljava/lang/String;

    move-result-object v1

    .line 4744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "storageName - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", onwerId-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "none"

    .line 4745
    invoke-virtual {v7, v8, v2, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->setKeyguardStorageForCurrentUser(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_214

    .line 4747
    invoke-virtual {v7, v13, v8, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sendUCMKeyguardIntent(ZILjava/lang/String;)V

    :cond_214
    if-nez v8, :cond_246

    const/4 v2, 0x0

    .line 4751
    :try_start_217
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v6, -0x1

    move-object/from16 v1, p0

    move/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z
    :try_end_223
    .catch Ljava/lang/Exception; {:try_start_217 .. :try_end_223} :catch_224

    goto :goto_23b

    :catch_224
    move-exception v0

    .line 4753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4755
    :goto_23b
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteKeyguardConfig()Z

    move-result v0

    if-eqz v0, :cond_244

    if-eqz v10, :cond_244

    goto :goto_245

    :cond_244
    move v12, v13

    :goto_245
    return v12

    :cond_246
    const/16 v2, 0xa

    if-lt v8, v2, :cond_280

    .line 4758
    :try_start_24a
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 4760
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12
    :try_end_252
    .catch Ljava/lang/Exception; {:try_start_24a .. :try_end_252} :catch_269

    .line 4762
    :try_start_252
    iget-object v0, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v3

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move/from16 v4, p1

    .line 4764
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z
    :try_end_260
    .catchall {:try_start_252 .. :try_end_260} :catchall_264

    .line 4766
    :try_start_260
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_280

    :catchall_264
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4767
    throw v0
    :try_end_269
    .catch Ljava/lang/Exception; {:try_start_260 .. :try_end_269} :catch_269

    :catch_269
    move-exception v0

    .line 4769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_280
    :goto_280
    return v10
.end method

.method public configureODESettings(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)I
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "UcmService"

    const-string v0, "configureODESettings"

    .line 4884
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4885
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v0

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    .line 4886
    new-instance v0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 4887
    invoke-virtual {v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v4

    .line 4888
    invoke-virtual {v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 4889
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configureODESettings uriuid-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4891
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->isUcmOdeEnabled()Z

    move-result v6

    const v7, 0xc000200

    if-eqz v6, :cond_4c

    const-string v0, "device is encrypted with UCS so cannot change configuration"

    .line 4892
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 4896
    :cond_4c
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v6

    .line 4897
    iget-object v8, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    if-eqz v8, :cond_83

    const-string v8, "configureODESettings Validating current ODE setting configurator"

    .line 4898
    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4899
    invoke-virtual {v1, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorPkg(I)[B

    move-result-object v8

    .line 4900
    invoke-virtual {v1, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorSignature(I)[B

    move-result-object v9

    const v10, 0xc000300

    if-eqz v8, :cond_82

    .line 4902
    iget-object v11, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    invoke-virtual {v1, v11, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->compareCallingPkg([B[B)Z

    move-result v8

    if-eqz v8, :cond_7d

    iget-object v6, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    invoke-static {v6, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_77

    goto :goto_7d

    :cond_77
    const-string v6, "configureODESettings valid caller is changing ODE configuration..."

    .line 4909
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    :cond_7d
    :goto_7d
    const-string v0, "configureODESettings invalid caller is trying to change ODE configuration. Error..."

    .line 4903
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    return v10

    :cond_83
    :goto_83
    const-string/jumbo v6, "reset"

    .line 4912
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v6, "persist.security.ucs.csname"

    const-string/jumbo v8, "persist.security.ucs"

    const/4 v9, 0x0

    const/16 v10, 0x10d

    const/4 v11, 0x1

    if-eqz v0, :cond_ab

    const-string v0, "disable configureODESettings in UCS"

    .line 4913
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 4914
    invoke-static {v8, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4915
    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4916
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteODEConfig()Z

    move-result v0

    if-ne v11, v0, :cond_aa

    return v9

    :cond_aa
    return v10

    :cond_ab
    if-eqz p3, :cond_31c

    .line 4923
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-ne v0, v11, :cond_b5

    goto/16 :goto_31c

    .line 4928
    :cond_b5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/16 v7, 0x10

    if-ne v11, v0, :cond_c4

    const-string/jumbo v0, "uri is empty"

    .line 4929
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 4933
    :cond_c4
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v12, 0xe

    if-eqz v0, :cond_d3

    return v12

    .line 4937
    :cond_d3
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31b

    .line 4938
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-ne v13, v11, :cond_e1

    goto/16 :goto_31b

    .line 4942
    :cond_e1
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v13}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_eb
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_31b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    if-eqz v14, :cond_30f

    .line 4943
    iget-object v15, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v15, :cond_30f

    iget-object v15, v15, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-nez v15, :cond_102

    goto :goto_eb

    .line 4946
    :cond_102
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_30f

    const-string v12, "Find UcmAgentWrapper"

    .line 4947
    invoke-static {v3, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4949
    iget-object v12, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v13, v12, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isODESupport:Z

    if-nez v13, :cond_11a

    const-string v0, "This agent dose not support ODE"

    .line 4950
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    return v0

    .line 4954
    :cond_11a
    iget-object v12, v12, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B

    const/4 v13, 0x4

    if-eqz v12, :cond_130

    .line 4955
    array-length v15, v12

    if-nez v15, :cond_123

    goto :goto_130

    .line 4958
    :cond_123
    array-length v15, v12

    const/4 v5, 0x5

    if-lt v15, v5, :cond_12a

    array-length v5, v12

    if-le v5, v7, :cond_13c

    :cond_12a
    const-string v0, "AID range is not proper"

    .line 4959
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_130
    :goto_130
    const-string v5, "AID is empty. save default AID"

    .line 4956
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xa

    new-array v12, v5, [B

    .line 4957
    fill-array-data v12, :array_324

    .line 4963
    :cond_13c
    iget-object v5, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    .line 4964
    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-result-object v0

    if-eqz v0, :cond_14b

    .line 4965
    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    if-eqz v0, :cond_14b

    move-object v5, v0

    .line 4968
    :cond_14b
    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getStorageTypeIndex(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_166

    .line 4970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UCM does not support this storage type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    .line 4974
    :cond_166
    iget-object v0, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledSCP:Ljava/lang/String;

    .line 4975
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getSCPTypeIndex(Ljava/lang/String;)I

    move-result v5

    .line 4977
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    const-string v9, "The exception occurs "

    if-nez v15, :cond_1c1

    if-gez v5, :cond_18d

    .line 4979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UCM does not support this SCP type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_18d
    const-string v15, "NONE"

    .line 4981
    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c1

    .line 4984
    :try_start_195
    invoke-static/range {p2 .. p2}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->generateParam(Landroid/os/Bundle;)Lcom/samsung/ucm/ucmservice/scp/CreationParam;

    move-result-object v15
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_199} :catch_1a3

    if-nez v15, :cond_1c2

    :try_start_19b
    const-string v0, "Can\'t find SCP parameter from bundle"

    .line 4986
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_1a0} :catch_1a1

    return v13

    :catch_1a1
    move-exception v0

    goto :goto_1a5

    :catch_1a3
    move-exception v0

    const/4 v15, 0x0

    .line 4990
    :goto_1a5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "failed to generate SCP param from Bundle"

    .line 4991
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c2

    :cond_1c1
    const/4 v15, 0x0

    .line 4996
    :cond_1c2
    :goto_1c2
    iget-boolean v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsFbeEnabled:Z

    if-eqz v0, :cond_205

    .line 4998
    :try_start_1c6
    invoke-virtual {v1, v14, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->saveTempOdeKey(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_205

    .line 5000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed saveTempOdeKey. ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e5
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_1e5} :catch_1e6

    return v0

    :catch_1e6
    move-exception v0

    .line 5004
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "failed to store ODE key"

    .line 5005
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_205
    const-string v13, "1"

    .line 5010
    invoke-static {v8, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5011
    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5013
    iget-object v0, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v2, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledWrap:I

    .line 5015
    iget v6, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    .line 5016
    iget v8, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    .line 5017
    iget v14, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    .line 5018
    iget v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    .line 5019
    iget v11, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    move-object/from16 p2, v13

    .line 5020
    iget v13, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    .line 5023
    :try_start_21f
    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    move-object/from16 v16, v15

    const-string v15, "UTF-8"

    invoke-virtual {v0, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_229
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_21f .. :try_end_229} :catch_2f7

    if-eqz v0, :cond_2f0

    .line 5028
    array-length v15, v0

    if-nez v15, :cond_230

    goto/16 :goto_2f0

    .line 5033
    :cond_230
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v15

    move-object/from16 v17, v3

    const/4 v3, 0x1

    .line 5035
    iput v3, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    .line 5036
    iput-object v12, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    .line 5037
    iput v7, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    .line 5038
    iput v5, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    .line 5039
    iput v2, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    .line 5040
    iput v6, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    .line 5041
    iput v8, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    .line 5042
    iput v14, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    .line 5043
    iput v10, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    .line 5044
    iput v11, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    .line 5045
    iput v13, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    .line 5046
    iput-object v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    .line 5047
    invoke-virtual {v1, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorPkg(I)[B

    move-result-object v0

    iput-object v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    .line 5048
    invoke-virtual {v1, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorSignature(I)[B

    move-result-object v0

    iput-object v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    .line 5049
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getDigestOfBytes([B)[B

    move-result-object v0

    iput-object v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    const/4 v0, 0x2

    .line 5050
    iput v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    .line 5052
    :try_start_268
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    if-eqz v0, :cond_295

    .line 5053
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v1

    if-lez v1, :cond_295

    const/4 v1, 0x0

    .line 5054
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_295

    .line 5056
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 5057
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_295

    .line 5058
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B
    :try_end_295
    .catch Ljava/lang/Exception; {:try_start_268 .. :try_end_295} :catch_298

    :cond_295
    move-object/from16 v3, v17

    goto :goto_2b1

    :catch_298
    move-exception v0

    .line 5063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v17

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b1
    if-eqz v16, :cond_2d6

    .line 5068
    :try_start_2b3
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->toTLV()[B

    move-result-object v0

    iput-object v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B
    :try_end_2b9
    .catch Ljava/lang/Exception; {:try_start_2b3 .. :try_end_2b9} :catch_2ba

    goto :goto_2d6

    :catch_2ba
    move-exception v0

    .line 5071
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " failed to convert SCP param to TLV"

    .line 5072
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5075
    :cond_2d6
    :goto_2d6
    invoke-static {v15}, Lcom/samsung/ucm/ucmservice/EFSProperties;->saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z

    move-result v0

    const/4 v5, 0x1

    if-eq v5, v0, :cond_2e5

    const-string v0, "configureODESettings. failed to save ode config"

    .line 5077
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x10d

    return v9

    .line 5080
    :cond_2e5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "/efs/sec_efs/ucm_ode_mode"

    invoke-static {v0, v1}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->saveDataToFile([BLjava/lang/String;)Z

    const/4 v10, 0x0

    return v10

    :cond_2f0
    :goto_2f0
    const-string v0, "csName is empty"

    .line 5029
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f5
    const/4 v1, 0x4

    return v1

    :catch_2f7
    move-exception v0

    .line 5025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f5

    :cond_30f
    move/from16 v18, v10

    move v10, v9

    move/from16 v9, v18

    move/from16 v18, v10

    move v10, v9

    move/from16 v9, v18

    goto/16 :goto_eb

    :cond_31b
    :goto_31b
    return v12

    :cond_31c
    :goto_31c
    const-string/jumbo v0, "plugin signature is null"

    .line 4924
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    nop

    :array_324
    .array-data 1
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
    .end array-data
.end method

.method public containsAlias(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5647
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5648
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 5650
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "containsAlias "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UcmService"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5651
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v4

    const/16 v6, 0xe

    const/4 v7, 0x0

    const-string v8, "booleanresponse"

    const-string v9, "errorresponse"

    if-nez v4, :cond_3b

    .line 5653
    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5654
    invoke-virtual {v3, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    .line 5659
    :cond_3b
    new-instance v10, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v10, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 5660
    invoke-virtual {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_48

    move v11, v2

    .line 5662
    :cond_48
    invoke-virtual {v0, v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v15

    .line 5663
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 5665
    :try_start_50
    iget-object v13, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v14

    const/16 v17, 0x0

    invoke-virtual {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v18

    move/from16 v16, v11

    invoke-virtual/range {v13 .. v18}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_88

    .line 5666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING!!!! containsAlias is NOT allowed for URI = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5667
    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0xf

    .line 5668
    invoke-virtual {v3, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_84
    .catchall {:try_start_50 .. :try_end_84} :catchall_d5

    .line 5672
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :cond_88
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5677
    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_9d

    const-string v0, "agent is not bound"

    .line 5678
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5679
    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5680
    invoke-virtual {v3, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    .line 5683
    :cond_9d
    invoke-virtual {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v0

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->containsAlias(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_bc

    const-string v0, "ERROR: Null Response received from agent"

    .line 5685
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5686
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5687
    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0xd

    .line 5688
    invoke-virtual {v0, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 5691
    :cond_bc
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 5692
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "containsAlias Response from plugin:  error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_d5
    move-exception v0

    .line 5672
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5673
    throw v0
.end method

.method public final convertByteToString([B)Ljava/lang/String;
    .registers 7

    .line 1024
    new-instance p0, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 1028
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_27

    aget-byte v3, p1, v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 1029
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v4, v1

    const-string v3, "%02X"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1031
    :cond_27
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1032
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "convertByteToString result - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UcmService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public createSecureChannel(ILandroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSecureChannel protocolType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1540
    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->enforceUidPermission(I)Z

    move-result v2

    if-nez v2, :cond_32

    const-string p0, "  Agent don\'t UCS PLUGIN permission. Returning..."

    .line 1541
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    new-instance p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>()V

    const/4 p1, 0x1

    .line 1543
    iput p1, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    const/16 p1, 0x41

    .line 1544
    iput p1, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    return-object p0

    .line 1547
    :cond_32
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidSCPProtocol(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3f

    const-string p0, "Invalid protocolType..."

    .line 1548
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 1551
    :cond_3f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1553
    :try_start_43
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->installCACertforCreateSecureChannel()V

    .line 1554
    invoke-static {p2}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->generateParam(Landroid/os/Bundle;)Lcom/samsung/ucm/ucmservice/scp/CreationParam;

    move-result-object p2
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4a} :catch_5c
    .catchall {:try_start_43 .. :try_end_4a} :catchall_5a

    if-nez p2, :cond_50

    .line 1562
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    .line 1558
    :cond_50
    :try_start_50
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->createSecureChannel(IILcom/samsung/ucm/ucmservice/scp/CreationParam;)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object p0
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_56} :catch_5c
    .catchall {:try_start_50 .. :try_end_56} :catchall_5a

    .line 1562
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_5a
    move-exception p0

    goto :goto_79

    :catch_5c
    move-exception p0

    .line 1560
    :try_start_5d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The exception occurs "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_5d .. :try_end_75} :catchall_5a

    .line 1562
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :goto_79
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1563
    throw p0
.end method

.method public decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2013
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decrypt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UcmService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "errorresponse"

    if-nez v2, :cond_2e

    const/4 v1, 0x4

    .line 2016
    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2017
    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 2020
    :cond_2e
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v6

    const/16 v7, 0xe

    if-nez v6, :cond_42

    .line 2022
    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2023
    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 2027
    :cond_42
    new-instance v8, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v8, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2028
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2029
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5f

    if-eq v9, v10, :cond_5f

    const/16 v12, 0x3e8

    if-eq v9, v12, :cond_5e

    .line 2032
    invoke-virtual {v0, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v12

    if-eqz v12, :cond_5f

    :cond_5e
    move v9, v10

    .line 2037
    :cond_5f
    invoke-virtual {v0, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v10

    .line 2038
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v12

    if-ne v12, v11, :cond_6a

    const/4 v12, 0x1

    .line 2041
    :cond_6a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v13

    if-eqz v13, :cond_a7

    .line 2042
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v13

    if-eq v13, v11, :cond_93

    .line 2044
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v10

    .line 2045
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Decrypt new userid-"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    .line 2047
    :cond_93
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Decrypt. Keeping same userid"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a7
    :goto_a7
    if-nez p4, :cond_af

    .line 2052
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    goto :goto_b1

    :cond_af
    move-object/from16 v11, p4

    .line 2056
    :goto_b1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 2058
    :try_start_b5
    iget-object v13, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v14

    const/16 v17, 0x0

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v18

    move v15, v10

    move/from16 v16, v9

    invoke-virtual/range {v13 .. v18}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v13

    if-nez v13, :cond_ef

    .line 2059
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! decrypt is NOT allowed for URI = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xf

    .line 2060
    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2061
    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0
    :try_end_eb
    .catchall {:try_start_b5 .. :try_end_eb} :catchall_1b7

    .line 2064
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :cond_ef
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v1, "callerUid"

    .line 2068
    invoke-virtual {v11, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v13, "user_id"

    .line 2069
    invoke-virtual {v11, v13, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v10, "ownerUid"

    .line 2070
    invoke-virtual {v11, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v9, "resource"

    .line 2071
    invoke-virtual {v11, v9, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2073
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "decrypt KEY_RESOURCE_ID= "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, -0x2

    invoke-virtual {v11, v9, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decrypt KEY_USER_ID= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decrypt KEY_CALLER_UID= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    invoke-virtual {v6}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v1

    if-nez v1, :cond_165

    const-string v1, "agent is not bound"

    .line 2080
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2082
    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 2085
    :cond_165
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, p3

    invoke-virtual {v6, v1, v2, v3, v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const/16 v2, 0xd

    if-nez v1, :cond_185

    const-string v1, "ERROR: Null Response received from agent"

    .line 2087
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2089
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2090
    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    :cond_185
    const-string v3, "bytearrayresponse"

    .line 2092
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 2093
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2094
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decrypt Response from plugin:  error code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1b2

    const-string v3, "ERROR: Empty data received for decrypt"

    .line 2096
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2098
    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 2100
    :cond_1b2
    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    :catchall_1b7
    move-exception v0

    .line 2064
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2065
    throw v0
.end method

.method public delegateDeleteFile(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "delegateDeleteFile"

    .line 6419
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 6420
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEsePluginDelegationHelper:Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;->deleteFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public delegateGetTaProfile()Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "delegateGetTaProfile"

    .line 6298
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 6302
    invoke-static {}, Lcom/sec/esecomm/EsecommAdapter;->getEsecommAdapter()Lcom/sec/esecomm/EsecommAdapter;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0xd

    const-string v2, "bytearrayresponse"

    const-string v3, "errorresponse"

    if-nez p0, :cond_1e

    .line 6305
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 6306
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6307
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p0

    .line 6311
    :cond_1e
    invoke-virtual {p0}, Lcom/sec/esecomm/EsecommAdapter;->getTaProfile()[B

    move-result-object p0

    if-nez p0, :cond_30

    .line 6314
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 6315
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6316
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p0

    .line 6320
    :cond_30
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6321
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 p0, 0x0

    .line 6322
    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public delegateLoadTa(Z)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "delegateLoadTa"

    .line 6250
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 6254
    invoke-static {}, Lcom/sec/esecomm/EsecommAdapter;->getEsecommAdapter()Lcom/sec/esecomm/EsecommAdapter;

    move-result-object p0

    const-string v0, "errorresponse"

    const-string v1, "intresponse"

    if-nez p0, :cond_1e

    .line 6257
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/16 p1, 0xd

    .line 6258
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, -0x1

    .line 6259
    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0

    .line 6263
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/sec/esecomm/EsecommAdapter;->loadTa(Z)I

    move-result p0

    .line 6265
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6266
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p0, 0x0

    .line 6267
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public delegateProcessTACommand(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "delegateProcessTACommand"

    .line 6360
    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 6364
    invoke-static {}, Lcom/sec/esecomm/EsecommAdapter;->getEsecommAdapter()Lcom/sec/esecomm/EsecommAdapter;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xd

    const-string v4, "errorresponse"

    const-string/jumbo v5, "tadata"

    if-nez v1, :cond_21

    .line 6367
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6368
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6369
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0

    .line 6373
    :cond_21
    new-instance v12, Lcom/sec/esecomm/TARequest;

    const-string/jumbo v13, "tacommandid"

    .line 6374
    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v14, "tamagicnumber"

    .line 6375
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v15, "taversion"

    .line 6376
    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v11, "tadatalength"

    .line 6377
    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 6378
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    move-object v6, v12

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    invoke-direct/range {v6 .. v11}, Lcom/sec/esecomm/TARequest;-><init>(IIII[B)V

    .line 6381
    invoke-virtual {v1, v12}, Lcom/sec/esecomm/EsecommAdapter;->processTACommand(Lcom/sec/esecomm/TARequest;)Lcom/sec/esecomm/TAResponse;

    move-result-object v1

    if-nez v1, :cond_5d

    .line 6384
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6385
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6386
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0

    .line 6390
    :cond_5d
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    .line 6391
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6392
    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v13, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6393
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6394
    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6395
    invoke-virtual {v1}, Lcom/sec/esecomm/TAResponse;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_87

    invoke-virtual {v1}, Lcom/sec/esecomm/TAResponse;->getData()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_88

    :cond_87
    const/4 v0, -0x1

    :goto_88
    move-object/from16 v3, v17

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6396
    invoke-virtual {v1}, Lcom/sec/esecomm/TAResponse;->getData()[B

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 6397
    invoke-virtual {v1}, Lcom/sec/esecomm/TAResponse;->getErrCode()I

    move-result v0

    const-string/jumbo v3, "taerrorcode"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6398
    invoke-virtual {v1}, Lcom/sec/esecomm/TAResponse;->getErrDescription()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "taerrordescription"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public delegateReadFile(Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "delegateReadFile"

    .line 6405
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 6406
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEsePluginDelegationHelper:Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;->readFromFile(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public delegateSaveFile(Ljava/lang/String;[B)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "delegateSaveFile"

    .line 6412
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 6413
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEsePluginDelegationHelper:Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/util/EsePluginDelegationHelper;->saveToFile(Ljava/lang/String;[B)Z

    move-result p0

    return p0
.end method

.method public delegateUnloadTa()Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "delegateUnloadTa"

    .line 6274
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 6278
    invoke-static {}, Lcom/sec/esecomm/EsecommAdapter;->getEsecommAdapter()Lcom/sec/esecomm/EsecommAdapter;

    move-result-object p0

    const-string v0, "errorresponse"

    const-string v1, "intresponse"

    if-nez p0, :cond_1e

    .line 6281
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0xd

    .line 6282
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, -0x1

    .line 6283
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0

    .line 6287
    :cond_1e
    invoke-virtual {p0}, Lcom/sec/esecomm/EsecommAdapter;->unloadTa()I

    move-result p0

    .line 6289
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6290
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p0, 0x0

    .line 6291
    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2
.end method

.method public delegateWrapSessionKey([B)Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "delegateWrapSessionKey"

    .line 6329
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 6333
    invoke-static {}, Lcom/sec/esecomm/EsecommAdapter;->getEsecommAdapter()Lcom/sec/esecomm/EsecommAdapter;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0xd

    const-string v2, "bytearrayresponse"

    const-string v3, "errorresponse"

    if-nez p0, :cond_1e

    .line 6336
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 6337
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6338
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p0

    .line 6342
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/sec/esecomm/EsecommAdapter;->wrapSessionKey([B)[B

    move-result-object p0

    if-nez p0, :cond_30

    .line 6345
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 6346
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6347
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p0

    .line 6351
    :cond_30
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6352
    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 p0, 0x0

    .line 6353
    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public delete(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2974
    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "UcmService"

    if-eqz p0, :cond_24

    .line 2976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UCMERRORTESTING: @CredentialManagerService delete Response from plugin with error code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "errorresponse"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_24
    const-string v0, "UCMERRORTESTING: @CredentialManagerService delete Response from plugin is null"

    .line 2978
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    return-object p0
.end method

.method public deleteCertificate(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "deleteCertificate"

    .line 2985
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2986
    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "errorresponse"

    if-nez p0, :cond_1f

    .line 2988
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 p2, 0x0

    const-string v0, "booleanresponse"

    .line 2989
    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p2, 0xd

    .line 2990
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0

    .line 2993
    :cond_1f
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 2994
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleteCertificate Response:  error code = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UcmService"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UCMERRORTESTING: @CredentialManagerService deleteCertificate Response from plugin with error code = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, p2

    .line 3000
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteInternal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "UcmService"

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3002
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v11

    const/16 v12, 0xe

    const-string v13, "errorresponse"

    const/4 v14, 0x0

    const-string v15, "booleanresponse"

    if-nez v11, :cond_4d

    .line 3004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteInternal : NULL agent for uri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    invoke-virtual {v10, v15, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3006
    invoke-virtual {v10, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v10

    .line 3011
    :cond_4d
    new-instance v2, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v2, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3012
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3013
    invoke-virtual {v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6b

    if-eq v3, v4, :cond_6b

    const/16 v6, 0x3e8

    if-eq v3, v6, :cond_69

    .line 3016
    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v6

    if-eqz v6, :cond_6b

    :cond_69
    move v7, v4

    goto :goto_6c

    :cond_6b
    move v7, v3

    :goto_6c
    if-eqz v8, :cond_71

    move/from16 v3, p3

    goto :goto_75

    .line 3021
    :cond_71
    invoke-virtual {v0, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v3

    .line 3022
    :goto_75
    invoke-virtual {v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v4

    if-ne v4, v5, :cond_7c

    const/4 v4, 0x1

    :cond_7c
    move v6, v4

    .line 3025
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 3026
    invoke-virtual {v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    if-eq v4, v5, :cond_a6

    .line 3028
    invoke-virtual {v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v3

    .line 3029
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete new userid-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba

    .line 3031
    :cond_a6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete. Keeping same userid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ba
    :goto_ba
    move v5, v3

    .line 3035
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3037
    :try_start_bf
    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    invoke-virtual {v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v18

    move-object v2, v3

    move-object v3, v0

    move v4, v5

    move v0, v5

    move v5, v7

    move v12, v6

    move/from16 v6, p2

    move/from16 v19, v7

    move-object/from16 v7, v18

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_ff

    .line 3038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING!!!! deleteInternal is NOT allowed for URI = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    invoke-virtual {v10, v15, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0xf

    .line 3040
    invoke-virtual {v10, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_fb
    .catchall {:try_start_bf .. :try_end_fb} :catchall_18d

    .line 3044
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v10

    :cond_ff
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3048
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-eqz v8, :cond_10e

    const-string v3, "ismdm"

    .line 3049
    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_10e
    const-string v3, "callerUid"

    move/from16 v4, v19

    .line 3050
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "user_id"

    .line 3051
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "ownerUid"

    .line 3052
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "resource"

    .line 3053
    invoke-virtual {v2, v0, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3055
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete KEY_RESOURCE_ID= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, -0x2

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete KEY_USER_ID= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete KEY_CALLER_UID= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    invoke-virtual {v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_184

    const-string v0, "agent is not bound"

    .line 3062
    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    invoke-virtual {v10, v15, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0xe

    .line 3064
    invoke-virtual {v10, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v10

    .line 3067
    :cond_184
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :catchall_18d
    move-exception v0

    .line 3044
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3045
    throw v0
.end method

.method public final deleteODEConfigInFileIfExist()V
    .registers 4

    const-string p0, "UcmService"

    const-string v0, "deleteODEConfigInFileIfExist"

    .line 5318
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5319
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs"

    const-string v2, "odeConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5320
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v0, "ODE config file does not exist"

    .line 5322
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :cond_1c
    const-string v1, "ODE config file exist so delete it"

    .line 5324
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5325
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_24
    return-void
.end method

.method public destroySecureChannel()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    const-string v1, "destroySecureChannel ..."

    .line 1608
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1610
    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->enforceUidPermission(I)Z

    move-result v2

    if-nez v2, :cond_19

    const-string p0, "  Agent don\'t UCM PLUGIN permission. Returning..."

    .line 1611
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x41

    return p0

    .line 1615
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1617
    :try_start_1d
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->destroySecureChannel(I)I

    move-result p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_23} :catch_29
    .catchall {:try_start_1d .. :try_end_23} :catchall_27

    .line 1621
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_27
    move-exception p0

    goto :goto_47

    :catch_29
    move-exception p0

    .line 1619
    :try_start_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The exception occurs "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_2a .. :try_end_42} :catchall_27

    .line 1621
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :goto_47
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1622
    throw p0
.end method

.method public final disableAutoFactoryReset()V
    .registers 7

    const-string v0, "auto_swipe_main_user"

    const-string v1, "UcmService"

    :try_start_4
    const-string v2, "disableAutoFactoryReset"

    .line 4866
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4868
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 4871
    sget-boolean v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    if-eqz v4, :cond_2c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AUTO_SWIPE_MAIN_USER current : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4873
    :cond_2c
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    .line 4876
    sget-boolean v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    if-eqz v0, :cond_68

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings.Secure.putInt : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4e} :catch_4f

    goto :goto_68

    :catch_4f
    move-exception p0

    .line 4878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The exception occurs "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    :goto_68
    return-void
.end method

.method public final displayToastFromAgentResponse(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "UcmService"

    const-string/jumbo v1, "toastmessageresponse"

    .line 3976
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string v2, ""

    .line 3977
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5b

    .line 3978
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 3980
    :try_start_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayToastFromAgentResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3981
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3982
    new-instance v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$9;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$9;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3e} :catch_3f

    goto :goto_5b

    :catch_3f
    move-exception p0

    .line 3989
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "displayToastFromAgentResponse: Exception "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3990
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public encrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encrypt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UcmService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "errorresponse"

    if-nez v2, :cond_2e

    const/4 v1, 0x4

    .line 2108
    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2109
    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 2112
    :cond_2e
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v6

    const/16 v7, 0xe

    if-nez v6, :cond_42

    .line 2114
    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2115
    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 2119
    :cond_42
    new-instance v8, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v8, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2120
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2121
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5f

    if-eq v9, v10, :cond_5f

    const/16 v12, 0x3e8

    if-eq v9, v12, :cond_5e

    .line 2124
    invoke-virtual {v0, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v12

    if-eqz v12, :cond_5f

    :cond_5e
    move v9, v10

    .line 2129
    :cond_5f
    invoke-virtual {v0, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v10

    .line 2130
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v12

    if-ne v12, v11, :cond_6a

    const/4 v12, 0x1

    .line 2133
    :cond_6a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v13

    if-eqz v13, :cond_a7

    .line 2134
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v13

    if-eq v13, v11, :cond_93

    .line 2136
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v10

    .line 2137
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Encrypt new userid-"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    .line 2139
    :cond_93
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Encrypt. Keeping same userid"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a7
    :goto_a7
    if-nez p4, :cond_af

    .line 2144
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    goto :goto_b1

    :cond_af
    move-object/from16 v11, p4

    .line 2148
    :goto_b1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 2150
    :try_start_b5
    iget-object v13, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v14

    const/16 v17, 0x0

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v18

    move v15, v10

    move/from16 v16, v9

    invoke-virtual/range {v13 .. v18}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v13

    if-nez v13, :cond_ef

    .line 2151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! decrypt is NOT allowed for URI = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xf

    .line 2152
    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2153
    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0
    :try_end_eb
    .catchall {:try_start_b5 .. :try_end_eb} :catchall_1b7

    .line 2156
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :cond_ef
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v1, "callerUid"

    .line 2160
    invoke-virtual {v11, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v13, "user_id"

    .line 2161
    invoke-virtual {v11, v13, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v10, "ownerUid"

    .line 2162
    invoke-virtual {v11, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v9, "resource"

    .line 2163
    invoke-virtual {v11, v9, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2165
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "encrypt KEY_RESOURCE_ID= "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, -0x2

    invoke-virtual {v11, v9, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "encrypt KEY_USER_ID= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "encrypt KEY_CALLER_UID= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    invoke-virtual {v6}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v1

    if-nez v1, :cond_165

    const-string v1, "agent is not bound"

    .line 2172
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2174
    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 2177
    :cond_165
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, p3

    invoke-virtual {v6, v1, v2, v3, v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->encrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const/16 v2, 0xd

    if-nez v1, :cond_185

    const-string v1, "ERROR: Null Response received from agent"

    .line 2179
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2181
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2182
    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    :cond_185
    const-string v3, "bytearrayresponse"

    .line 2184
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 2185
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2186
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encrypt Response from plugin:  error code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1b2

    const-string v3, "ERROR: Empty data received for encrypt"

    .line 2188
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2190
    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 2192
    :cond_1b2
    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    :catchall_1b7
    move-exception v0

    .line 2156
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2157
    throw v0
.end method

.method public final enforceLockType(ILjava/lang/String;)V
    .registers 7

    const-string v0, "UcmService"

    :try_start_2
    const-string/jumbo v1, "password_policy"

    .line 6096
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 6098
    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v3

    if-lez v3, :cond_17

    .line 6099
    invoke-virtual {v1, p1, v2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    .line 6102
    :cond_17
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 6103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enforceLockType called for userID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6104
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.password.ConfirmUCMLockPassword"

    .line 6105
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " csName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "lockscreen.ucscredentialstoragename"

    .line 6107
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 6108
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x400000

    .line 6109
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x800000

    .line 6110
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6111
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_69} :catch_6a

    goto :goto_83

    :catch_6a
    move-exception p0

    .line 6113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The exception occurs "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_83
    return-void
.end method

.method public final enforceUidPermission(I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enforceUidPermission : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    const-string v0, "com.samsung.android.knox.permission.KNOX_UCM_PLUGIN_SERVICE"

    invoke-interface {p0, v0, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_27

    const-string p0, "KNOX_UCM_PLUGIN_PERMISSION is granted"

    .line 705
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public final generateCS(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .registers 3

    .line 4003
    new-instance p0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 4004
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 4005
    iput-object p2, p0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public generateDek(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1629
    invoke-virtual {p0, p1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateDek(Ljava/lang/String;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0
.end method

.method public final generateDek(Ljava/lang/String;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "errorresponse"

    .line 1633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateDek "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :try_start_1d
    const-string v3, "generateDek"

    .line 1638
    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_c6

    if-eqz p1, :cond_b6

    const-string v3, ""

    .line 1645
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_2f

    goto/16 :goto_b6

    :cond_2f
    if-nez p2, :cond_48

    const-string p2, "boot_test"

    .line 1652
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-ne v4, p2, :cond_40

    const-string p2, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    .line 1653
    invoke-virtual {p0, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p2

    goto :goto_48

    .line 1655
    :cond_40
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p2

    :cond_48
    :goto_48
    const/16 v3, 0xe

    if-nez p2, :cond_6c

    .line 1660
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no agent found for Source = "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1662
    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    .line 1666
    :cond_6c
    invoke-virtual {p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result p1

    if-nez p1, :cond_7f

    const-string p1, "agent is not bound"

    .line 1667
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1669
    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    .line 1671
    :cond_7f
    invoke-virtual {p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateDek()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_99

    const-string p1, "ERROR: Null Response received from agent"

    .line 1673
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/16 p2, 0xd

    .line 1675
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1676
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    .line 1678
    :cond_99
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 1679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateDek response from plugin:  error code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    :cond_b6
    :goto_b6
    const-string/jumbo p1, "uri is empty"

    .line 1646
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    .line 1647
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1648
    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    :catch_c6
    move-exception p1

    .line 1640
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The exception occurs "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xf

    .line 1641
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1642
    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0
.end method

.method public generateKey(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 3108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateKey("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UcmService"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3111
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v7

    const/16 v8, 0xe

    const/4 v9, 0x0

    const-string v10, "booleanresponse"

    const-string v11, "errorresponse"

    if-nez v7, :cond_64

    .line 3113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateKey: NULL agent for uri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    invoke-virtual {v5, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3115
    invoke-virtual {v5, v11, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v5

    .line 3118
    :cond_64
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "agent = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v13, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    invoke-virtual {v7}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v12

    if-nez v12, :cond_8e

    const-string v0, "agent is not bound"

    .line 3121
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    invoke-virtual {v5, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3123
    invoke-virtual {v5, v11, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v5

    .line 3128
    :cond_8e
    new-instance v8, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v8, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3129
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 3130
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_ab

    if-eq v12, v13, :cond_ab

    const/16 v15, 0x3e8

    if-eq v12, v15, :cond_aa

    .line 3133
    invoke-virtual {v0, v12}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v15

    if-eqz v15, :cond_ab

    :cond_aa
    move v12, v13

    .line 3139
    :cond_ab
    invoke-virtual {v0, v12}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v13

    .line 3140
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v15

    if-ne v15, v14, :cond_b6

    const/4 v15, 0x1

    .line 3145
    :cond_b6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v9

    if-eqz v9, :cond_f4

    .line 3146
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v9

    if-eq v9, v14, :cond_e0

    .line 3148
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v9

    .line 3149
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "generateKey new userid-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v9

    goto :goto_f4

    .line 3151
    :cond_e0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "generateKey. Keeping same userid"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f4
    :goto_f4
    const-string v9, "callerUid"

    .line 3155
    invoke-virtual {v4, v9, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v14, "user_id"

    .line 3156
    invoke-virtual {v4, v14, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "ownerUid"

    .line 3157
    invoke-virtual {v4, v2, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "resource"

    .line 3158
    invoke-virtual {v4, v2, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3161
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 3163
    :try_start_10f
    iget-object v15, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    .line 3164
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v17

    const/16 v20, 0x1

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v16, v15

    move/from16 v18, v13

    move/from16 v19, v12

    .line 3163
    invoke-virtual/range {v16 .. v21}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14c

    .line 3165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING!!! importKey is NOT allowed for URI = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3166
    invoke-virtual {v5, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0xf

    .line 3167
    invoke-virtual {v5, v11, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_148
    .catchall {:try_start_10f .. :try_end_148} :catchall_1e1

    .line 3171
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_14c
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateKey: KEY_RESOURCE_ID = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, -0x2

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateKey: KEY_USER_ID     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateKey: KEY_CALLER_UID  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateKey: KEY_ALGORITHM   = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "algorithm"

    const-string v3, "AES"

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v7, v0, v1, v2, v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateKey(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1db

    .line 3182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UCMERRORTESTING: @CredentialManagerService generateKey. Response from plugin with error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3183
    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3182
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e0

    :cond_1db
    const-string v1, "UCMERRORTESTING: @CredentialManagerService generateKey. Response from plugin is NULL"

    .line 3185
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e0
    return-object v0

    :catchall_1e1
    move-exception v0

    .line 3171
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3172
    throw v0
.end method

.method public generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateKeyPair "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .line 3093
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "errorresponse"

    if-nez p0, :cond_35

    .line 3095
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 p2, 0x0

    const-string p3, "bytearrayresponse"

    .line 3096
    invoke-virtual {p0, p3, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 p2, 0xd

    .line 3097
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0

    .line 3100
    :cond_35
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 3101
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "generateKeyPair Response:  error code = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public generateKeyPairInternal(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateKeyPairInternal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "generateKeyPairInternal"

    .line 3074
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .line 3076
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "errorresponse"

    if-nez p0, :cond_3a

    .line 3078
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 p2, 0x0

    const-string p3, "bytearrayresponse"

    .line 3079
    invoke-virtual {p0, p3, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 p2, 0xd

    .line 3080
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0

    .line 3083
    :cond_3a
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 3084
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "generateKeyPairInternal Response:  error code = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateKeyPairMain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UcmService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3194
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v4

    const/16 v5, 0xe

    const-string v6, "errorresponse"

    const/4 v7, 0x0

    const-string v8, "bytearrayresponse"

    if-nez v4, :cond_4b

    .line 3196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateKeyPairMain : NULL agent for uri "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3198
    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    .line 3203
    :cond_4b
    new-instance v9, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v9, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3204
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 3205
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_68

    if-eq v10, v11, :cond_68

    const/16 v13, 0x3e8

    if-eq v10, v13, :cond_67

    .line 3208
    invoke-virtual {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v13

    if-eqz v13, :cond_68

    :cond_67
    move v10, v11

    .line 3213
    :cond_68
    invoke-virtual {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v11

    .line 3214
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v13

    if-ne v13, v12, :cond_73

    const/4 v13, 0x1

    .line 3217
    :cond_73
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v14

    if-eqz v14, :cond_b0

    .line 3218
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v14

    if-eq v14, v12, :cond_9c

    .line 3220
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v11

    .line 3221
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "generateKeyPairMain new userid-"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 3223
    :cond_9c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "generateKeyPairMain. Keeping same userid"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0
    :goto_b0
    if-nez p5, :cond_f9

    .line 3229
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 3231
    :try_start_b6
    iget-object v14, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v15

    const/16 v18, 0x0

    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v19

    move/from16 v16, v11

    move/from16 v17, v10

    invoke-virtual/range {v14 .. v19}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f0

    .line 3232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING!!!! generateKeyPairMain is NOT allowed for URI = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v0, 0xf

    .line 3234
    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_ec
    .catchall {:try_start_b6 .. :try_end_ec} :catchall_f4

    .line 3238
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_f0
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f9

    :catchall_f4
    move-exception v0

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3239
    throw v0

    .line 3243
    :cond_f9
    :goto_f9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v9, "callerUid"

    .line 3244
    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v12, "user_id"

    .line 3245
    invoke-virtual {v0, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "ownerUid"

    .line 3246
    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v10, "resource"

    .line 3247
    invoke-virtual {v0, v10, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v11, "extraArgs"

    move-object/from16 v13, p4

    .line 3248
    invoke-virtual {v0, v11, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3250
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generateKeyPairMain KEY_RESOURCE_ID= "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, -0x2

    invoke-virtual {v0, v10, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateKeyPairMain KEY_USER_ID= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateKeyPairMain KEY_CALLER_UID= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v9

    if-nez v9, :cond_177

    const-string v0, "agent is not bound"

    .line 3257
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3259
    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    .line 3262
    :cond_177
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v4, v1, v2, v3, v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public generateKeyguardPassword(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateKeyguardPassword "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallerSystemUI()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemCaller()Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "generateKeyguardPassword"

    .line 1857
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1860
    :cond_2f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "errorresponse"

    if-eqz p2, :cond_f6

    const-string v3, ""

    .line 1862
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_43

    goto/16 :goto_f6

    :cond_43
    const-string v3, "boot_test"

    .line 1869
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v4, v3, :cond_52

    const-string v3, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    .line 1870
    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p0

    goto :goto_5a

    .line 1872
    :cond_52
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p0

    :goto_5a
    const/16 v3, 0xe

    if-nez p0, :cond_7a

    .line 1876
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "no agent found for Source = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 1882
    :cond_7a
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result p2

    if-nez p2, :cond_89

    const-string p0, "agent is not bound"

    .line 1883
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 1888
    :cond_89
    invoke-virtual {p0, p1, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateKeyguardPassword(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_9f

    const-string p0, "ERROR: Null Response received from agent"

    .line 1890
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/16 p1, 0xd

    .line 1892
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0

    :cond_9f
    const-string p1, "bytearrayresponse"

    .line 1896
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const-string/jumbo p3, "stringresponse"

    .line 1897
    invoke-virtual {p0, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p2, :cond_dd

    const-string p2, "generateKeyguardPassword. byte is null."

    .line 1899
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_dd

    const-string p2, "generateKeyguardPassword. byte is null. fill bytes from str"

    .line 1901
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_ba
    const-string p2, "UTF-8"

    .line 1903
    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_c3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_ba .. :try_end_c3} :catch_c4

    goto :goto_dd

    :catch_c4
    move-exception p1

    .line 1905
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The exception occurs "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    :cond_dd
    :goto_dd
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1911
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "generateKeyguardPassword Response from plugin:  error code = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_f6
    :goto_f6
    const-string/jumbo p0, "uri is empty"

    .line 1863
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x10

    .line 1864
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public generateSecureRandom(Ljava/lang/String;I[B)Landroid/os/Bundle;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateSecureRandom "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UcmService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3469
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v4

    const/16 v5, 0xe

    const/4 v6, 0x0

    const-string v7, "errorresponse"

    const-string v8, "bytearrayresponse"

    if-nez v4, :cond_4b

    .line 3471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateSecureRandom : NULL agent for uri "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3472
    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3473
    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    .line 3478
    :cond_4b
    new-instance v9, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v9, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3479
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 3480
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_62

    if-eq v10, v11, :cond_62

    const/16 v13, 0x3e8

    if-ne v10, v13, :cond_62

    move v10, v11

    .line 3488
    :cond_62
    invoke-virtual {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v11

    .line 3489
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v13

    if-ne v13, v12, :cond_6d

    const/4 v13, 0x1

    .line 3493
    :cond_6d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 3495
    :try_start_71
    iget-object v14, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v15

    const/16 v18, 0x0

    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v19

    move/from16 v16, v11

    move/from16 v17, v10

    invoke-virtual/range {v14 .. v19}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_ab

    .line 3496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING!!!! generateSecureRandom is NOT allowed for URI = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v0, 0xf

    .line 3498
    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_a7
    .catchall {:try_start_71 .. :try_end_a7} :catchall_171

    .line 3502
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_ab
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3506
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "callerUid"

    .line 3507
    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v9, "user_id"

    .line 3508
    invoke-virtual {v0, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "ownerUid"

    .line 3509
    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v10, "resource"

    .line 3510
    invoke-virtual {v0, v10, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3512
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "generateSecureRandom KEY_RESOURCE_ID= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, -0x2

    invoke-virtual {v0, v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateSecureRandom KEY_USER_ID= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3514
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateSecureRandom KEY_CALLER_UID= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3518
    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v1

    if-nez v1, :cond_125

    const-string v0, "agent is not bound"

    .line 3519
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3520
    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3521
    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :cond_125
    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 3524
    invoke-virtual {v4, v1, v2, v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateSecureRandom(I[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_140

    const-string v0, "ERROR: Null Response received from agent"

    .line 3526
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3528
    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3529
    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 3532
    :cond_140
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 3533
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateSecureRandom Response from plugin:  error code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_170

    const-string v0, "ERROR: Empty data received for generateSecureRandom"

    .line 3537
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3538
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3539
    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v1, 0xd

    .line 3540
    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_170
    return-object v0

    :catchall_171
    move-exception v0

    .line 3502
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3503
    throw v0
.end method

.method public generateWrappedDek(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1685
    invoke-virtual {p0, p1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateWrappedDek(Ljava/lang/String;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0
.end method

.method public final generateWrappedDek(Ljava/lang/String;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "errorresponse"

    .line 1689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateWrappedDek "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :try_start_1d
    const-string v3, "generateWrappedDek"

    .line 1694
    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_c6

    if-eqz p1, :cond_b6

    const-string v3, ""

    .line 1701
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_2f

    goto/16 :goto_b6

    :cond_2f
    if-nez p2, :cond_48

    const-string p2, "boot_test"

    .line 1708
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-ne v4, p2, :cond_40

    const-string p2, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    .line 1709
    invoke-virtual {p0, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p2

    goto :goto_48

    .line 1711
    :cond_40
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p2

    :cond_48
    :goto_48
    const/16 v3, 0xe

    if-nez p2, :cond_6c

    .line 1716
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no agent found for Source = "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1718
    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    .line 1721
    :cond_6c
    invoke-virtual {p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result p1

    if-nez p1, :cond_7f

    const-string p1, "agent is not bound"

    .line 1722
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1724
    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    .line 1726
    :cond_7f
    invoke-virtual {p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateWrappedDek()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_99

    const-string p1, "ERROR: Null Response received from agent"

    .line 1728
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/16 p2, 0xd

    .line 1730
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1731
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    .line 1733
    :cond_99
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 1734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateWrappedDek response from plugin:  error code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    :cond_b6
    :goto_b6
    const-string/jumbo p1, "uri is empty"

    .line 1702
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    .line 1703
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1704
    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    :catch_c6
    move-exception p1

    .line 1696
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The exception occurs "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xf

    .line 1697
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1698
    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0
.end method

.method public getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 5705
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finding active agent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5706
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 5707
    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 5708
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "found active agent "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_51
    return-object v0
.end method

.method public final getActiveAgentFromUri(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .registers 3

    .line 4014
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 4017
    :cond_8
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p0

    return-object p0
.end method

.method public getAdminConfigureBundleFromCs(IILjava/lang/String;)Landroid/os/Bundle;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "getAdminConfigureBundleFromCs"

    .line 3713
    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3714
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3716
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdminConfigureBundleFromCs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UcmService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/16 v5, 0xe

    const/4 v6, 0x0

    const-string v7, "bundleresponse"

    const-string v8, "errorresponse"

    if-nez v3, :cond_54

    .line 3719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no agent found for Source = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3720
    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3721
    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    .line 3726
    :cond_54
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 3728
    :try_start_58
    new-instance v11, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v11, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3729
    invoke-virtual {v11}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v15

    .line 3731
    iget-object v12, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v11}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v13

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v14, p2

    invoke-virtual/range {v12 .. v17}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_97

    .line 3732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING!!!! getAdminConfigureBundleFromCs is NOT allowed for URI = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3733
    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 v0, 0xf

    .line 3734
    invoke-virtual {v2, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_93
    .catchall {:try_start_58 .. :try_end_93} :catchall_e0

    .line 3738
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_97
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3743
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_ac

    const-string v0, "agent is not bound"

    .line 3744
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3746
    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :cond_ac
    move/from16 v0, p1

    .line 3749
    invoke-virtual {v3, v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_c7

    const-string v0, "ERROR: Null Response received from agent"

    .line 3751
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3752
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3753
    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 v1, 0xd

    .line 3754
    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 3757
    :cond_c7
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 3758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCredentialStoragePluginConfiguration Response from plugin: error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_e0
    move-exception v0

    .line 3738
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3739
    throw v0
.end method

.method public getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2545
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 2551
    :cond_c
    new-instance v2, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v2, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2552
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2553
    invoke-virtual {v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_24

    if-eq v3, v4, :cond_24

    const/16 v5, 0x3e8

    if-ne v3, v5, :cond_24

    move v9, v4

    goto :goto_25

    :cond_24
    move v9, v3

    .line 2561
    :goto_25
    invoke-virtual {p0, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v8

    .line 2562
    invoke-virtual {v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    .line 2566
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2568
    :try_start_30
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5c

    const-string p0, "UcmService"

    .line 2569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING!!!! getAgentInfo is NOT allowed for URI = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_30 .. :try_end_58} :catchall_64

    .line 2573
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :cond_5c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2577
    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :catchall_64
    move-exception p0

    .line 2573
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2574
    throw p0
.end method

.method public final getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2581
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 2582
    iget-object v0, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v0, :cond_8c

    .line 2584
    iget-object v1, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v1, :cond_13

    const-string/jumbo v2, "uniqueId"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2585
    :cond_13
    iget-object v1, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    if-eqz v1, :cond_1c

    const-string v2, "id"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2586
    :cond_1c
    iget-object v1, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->summary:Ljava/lang/String;

    if-eqz v1, :cond_26

    const-string/jumbo v2, "summary"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2587
    :cond_26
    iget-object v1, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->title:Ljava/lang/String;

    if-eqz v1, :cond_30

    const-string/jumbo v2, "title"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2588
    :cond_30
    iget-object v1, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->vendorId:Ljava/lang/String;

    if-eqz v1, :cond_3a

    const-string/jumbo v2, "vendorId"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2589
    :cond_3a
    iget-object v1, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    if-eqz v1, :cond_44

    const-string/jumbo v2, "storageType"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2590
    :cond_44
    iget-boolean v1, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isDetachable:Z

    const-string v2, "isDetachable"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2591
    iget-boolean v1, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->reqUserVerification:Z

    const-string/jumbo v2, "reqUserVerification"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2592
    iget-boolean v1, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isHardwareBacked:Z

    const-string v2, "isHardwareBacked"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2593
    iget-boolean v1, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    const-string v2, "isReadOnly"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2594
    iget-boolean v1, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isManageable:Z

    const-string v2, "isManageable"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2595
    iget-boolean v1, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    const-string v2, "enforceManagement"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2596
    iget-boolean v1, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isPUKSupported:Z

    const-string v2, "isPUKSupported"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2597
    iget-boolean v1, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    const-string v2, "isGeneratePasswordAvailable"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    const-string v2, "isODESupport"

    .line 2598
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2599
    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->configuratorList:Ljava/lang/String;

    if-eqz v0, :cond_8c

    const-string v1, "configuratorList"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2601
    :cond_8c
    iget-object v0, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_a2

    .line 2602
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a2

    .line 2603
    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "packageName"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a2
    return-object p0
.end method

.method public final getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .registers 4

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppletInfo is called for pluginName-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 953
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    if-eqz p0, :cond_3f

    .line 957
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAppletInfo pluginName-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_3f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCertificateChain(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1923
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCertificateChain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UcmService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1927
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v4

    const/16 v5, 0xe

    const-string v6, "errorresponse"

    if-nez v4, :cond_4d

    .line 1929
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no agent found for Source = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1931
    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1935
    :cond_4d
    new-instance v7, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v7, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 1936
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1937
    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6a

    if-eq v8, v9, :cond_6a

    const/16 v11, 0x3e8

    if-eq v8, v11, :cond_69

    .line 1940
    invoke-virtual {v0, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v11

    if-eqz v11, :cond_6a

    :cond_69
    move v8, v9

    .line 1945
    :cond_6a
    invoke-virtual {v0, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v9

    .line 1946
    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v11

    if-ne v11, v10, :cond_75

    const/4 v11, 0x1

    .line 1949
    :cond_75
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v12

    if-eqz v12, :cond_a3

    .line 1950
    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v12

    if-eq v12, v10, :cond_9e

    .line 1952
    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v9

    .line 1953
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCertificateChain new userid-"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    :cond_9e
    const-string v10, "getCertificateChain user id id not valid. Keeping same userid"

    .line 1955
    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    :cond_a3
    :goto_a3
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1962
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1964
    :try_start_ac
    iget-object v12, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v13

    const/16 v16, 0x0

    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v17

    move v14, v9

    move v15, v8

    invoke-virtual/range {v12 .. v17}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v12

    if-nez v12, :cond_e5

    .line 1965
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING!!!! getCertificateChain is NOT allowed for URI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xf

    .line 1966
    invoke-virtual {v2, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1967
    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0
    :try_end_e1
    .catchall {:try_start_ac .. :try_end_e1} :catchall_1ab

    .line 1970
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :cond_e5
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v1, "callerUid"

    .line 1975
    invoke-virtual {v10, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v12, "user_id"

    .line 1976
    invoke-virtual {v10, v12, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v9, "ownerUid"

    .line 1977
    invoke-virtual {v10, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v8, "resource"

    .line 1978
    invoke-virtual {v10, v8, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1980
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCertificateChain KEY_RESOURCE_ID= "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, -0x2

    invoke-virtual {v10, v8, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCertificateChain KEY_USER_ID= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCertificateChain KEY_CALLER_UID= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v1

    if-nez v1, :cond_15b

    const-string v1, "agent is not bound"

    .line 1987
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1989
    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1991
    :cond_15b
    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v10}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const/16 v2, 0xd

    if-nez v1, :cond_179

    const-string v1, "ERROR: Null Response received from agent"

    .line 1993
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1995
    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1996
    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    :cond_179
    const-string v4, "bytearrayresponse"

    .line 1998
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 1999
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2000
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCertificateChain Response from plugin:  error code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_1a6

    const-string v4, "ERROR: Empty data received for getCertificateChain"

    .line 2003
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2005
    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 2007
    :cond_1a6
    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    :catchall_1ab
    move-exception v0

    .line 1970
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1971
    throw v0
.end method

.method public final getConfiguratorPkg(I)[B
    .registers 7

    .line 5159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfiguratorPkg is called for adminId-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 5162
    :try_start_17
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8f

    .line 5164
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    .line 5165
    :goto_25
    array-length v3, p0

    if-ge v2, v3, :cond_57

    .line 5166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageName -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5167
    aget-object v3, p0, v2

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 5168
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_54

    const/16 v3, 0x2c

    .line 5169
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 5172
    :cond_57
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 5173
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-eqz v0, :cond_8f

    .line 5175
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "data size -"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_75} :catch_76

    goto :goto_8f

    :catch_76
    move-exception p0

    .line 5179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The exception occurs "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    :goto_8f
    return-object v0
.end method

.method public final getConfiguratorSignature(I)[B
    .registers 9

    .line 5185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfiguratorSignature is called for adminId-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 5188
    :try_start_17
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b2

    const/4 v2, 0x0

    move v3, v2

    .line 5190
    :goto_21
    array-length v4, p1

    if-ge v3, v4, :cond_81

    .line 5191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "packageName -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5193
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    aget-object v5, p1, v3

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_7e

    .line 5194
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_7e

    array-length v5, v5

    if-lez v5, :cond_7e

    const-string p1, "Found signature..."

    .line 5195
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5196
    iget-object p1, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/String;

    .line 5197
    :goto_5c
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v3

    if-ge v2, v5, :cond_6c

    .line 5198
    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    :cond_6c
    const-string v2, ","

    .line 5200
    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "UTF-8"

    .line 5202
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getDigestOfBytes([B)[B

    move-result-object p0

    move-object v0, p0

    goto :goto_81

    :cond_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_81
    :goto_81
    if-eqz v0, :cond_b2

    .line 5207
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "data size -"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_98} :catch_99

    goto :goto_b2

    :catch_99
    move-exception p0

    .line 5211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The exception occurs "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b2
    :goto_b2
    return-object v0
.end method

.method public getCredentialStorageProperty(ILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3574
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    .line 3576
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3577
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p0

    const/16 p2, 0xe

    const-string v1, "errorresponse"

    const-string v3, "bundleresponse"

    if-nez p0, :cond_2d

    .line 3579
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3580
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 3585
    :cond_2d
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v4

    const-string v5, "UcmService"

    if-nez v4, :cond_41

    const-string p0, "agent is not bound"

    .line 3586
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3588
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 3591
    :cond_41
    invoke-virtual {p0, p1, p4, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "getCredentialStorageProperty Response from plugin"

    .line 3592
    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getDek(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1740
    invoke-virtual {p0, p1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getDek(Ljava/lang/String;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0
.end method

.method public final getDek(Ljava/lang/String;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "errorresponse"

    .line 1744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDek "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :try_start_1d
    const-string v3, "getDek"

    .line 1749
    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_cc

    if-eqz p1, :cond_bc

    const-string v3, ""

    .line 1756
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_2f

    goto/16 :goto_bc

    .line 1761
    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking uri : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_5c

    const-string p2, "boot_test"

    .line 1764
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-ne v4, p2, :cond_54

    const-string p1, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    .line 1765
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p2

    goto :goto_5c

    .line 1767
    :cond_54
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p2

    :cond_5c
    :goto_5c
    const/16 p1, 0xe

    if-nez p2, :cond_6d

    const-string p2, "no agent found for Source = com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    .line 1772
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1774
    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    .line 1778
    :cond_6d
    invoke-virtual {p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v1

    if-nez v1, :cond_85

    const-string p2, "agent is not bound"

    .line 1779
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1781
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1782
    invoke-virtual {p0, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    .line 1785
    :cond_85
    invoke-virtual {p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getDek()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_9f

    const-string p1, "ERROR: Null Response received from agent"

    .line 1787
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/16 p2, 0xd

    .line 1789
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1790
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    .line 1792
    :cond_9f
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 1793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDek Response from plugin:  error code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    :cond_bc
    :goto_bc
    const-string/jumbo p1, "uri is empty"

    .line 1757
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    .line 1758
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1759
    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    :catch_cc
    move-exception p1

    .line 1751
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The exception occurs "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xf

    .line 1752
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1753
    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0
.end method

.method public getDekForVold(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDekForVold ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1b
    const-string v0, "getDekForVold"

    .line 5767
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_29

    .line 5772
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getOdeVendorSpecific(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmVendorSpecific;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmVendorSpecific;->getDekForVold(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    :catch_29
    move-exception p1

    .line 5769
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The exception occurs "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xf

    .line 5770
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0
.end method

.method public getDekForVoldInternalKey(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDekForVoldInternalKey ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1b
    const-string v0, "getDekForVoldInternalKey"

    .line 5780
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_3b

    if-eqz p2, :cond_2f

    .line 5786
    array-length v0, p2

    if-nez v0, :cond_26

    goto :goto_2f

    .line 5790
    :cond_26
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getOdeVendorSpecific(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmVendorSpecific;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmVendorSpecific;->getDekForVoldInternalKey(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    :cond_2f
    :goto_2f
    const-string p1, "getDekForVoldInternalKey. key is empty"

    .line 5787
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    .line 5788
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    :catch_3b
    move-exception p1

    .line 5782
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The exception occurs "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xf

    .line 5783
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0
.end method

.method public getDetailErrorMessage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDetailErrorMessage uri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_4c

    const/4 v2, 0x1

    const-string v3, ""

    .line 5350
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_2b

    goto :goto_4c

    .line 5355
    :cond_2b
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p0

    if-nez p0, :cond_3b

    const-string p0, "Cannot find agent"

    .line 5357
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 5361
    :cond_3b
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result p1

    if-nez p1, :cond_47

    const-string p0, "agent is not bound"

    .line 5362
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 5366
    :cond_47
    invoke-virtual {p0, p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getDetailErrorMessage(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4c
    :goto_4c
    const-string/jumbo p0, "uri is not proper"

    .line 5351
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final getDigestOfBytes([B)[B
    .registers 9

    const-string p0, "The exception occurs "

    const-string v0, "UcmService"

    const/4 v1, 0x0

    :try_start_5
    const-string v2, "SHA256"

    .line 5222
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 5223
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_10} :catch_11f
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_10} :catch_ec
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_b7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_82
    .catchall {:try_start_5 .. :try_end_10} :catchall_7b

    .line 5224
    :try_start_10
    new-instance p1, Ljava/security/DigestInputStream;

    invoke-direct {p1, v3, v2}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10 .. :try_end_15} :catch_76
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_15} :catch_71
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_69
    .catchall {:try_start_10 .. :try_end_15} :catchall_66

    .line 5225
    :try_start_15
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_1a} :catch_62
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_1a} :catch_5e
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_57
    .catchall {:try_start_15 .. :try_end_1a} :catchall_52

    .line 5227
    :cond_1a
    :try_start_1a
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1a

    .line 5231
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1
    :try_end_25
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_25} :catch_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_25} :catch_4c
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_25} :catch_49
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_25} :catch_47
    .catchall {:try_start_1a .. :try_end_25} :catchall_163

    .line 5243
    :try_start_25
    invoke-virtual {p1}, Ljava/security/DigestInputStream;->close()V

    .line 5245
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 5247
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2e} :catch_2f

    goto :goto_46

    :catch_2f
    move-exception p1

    .line 5249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    return-object v1

    :catch_47
    move-exception v2

    goto :goto_86

    :catch_49
    move-exception v2

    goto/16 :goto_bb

    :catch_4c
    move-exception v2

    goto/16 :goto_f0

    :catch_4f
    move-exception v2

    goto/16 :goto_123

    :catchall_52
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    goto/16 :goto_164

    :catch_57
    move-exception v2

    move-object v4, v1

    goto :goto_86

    :catch_5a
    move-exception v2

    move-object v4, v1

    goto/16 :goto_bb

    :catch_5e
    move-exception v2

    move-object v4, v1

    goto/16 :goto_f0

    :catch_62
    move-exception v2

    move-object v4, v1

    goto/16 :goto_123

    :catchall_66
    move-exception p1

    move-object v4, v1

    goto :goto_7e

    :catch_69
    move-exception v2

    move-object p1, v1

    move-object v4, p1

    goto :goto_86

    :catch_6d
    move-exception v2

    move-object p1, v1

    move-object v4, p1

    goto :goto_bb

    :catch_71
    move-exception v2

    move-object p1, v1

    move-object v4, p1

    goto/16 :goto_f0

    :catch_76
    move-exception v2

    move-object p1, v1

    move-object v4, p1

    goto/16 :goto_123

    :catchall_7b
    move-exception p1

    move-object v3, v1

    move-object v4, v3

    :goto_7e
    move-object v1, p1

    move-object p1, v4

    goto/16 :goto_164

    :catch_82
    move-exception v2

    move-object p1, v1

    move-object v3, p1

    move-object v4, v3

    .line 5239
    :goto_86
    :try_start_86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catchall {:try_start_86 .. :try_end_9c} :catchall_163

    if-eqz p1, :cond_a4

    .line 5243
    :try_start_9e
    invoke-virtual {p1}, Ljava/security/DigestInputStream;->close()V

    goto :goto_a4

    :catch_a2
    move-exception p1

    goto :goto_b0

    :cond_a4
    :goto_a4
    if-eqz v4, :cond_a9

    .line 5245
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    :cond_a9
    if-eqz v3, :cond_162

    .line 5247
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_ae} :catch_a2

    goto/16 :goto_162

    .line 5249
    :goto_b0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_151

    :catch_b7
    move-exception v2

    move-object p1, v1

    move-object v3, p1

    move-object v4, v3

    .line 5237
    :goto_bb
    :try_start_bb
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catchall {:try_start_bb .. :try_end_d1} :catchall_163

    if-eqz p1, :cond_d9

    .line 5243
    :try_start_d3
    invoke-virtual {p1}, Ljava/security/DigestInputStream;->close()V

    goto :goto_d9

    :catch_d7
    move-exception p1

    goto :goto_e5

    :cond_d9
    :goto_d9
    if-eqz v4, :cond_de

    .line 5245
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    :cond_de
    if-eqz v3, :cond_162

    .line 5247
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_e3} :catch_d7

    goto/16 :goto_162

    .line 5249
    :goto_e5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_151

    :catch_ec
    move-exception v2

    move-object p1, v1

    move-object v3, p1

    move-object v4, v3

    .line 5235
    :goto_f0
    :try_start_f0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_106
    .catchall {:try_start_f0 .. :try_end_106} :catchall_163

    if-eqz p1, :cond_10e

    .line 5243
    :try_start_108
    invoke-virtual {p1}, Ljava/security/DigestInputStream;->close()V

    goto :goto_10e

    :catch_10c
    move-exception p1

    goto :goto_119

    :cond_10e
    :goto_10e
    if-eqz v4, :cond_113

    .line 5245
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    :cond_113
    if-eqz v3, :cond_162

    .line 5247
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_118} :catch_10c

    goto :goto_162

    .line 5249
    :goto_119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_151

    :catch_11f
    move-exception v2

    move-object p1, v1

    move-object v3, p1

    move-object v4, v3

    .line 5233
    :goto_123
    :try_start_123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_139
    .catchall {:try_start_123 .. :try_end_139} :catchall_163

    if-eqz p1, :cond_141

    .line 5243
    :try_start_13b
    invoke-virtual {p1}, Ljava/security/DigestInputStream;->close()V

    goto :goto_141

    :catch_13f
    move-exception p1

    goto :goto_14c

    :cond_141
    :goto_141
    if-eqz v4, :cond_146

    .line 5245
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    :cond_146
    if-eqz v3, :cond_162

    .line 5247
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_14b} :catch_13f

    goto :goto_162

    .line 5249
    :goto_14c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_151
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_162
    :goto_162
    return-object v1

    :catchall_163
    move-exception v1

    :goto_164
    if-eqz p1, :cond_16c

    .line 5243
    :try_start_166
    invoke-virtual {p1}, Ljava/security/DigestInputStream;->close()V

    goto :goto_16c

    :catch_16a
    move-exception p1

    goto :goto_177

    :cond_16c
    :goto_16c
    if-eqz v4, :cond_171

    .line 5245
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    :cond_171
    if-eqz v3, :cond_18d

    .line 5247
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_176} :catch_16a

    goto :goto_18d

    .line 5249
    :goto_177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5251
    :cond_18d
    :goto_18d
    throw v1
.end method

.method public final getErrorParameterBundle(I)Landroid/os/Bundle;
    .registers 3

    .line 3997
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "errorresponse"

    .line 3998
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public getInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4307
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "errorresponse"

    if-eqz p1, :cond_ad

    const-string v3, ""

    .line 4309
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_2a

    goto/16 :goto_ad

    :cond_2a
    const-string v3, "boot_test"

    .line 4316
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v4, v3, :cond_39

    const-string v3, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    .line 4317
    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    goto :goto_41

    .line 4319
    :cond_39
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    :goto_41
    const/16 v4, 0xe

    if-nez v3, :cond_61

    .line 4323
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no agent found for Source = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4324
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 4328
    :cond_61
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    if-eqz v5, :cond_88

    .line 4329
    new-instance v5, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v5}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 4330
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 4331
    iget-object p1, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object p1, v5, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 4332
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {p1, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    .line 4335
    :cond_88
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result p0

    if-nez p0, :cond_97

    const-string p0, "agent is not bound"

    .line 4336
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4337
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 4341
    :cond_97
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getInfo()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_ac

    const-string p0, "ERROR: Null Response received from agent"

    .line 4343
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4344
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/16 p1, 0xd

    .line 4345
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_ac
    return-object p0

    :cond_ad
    :goto_ad
    const-string/jumbo p0, "uri is empty"

    .line 4310
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x10

    .line 4311
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final getIntLen(I)I
    .registers 2

    const/4 p0, 0x0

    :goto_1
    if-lez p1, :cond_8

    add-int/lit8 p0, p0, 0x1

    .line 6228
    div-int/lit8 p1, p1, 0xa

    goto :goto_1

    :cond_8
    return p0
.end method

.method public getKeyType(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKeyType("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UcmService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2793
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v4

    const/16 v5, 0xe

    const/4 v6, 0x0

    const-string v7, "booleanresponse"

    const-string v8, "errorresponse"

    if-nez v4, :cond_50

    .line 2795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getKeyType: NULL agent for uri "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2797
    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    .line 2800
    :cond_50
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agent = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v9

    if-nez v9, :cond_7a

    const-string v0, "agent is not bound"

    .line 2803
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2805
    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    .line 2810
    :cond_7a
    new-instance v5, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v5, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2811
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2812
    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_97

    if-eq v9, v10, :cond_97

    const/16 v12, 0x3e8

    if-eq v9, v12, :cond_96

    .line 2815
    invoke-virtual {v0, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v12

    if-eqz v12, :cond_97

    :cond_96
    move v9, v10

    .line 2821
    :cond_97
    invoke-virtual {v0, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v10

    .line 2822
    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v12

    if-ne v12, v11, :cond_a2

    const/4 v12, 0x1

    .line 2827
    :cond_a2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v13

    if-eqz v13, :cond_df

    .line 2828
    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v13

    if-eq v13, v11, :cond_cb

    .line 2830
    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v10

    .line 2831
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generateKey new userid-"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_df

    .line 2833
    :cond_cb
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generateKey. Keeping same userid"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_df
    :goto_df
    move v15, v10

    .line 2837
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v11, "callerUid"

    .line 2838
    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v14, "user_id"

    .line 2839
    invoke-virtual {v10, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v13, "ownerUid"

    .line 2840
    invoke-virtual {v10, v13, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v13, "resource"

    .line 2841
    invoke-virtual {v10, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2844
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 2846
    :try_start_100
    iget-object v12, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    .line 2847
    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    const/16 v17, 0x1

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v18

    move-object v5, v13

    move-object v13, v12

    move-object v6, v14

    move-object v14, v0

    move/from16 v16, v9

    .line 2846
    invoke-virtual/range {v13 .. v18}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13d

    .line 2848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING!!! getKeyType is NOT allowed for URI = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2849
    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0xf

    .line 2850
    invoke-virtual {v2, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_139
    .catchall {:try_start_100 .. :try_end_139} :catchall_1b2

    .line 2854
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_13d
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyType: KEY_RESOURCE_ID = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x2

    invoke-virtual {v10, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getKeyType: KEY_USER_ID     = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getKeyType: KEY_CALLER_UID  = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v10}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getKeyType(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1ac

    .line 2865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UCMERRORTESTING: @CredentialManagerService getKeyType. Response from plugin with error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2866
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2865
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b1

    :cond_1ac
    const-string v1, "UCMERRORTESTING: @CredentialManagerService getKeyType. Response from plugin is NULL"

    .line 2868
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b1
    return-object v0

    :catchall_1b2
    move-exception v0

    .line 2854
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2855
    throw v0
.end method

.method public final getKeyguardInfoFile(I)Landroid/util/AtomicFile;
    .registers 4

    .line 4700
    new-instance p0, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "ucm_keyguardconfig.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method public getKeyguardPinCurrentRetryCount(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getKeyguardPinCurrentRetryCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4146
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgentFromUri(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 4147
    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_47

    .line 4151
    :cond_23
    iget-object v0, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->supportPinConfiguration:Z

    if-nez v0, :cond_34

    const-string p1, "Agent does not support this api"

    .line 4152
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 4153
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 4156
    :cond_34
    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getKeyguardPinCurrentRetryCount()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_46

    const-string p1, "ERROR: Null Response received from agent"

    .line 4158
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xd

    .line 4159
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_46
    return-object p1

    :cond_47
    :goto_47
    const/16 p1, 0xe

    .line 4148
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getKeyguardPinMaximumLength(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getKeyguardPinMaximumLength : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4190
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgentFromUri(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 4191
    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_47

    .line 4195
    :cond_23
    iget-object v0, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->supportPinConfiguration:Z

    if-nez v0, :cond_34

    const-string p1, "Agent does not support this api"

    .line 4196
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 4197
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 4200
    :cond_34
    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getKeyguardPinMaximumLength()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_46

    const-string p1, "ERROR: Null Response received from agent"

    .line 4202
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xd

    .line 4203
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_46
    return-object p1

    :cond_47
    :goto_47
    const/16 p1, 0xe

    .line 4192
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getKeyguardPinMaximumRetryCount(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getKeyguardPinMaximumRetryCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4124
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgentFromUri(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 4125
    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_47

    .line 4129
    :cond_23
    iget-object v0, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->supportPinConfiguration:Z

    if-nez v0, :cond_34

    const-string p1, "Agent does not support this api"

    .line 4130
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 4131
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 4134
    :cond_34
    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getKeyguardPinMaximumRetryCount()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_46

    const-string p1, "ERROR: Null Response received from agent"

    .line 4136
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xd

    .line 4137
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_46
    return-object p1

    :cond_47
    :goto_47
    const/16 p1, 0xe

    .line 4126
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getKeyguardPinMinimumLength(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getKeyguardPinMinimumLength : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4168
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgentFromUri(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 4169
    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_47

    .line 4173
    :cond_23
    iget-object v0, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->supportPinConfiguration:Z

    if-nez v0, :cond_34

    const-string p1, "Agent does not support this api"

    .line 4174
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 4175
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 4178
    :cond_34
    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getKeyguardPinMinimumLength()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_46

    const-string p1, "ERROR: Null Response received from agent"

    .line 4180
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xd

    .line 4181
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_46
    return-object p1

    :cond_47
    :goto_47
    const/16 p1, 0xe

    .line 4170
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getKeyguardStorageForCurrentUser(I)Ljava/lang/String;
    .registers 11

    const-string v0, "getKeyguardStorageForCurrentUser, The exception occurs "

    .line 4352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyguardStorageForCurrentUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UcmService"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4354
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardInfoFile(I)Landroid/util/AtomicFile;

    move-result-object p0

    .line 4355
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_28

    return-object v1

    :cond_28
    const-string p1, "getKeyguardStorageForCurrentUser, isFileExist : exist"

    .line 4358
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4360
    :try_start_2d
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_31} :catch_c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d .. :try_end_31} :catch_a8
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_31} :catch_90

    .line 4361
    :try_start_31
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    .line 4362
    invoke-interface {p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4363
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    :goto_3c
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_47

    if-eq v4, v5, :cond_47

    .line 4365
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_3c

    .line 4367
    :cond_47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "keyguard"

    .line 4368
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 4369
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_57
    .catchall {:try_start_31 .. :try_end_57} :catchall_84

    move-object v7, v1

    :cond_58
    if-ne v4, v6, :cond_73

    .line 4371
    :try_start_5a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ne v4, v6, :cond_73

    .line 4372
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "vendor"

    .line 4373
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    const-string v4, "name"

    .line 4374
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4377
    :cond_73
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_77
    .catchall {:try_start_5a .. :try_end_77} :catchall_7b

    if-ne v4, v5, :cond_58

    move-object v1, v7

    goto :goto_7e

    :catchall_7b
    move-exception p1

    move-object v1, v7

    goto :goto_85

    :cond_7e
    :goto_7e
    if-eqz p0, :cond_d7

    .line 4380
    :try_start_80
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_83
    .catch Ljava/io/FileNotFoundException; {:try_start_80 .. :try_end_83} :catch_c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_80 .. :try_end_83} :catch_a8
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_90

    goto :goto_d7

    :catchall_84
    move-exception p1

    :goto_85
    if-eqz p0, :cond_8f

    .line 4360
    :try_start_87
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8b

    goto :goto_8f

    :catchall_8b
    move-exception p0

    :try_start_8c
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8f
    :goto_8f
    throw p1
    :try_end_90
    .catch Ljava/io/FileNotFoundException; {:try_start_8c .. :try_end_90} :catch_c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8c .. :try_end_90} :catch_a8
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_90} :catch_90

    :catch_90
    move-exception p0

    .line 4385
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    :catch_a8
    move-exception p0

    .line 4383
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    :catch_c0
    move-exception p0

    .line 4381
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4387
    :cond_d7
    :goto_d7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final getKeyguardStorageOwnerForCurrentUser(I)Ljava/lang/String;
    .registers 10

    const-string v0, "The exception occurs "

    .line 4392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyguardStorageOwnerForCurrentUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4393
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardInfoFile(I)Landroid/util/AtomicFile;

    move-result-object p0

    .line 4394
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2d

    const-string p0, "isFileExist : not exist"

    .line 4395
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 4400
    :cond_2d
    :try_start_2d
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_31} :catch_c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d .. :try_end_31} :catch_a9
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_31} :catch_91

    .line 4401
    :try_start_31
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    .line 4402
    invoke-interface {p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4403
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_3c
    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_47

    if-eq v3, v4, :cond_47

    .line 4405
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_3c

    .line 4407
    :cond_47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "keyguard"

    .line 4408
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 4409
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_57
    .catchall {:try_start_31 .. :try_end_57} :catchall_85

    move-object v6, v1

    :cond_58
    if-ne v3, v5, :cond_74

    .line 4411
    :try_start_5a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ne v3, v5, :cond_74

    .line 4412
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "vendor"

    .line 4413
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    const-string/jumbo v3, "owner"

    .line 4414
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4417
    :cond_74
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_78
    .catchall {:try_start_5a .. :try_end_78} :catchall_7c

    if-ne v3, v4, :cond_58

    move-object v1, v6

    goto :goto_7f

    :catchall_7c
    move-exception p1

    move-object v1, v6

    goto :goto_86

    :cond_7f
    :goto_7f
    if-eqz p0, :cond_d8

    .line 4420
    :try_start_81
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_84
    .catch Ljava/io/FileNotFoundException; {:try_start_81 .. :try_end_84} :catch_c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_81 .. :try_end_84} :catch_a9
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_91

    goto :goto_d8

    :catchall_85
    move-exception p1

    :goto_86
    if-eqz p0, :cond_90

    .line 4400
    :try_start_88
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_90

    :catchall_8c
    move-exception p0

    :try_start_8d
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_90
    :goto_90
    throw p1
    :try_end_91
    .catch Ljava/io/FileNotFoundException; {:try_start_8d .. :try_end_91} :catch_c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8d .. :try_end_91} :catch_a9
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_91} :catch_91

    :catch_91
    move-exception p0

    .line 4428
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8

    :catch_a9
    move-exception p0

    .line 4425
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8

    :catch_c1
    move-exception p0

    .line 4422
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d8
    :goto_d8
    return-object v1
.end method

.method public final getODEAgent()Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .registers 8

    .line 5940
    sget-boolean v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    const-string v1, "UcmService"

    if-eqz v0, :cond_b

    const-string v0, "getODEAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5941
    :cond_b
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_70

    .line 5942
    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    if-nez v3, :cond_17

    goto :goto_70

    .line 5946
    :cond_17
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_21
    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    if-eqz v3, :cond_21

    .line 5947
    iget-object v4, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v4, :cond_21

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    if-nez v4, :cond_38

    goto :goto_21

    .line 5950
    :cond_38
    :try_start_38
    new-instance v4, Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 5951
    iget-object v5, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 5952
    sget-boolean v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    if-eqz v4, :cond_54

    const-string v4, "find agent for ODE"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_38 .. :try_end_54} :catch_55

    :cond_54
    return-object v3

    :catch_55
    move-exception v3

    .line 5956
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The exception occurs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_6f
    return-object v2

    :cond_70
    :goto_70
    const-string p0, "Failed to load ODE properties"

    .line 5943
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getODEConfigurationForVold(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "The exception occurs "

    .line 5795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getODEConfigurationForVold ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UcmService"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1d
    const-string p1, "getODEConfigurationForVold"

    .line 5798
    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_99

    .line 5805
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object p1

    .line 5806
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5808
    iget p1, p1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    const/4 v3, 0x1

    if-ne p1, v3, :cond_35

    const-string p1, "enabledWrap"

    .line 5809
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5815
    :cond_35
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    move v5, v4

    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5816
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    goto :goto_3b

    .line 5819
    :cond_4e
    new-array p1, v5, [B

    .line 5821
    :try_start_50
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v4

    :goto_55
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_94

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5822
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, p1, v3

    add-int/lit8 v3, v3, 0x1

    const-string v6, "UTF-8"

    .line 5824
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v4, p1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5825
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_7b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_50 .. :try_end_7b} :catch_7d

    add-int/2addr v3, v5

    goto :goto_55

    :catch_7d
    move-exception v2

    .line 5828
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5831
    :cond_94
    invoke-virtual {p0, v4, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    :catch_99
    move-exception p1

    .line 5800
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xf

    .line 5801
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0
.end method

.method public getODESettingsConfiguration()Landroid/os/Bundle;
    .registers 7

    const-string v0, "UcmService"

    const-string v1, "getODESettingsConfiguration"

    .line 5257
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5258
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    .line 5260
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5261
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v2

    if-nez v2, :cond_24

    return-object v1

    .line 5267
    :cond_24
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->isUcmOdeEnabled()Z

    move-result v3

    if-eqz v3, :cond_35

    const-string v3, "Device is encrypted as UCM"

    .line 5268
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const-string v4, "odeEnabled"

    .line 5269
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5272
    :cond_35
    iget-object v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    if-eqz v3, :cond_76

    .line 5274
    :try_start_39
    array-length v4, v3

    if-lez v4, :cond_76

    .line 5275
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 5276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "agentId : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "id"

    .line 5277
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_39 .. :try_end_5c} :catch_5d

    goto :goto_76

    :catch_5d
    move-exception v3

    .line 5280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The exception occurs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5282
    :cond_76
    :goto_76
    iget-object v0, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    const-string v3, "odeSignature"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 5283
    iget-object v0, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    const-string v3, "aid"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 5284
    iget v0, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isVaildStorageType(I)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 5285
    sget-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    iget v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    aget-object v0, v0, v3

    const-string/jumbo v3, "storagetype"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5286
    :cond_98
    iget v0, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isVaildSCPType(I)Z

    move-result p0

    if-eqz p0, :cond_ac

    .line 5287
    sget-object p0, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    iget v0, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    aget-object p0, p0, v0

    const-string/jumbo v0, "scptype"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ac
    return-object v1
.end method

.method public final getODEVendorName()Ljava/lang/String;
    .registers 5

    const-string p0, "UcmService"

    .line 6157
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_4a

    .line 6158
    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    if-eqz v0, :cond_4a

    array-length v2, v0

    if-lez v2, :cond_4a

    .line 6160
    :try_start_11
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_18
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_18} :catch_31

    .line 6161
    :try_start_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ODE Vendor Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_2c} :catch_2e

    move-object v1, v2

    goto :goto_4a

    :catch_2e
    move-exception v0

    move-object v1, v2

    goto :goto_32

    :catch_31
    move-exception v0

    .line 6163
    :goto_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The exception occurs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    :goto_4a
    return-object v1
.end method

.method public getOdeKey(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "The exception occurs "

    .line 5717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOdeKey ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UcmService"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1d
    const-string p1, "getOdeKey"

    .line 5720
    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_69

    if-eqz p2, :cond_5d

    .line 5726
    array-length p1, p2

    if-nez p1, :cond_28

    goto :goto_5d

    .line 5733
    :cond_28
    :try_start_28
    invoke-static {}, Lcom/sec/esecomm/EsecommAdapter;->getEsecommAdapter()Lcom/sec/esecomm/EsecommAdapter;

    move-result-object p1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2c} :catch_3f

    .line 5738
    invoke-virtual {p1, p2}, Lcom/sec/esecomm/EsecommAdapter;->getODEKey([B)[B

    move-result-object p1

    if-nez p1, :cond_39

    const/16 p1, 0xd

    .line 5740
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    :cond_39
    const/4 p2, 0x0

    .line 5742
    invoke-virtual {p0, p2, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    :catch_3f
    move-exception p1

    .line 5735
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x18

    .line 5736
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    :cond_5d
    :goto_5d
    const-string p1, "getOdeKey. wrappedKey is empty"

    .line 5727
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    .line 5728
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    :catch_69
    move-exception p1

    .line 5722
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xf

    .line 5723
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0
.end method

.method public final getOdeVendorSpecific(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmVendorSpecific;
    .registers 3

    .line 5837
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmErcomSpecific:Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;

    if-nez p1, :cond_f

    .line 5838
    new-instance p1, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getODEAgent()Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmErcomSpecific:Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;

    .line 5840
    :cond_f
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmErcomSpecific:Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;

    return-object p0
.end method

.method public final getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 3

    .line 3272
    new-instance p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;-><init>(I[B)V

    return-object p0
.end method

.method public final getResponseParcel(I[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 3

    .line 3276
    new-instance p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;-><init>(I[B)V

    return-object p0
.end method

.method public final getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 3

    const-string p0, "errorresponse"

    .line 3266
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string v0, "bytearrayresponse"

    .line 3267
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 3268
    new-instance v0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;-><init>(I[B)V

    return-object v0
.end method

.method public getStatus(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5383
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "errorresponse"

    if-eqz p1, :cond_139

    const-string v3, ""

    .line 5384
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_2a

    goto/16 :goto_139

    .line 5399
    :cond_2a
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    const-string v3, "boot_test"

    .line 5400
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v4, v3, :cond_40

    const-string v3, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    .line 5401
    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    goto :goto_48

    .line 5403
    :cond_40
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    :goto_48
    const/16 v4, 0xe

    if-nez v3, :cond_68

    .line 5407
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no agent found for Source = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5408
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 5411
    :cond_68
    iget-object v5, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-nez v5, :cond_88

    .line 5412
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no agent info found for Source = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5413
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 5417
    :cond_88
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result p1

    if-nez p1, :cond_9c

    const-string p0, "agent is not bound"

    .line 5418
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5419
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 5420
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0

    .line 5424
    :cond_9c
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getStatus()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_b2

    .line 5426
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "ERROR: Null Response received from agent"

    .line 5427
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xd

    .line 5428
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0

    :cond_b2
    const-string v0, "getStatus success"

    .line 5432
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "state"

    const/4 v2, -0x1

    .line 5433
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v4, "remainCnt"

    .line 5434
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 5435
    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v4, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    .line 5436
    iget v5, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    .line 5437
    iget v6, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    .line 5438
    iget v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    .line 5439
    iget v8, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    .line 5440
    iget v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    .line 5442
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "values get from agent : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "maxAuthCnt"

    .line 5445
    invoke-virtual {p0, p1, v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMetaData(Landroid/os/Bundle;Ljava/lang/String;I)V

    const-string v0, "maxPinLength"

    .line 5446
    invoke-virtual {p0, p1, v0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMetaData(Landroid/os/Bundle;Ljava/lang/String;I)V

    const-string v0, "minPinLength"

    .line 5447
    invoke-virtual {p0, p1, v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMetaData(Landroid/os/Bundle;Ljava/lang/String;I)V

    const-string v0, "authMode"

    .line 5448
    invoke-virtual {p0, p1, v0, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMetaData(Landroid/os/Bundle;Ljava/lang/String;I)V

    const-string v0, "minPukLength"

    .line 5449
    invoke-virtual {p0, p1, v0, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMetaData(Landroid/os/Bundle;Ljava/lang/String;I)V

    const-string v0, "maxPukLength"

    .line 5450
    invoke-virtual {p0, p1, v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMetaData(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 5451
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->displayToastFromAgentResponse(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object p1

    :cond_139
    :goto_139
    const-string p0, "csName is empty"

    .line 5385
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x10

    .line 5386
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_11

    const-string p0, ":"

    .line 4705
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 4706
    array-length p1, p0

    if-lez p1, :cond_11

    const/4 p1, 0x0

    .line 4707
    aget-object p0, p0, p1

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .registers 2

    monitor-enter p0

    .line 192
    :try_start_1
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    if-nez v0, :cond_f

    const-string v0, "knox_ucsm_policy"

    .line 193
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 195
    :cond_f
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getUid0FromUid(II)I
    .registers 7

    if-nez p2, :cond_3

    return p1

    .line 6237
    :cond_3
    invoke-virtual {p0, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getIntLen(I)I

    move-result v0

    .line 6238
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getIntLen(I)I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_d
    sub-int v3, p0, v0

    if-ge v1, v3, :cond_16

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_16
    mul-int/2addr v2, p2

    .line 6244
    rem-int/2addr p1, v2

    return p1
.end method

.method public final getuseridforuid(I)I
    .registers 2

    .line 1918
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public grantKeyChainAccess(Ljava/lang/String;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "grantKeyChainAccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UcmService"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkSystemCaller()V

    .line 3453
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->isKeyChainUri(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2e

    const-string p0, "Not Keychain URI"

    .line 3454
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2e
    const/4 p0, 0x1

    return p0
.end method

.method public importKey(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2705
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "importKey("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UcmService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2708
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    const/16 v6, 0xe

    const/4 v7, 0x0

    const-string v8, "booleanresponse"

    const-string v9, "errorresponse"

    if-nez v5, :cond_52

    .line 2710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "importKey: NULL agent for uri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2712
    invoke-virtual {v3, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    .line 2715
    :cond_52
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "agent = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v11, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    invoke-virtual {v5}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v10

    if-nez v10, :cond_7c

    const-string v0, "agent is not bound"

    .line 2718
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2720
    invoke-virtual {v3, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    .line 2725
    :cond_7c
    new-instance v6, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v6, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2726
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 2727
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_99

    if-eq v10, v11, :cond_99

    const/16 v13, 0x3e8

    if-eq v10, v13, :cond_98

    .line 2730
    invoke-virtual {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v13

    if-eqz v13, :cond_99

    :cond_98
    move v10, v11

    .line 2736
    :cond_99
    invoke-virtual {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v11

    .line 2737
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v13

    if-ne v13, v12, :cond_a4

    const/4 v13, 0x1

    .line 2742
    :cond_a4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v14

    if-eqz v14, :cond_e1

    .line 2743
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v14

    if-eq v14, v12, :cond_cd

    .line 2745
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v11

    .line 2746
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "generateKey new userid-"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e1

    .line 2748
    :cond_cd
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "generateKey. Keeping same userid"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e1
    :goto_e1
    const-string v12, "callerUid"

    .line 2752
    invoke-virtual {v2, v12, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v15, "user_id"

    .line 2753
    invoke-virtual {v2, v15, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v14, "ownerUid"

    .line 2754
    invoke-virtual {v2, v14, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v14, "resource"

    .line 2755
    invoke-virtual {v2, v14, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2758
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 2760
    :try_start_fc
    iget-object v13, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    .line 2761
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    const/16 v18, 0x1

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v19

    move-object v6, v14

    move-object v14, v13

    move-object v7, v15

    move-object v15, v0

    move/from16 v16, v11

    move/from16 v17, v10

    .line 2760
    invoke-virtual/range {v14 .. v19}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13b

    .line 2762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING!!! importKey is NOT allowed for URI = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2763
    invoke-virtual {v3, v8, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0xf

    .line 2764
    invoke-virtual {v3, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_137
    .catchall {:try_start_fc .. :try_end_137} :catchall_1cc

    .line 2768
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :cond_13b
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "importKey: KEY_RESOURCE_ID = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, -0x2

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "importKey: KEY_USER_ID     = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "importKey: KEY_CALLER_UID  = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "importKey: KEY_ALGORITHM   = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "algorithm"

    const-string v6, "AES"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->importKey(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1c6

    .line 2780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UCMERRORTESTING: @CredentialManagerService importKey. Response from plugin with error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2781
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2780
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cb

    :cond_1c6
    const-string v1, "UCMERRORTESTING: @CredentialManagerService importKey. Response from plugin is NULL"

    .line 2783
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1cb
    return-object v0

    :catchall_1cc
    move-exception v0

    .line 2768
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2769
    throw v0
.end method

.method public importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2694
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "UcmService"

    if-eqz p0, :cond_29

    .line 2696
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "UCMERRORTESTING: @CredentialManagerService importKeyPair Response from plugin with error code = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "errorresponse"

    invoke-virtual {p0, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :cond_29
    const-string p2, "UCMERRORTESTING: @CredentialManagerService importKeyPair Response from plugin is null"

    .line 2698
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    return-object p0
.end method

.method public final importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v6, p5

    .line 2891
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "importKeyPairInternal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "UcmService"

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 2894
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v10

    const/16 v11, 0xe

    const-string v12, "errorresponse"

    const-string v13, "booleanresponse"

    const/4 v14, 0x0

    if-nez v10, :cond_4f

    .line 2896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "importKeyPairInternal : NULL agent for uri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    invoke-virtual {v9, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2898
    invoke-virtual {v9, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v9

    .line 2901
    :cond_4f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "agent= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    new-instance v3, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v3, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2905
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2906
    invoke-virtual {v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_7e

    if-eq v4, v5, :cond_7e

    const/16 v15, 0x3e8

    if-ne v4, v15, :cond_7e

    goto :goto_7f

    :cond_7e
    move v5, v4

    .line 2914
    :goto_7f
    invoke-virtual {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2915
    invoke-virtual {v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v15

    if-ne v15, v7, :cond_8a

    const/4 v15, 0x1

    .line 2918
    :cond_8a
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v11, "ismdm"

    .line 2919
    invoke-virtual {v7, v11, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v11, "ownerUid"

    const-string v14, "RSA"

    move-object/from16 v16, v10

    const-string v10, "callerUid"

    move-object/from16 v17, v12

    const-string/jumbo v12, "resource"

    move-object/from16 v18, v9

    const-string v9, "algorithm"

    move-object/from16 v19, v13

    const-string/jumbo v13, "user_id"

    if-eqz v6, :cond_106

    const-string v15, "admin_id"

    const/4 v6, 0x0

    .line 2922
    invoke-virtual {v2, v15, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v7, v10, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2923
    invoke-virtual {v2, v15, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v7, v11, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "renew"

    .line 2924
    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v7, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "allow_wifi"

    .line 2926
    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d5

    const/4 v1, 0x3

    .line 2927
    invoke-virtual {v7, v12, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_d9

    :cond_d5
    const/4 v1, 0x1

    .line 2929
    invoke-virtual {v7, v12, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2931
    :goto_d9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "userd id from MDM = "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    invoke-virtual {v2, v13, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v7, v13, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "extraArgs"

    .line 2933
    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2934
    invoke-virtual {v2, v9, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_119

    .line 2936
    :cond_106
    invoke-virtual {v7, v10, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2937
    invoke-virtual {v7, v11, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2938
    invoke-virtual {v7, v12, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2939
    invoke-virtual {v7, v13, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2940
    invoke-virtual {v2, v9, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2943
    :goto_119
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 2945
    :try_start_11d
    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    invoke-virtual {v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    move/from16 v6, p5

    move-object v0, v7

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_15f

    .line 2946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WARNING!!!! importKeyPairInternal is NOT allowed for URI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    const/4 v0, 0x0

    .line 2947
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0xf

    move-object/from16 v4, v17

    .line 2948
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_15b
    .catchall {:try_start_11d .. :try_end_15b} :catchall_1ef

    .line 2952
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_15f
    move-object/from16 v1, p1

    move-object/from16 v4, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2956
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "importKeyPairInternal KEY_RESOURCE_ID= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, -0x2

    invoke-virtual {v0, v12, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "importKeyPairInternal KEY_USER_ID= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "importKeyPairInternal KEY_CALLER_UID= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "importKeyPairInternal KEY_ALGORITHM= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v5

    if-nez v5, :cond_1e0

    const-string v0, "agent is not bound"

    .line 2964
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2965
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0xe

    .line 2966
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    .line 2969
    :cond_1e0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v16

    invoke-virtual {v4, v1, v2, v3, v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :catchall_1ef
    move-exception v0

    .line 2952
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2953
    throw v0
.end method

.method public initKeyguardPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initKeyguardPin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_72

    const/4 v0, 0x1

    const-string v2, ""

    .line 4024
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v0, v2, :cond_22

    goto :goto_72

    .line 4028
    :cond_22
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgentFromUri(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 4029
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_6b

    .line 4033
    :cond_2f
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateCS(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    .line 4035
    iget-object p1, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->supportPinConfiguration:Z

    if-nez p1, :cond_58

    const-string p1, "Agent does not support this api"

    .line 4036
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 4037
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 4040
    :cond_58
    invoke-virtual {v0, p2, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->initKeyguardPin(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_6a

    const-string p1, "ERROR: Null Response received from agent"

    .line 4042
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xd

    .line 4043
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_6a
    return-object p1

    :cond_6b
    :goto_6b
    const/16 p1, 0xe

    .line 4030
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_72
    :goto_72
    const/16 p1, 0x10

    .line 4025
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final installCACertforCreateSecureChannel()V
    .registers 14

    const-string v0, "location"

    const-string v1, "alias"

    const-string v2, "The exception occurs "

    const-string/jumbo v3, "userId"

    const-string v4, "UcmService"

    .line 1491
    :try_start_b
    filled-new-array {v3, v1, v0}, [Ljava/lang/String;

    move-result-object v5

    .line 1493
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "UniversalCredentialCACertificateTable"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_c6

    .line 1497
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 1498
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->restoreCACertificate()V

    goto/16 :goto_e1

    .line 1502
    :cond_25
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_29
    :goto_29
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    if-nez v6, :cond_3e

    const-string/jumbo v6, "value is null, continue..."

    .line 1504
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 1507
    :cond_3e
    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1508
    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1509
    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_bf

    if-eqz v8, :cond_bf

    if-nez v6, :cond_51

    goto :goto_bf

    .line 1514
    :cond_51
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1515
    new-instance v9, Landroid/util/AtomicFile;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_5f} :catch_ca

    .line 1517
    :try_start_5f
    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_63} :catch_a7

    .line 1518
    :try_start_63
    new-instance v9, Ljava/io/ObjectInputStream;

    invoke-direct {v9, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_9b

    .line 1520
    :try_start_68
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "installCACertforCreateSecureChannel -"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    invoke-virtual {v11, v8, v12, v7}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->installCACerttificate(Ljava/lang/String;[BI)Z

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_68 .. :try_end_88} :catchall_91

    .line 1521
    :try_start_88
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_9b

    if-eqz v6, :cond_29

    :try_start_8d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_a7

    goto :goto_29

    :catchall_91
    move-exception p0

    .line 1516
    :try_start_92
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->close()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_96

    goto :goto_9a

    :catchall_96
    move-exception v0

    :try_start_97
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9a
    throw p0
    :try_end_9b
    .catchall {:try_start_97 .. :try_end_9b} :catchall_9b

    :catchall_9b
    move-exception p0

    if-eqz v6, :cond_a6

    :try_start_9e
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_a2

    goto :goto_a6

    :catchall_a2
    move-exception v0

    :try_start_a3
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a6
    :goto_a6
    throw p0
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a7} :catch_a7

    :catch_a7
    move-exception p0

    .line 1522
    :try_start_a8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_bf
    :goto_bf
    const-string v6, "invalid parameter error, continue..."

    .line 1511
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 1529
    :cond_c6
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->restoreCACertificate()V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_c9} :catch_ca

    goto :goto_e1

    :catch_ca
    move-exception p0

    .line 1532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e1
    :goto_e1
    return-void
.end method

.method public installCertificate(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "installCertificate"

    .line 2875
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 2877
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "errorresponse"

    if-nez p0, :cond_24

    .line 2879
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 p2, 0x0

    const-string p3, "booleanresponse"

    .line 2880
    invoke-virtual {p0, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p2, 0xd

    .line 2881
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0

    .line 2884
    :cond_24
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 2885
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "installCertificate Response:  error code = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UcmService"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "UCMERRORTESTING: @CredentialManagerService installCertificate Response from plugin with error code = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final isActivePlugin(I)Z
    .registers 5

    .line 689
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "UcmService"

    if-eqz v0, :cond_15

    const-string p0, "No active agent exist"

    .line 690
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 693
    :cond_15
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 694
    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->serviceUid:I

    if-ne v0, p1, :cond_1f

    .line 695
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "it is active plugin uid : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_47
    return v1
.end method

.method public final isAppletPluginExist()Z
    .registers 4

    .line 372
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->isPluginUidStored()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    .line 373
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->isAppletDeletionLccmScriptExist()Z

    move-result v0

    if-nez v0, :cond_11

    .line 374
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteStoredPluginUid()Z

    return v1

    .line 378
    :cond_11
    :try_start_11
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->getStoredPluginUid()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1b} :catch_1f

    if-eqz p0, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1

    :catch_1f
    move-exception p0

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The exception occurs "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UcmService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return v1
.end method

.method public final isCallFromSystem(I)Z
    .registers 10

    .line 6005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCallFromSystem adminUid-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 6007
    :try_start_17
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 6008
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_70

    .line 6010
    array-length v3, p1

    move v4, v0

    :goto_25
    if-ge v4, v3, :cond_70

    aget-object v5, p1, v4

    .line 6011
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCallFromSystem pkgName-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6012
    sget-object v6, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5, v2}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->isSystemApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_54

    const-string p0, "isCallFromSystem match found...."

    .line 6013
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_52} :catch_57

    const/4 p0, 0x1

    return p0

    :cond_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :catch_57
    move-exception p0

    .line 6019
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The exception occurs "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    return v0
.end method

.method public final isCallerSystemUI()Z
    .registers 4

    const-string v0, "UcmService"

    .line 5964
    :try_start_2
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {p0, v1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    .line 5965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCallerSystemUI caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_45

    const-string v1, "android.uid.systemui"

    .line 5967
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_2c

    if-eqz p0, :cond_45

    const/4 p0, 0x1

    return p0

    :catch_2c
    move-exception p0

    .line 5972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The exception occurs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    const/4 p0, 0x0

    return p0
.end method

.method public final isGoodBinaryForEseCommTASelfTest()Z
    .registers 4

    const-string/jumbo p0, "ro.build.type"

    .line 562
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "eng"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string/jumbo v0, "ro.product_ship"

    .line 563
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "ro.config.tima"

    const-string v2, "0"

    .line 564
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    if-eqz p0, :cond_32

    if-eqz v0, :cond_32

    const/4 v2, 0x1

    :cond_32
    return v2
.end method

.method public final isGoodConfigForEseCommTA()Z
    .registers 6

    const-string v0, "nfc.product.support.ese"

    const-string v1, "0"

    .line 580
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 581
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->isUCMODEEnabledWithPropFile()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    goto :goto_20

    :cond_16
    const/4 v3, 0x1

    if-eqz v0, :cond_1b

    :goto_19
    move v2, v3

    goto :goto_20

    .line 588
    :cond_1b
    iget-boolean v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsFbeEnabled:Z

    if-eqz v4, :cond_20

    goto :goto_19

    .line 591
    :cond_20
    :goto_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGoodConfigForEseCommTA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsFbeEnabled:Z

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UcmService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final isGoodDeviceForEseCommTA()Z
    .registers 2

    const-string p0, "UcmService"

    const-string v0, "isGoodDeviceForEseCommTA: false"

    .line 574
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isKeyChainGranted(Ljava/lang/String;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public final isPluginUsedInOtherUser(Ljava/lang/String;II)Z
    .registers 5

    const/4 v0, 0x1

    .line 850
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPluginUsedInOtherUser(Ljava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method

.method public final isPluginUsedInOtherUser(Ljava/lang/String;IIZ)Z
    .registers 11

    const-string v0, "UcmService"

    const-string v1, "isPluginUsedInOtherUser"

    .line 855
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p1, :cond_ab

    const/4 v2, -0x1

    if-eq p2, v2, :cond_ab

    if-ne p3, v2, :cond_11

    goto/16 :goto_ab

    .line 860
    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    if-nez v2, :cond_1f

    return v1

    .line 864
    :cond_1f
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_26

    return v1

    .line 868
    :cond_26
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_2a
    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ab

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    if-nez v3, :cond_39

    goto :goto_2a

    .line 871
    :cond_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UCM keyguard check "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne p2, v4, :cond_5a

    const-string/jumbo v3, "skip current user"

    .line 874
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 878
    :cond_5a
    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v4

    .line 879
    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidVendorName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6a

    const-string v3, "UCM keyguard is not enabled"

    .line 880
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 884
    :cond_6a
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string/jumbo v4, "this plugin is used in other user"

    .line 885
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    if-nez p4, :cond_80

    const-string/jumbo p0, "skip check configurator. pluginUsedInOtherUser"

    .line 888
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 892
    :cond_80
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageOwnerForCurrentUser(I)Ljava/lang/String;

    move-result-object v3
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_86} :catch_92

    .line 895
    :try_start_86
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_8a
    .catch Ljava/lang/NumberFormatException; {:try_start_86 .. :try_end_8a} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8a} :catch_92

    if-ne p3, v3, :cond_2a

    :try_start_8c
    const-string p0, "And it is enabled by same configurator"

    .line 901
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_91} :catch_92

    return v4

    :catch_92
    move-exception p0

    .line 908
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The exception occurs "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    :goto_ab
    return v1
.end method

.method public final isSystemCaller()Z
    .registers 2

    const-string v0, "android.uid.system:1000"

    .line 5984
    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCaller(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isUCMKeyguardEnabled(I)Z
    .registers 3

    .line 513
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2c

    .line 514
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2c

    const-string p1, "none"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2c

    .line 515
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Keyguard is enabled : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UcmService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public final isUcmDarEnabled()Z
    .registers 1

    .line 387
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->getOdeStatus()I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isUserCertificatesExistInUCS()Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    const-string v1, "isUserCertificatesExistInUCS called"

    .line 1339
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "isUserCertificatesExistInUCS"

    .line 1340
    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1342
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1343
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v2

    const-string v3, "callerUid"

    const/16 v4, 0x3e8

    .line 1345
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "user_id"

    .line 1346
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1347
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "removable_user_certificates_list"

    const/4 v5, 0x1

    .line 1348
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "extraArgs"

    .line 1349
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v3, "Iteration has started...."

    .line 1351
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_46
    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_fc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    if-nez v4, :cond_56

    goto :goto_46

    .line 1357
    :cond_56
    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v7

    if-eqz v7, :cond_f5

    iget-object v7, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    if-eqz v7, :cond_64

    goto/16 :goto_f5

    .line 1362
    :cond_64
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v7, v4}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v7

    if-eqz v7, :cond_72

    const-string v4, "activeAgent is CSobscure"

    .line 1363
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 1368
    :cond_72
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1371
    :try_start_76
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v9, v2, v4}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUserId(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v9
    :try_end_7c
    .catchall {:try_start_76 .. :try_end_7c} :catchall_f0

    .line 1373
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1377
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v8, "resource"

    .line 1378
    invoke-virtual {v1, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1379
    invoke-virtual {v4, v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "stringarrayresponse"

    const/4 v12, 0x0

    if-eqz v10, :cond_99

    .line 1382
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    goto :goto_9a

    :cond_99
    move-object v10, v12

    :goto_9a
    if-eqz v10, :cond_9f

    .line 1385
    invoke-static {v7, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_9f
    if-eqz v9, :cond_b5

    move v10, v6

    .line 1389
    :goto_a2
    array-length v13, v9

    if-ge v10, v13, :cond_b5

    .line 1390
    aget-object v13, v9, v10

    invoke-interface {v7, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b2

    .line 1391
    aget-object v13, v9, v10

    invoke-interface {v7, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_b2
    add-int/lit8 v10, v10, 0x1

    goto :goto_a2

    .line 1397
    :cond_b5
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_bc

    return v5

    .line 1402
    :cond_bc
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x3

    .line 1403
    invoke-virtual {v1, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1404
    invoke-virtual {v4, v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_cf

    .line 1407
    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    :cond_cf
    if-eqz v12, :cond_d4

    .line 1409
    invoke-static {v7, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_d4
    if-eqz v9, :cond_e9

    .line 1413
    :goto_d6
    array-length v4, v9

    if-ge v6, v4, :cond_e9

    .line 1414
    aget-object v4, v9, v6

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 1415
    aget-object v4, v9, v6

    invoke-interface {v7, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_e6
    add-int/lit8 v6, v6, 0x1

    goto :goto_d6

    .line 1420
    :cond_e9
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_46

    return v5

    :catchall_f0
    move-exception p0

    .line 1373
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1374
    throw p0

    :cond_f5
    :goto_f5
    const-string v4, "agent is not bound or not ready"

    .line 1358
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_46

    :cond_fc
    return v6
.end method

.method public final isVaildSCPType(I)Z
    .registers 2

    if-ltz p1, :cond_9

    .line 5299
    sget-object p0, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    array-length p0, p0

    if-ge p1, p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final isVaildStorageType(I)Z
    .registers 2

    if-ltz p1, :cond_9

    .line 5293
    sget-object p0, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    array-length p0, p0

    if-ge p1, p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final isValidFormFactor(Ljava/lang/String;)Z
    .registers 5

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_69

    const/4 v1, -0x1

    .line 930
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_8a

    goto/16 :goto_66

    :sswitch_e
    const-string/jumbo v2, "reset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_66

    :cond_18
    const/4 v1, 0x7

    goto :goto_66

    :sswitch_1a
    const-string v2, "eSE1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_66

    :cond_23
    const/4 v1, 0x6

    goto :goto_66

    :sswitch_25
    const-string v2, "SIM2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    goto :goto_66

    :cond_2e
    const/4 v1, 0x5

    goto :goto_66

    :sswitch_30
    const-string v2, "SIM1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto :goto_66

    :cond_39
    const/4 v1, 0x4

    goto :goto_66

    :sswitch_3b
    const-string v2, "eSE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    goto :goto_66

    :cond_44
    const/4 v1, 0x3

    goto :goto_66

    :sswitch_46
    const-string v2, "SIM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    goto :goto_66

    :cond_4f
    const/4 v1, 0x2

    goto :goto_66

    :sswitch_51
    const-string v2, "SD1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    goto :goto_66

    :cond_5a
    move v1, p0

    goto :goto_66

    :sswitch_5c
    const-string v2, "SD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    goto :goto_66

    :cond_65
    move v1, v0

    :goto_66
    packed-switch v1, :pswitch_data_ac

    :cond_69
    move p0, v0

    .line 945
    :pswitch_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isValidFormFactor type-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and status-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UcmService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    nop

    :sswitch_data_8a
    .sparse-switch
        0xa51 -> :sswitch_5c
        0x14000 -> :sswitch_51
        0x140b7 -> :sswitch_46
        0x18577 -> :sswitch_3b
        0x26d65a -> :sswitch_30
        0x26d65b -> :sswitch_25
        0x2f299a -> :sswitch_1a
        0x6761d4f -> :sswitch_e
    .end sparse-switch

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
    .end packed-switch
.end method

.method public final isValidMsgType(I)Z
    .registers 4

    const/16 p0, 0xc8

    if-eq p1, p0, :cond_f

    const/16 p0, 0xc9

    if-eq p1, p0, :cond_f

    const/16 p0, 0xca

    if-ne p1, p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    .line 1461
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isValidMsgType type-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and status-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UcmService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final isValidSCPProtocol(I)Z
    .registers 4

    const/16 p0, 0x64

    if-eq p1, p0, :cond_13

    const/16 p0, 0x65

    if-eq p1, p0, :cond_13

    const/16 p0, 0x66

    if-eq p1, p0, :cond_13

    const/16 p0, 0x67

    if-ne p1, p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    .line 1450
    :goto_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isValidSCPProtocol protocolType-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and status-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UcmService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final isValidUri(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_c

    const-string p0, ""

    .line 4010
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final isValidVendorName(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_13

    .line 779
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_13

    const-string p0, "none"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x1

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return p0
.end method

.method public listAllProviders()[Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "listAllProviders"

    .line 3393
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 3394
    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listExposedProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final listExposedProvidersInternal(Z)[Landroid/os/Bundle;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3398
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3399
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3401
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v2, "uniqueId"

    .line 3402
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UcmService"

    if-eqz v2, :cond_5b

    const-string v4, ""

    .line 3403
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    goto :goto_5b

    .line 3407
    :cond_36
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 3408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING!!!! Obscure CS agent bundle. Skipping agent : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 3411
    :cond_57
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_5b
    :goto_5b
    const-string v1, "WARNING!!!! null/empty ID returned for agent bundle. Skipping agent."

    .line 3404
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 3413
    :cond_61
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0
.end method

.method public listProviders()[Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3389
    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listExposedProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final listProvidersInternal(Z)[Landroid/os/Bundle;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3417
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3418
    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v7

    .line 3419
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v8, "UcmService"

    if-nez v0, :cond_1d

    const-string p0, "listProvidersInternal:No activeAgent"

    .line 3420
    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3423
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listProvidersInternal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and ismdmcaller-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3425
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    if-nez v11, :cond_6a

    goto :goto_5a

    .line 3430
    :cond_6a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    if-nez p1, :cond_99

    .line 3432
    :try_start_70
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/4 v5, 0x0

    move-object v1, v11

    move v2, v7

    move v3, v6

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_99

    .line 3433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WARNING!!!! access NOT allowed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_70 .. :try_end_95} :catchall_a1

    .line 3442
    :goto_95
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5a

    .line 3438
    :cond_99
    :try_start_99
    invoke-virtual {p0, v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;

    move-result-object v0

    .line 3439
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a0
    .catchall {:try_start_99 .. :try_end_a0} :catchall_a1

    goto :goto_95

    :catchall_a1
    move-exception p0

    .line 3442
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3443
    throw p0

    .line 3445
    :cond_a6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "listProviders filtered "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/os/Bundle;

    invoke-virtual {v9, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0
.end method

.method public notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 1171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyChangeToPlugin event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UcmService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "notifyChangeToPlugin"

    .line 1172
    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1173
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/16 v5, 0x12

    const/16 v6, 0xe

    const-string v7, "booleanresponse"

    const/4 v8, 0x1

    const-string v10, "errorresponse"

    if-nez p1, :cond_d7

    .line 1177
    iget-object v11, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v11}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    :cond_3c
    :goto_3c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_cd

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    if-nez v13, :cond_4b

    goto :goto_3c

    .line 1180
    :cond_4b
    invoke-virtual {v13}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v14

    if-eqz v14, :cond_b6

    .line 1182
    invoke-virtual {v0, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkIfNotify(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v14

    const-string v15, "activeAgent "

    if-eqz v14, :cond_7c

    .line 1184
    invoke-virtual {v13, v1, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->notifyChange(ILandroid/os/Bundle;)I

    move-result v14

    .line 1185
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v13, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " notify status - "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 1187
    :cond_7c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v13, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " not notified"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    .line 1190
    :goto_98
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "activeAgent status-"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v12, v8, :cond_af

    goto :goto_3c

    :cond_af
    if-eqz v14, :cond_3c

    .line 1193
    invoke-virtual {v3, v10, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_b4
    move v12, v8

    goto :goto_3c

    :cond_b6
    const/16 v9, 0x11

    if-ne v9, v1, :cond_c4

    const-string v9, "EVENT_BOOT_COMPLETED, triggerNotifyChange"

    .line 1199
    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    invoke-virtual {v13, v1, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->triggerNotifyChange(ILandroid/os/Bundle;)I

    goto/16 :goto_3c

    .line 1202
    :cond_c4
    invoke-virtual {v3, v10, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "agentService is null"

    .line 1203
    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    :cond_cd
    if-nez v12, :cond_d3

    const/4 v0, 0x0

    .line 1208
    invoke-virtual {v3, v10, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1210
    :cond_d3
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v3

    .line 1213
    :cond_d7
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    if-nez v0, :cond_101

    .line 1215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no agent found for Source = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    .line 1216
    invoke-virtual {v3, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1217
    invoke-virtual {v3, v10, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_101
    const/4 v9, 0x0

    .line 1221
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v11

    if-eqz v11, :cond_119

    .line 1222
    invoke-virtual {v0, v1, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->notifyChange(ILandroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_115

    .line 1224
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1225
    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    .line 1228
    :cond_115
    invoke-virtual {v3, v10, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_121

    .line 1231
    :cond_119
    invoke-virtual {v3, v10, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "agent is not bound"

    .line 1232
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :goto_121
    invoke-virtual {v3, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v3
.end method

.method public notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7

    const-string v0, "notifyLicenseStatus"

    .line 1429
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyLicenseStatus packageName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",status-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1432
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    .line 1433
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "status"

    .line 1434
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "errorCode"

    .line 1435
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1436
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1437
    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {p2, p1}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->checkESE(Ljava/lang/String;)V

    .line 1438
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public notifyPluginResult(Landroid/os/Bundle;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 457
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCallerPackageManaged()Z

    move-result v0

    if-eqz v0, :cond_98

    const-string v0, "RESPONSE_DATA"

    const-string v1, ""

    .line 462
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "00000001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mConfigAppletRequestIds:Ljava/util/List;

    const-string/jumbo v1, "request_id"

    const/4 v2, -0x1

    .line 463
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    const-string v0, "bytearrayresponse"

    .line 464
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 465
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string v3, "adminUid"

    .line 466
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v0, :cond_7f

    if-eq v3, v2, :cond_7f

    .line 468
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->saveAppletDeletionLccmScript([B)Z

    move-result v0

    .line 469
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->savePluginUid(I)Z

    move-result v3

    .line 470
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAppletStatus: lccmResult: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", storeUidResult: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UcmService"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 472
    :cond_70
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->isPluginUidStored()Z

    move-result v0

    if-nez v0, :cond_7c

    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->isAppletDeletionLccmScriptExist()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 473
    :cond_7c
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->clearAppletInfo()V

    .line 475
    :cond_7f
    :goto_7f
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mConfigAppletRequestIds:Ljava/util/List;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 477
    :cond_90
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->notifyUCMConfigStatus(Landroid/os/Bundle;)V

    return-void

    .line 458
    :cond_98
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "caller is not managed from EMM"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifyVoldComplete(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5747
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyVoldComplete ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UcmService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1b
    const-string p1, "notifyVoldComplete"

    .line 5750
    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_35

    .line 5755
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p1, 0x1

    .line 5756
    iput-boolean p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsVoldCompleteNotified:Z

    const/4 p1, 0x2

    new-array p1, p1, [B

    .line 5758
    fill-array-data p1, :array_56

    const/4 p2, 0x0

    .line 5759
    invoke-virtual {p0, p2, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    :catch_35
    move-exception p1

    .line 5752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The exception occurs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xf

    .line 5753
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    nop

    :array_56
    .array-data 1
        0x6ft
        0x6bt
    .end array-data
.end method

.method public final processAdminConfigRequest(ILjava/lang/String;Landroid/os/Bundle;)Z
    .registers 9

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processAdminConfigRequest is called...adminId-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uri-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p3, :cond_df

    .line 973
    :try_start_22
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "applet_location"

    .line 974
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "applet_id"

    .line 975
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p3

    .line 976
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processAdminConfigRequest is called...appletLocation-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pluginName-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidFormFactor(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bc

    const-string/jumbo v3, "reset"

    .line 979
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 980
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b5

    .line 981
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "processAdminConfigRequest removed pluginName-"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    .line 985
    :cond_81
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 986
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    :cond_8e
    new-instance v3, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    invoke-direct {v3, v2, p3, p2, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;-><init>(Ljava/lang/String;[BLjava/lang/String;I)V

    .line 989
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b5

    .line 990
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "processAdminConfigRequest added pluginName-"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    :cond_b5
    :goto_b5
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_df

    :cond_bc
    if-eqz v2, :cond_df

    const/4 v0, 0x0

    const-string/jumbo p0, "processAdminConfigRequest not valid form factor"

    .line 998
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_c5} :catch_c6

    goto :goto_df

    :catch_c6
    move-exception p0

    .line 1003
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The exception occurs "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_df
    :goto_df
    return v0
.end method

.method public processCommand(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processCommand "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UcmService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5588
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5589
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v4

    const/16 v5, 0xe

    const/4 v6, 0x0

    const-string v7, "bytearrayresponse"

    const-string v8, "errorresponse"

    if-nez v4, :cond_38

    .line 5591
    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 5592
    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    .line 5597
    :cond_38
    new-instance v9, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v9, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 5598
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 5599
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4f

    if-eq v10, v11, :cond_4f

    const/16 v12, 0x3e8

    if-ne v10, v12, :cond_4f

    move v10, v11

    .line 5607
    :cond_4f
    invoke-virtual {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v15

    .line 5609
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 5611
    :try_start_57
    iget-object v13, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v10

    invoke-virtual/range {v13 .. v18}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8d

    .line 5612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING!!!! processCommand is NOT allowed for URI = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5613
    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v0, 0xf

    .line 5614
    invoke-virtual {v2, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_89
    .catchall {:try_start_57 .. :try_end_89} :catchall_d9

    .line 5618
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_8d
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5623
    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_a2

    const-string v0, "agent is not bound"

    .line 5624
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5625
    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 5626
    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :cond_a2
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 5629
    invoke-virtual {v4, v0, v1, v10}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->processCommand([BLandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_bf

    const-string v0, "ERROR: Null Response received from agent"

    .line 5631
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5632
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5633
    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v1, 0xd

    .line 5634
    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 5637
    :cond_bf
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 5638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processCommand Response from plugin:  error code = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_d9
    move-exception v0

    .line 5618
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5619
    throw v0
.end method

.method public processMessage(I[B)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processMessage type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1571
    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->enforceUidPermission(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_33

    const-string p0, "  Agent don\'t UCS PLUGIN permission. Returning..."

    .line 1572
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    new-instance p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>()V

    .line 1574
    iput v3, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    const/16 p1, 0x41

    .line 1575
    iput p1, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    return-object p0

    .line 1579
    :cond_33
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidMsgType(I)Z

    move-result v2

    if-nez v2, :cond_4a

    const-string p0, "Invalid message Type..."

    .line 1580
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    new-instance p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>()V

    .line 1582
    iput v3, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    const/16 p1, 0x40

    .line 1583
    iput p1, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    return-object p0

    :cond_4a
    if-nez p2, :cond_5d

    const-string p0, "message byte is null.."

    .line 1588
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    new-instance p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>()V

    .line 1590
    iput v3, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    const/16 p1, 0x32

    .line 1591
    iput p1, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    return-object p0

    .line 1594
    :cond_5d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1596
    :try_start_61
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->processMsg(II[B)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object p0
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_67} :catch_6d
    .catchall {:try_start_61 .. :try_end_67} :catchall_6b

    .line 1600
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_6b
    move-exception p0

    goto :goto_8b

    :catch_6d
    move-exception p0

    .line 1598
    :try_start_6e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The exception occurs "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_6e .. :try_end_86} :catchall_6b

    .line 1600
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0

    :goto_8b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1601
    throw p0
.end method

.method public declared-synchronized publishService()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "com.samsung.ucs.ucsservice"

    .line 5998
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_16

    const-string v0, "com.samsung.ucs.ucsservice"

    .line 5999
    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "UcmService"

    const-string/jumbo v1, "publishedService com.samsung.ucs.ucsservice"

    .line 6000
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 6002
    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final readPersistentAppletsInfoLocked()V
    .registers 12

    const-string v0, "UcmService"

    const-string/jumbo v1, "readPersistentAppletsInfoLocked is called..."

    .line 1081
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1a

    const-string p0, "mPersistentAppletInfoFile not exist..."

    .line 1083
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1086
    :cond_1a
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1087
    :try_start_1f
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_25} :catch_af

    .line 1088
    :try_start_25
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const/4 v3, 0x0

    .line 1089
    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1090
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    :goto_31
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3c

    if-eq v4, v5, :cond_3c

    .line 1093
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_31

    .line 1095
    :cond_3c
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "applets"

    .line 1096
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 1097
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    :cond_4c
    if-ne v4, v6, :cond_97

    .line 1099
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ne v4, v6, :cond_97

    .line 1100
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "applet"

    .line 1101
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    const-string/jumbo v4, "pluginName"

    .line 1103
    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "appletLocation"

    .line 1104
    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "adminId"

    .line 1105
    invoke-interface {v2, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "aid"

    .line 1106
    invoke-interface {v2, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1108
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v9, :cond_84

    .line 1111
    invoke-static {v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v9

    goto :goto_85

    :cond_84
    move-object v9, v3

    .line 1113
    :goto_85
    new-instance v10, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    invoke-direct {v10, v7, v9, v4, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;-><init>(Ljava/lang/String;[BLjava/lang/String;I)V

    .line 1114
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_97

    .line 1115
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    :cond_97
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_9b
    .catchall {:try_start_25 .. :try_end_9b} :catchall_a3

    if-ne v4, v5, :cond_4c

    :cond_9d
    if-eqz v1, :cond_c8

    .line 1122
    :try_start_9f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a2} :catch_af

    goto :goto_c8

    :catchall_a3
    move-exception v2

    if-eqz v1, :cond_ae

    .line 1087
    :try_start_a6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_aa

    goto :goto_ae

    :catchall_aa
    move-exception v1

    :try_start_ab
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_ae
    :goto_ae
    throw v2
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_af} :catch_af

    :catch_af
    move-exception v1

    .line 1123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The exception occurs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_c8
    :goto_c8
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1127
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1128
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    .line 1129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PersistentApplet  key-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PersistentApplet  pluginName-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PersistentApplet  AID-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->convertByteToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PersistentApplet  appletLocation-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PersistentApplet  adminId-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->adminId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d2

    :cond_15c
    return-void
.end method

.method public final refreshAgentList(Landroid/os/Bundle;)V
    .registers 3

    .line 921
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->refreshAgentList(Landroid/os/Bundle;)V

    .line 922
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_15

    .line 923
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->registerPackageReceiver()V

    :cond_15
    return-void
.end method

.method public refreshAgents()V
    .registers 2

    .line 914
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final registerPackageReceiver()V
    .registers 6

    .line 533
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 534
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 535
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 537
    iget-object v3, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.samsung.ucs.agent.ese"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 538
    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_1a

    .line 541
    :cond_3b
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final registerPersonaObserver()V
    .registers 4

    const-string v0, "UcmService"

    .line 741
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_34

    const-string/jumbo v1, "registerPersonaObserver is called..."

    .line 742
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$8;

    invoke-direct {v2, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$8;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_34

    :catch_1b
    move-exception p0

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The exception occurs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :goto_34
    return-void
.end method

.method public registerSystemUICallback(Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;)V
    .registers 2

    .line 6191
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    .line 6192
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateSystemUIMonitor()V

    return-void
.end method

.method public removeEnforcedLockTypeNotification(I)V
    .registers 6

    .line 6083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeEnforcedLockTypeNotification : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6084
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    .line 6085
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-nez p0, :cond_3a

    const-string p0, "Failed to get NotificationManager"

    .line 6087
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3a
    add-int/lit16 p1, p1, 0x1f40

    .line 6090
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public final removeMDMPolicies(Ljava/lang/String;I)V
    .registers 7

    const-string v0, "UcmService"

    const-string/jumbo v1, "removeMDMPolicies"

    .line 819
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_a5

    if-eqz p1, :cond_a5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a5

    const/4 v1, -0x1

    if-ne p2, v1, :cond_19

    goto/16 :goto_a5

    .line 825
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", admin UID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 p2, 0x0

    invoke-direct {v1, p0, v2, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/os/Handler;)V

    .line 828
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object p0

    if-nez p0, :cond_4e

    const-string p0, "Failed to get APP Policy"

    .line 830
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 833
    :cond_4e
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 834
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z

    move-result v1

    .line 838
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeMDMPolicies removePackagesFromForceStopBlackList status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromClearCacheBlackList(Ljava/util/List;)Z

    move-result v1

    .line 841
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeMDMPolicies removePackagesFromClearCacheBlackList status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromClearDataBlackList(Ljava/util/List;)Z

    move-result p2

    .line 844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMDMPolicies removePackagesFromClearDataBlackList status-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    return-void

    :cond_a5
    :goto_a5
    const-string p0, "invalid argument"

    .line 821
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetNonMdmCertificates()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    const-string/jumbo v1, "resetNonMdmCertificates called"

    .line 1245
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "resetNonMdmCertificates"

    .line 1246
    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1248
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1249
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v2

    const-string v3, "callerUid"

    const/16 v4, 0x3e8

    .line 1251
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "user_id"

    .line 1252
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "Iteration has started...."

    .line 1254
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_37
    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_142

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    if-nez v4, :cond_46

    goto :goto_37

    .line 1260
    :cond_46
    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v5

    if-eqz v5, :cond_13b

    iget-object v5, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    if-eqz v5, :cond_54

    goto/16 :goto_13b

    .line 1265
    :cond_54
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v5, v4}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v5

    if-eqz v5, :cond_62

    const-string v4, "activeAgent is CSobscure"

    .line 1266
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 1270
    :cond_62
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1271
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v7, "resource"

    const/4 v8, 0x1

    .line 1274
    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1275
    invoke-virtual {v4, v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "stringarrayresponse"

    const/4 v11, 0x0

    if-eqz v9, :cond_82

    .line 1278
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    goto :goto_83

    :cond_82
    move-object v9, v11

    :goto_83
    if-eqz v9, :cond_88

    .line 1280
    invoke-static {v5, v9}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_88
    const/4 v9, 0x3

    .line 1284
    invoke-virtual {v1, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1285
    invoke-virtual {v4, v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v12

    if-eqz v12, :cond_96

    .line 1288
    invoke-virtual {v12, v10}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    :cond_96
    if-eqz v11, :cond_9b

    .line 1290
    invoke-static {v6, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1293
    :cond_9b
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_ad

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_ad

    const-string v4, "agentAliasesListKeychain.isEmpty() && agentAliasesListWiFi.isEmpty() .... continue"

    .line 1294
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 1299
    :cond_ad
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1302
    :try_start_b1
    iget-object v12, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v12, v2, v4}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUserId(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v12
    :try_end_b7
    .catchall {:try_start_b1 .. :try_end_b7} :catchall_136

    .line 1304
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v12, :cond_de

    const/4 v10, 0x0

    .line 1309
    :goto_bd
    array-length v11, v12

    if-ge v10, v11, :cond_de

    .line 1310
    aget-object v11, v12, v10

    invoke-interface {v5, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ce

    .line 1311
    aget-object v11, v12, v10

    invoke-interface {v5, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_db

    .line 1312
    :cond_ce
    aget-object v11, v12, v10

    invoke-interface {v6, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_db

    .line 1313
    aget-object v11, v12, v10

    invoke-interface {v6, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_db
    :goto_db
    add-int/lit8 v10, v10, 0x1

    goto :goto_bd

    .line 1319
    :cond_de
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1320
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "request to delete KEYCHAIN for alias: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1322
    invoke-virtual {v4, v10, v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_e2

    .line 1326
    :cond_10a
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1327
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "request to delete WIFI for alias: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    invoke-virtual {v1, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1329
    invoke-virtual {v4, v6, v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_10e

    :catchall_136
    move-exception p0

    .line 1304
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1305
    throw p0

    :cond_13b
    :goto_13b
    const-string v4, "agent is not bound or not ready"

    .line 1261
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37

    :cond_142
    return-void
.end method

.method public resetUid(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetUid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UcmService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5527
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5528
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v4

    const/16 v5, 0xe

    const/4 v6, 0x0

    const-string v7, "booleanresponse"

    const-string v8, "errorresponse"

    if-nez v4, :cond_38

    .line 5530
    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5531
    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    .line 5536
    :cond_38
    new-instance v9, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v9, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 5537
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 5538
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4f

    if-eq v10, v11, :cond_4f

    const/16 v12, 0x3e8

    if-ne v10, v12, :cond_4f

    move v10, v11

    .line 5546
    :cond_4f
    invoke-virtual {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v15

    .line 5548
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 5550
    :try_start_57
    iget-object v13, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v10

    invoke-virtual/range {v13 .. v18}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8d

    .line 5551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING!!!! resetUid is NOT allowed for URI = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5552
    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0xf

    .line 5553
    invoke-virtual {v2, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_89
    .catchall {:try_start_57 .. :try_end_89} :catchall_d7

    .line 5557
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_8d
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5562
    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_a2

    const-string v0, "agent is not bound"

    .line 5563
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5564
    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5565
    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :cond_a2
    move/from16 v0, p2

    .line 5568
    invoke-virtual {v4, v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->resetUid(I)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_bd

    const-string v0, "ERROR: Null Response received from agent"

    .line 5570
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5571
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5572
    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0xd

    .line 5573
    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 5576
    :cond_bd
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 5577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetUid Response from plugin:  error code = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_d7
    move-exception v0

    .line 5557
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5558
    throw v0
.end method

.method public resetUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UcmService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5466
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5467
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v4

    const/16 v5, 0xe

    const/4 v6, 0x0

    const-string v7, "booleanresponse"

    const-string v8, "errorresponse"

    if-nez v4, :cond_38

    .line 5469
    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5470
    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    .line 5475
    :cond_38
    new-instance v9, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v9, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 5476
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 5477
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4f

    if-eq v10, v11, :cond_4f

    const/16 v12, 0x3e8

    if-ne v10, v12, :cond_4f

    move v10, v11

    .line 5485
    :cond_4f
    invoke-virtual {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v15

    .line 5487
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 5489
    :try_start_57
    iget-object v13, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v10

    invoke-virtual/range {v13 .. v18}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8d

    .line 5490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING!!!! resetUser is NOT allowed for URI = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5491
    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0xf

    .line 5492
    invoke-virtual {v2, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_89
    .catchall {:try_start_57 .. :try_end_89} :catchall_d7

    .line 5496
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_8d
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5501
    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_a2

    const-string v0, "agent is not bound"

    .line 5502
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5503
    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5504
    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :cond_a2
    move/from16 v0, p2

    .line 5507
    invoke-virtual {v4, v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->resetUser(I)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_bd

    const-string v0, "ERROR: Null Response received from agent"

    .line 5509
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5510
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5511
    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0xd

    .line 5512
    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 5515
    :cond_bd
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 5516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetUser Response from plugin:  error code = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_d7
    move-exception v0

    .line 5496
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5497
    throw v0
.end method

.method public final restoreCACertificate()V
    .registers 9

    const-string v0, "The exception occurs "

    const-string v1, "UcmService"

    .line 1467
    :try_start_4
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v2

    if-eqz v2, :cond_c9

    .line 1468
    iget v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    if-eqz v3, :cond_c9

    iget-object v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    if-eqz v3, :cond_c9

    .line 1469
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v3, "********restoreCACertificate - started"

    .line 1470
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_28} :catch_b2

    .line 1473
    :try_start_28
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2c} :catch_9a

    .line 1474
    :try_start_2c
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_8e

    .line 1476
    :try_start_31
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 1477
    sget-boolean v6, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    if-eqz v6, :cond_54

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreCACertificate - data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_54
    sget-boolean v6, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    if-eqz v6, :cond_7b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreCACertificate -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    iget-object v7, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    invoke-static {v7}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    iget v2, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    invoke-virtual {p0, v7, v5, v2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->installCACerttificate(Ljava/lang/String;[BI)Z

    move-result p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_31 .. :try_end_7b} :catchall_84

    .line 1479
    :cond_7b
    :try_start_7b
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_8e

    if-eqz v3, :cond_c9

    :try_start_80
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_9a

    goto :goto_c9

    :catchall_84
    move-exception p0

    .line 1472
    :try_start_85
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    goto :goto_8d

    :catchall_89
    move-exception v2

    :try_start_8a
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8d
    throw p0
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception p0

    if-eqz v3, :cond_99

    :try_start_91
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_95

    goto :goto_99

    :catchall_95
    move-exception v2

    :try_start_96
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_99
    :goto_99
    throw p0
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9a} :catch_9a

    :catch_9a
    move-exception p0

    .line 1480
    :try_start_9b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_b1} :catch_b2

    return-void

    :catch_b2
    move-exception p0

    .line 1485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c9
    :goto_c9
    return-void
.end method

.method public final runLccmScript()V
    .registers 3

    .line 391
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemCaller()Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "runLccmScript"

    .line 392
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 395
    :cond_c
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->isAppletDeletionLccmScriptExist()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string p0, "UcmService"

    const-string/jumbo v0, "script is null"

    .line 396
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 402
    :cond_1b
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 421
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final runSefTestForEseCommTA()V
    .registers 4

    .line 598
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isGoodBinaryForEseCommTASelfTest()Z

    move-result v0

    const-string v1, "UcmService"

    if-nez v0, :cond_f

    const-string/jumbo p0, "runSefTestForEseCommTA: isGoodBinaryForEseCommTASelfTest: false"

    .line 599
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 603
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isGoodDeviceForEseCommTA()Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo p0, "runSefTestForEseCommTA: isGoodDeviceForEseCommTA: false"

    .line 604
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 608
    :cond_1c
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isGoodConfigForEseCommTA()Z

    move-result v0

    if-nez v0, :cond_29

    const-string/jumbo p0, "runSefTestForEseCommTA: isGoodConfigForEseCommTA: false"

    .line 609
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 614
    :cond_29
    :try_start_29
    new-instance v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;

    invoke-direct {v0, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    .line 632
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_31} :catch_32

    goto :goto_4b

    :catch_32
    move-exception p0

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The exception occurs "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4b
    return-void
.end method

.method public final saveTempOdeKey(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "UcmService"

    .line 5090
    :try_start_2
    invoke-static {}, Lcom/sec/esecomm/EsecommAdapter;->getEsecommAdapter()Lcom/sec/esecomm/EsecommAdapter;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_54

    .line 5097
    invoke-virtual {p0, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getOdeVendorSpecific(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmVendorSpecific;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmVendorSpecific;->getDeks(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;

    move-result-object p0

    .line 5098
    iget p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;->errorCode:I

    if-eqz p2, :cond_13

    return p2

    .line 5102
    :cond_13
    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;->wrappedDek:[B

    .line 5103
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;->dek:[B

    const/16 v1, 0x12

    if-eqz p0, :cond_4e

    if-nez p2, :cond_1e

    goto :goto_4e

    .line 5110
    :cond_1e
    invoke-virtual {v0, p0}, Lcom/sec/esecomm/EsecommAdapter;->saveODEKey([B)[B

    move-result-object p0

    if-nez p0, :cond_2a

    const-string p0, "ERROR: failed to wrap dek"

    .line 5112
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5116
    :cond_2a
    invoke-virtual {v0, p2}, Lcom/sec/esecomm/EsecommAdapter;->saveODEKey([B)[B

    move-result-object p2

    if-nez p2, :cond_36

    const-string p0, "ERROR: failed to wrap pluginWrappedK0"

    .line 5118
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_36
    const-string p1, "/efs/sec_efs/tz_esecomm"

    const-string/jumbo v0, "ucm_ode_key"

    .line 5123
    invoke-static {p0, p1, v0}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->saveDataToFile([BLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_42

    return v1

    :cond_42
    const-string/jumbo p0, "ucm_ode_key2"

    .line 5126
    invoke-static {p2, p1, p0}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->saveDataToFile([BLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4c

    return v1

    :cond_4c
    const/4 p0, 0x0

    return p0

    :cond_4e
    :goto_4e
    const-string p0, "ERROR: key is null"

    .line 5105
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_54
    move-exception p0

    .line 5092
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The exception occurs "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x18

    return p0
.end method

.method public saw(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UcmService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2202
    new-instance v4, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v4, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2203
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2204
    invoke-virtual {v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v6

    .line 2205
    invoke-virtual {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v13

    const/16 v14, 0x3e8

    const/4 v7, -0x1

    if-eq v6, v7, :cond_41

    if-eq v5, v6, :cond_41

    if-eq v5, v14, :cond_40

    .line 2208
    invoke-static {v13}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v8

    if-eqz v8, :cond_41

    :cond_40
    move v5, v6

    .line 2213
    :cond_41
    invoke-virtual {v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v6

    if-ne v6, v7, :cond_48

    const/4 v6, 0x1

    .line 2217
    :cond_48
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    const-string v7, "callerUid"

    .line 2219
    invoke-virtual {v12, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v8, "user_id"

    .line 2220
    invoke-virtual {v12, v8, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v9, "ownerUid"

    .line 2221
    invoke-virtual {v12, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v9, "resource"

    .line 2222
    invoke-virtual {v12, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "entryType"

    move/from16 v11, p2

    .line 2223
    invoke-virtual {v12, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2225
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saw KEY_RESOURCE_ID= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, -0x2

    invoke-virtual {v12, v9, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "saw KEY_USER_ID= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saw KEY_CALLER_UID= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->isKeyChainUri(Ljava/lang/String;)Z

    move-result v7

    const/16 v11, 0xf

    const-string v10, "WARNING!!!! saw access NOT allowed for "

    const/4 v9, 0x3

    const-string v15, "ERROR: Null Response received from activeAgent"

    const-string v14, ",  error code = "

    move-object/from16 v17, v12

    const-string v12, "UCMERRORTESTING: @CredentialManagerService saw Response from plugin: "

    move-object/from16 p2, v12

    const-string v12, "activeAgent is not bound"

    move-object/from16 v18, v12

    const/16 v19, 0x0

    const-string/jumbo v12, "stringarrayresponse"

    move-object/from16 v21, v12

    const-string v12, "errorresponse"

    if-eqz v7, :cond_4c2

    invoke-virtual {v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v4

    const-string v7, "KNOX"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c2

    .line 2232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Iteration has started.... uid-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v23, 0x0

    :goto_10a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    if-nez v7, :cond_12b

    move-object/from16 v31, p2

    move-object/from16 p2, v1

    move-object/from16 v26, v4

    move v4, v11

    move-object v1, v12

    move-object/from16 v30, v17

    move-object/from16 v7, v18

    move-object/from16 v33, v21

    const/16 v9, 0xe

    move-object v12, v10

    goto/16 :goto_1b6

    .line 2239
    :cond_12b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 2241
    :try_start_12f
    iget-object v8, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 p1, v7

    move-object v7, v8

    move-object/from16 v8, p1

    move v9, v13

    move-object/from16 v29, v10

    move v10, v5

    move-object/from16 v26, v4

    move v4, v11

    move/from16 v11, v27

    move-object/from16 v31, p2

    move-object/from16 p2, v1

    move-object v1, v12

    move-object/from16 v30, v17

    move-object/from16 v32, v18

    move-object/from16 v33, v21

    move-object/from16 v12, v28

    invoke-virtual/range {v7 .. v12}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v7

    if-nez v7, :cond_17f

    .line 2242
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, v29

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p1

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_173
    .catchall {:try_start_12f .. :try_end_173} :catchall_4a3

    .line 2248
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v11, v4

    move-object v10, v12

    move-object/from16 v4, v26

    move-object/from16 v17, v30

    move-object/from16 v18, v32

    goto :goto_19e

    :cond_17f
    move-object/from16 v8, p1

    move-object/from16 v12, v29

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2252
    invoke-virtual {v8}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v7

    if-nez v7, :cond_1a4

    move-object/from16 v7, v32

    .line 2253
    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0xe

    .line 2254
    invoke-virtual {v2, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v11, v4

    move-object/from16 v18, v7

    move-object v10, v12

    move-object/from16 v4, v26

    move-object/from16 v17, v30

    :goto_19e
    move-object/from16 v21, v33

    const/4 v9, 0x3

    const/16 v23, 0x1

    goto :goto_1c1

    :cond_1a4
    move-object/from16 v7, v32

    const/16 v9, 0xe

    .line 2260
    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v10, v8}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v10

    if-eqz v10, :cond_1c8

    const-string/jumbo v8, "skipping obscure activeAgent"

    .line 2261
    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b6
    move v11, v4

    move-object/from16 v18, v7

    move-object v10, v12

    move-object/from16 v4, v26

    move-object/from16 v17, v30

    move-object/from16 v21, v33

    const/4 v9, 0x3

    :goto_1c1
    move-object v12, v1

    move-object/from16 v1, p2

    move-object/from16 p2, v31

    goto/16 :goto_10a

    :cond_1c8
    move-object/from16 v10, v30

    .line 2265
    invoke-virtual {v8, v10}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1e6

    .line 2267
    invoke-static {v3, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/16 v11, 0xd

    .line 2269
    invoke-virtual {v2, v1, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v11, v4

    move-object/from16 v18, v7

    move-object/from16 v17, v10

    move-object v10, v12

    move-object/from16 v4, v26

    goto :goto_19e

    :cond_1e6
    move-object/from16 v4, v33

    .line 2274
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2275
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 p1, v2

    .line 2276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v12

    move-object/from16 v12, v31

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v12, v12, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_220

    move-object/from16 v9, p2

    move-object/from16 v32, v7

    move-object/from16 v30, v10

    move-object/from16 v20, v14

    move-object/from16 v18, v15

    goto/16 :goto_485

    .line 2283
    :cond_220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Agent alias size -"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v11

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    array-length v2, v11

    const/4 v12, 0x0

    :goto_237
    if-ge v12, v2, :cond_25a

    aget-object v9, v11, v12

    move/from16 v18, v2

    .line 2285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v14

    const-string v14, "Agent alias-"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v18

    move-object/from16 v14, v20

    goto :goto_237

    :cond_25a
    move-object/from16 v20, v14

    .line 2288
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2289
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2290
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2295
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 2297
    :try_start_26f
    iget-object v9, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v9, v5, v8}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUid(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x3

    if-ne v6, v12, :cond_2f2

    const/16 v14, 0x3e8

    if-ne v5, v14, :cond_2f2

    .line 2301
    iget-object v14, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/4 v12, 0x0

    invoke-virtual {v14, v12, v8}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getWifiCertificateAliasesAsUser(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2f2

    .line 2302
    array-length v12, v14

    if-lez v12, :cond_2f2

    .line 2303
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v15

    .line 2304
    array-length v15, v14

    move-object/from16 v30, v10

    const/4 v10, 0x0

    :goto_293
    if-ge v10, v15, :cond_2c9

    move/from16 v24, v15

    aget-object v15, v14, v10

    move-object/from16 v25, v14

    .line 2305
    iget-object v14, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v14, v15, v12}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v14

    if-nez v14, :cond_2be

    .line 2306
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v7

    const-string/jumbo v7, "saw : Found wifi certAlias-"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c0

    :cond_2be
    move-object/from16 v32, v7

    :goto_2c0
    add-int/lit8 v10, v10, 0x1

    move/from16 v15, v24

    move-object/from16 v14, v25

    move-object/from16 v7, v32

    goto :goto_293

    :cond_2c9
    move-object/from16 v32, v7

    if-eqz v9, :cond_2e4

    .line 2310
    array-length v7, v9

    if-lez v7, :cond_2e4

    .line 2311
    array-length v7, v9

    const/4 v10, 0x0

    :goto_2d2
    if-ge v10, v7, :cond_2e4

    aget-object v14, v9, v10

    .line 2312
    iget-object v15, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v15, v14, v12}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v15

    if-nez v15, :cond_2e1

    .line 2313
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2d2

    .line 2317
    :cond_2e4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v12, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, [Ljava/lang/String;
    :try_end_2f1
    .catchall {:try_start_26f .. :try_end_2f1} :catchall_49e

    goto :goto_2f8

    :cond_2f2
    move-object/from16 v32, v7

    move-object/from16 v30, v10

    move-object/from16 v18, v15

    :goto_2f8
    const-string/jumbo v7, "saw : mdmallowedaliasesList for uid "

    if-nez v9, :cond_317

    .line 2323
    :try_start_2fd
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is null"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v10, v19

    goto :goto_339

    .line 2325
    :cond_317
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 2326
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is = "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    :goto_339
    iget-object v7, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v7, v8}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforCS(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v7
    :try_end_33f
    .catchall {:try_start_2fd .. :try_end_33f} :catchall_49e

    .line 2332
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v7, :cond_3bd

    .line 2336
    array-length v12, v7

    if-nez v12, :cond_349

    goto/16 :goto_3bd

    :cond_349
    if-eqz v9, :cond_397

    .line 2339
    array-length v9, v9

    if-nez v9, :cond_34f

    goto :goto_397

    .line 2343
    :cond_34f
    array-length v9, v7

    const/4 v12, 0x0

    :goto_351
    if-ge v12, v9, :cond_394

    aget-object v14, v7, v12

    .line 2344
    iget-object v15, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v15, v14, v10}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v15

    if-nez v15, :cond_378

    .line 2345
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2346
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v2

    const-string/jumbo v2, "saw : new alias added to mdmunauthorizedaliasesList : "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38f

    :cond_378
    move-object/from16 v24, v2

    .line 2348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "saw : mdmunauthorizedaliasesList unchanged, access allowed for "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38f
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v24

    goto :goto_351

    :cond_394
    move-object/from16 v24, v2

    goto :goto_3d9

    .line 2340
    :cond_397
    :goto_397
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2341
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saw : mdmunauthorizedaliasesList for user "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " is = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d9

    .line 2337
    :cond_3bd
    :goto_3bd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : mdmunauthorizedaliasesList for user "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is = null "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, v19

    .line 2354
    :goto_3d9
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2355
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "saw : Initial agent alias list for agent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_43f

    .line 2356
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_43f

    const/4 v12, 0x0

    .line 2357
    :goto_410
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v12, v9, :cond_43f

    .line 2358
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2359
    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v10, v9, v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_43c

    .line 2360
    invoke-interface {v7, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2361
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saw : Removing from agent alias list : alias name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43c
    add-int/lit8 v12, v12, 0x1

    goto :goto_410

    .line 2366
    :cond_43f
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_443
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_483

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2367
    new-instance v9, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v10, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 2368
    invoke-virtual {v9, v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v9, p2

    .line 2369
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2370
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saw : Adding alias uri to finalaliasesList : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_443

    :cond_483
    move-object/from16 v9, p2

    :goto_485
    move-object/from16 v2, p1

    move-object v12, v1

    move-object/from16 v21, v4

    move-object v1, v9

    move-object/from16 v15, v18

    move-object/from16 v14, v20

    move-object/from16 v4, v26

    move-object/from16 v10, v29

    move-object/from16 v17, v30

    move-object/from16 p2, v31

    move-object/from16 v18, v32

    const/4 v9, 0x3

    const/16 v11, 0xf

    goto/16 :goto_10a

    :catchall_49e
    move-exception v0

    .line 2332
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2333
    throw v0

    :catchall_4a3
    move-exception v0

    .line 2248
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2249
    throw v0

    :cond_4a8
    move-object v9, v1

    move-object v1, v12

    move-object/from16 v4, v21

    .line 2375
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2376
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    if-nez v23, :cond_4c1

    const/4 v0, 0x0

    .line 2377
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4c1
    return-object v2

    :cond_4c2
    move-object/from16 v31, p2

    move-object/from16 v29, v10

    move-object v1, v12

    move-object/from16 v20, v14

    move-object/from16 v30, v17

    move-object/from16 v32, v18

    move-object/from16 v4, v21

    move-object/from16 v18, v15

    .line 2382
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v14

    if-nez v14, :cond_4e1

    const/16 v7, 0xe

    .line 2384
    invoke-virtual {v2, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :cond_4e1
    const/16 v7, 0xe

    .line 2388
    invoke-virtual {v14}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v8

    if-nez v8, :cond_4f2

    move-object/from16 v8, v32

    .line 2389
    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    invoke-virtual {v2, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :cond_4f2
    move-object/from16 v2, v30

    .line 2394
    invoke-virtual {v14, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_50a

    move-object/from16 v7, v18

    .line 2396
    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0xd

    .line 2398
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 2401
    :cond_50a
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/4 v12, 0x0

    .line 2402
    invoke-virtual {v2, v1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 2403
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saw Response from plugin:  error code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v31

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_552

    .line 2408
    invoke-virtual {v2, v4, v15}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2409
    invoke-virtual {v2, v1, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :cond_552
    const/4 v7, 0x3

    if-eq v6, v7, :cond_559

    .line 2415
    invoke-virtual {v2, v1, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    .line 2420
    :cond_559
    iget-object v6, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v6, v14}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v6

    if-eqz v6, :cond_568

    .line 2421
    invoke-virtual {v2, v4, v15}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2422
    invoke-virtual {v2, v1, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    .line 2427
    :cond_568
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2428
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2429
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2430
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 2432
    :try_start_57b
    iget-object v7, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v8, v14

    move v9, v13

    move v10, v5

    move v13, v11

    move/from16 v11, v16

    move-object/from16 v33, v4

    move/from16 v16, v12

    move-object/from16 v4, v29

    move-object/from16 v12, v18

    invoke-virtual/range {v7 .. v12}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v7

    if-nez v7, :cond_5b4

    .line 2433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    .line 2434
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_5b0
    .catchall {:try_start_57b .. :try_end_5b0} :catchall_66c

    .line 2464
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_5b4
    if-nez v15, :cond_5bd

    .line 2439
    :try_start_5b6
    invoke-virtual {v2, v1, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_5b9
    .catchall {:try_start_5b6 .. :try_end_5b9} :catchall_66c

    .line 2464
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 2443
    :cond_5bd
    :try_start_5bd
    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v3, v5, v14}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUid(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5c8

    move-object/from16 v4, v19

    goto :goto_5cc

    .line 2447
    :cond_5c8
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 2451
    :goto_5cc
    iget-object v7, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v7, v14}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforCS(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5f7

    .line 2452
    array-length v8, v7

    if-nez v8, :cond_5d8

    goto :goto_5f7

    :cond_5d8
    if-eqz v3, :cond_5f3

    .line 2454
    array-length v3, v3

    if-nez v3, :cond_5de

    goto :goto_5f3

    .line 2457
    :cond_5de
    array-length v3, v7

    move/from16 v12, v16

    :goto_5e1
    if-ge v12, v3, :cond_5f9

    aget-object v8, v7, v12

    .line 2458
    iget-object v9, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v9, v8, v4}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v9

    if-nez v9, :cond_5f0

    .line 2459
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5f0
    add-int/lit8 v12, v12, 0x1

    goto :goto_5e1

    .line 2455
    :cond_5f3
    :goto_5f3
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19
    :try_end_5f7
    .catchall {:try_start_5bd .. :try_end_5f7} :catchall_66c

    :cond_5f7
    :goto_5f7
    move-object/from16 v6, v19

    .line 2464
    :cond_5f9
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2468
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-eqz v6, :cond_624

    .line 2469
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_624

    move/from16 v12, v16

    .line 2470
    :goto_60a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_624

    .line 2471
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2472
    iget-object v7, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v7, v4, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_621

    .line 2473
    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_621
    add-int/lit8 v12, v12, 0x1

    goto :goto_60a

    .line 2478
    :cond_624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2479
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_62d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_657

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2480
    new-instance v6, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v7, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 2481
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v4

    .line 2483
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_62d

    .line 2485
    :cond_657
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v3, v33

    .line 2486
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2487
    invoke-virtual {v2, v1, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :catchall_66c
    move-exception v0

    .line 2464
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2465
    throw v0
.end method

.method public sawInternal(Ljava/lang/String;II)Landroid/os/Bundle;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sawInternal() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; resourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "sawInternal"

    .line 2498
    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2500
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p1

    const/16 v2, 0xe

    const-string v3, "errorresponse"

    if-nez p1, :cond_4a

    const-string/jumbo p0, "sawInternal(): activeAgent == null"

    .line 2502
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 2508
    :cond_4a
    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v4

    if-nez v4, :cond_59

    const-string p0, "agent is not bound"

    .line 2509
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 2514
    :cond_59
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result p0

    if-eqz p0, :cond_6a

    const-string p0, "activeAgent is CSobscure"

    .line 2515
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 2520
    :cond_6a
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/16 v0, 0x3e8

    const-string v2, "callerUid"

    .line 2521
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "user_id"

    .line 2522
    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "resource"

    .line 2523
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2525
    invoke-virtual {p1, p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_98

    const-string p0, "ERROR: Null Response received from activeAgent"

    .line 2527
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/16 p1, 0xd

    .line 2529
    invoke-virtual {p0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0

    :cond_98
    const-string/jumbo p1, "stringarrayresponse"

    .line 2532
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d5

    .line 2534
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "sawInternal() agentAliases.length="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    array-length p2, p1

    const/4 p3, 0x0

    :goto_b9
    if-ge p3, p2, :cond_d5

    aget-object v0, p1, p3

    .line 2536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sawInternal() agentAliases="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p3, p3, 0x1

    goto :goto_b9

    :cond_d5
    return-object p0
.end method

.method public final sendRefreshFinishIntent(I)V
    .registers 8

    .line 6196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendRefreshFinishIntent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6197
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v0

    .line 6198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendRefreshFinishIntent calling user Id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6199
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.UCM_REFRESH_AGENT_DONE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6203
    :try_start_37
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3d} :catch_3e

    goto :goto_58

    :catch_3e
    move-exception p1

    .line 6205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The exception occurs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_58
    if-nez p1, :cond_60

    const-string p0, "Failed to find callingUid package"

    .line 6209
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_60
    const/4 v3, 0x0

    .line 6213
    :goto_61
    array-length v4, p1

    if-ge v3, v4, :cond_7e

    .line 6214
    aget-object v4, p1, v3

    if-nez v4, :cond_6e

    const-string v4, "calling package is eampty, so continue..."

    .line 6216
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 6219
    :cond_6e
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6220
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    :cond_7e
    return-void
.end method

.method public final sendStateChangeBroadcast(ILjava/lang/String;)V
    .registers 8

    const-string v0, "KnoxKeyguardReceiver"

    .line 3765
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.ucs.ucsservice.stateblocked"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3766
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "UCS_STATE"

    .line 3767
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "UCS_CSNAME"

    .line 3768
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3769
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcast CSNAME "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UcmService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3770
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3773
    :try_start_34
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez p1, :cond_45

    .line 3774
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "persona"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 3777
    :cond_45
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object p1

    .line 3778
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_50
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 3779
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send personaId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3780
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.knox.kss"

    const-string v4, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3782
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_8b} :catch_8c

    goto :goto_50

    :catch_8c
    move-exception p0

    .line 3785
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The exception occurs "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    return-void
.end method

.method public final sendUCMKeyguardIntent(ZILjava/lang/String;)V
    .registers 7

    .line 4714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendUCMKeyguardIntent set - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userId-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", storage-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4716
    :try_start_27
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_34

    const-string p1, "com.samsung.android.knox.intent.action.UCM_KEYGUARD_SET"

    .line 4718
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_39

    :cond_34
    const-string p1, "com.samsung.android.knox.intent.action.UCM_KEYGUARD_UNSET"

    .line 4720
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4722
    :goto_39
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "userId"

    .line 4723
    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "package_name"

    .line 4724
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4725
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4726
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo p0, "sendUCMKeyguardIntent intent sent to all..."

    .line 4727
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_5a} :catch_5b

    goto :goto_74

    :catch_5b
    move-exception p0

    .line 4729
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The exception occurs "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_74
    return-void
.end method

.method public setAdminConfigureBundleForCs(IILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string/jumbo v4, "setAdminConfigureBundleForCs"

    .line 3599
    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3601
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3602
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setAdminConfigureBundleForCs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UcmService"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "intresponse"

    const-string v7, "errorresponse"

    const/4 v8, -0x1

    if-nez v3, :cond_40

    const-string/jumbo v0, "setAdminConfigureBundleForCs : Bundle is null"

    .line 3604
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3605
    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0x10

    .line 3606
    invoke-virtual {v4, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v4

    .line 3610
    :cond_40
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    const/16 v10, 0xe

    if-nez v9, :cond_6b

    .line 3612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no agent found for Source = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3613
    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3614
    invoke-virtual {v4, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v4

    .line 3619
    :cond_6b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 3621
    :try_start_6f
    new-instance v13, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v13, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3622
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 3623
    invoke-virtual {v13}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v15

    if-eq v15, v8, :cond_87

    if-eq v14, v15, :cond_87

    const/16 v10, 0x3e8

    if-ne v14, v10, :cond_87

    move/from16 v19, v15

    goto :goto_89

    :cond_87
    move/from16 v19, v14

    .line 3633
    :goto_89
    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v13}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v17

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v10

    move/from16 v18, p2

    invoke-virtual/range {v16 .. v21}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v10

    if-nez v10, :cond_c1

    .line 3634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WARNING!!!! setAdminConfigureBundleForCs is NOT allowed for URI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3635
    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0xf

    .line 3636
    invoke-virtual {v4, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_bd
    .catchall {:try_start_6f .. :try_end_bd} :catchall_14e

    .line 3640
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :cond_c1
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v10, "applet_location"

    .line 3644
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_f3

    move/from16 v10, p2

    .line 3646
    invoke-virtual {v0, v10, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkPluginUsed(ILjava/lang/String;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v11, v10, :cond_e4

    const-string/jumbo v0, "the plugin already is used"

    .line 3648
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0x22

    .line 3650
    invoke-virtual {v4, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v4

    .line 3653
    :cond_e4
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->processAdminConfigRequest(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_f3

    .line 3654
    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0x19

    .line 3655
    invoke-virtual {v4, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v4

    .line 3661
    :cond_f3
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_107

    const-string v0, "agent is not bound"

    .line 3662
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3663
    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0xe

    .line 3664
    invoke-virtual {v4, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v4

    :cond_107
    const-string v2, "applet_ese_chip_vendor"

    const-string v4, ""

    .line 3667
    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, p5

    .line 3669
    invoke-virtual {v9, v1, v3, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_129

    const-string v0, "ERROR: Null Response received from agent"

    .line 3671
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3673
    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xd

    .line 3674
    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 3677
    :cond_129
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 3678
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPackageSetting Response from plugin:  error code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_14d

    .line 3680
    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mConfigAppletRequestIds:Ljava/util/List;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14d
    return-object v1

    :catchall_14e
    move-exception v0

    .line 3640
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3641
    throw v0
.end method

.method public setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 2610
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCertificateChain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UcmService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2613
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    const/16 v6, 0xe

    const/4 v7, 0x0

    const-string v8, "errorresponse"

    const-string v9, "booleanresponse"

    if-nez v5, :cond_3a

    .line 2615
    invoke-virtual {v3, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2616
    invoke-virtual {v3, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    .line 2621
    :cond_3a
    new-instance v10, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v10, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2622
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2623
    invoke-virtual {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_51

    if-eq v11, v12, :cond_51

    const/16 v14, 0x3e8

    if-ne v11, v14, :cond_51

    move v11, v12

    .line 2631
    :cond_51
    invoke-virtual {v0, v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v12

    .line 2632
    invoke-virtual {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v14

    if-ne v14, v13, :cond_5c

    const/4 v14, 0x1

    .line 2638
    :cond_5c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 2640
    :try_start_60
    iget-object v15, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v16

    const/16 v19, 0x0

    invoke-virtual {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v20

    move/from16 v17, v12

    move/from16 v18, v11

    invoke-virtual/range {v15 .. v20}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9a

    .line 2641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING!!!! setCertificateChain is NOT allowed for URI = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    invoke-virtual {v3, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0xf

    .line 2643
    invoke-virtual {v3, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_96
    .catchall {:try_start_60 .. :try_end_96} :catchall_168

    .line 2647
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :cond_9a
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2651
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v10, "callerUid"

    .line 2652
    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v13, "user_id"

    .line 2653
    invoke-virtual {v0, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v12, "ownerUid"

    .line 2654
    invoke-virtual {v0, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "resource"

    .line 2655
    invoke-virtual {v0, v11, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v12, "extraArgs"

    .line 2656
    invoke-virtual {v0, v12, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2658
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setCertificateChain KEY_RESOURCE_ID= "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, -0x2

    invoke-virtual {v0, v11, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setCertificateChain KEY_USER_ID= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setCertificateChain KEY_CALLER_UID= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    invoke-virtual {v5}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_11c

    const-string v0, "agent is not bound"

    .line 2665
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    invoke-virtual {v3, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2667
    invoke-virtual {v3, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    .line 2671
    :cond_11c
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_139

    const-string v0, "ERROR: Null Response received from agent"

    .line 2673
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2675
    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2676
    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 2679
    :cond_139
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 2680
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2681
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCertificateChain Response from plugin:  error code = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_167

    if-nez v2, :cond_167

    const-string v1, "ERROR: Empty data received for setCertificateChain"

    .line 2684
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0xd

    .line 2686
    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_167
    return-object v0

    :catchall_168
    move-exception v0

    .line 2647
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2648
    throw v0
.end method

.method public setCredentialStorageProperty(ILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3549
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    .line 3551
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3552
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p0

    const/16 p2, 0xe

    const-string v1, "errorresponse"

    const/4 v2, -0x1

    const-string v3, "intresponse"

    if-nez p0, :cond_2e

    .line 3554
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3555
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 3560
    :cond_2e
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v4

    const-string v5, "UcmService"

    if-nez v4, :cond_42

    const-string p0, "agent is not bound"

    .line 3561
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3563
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 3566
    :cond_42
    invoke-virtual {p0, p1, p4, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->setCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "setCredentialStorageProperty Response from plugin"

    .line 3567
    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public setKeyguardPinMaximumLength(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setKeyguardPinMaximumLength : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4100
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgentFromUri(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 4101
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_60

    .line 4105
    :cond_24
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateCS(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    .line 4107
    iget-object p1, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->supportPinConfiguration:Z

    if-nez p1, :cond_4d

    const-string p1, "Agent does not support this api"

    .line 4108
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 4109
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 4112
    :cond_4d
    invoke-virtual {v0, p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->setKeyguardPinMaximumLength(I)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_5f

    const-string p1, "ERROR: Null Response received from agent"

    .line 4114
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xd

    .line 4115
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_5f
    return-object p1

    :cond_60
    :goto_60
    const/16 p1, 0xe

    .line 4102
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public setKeyguardPinMaximumRetryCount(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setKeyguardPinMaximumRetryCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4052
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgentFromUri(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 4053
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_60

    .line 4057
    :cond_24
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateCS(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    .line 4059
    iget-object p1, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->supportPinConfiguration:Z

    if-nez p1, :cond_4d

    const-string p1, "Agent does not support this api"

    .line 4060
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 4061
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 4064
    :cond_4d
    invoke-virtual {v0, p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->setKeyguardPinMaximumRetryCount(I)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_5f

    const-string p1, "ERROR: Null Response received from agent"

    .line 4066
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xd

    .line 4067
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_5f
    return-object p1

    :cond_60
    :goto_60
    const/16 p1, 0xe

    .line 4054
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public setKeyguardPinMinimumLength(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setKeyguardPinMinimumLength : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4076
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgentFromUri(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 4077
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_60

    .line 4081
    :cond_24
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateCS(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    .line 4083
    iget-object p1, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->supportPinConfiguration:Z

    if-nez p1, :cond_4d

    const-string p1, "Agent does not support this api"

    .line 4084
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 4085
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 4088
    :cond_4d
    invoke-virtual {v0, p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->setKeyguardPinMinimumLength(I)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_5f

    const-string p1, "ERROR: Null Response received from agent"

    .line 4090
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xd

    .line 4091
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_5f
    return-object p1

    :cond_60
    :goto_60
    const/16 p1, 0xe

    .line 4078
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getErrorParameterBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final setKeyguardStorageForCurrentUser(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 12

    const-string v0, "keyguard"

    .line 4669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setKeyguardStorageForCurrentUser called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4670
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardInfoFile(I)Landroid/util/AtomicFile;

    move-result-object v1

    .line 4671
    :try_start_1d
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_86

    .line 4672
    :try_start_21
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v5, "utf-8"

    .line 4673
    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4674
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    .line 4675
    invoke-interface {v4, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 4676
    invoke-interface {v4, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "vendor"

    .line 4677
    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "name"

    .line 4678
    invoke-interface {v4, v6, v5, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "owner"

    .line 4679
    invoke-interface {v4, v6, v5, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4680
    invoke-interface {v4, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4681
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 4682
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    if-nez p1, :cond_74

    const-string p1, "none"

    .line 4684
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_5d
    .catchall {:try_start_21 .. :try_end_5d} :catchall_7a

    const-string/jumbo p3, "persist.keyguard.ucs"

    if-ne p1, v7, :cond_6b

    :try_start_62
    const-string p1, "false"

    .line 4685
    invoke-static {p3, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4686
    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateSystemUIMonitor(Ljava/lang/String;)V

    goto :goto_74

    :cond_6b
    const-string/jumbo p1, "true"

    .line 4688
    invoke-static {p3, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4689
    invoke-virtual {p0, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateSystemUIMonitor(Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_62 .. :try_end_74} :catchall_7a

    :cond_74
    :goto_74
    if-eqz v3, :cond_79

    .line 4693
    :try_start_76
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_86

    :cond_79
    return v7

    :catchall_7a
    move-exception p0

    if-eqz v3, :cond_85

    .line 4671
    :try_start_7d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_81

    goto :goto_85

    :catchall_81
    move-exception p1

    :try_start_82
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_85
    :goto_85
    throw p0
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_86} :catch_86

    :catch_86
    move-exception p0

    .line 4694
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The exception occurs "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final setODEConfigInFile(I)V
    .registers 6

    const-string p0, "The exception occurs "

    const-string v0, "UcmService"

    const-string/jumbo v1, "setODEConfigInFile"

    .line 5305
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5306
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string v3, "odeConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "existFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5308
    :try_start_2b
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_30} :catch_59
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_30} :catch_41

    .line 5309
    :try_start_30
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_37

    .line 5310
    :try_start_33
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_36} :catch_59
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_41

    goto :goto_70

    :catchall_37
    move-exception p1

    .line 5308
    :try_start_38
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v1

    :try_start_3d
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw p1
    :try_end_41
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_41} :catch_59
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_41} :catch_41

    :catch_41
    move-exception p1

    .line 5313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    :catch_59
    move-exception p1

    .line 5311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_70
    return-void
.end method

.method public setState(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "setState"

    .line 4211
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "errorresponse"

    if-nez p1, :cond_32

    const-string/jumbo p0, "uri is empty"

    .line 4215
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x10

    .line 4216
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_32
    const/4 v3, 0x1

    const-string v4, "boot_test"

    .line 4221
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v3, v4, :cond_42

    const-string v3, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    .line 4222
    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p0

    goto :goto_4a

    .line 4224
    :cond_42
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p0

    :goto_4a
    const/16 v3, 0xe

    if-nez p0, :cond_6a

    .line 4228
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no agent found for Source = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4229
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 4234
    :cond_6a
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result p1

    if-nez p1, :cond_79

    const-string p0, "agent is not bound"

    .line 4235
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4236
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 4240
    :cond_79
    invoke-virtual {p0, p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->setState(I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_8e

    const-string p0, "ERROR: Null Response received from agent"

    .line 4242
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4243
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/16 p1, 0xd

    .line 4244
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_8e
    return-object p0
.end method

.method public showEnforcedLockTypeNotification(ILjava/lang/String;)V
    .registers 11

    const-string v0, "UCM_KEYGUARD_NOTIFICATION"

    .line 6046
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showEnforcedLockTypeNotification : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6047
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    .line 6048
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-nez v1, :cond_3c

    const-string p0, "Failed to get NotificationManager"

    .line 6050
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6054
    :cond_3c
    :try_start_3c
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "UCM Keyguard Configuration Notification"

    const/4 v5, 0x4

    invoke-direct {v3, v0, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 6055
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.knox.intent.action.ACTION_ENFORCE_LOCKTYPE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "CS_NAME"

    .line 6056
    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "USER_ID"

    .line 6057
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6059
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const/high16 v5, 0xc000000

    invoke-static {v4, p1, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_60} :catch_ae

    const/4 v4, 0x1

    const-string v5, ""

    if-eqz p2, :cond_7d

    .line 6061
    :try_start_65
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7d

    const-string v6, ":"

    .line 6062
    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_7d

    add-int/2addr v6, v4

    .line 6064
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 6067
    :cond_7d
    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const v6, 0x1040e3b

    invoke-virtual {p2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 6069
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6070
    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    const v0, 0x1080027

    .line 6071
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 6072
    invoke-virtual {p0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 6073
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 6074
    invoke-virtual {p0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    add-int/lit16 p1, p1, 0x1f40

    .line 6076
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_ad} :catch_ae

    goto :goto_c7

    :catch_ae
    move-exception p0

    .line 6078
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The exception occurs "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c7
    return-void
.end method

.method public final showODEProgressNotification()V
    .registers 7

    const-string v0, "UCM_ODE_NOTIFICATION"

    const-string v1, "UcmService"

    .line 6119
    :try_start_4
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->isUCMODEEnabledWithPropFile()Z

    move-result v2

    if-nez v2, :cond_14

    .line 6120
    sget-boolean p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    if-eqz p0, :cond_13

    const-string p0, "UCM ODE is not enabled"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void

    :cond_14
    const-string/jumbo v2, "showODEProgressNotification"

    .line 6123
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6124
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-nez v2, :cond_2c

    const-string p0, "Failed to get Notification Manager"

    .line 6126
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6129
    :cond_2c
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "UCM ODE Progress Notification"

    const/4 v5, 0x4

    invoke-direct {v3, v0, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 6132
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getODEVendorName()Ljava/lang/String;

    move-result-object v3

    .line 6133
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6134
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v3, "ODE Progress is done"

    .line 6143
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x108009b

    .line 6144
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 6145
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const v3, 0x1040e3a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 6147
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/16 v0, 0x2328

    .line 6149
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_68} :catch_69

    goto :goto_82

    :catch_69
    move-exception p0

    .line 6151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The exception occurs "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_82
    return-void
.end method

.method public sign(Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 3281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sign "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UcmService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x4

    const-string v6, "errorresponse"

    if-nez v2, :cond_2f

    .line 3284
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3285
    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 3287
    :cond_2f
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v8

    const/16 v7, 0xe

    const/4 v14, 0x0

    const-string v15, "bytearrayresponse"

    if-nez v8, :cond_5e

    .line 3289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sign : NULL agent for uri "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    invoke-virtual {v3, v15, v14}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3291
    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3292
    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 3296
    :cond_5e
    new-instance v9, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v9, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3297
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 3298
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7b

    if-eq v10, v11, :cond_7b

    const/16 v13, 0x3e8

    if-eq v10, v13, :cond_7a

    .line 3301
    invoke-virtual {v1, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v13

    if-eqz v13, :cond_7b

    :cond_7a
    move v10, v11

    .line 3306
    :cond_7b
    invoke-virtual {v1, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v11

    .line 3307
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v13

    if-ne v13, v12, :cond_86

    const/4 v13, 0x1

    .line 3310
    :cond_86
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 3311
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v5

    if-eq v5, v12, :cond_b0

    .line 3313
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v11

    .line 3314
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "sign new userid-"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b6

    :cond_b0
    const-string/jumbo v5, "sign user id id not valid. Keeping same userid"

    .line 3316
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    :cond_b6
    :goto_b6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 3323
    :try_start_ba
    iget-object v5, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v17

    const/16 v20, 0x0

    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v16, v5

    move/from16 v18, v11

    move/from16 v19, v10

    invoke-virtual/range {v16 .. v21}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_fa

    .line 3324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING!!!! sign is NOT allowed for URI = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    invoke-virtual {v3, v15, v14}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v0, 0xf

    .line 3326
    invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3327
    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0
    :try_end_f6
    .catchall {:try_start_ba .. :try_end_f6} :catchall_21a

    .line 3330
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :cond_fa
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3334
    invoke-virtual {v8}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v5

    if-nez v5, :cond_113

    const-string v0, "agent is not bound"

    .line 3335
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    invoke-virtual {v3, v15, v14}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3337
    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3338
    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 3342
    :cond_113
    :try_start_113
    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mSignHelperFactory:Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;

    iget-object v5, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->supportSign:Z

    move-object/from16 v9, p3

    invoke-virtual {v3, v9, v5}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;->getInstance(Ljava/lang/String;Z)Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;

    move-result-object v3

    .line 3343
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;->isEncryptFunction()Z

    move-result v12

    .line 3344
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;->getProcessAlgorithm()Ljava/lang/String;

    move-result-object v5

    .line 3345
    invoke-virtual {v3, v2}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;->processInput([B)[B

    move-result-object v2

    if-nez v2, :cond_139

    const-string/jumbo v0, "signHelper.processInput fail."

    .line 3347
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 3348
    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0
    :try_end_138
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_113 .. :try_end_138} :catch_1fb

    return-object v0

    .line 3355
    :cond_139
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v9, "callerUid"

    .line 3356
    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "user_id"

    .line 3357
    invoke-virtual {v3, v7, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "ownerUid"

    .line 3358
    invoke-virtual {v3, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v10, "resource"

    .line 3359
    invoke-virtual {v3, v10, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3361
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sign KEY_RESOURCE_ID= "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, -0x2

    invoke-virtual {v3, v10, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sign KEY_USER_ID= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sign KEY_CALLER_UID= "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3365
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v2

    move-object v11, v5

    move-object v13, v3

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->sign(Ljava/lang/String;[BLjava/lang/String;ZLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1c5

    const-string v0, "ERROR: Null Response received from agent"

    .line 3367
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3368
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3369
    invoke-virtual {v0, v15, v14}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v2, 0xe

    .line 3370
    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3371
    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 3373
    :cond_1c5
    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 3374
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 3375
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sign Response from plugin:  error code = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1f6

    const-string v2, "ERROR: Empty data received for sign"

    .line 3378
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    invoke-virtual {v0, v15, v14}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v2, 0xd

    .line 3380
    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3381
    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 3383
    :cond_1f6
    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    :catch_1fb
    move-exception v0

    .line 3351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The exception occurs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 3352
    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    :catchall_21a
    move-exception v0

    .line 3330
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3331
    throw v0
.end method

.method public systemReady()V
    .registers 3

    const-string v0, "UcmService"

    const-string/jumbo v1, "systemReady is called..."

    .line 524
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->systemReady(Lcom/android/server/enterprise/storage/EdmStorageProvider;)V

    .line 526
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 527
    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsFbeEnabled:Z

    if-nez v0, :cond_1c

    .line 528
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->showODEProgressNotification()V

    :cond_1c
    return-void
.end method

.method public unwrapDek(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1799
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->unwrapDek(Ljava/lang/String;[BLcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0
.end method

.method public final unwrapDek(Ljava/lang/String;[BLcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "errorresponse"

    .line 1803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unwrapDek "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :try_start_1e
    const-string/jumbo v3, "unwrapDek"

    .line 1808
    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_24} :catch_b5

    if-eqz p1, :cond_a5

    const-string v3, ""

    .line 1815
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_30

    goto :goto_a5

    :cond_30
    if-nez p3, :cond_49

    const-string p3, "boot_test"

    .line 1822
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-ne v4, p3, :cond_41

    const-string p1, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    .line 1823
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p3

    goto :goto_49

    .line 1825
    :cond_41
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p3

    :cond_49
    :goto_49
    const/16 p1, 0xe

    if-nez p3, :cond_5a

    const-string p2, "no agent found for Source = com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    .line 1830
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1832
    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    .line 1835
    :cond_5a
    invoke-virtual {p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v3

    if-nez v3, :cond_6d

    const-string p2, "agent is not bound"

    .line 1836
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1838
    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    .line 1841
    :cond_6d
    invoke-virtual {p3, p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->unwrapDek([B)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_87

    const-string p1, "ERROR: Null Response received from agent"

    .line 1843
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/16 p2, 0xd

    .line 1845
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1846
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    .line 1848
    :cond_87
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 1849
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unwrapDek Response from plugin:  error code = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    :cond_a5
    :goto_a5
    const-string/jumbo p1, "uri is empty"

    .line 1816
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    .line 1817
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1818
    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    :catch_b5
    move-exception p1

    .line 1810
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xf

    .line 1811
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1812
    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0
.end method

.method public updateAgentList()V
    .registers 4

    .line 5372
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAgentList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5374
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    .line 5375
    iput v2, v1, Landroid/os/Message;->what:I

    .line 5376
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 5377
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final updateKeyguardConfig(I)V
    .registers 4

    const-string v0, "UcmService"

    const-string/jumbo v1, "updateKeyguardConfig"

    .line 6025
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6027
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_16

    const-string p1, "none"

    .line 6028
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_53

    :cond_16
    const-string/jumbo p0, "remove useless keyguard config file"

    .line 6029
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6030
    new-instance p0, Ljava/io/File;

    const-string p1, "/efs/sec_efs"

    const-string v1, "keyguardConfig"

    invoke-direct {p0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6031
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_31

    const-string p0, "keyguard config file does not exist"

    .line 6033
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    :cond_31
    const-string p1, "keyguard config file exist so delete it"

    .line 6035
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6036
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_39} :catch_3a

    goto :goto_53

    :catch_3a
    move-exception p0

    .line 6040
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    :goto_53
    return-void
.end method

.method public final updateMDMPolicies(I)V
    .registers 8

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateMDMPolicies userId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v0

    .line 790
    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidVendorName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string p0, "UCM keyguard is not enabled"

    .line 791
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 795
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UCM keyguard is enabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageOwnerForCurrentUser(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_60

    .line 800
    :try_start_42
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_46} :catch_47

    goto :goto_61

    :catch_47
    move-exception v2

    .line 802
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    move v2, v3

    :goto_61
    if-ne v2, v3, :cond_69

    const-string p0, "UCM Keyguard parsing failed"

    .line 807
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 811
    :cond_69
    invoke-virtual {p0, v0, p1, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPluginUsedInOtherUser(Ljava/lang/String;II)Z

    move-result p1

    if-nez p1, :cond_76

    .line 813
    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 814
    invoke-virtual {p0, p1, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->removeMDMPolicies(Ljava/lang/String;I)V

    :cond_76
    return-void
.end method

.method public final updateSystemUIMonitor()V
    .registers 3

    const/4 v0, 0x0

    .line 6180
    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v0

    .line 6181
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    if-eqz p0, :cond_28

    .line 6183
    :try_start_9
    invoke-interface {p0, v0}, Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;->setUCMKeyguardVendor(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_28

    :catch_d
    move-exception p0

    .line 6185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The exception occurs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UcmService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_28
    return-void
.end method

.method public final updateSystemUIMonitor(Ljava/lang/String;)V
    .registers 3

    .line 6170
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    if-eqz p0, :cond_23

    .line 6172
    :try_start_4
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;->setUCMKeyguardVendor(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_23

    :catch_8
    move-exception p0

    .line 6174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The exception occurs "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UcmService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    :goto_23
    return-void
.end method

.method public final verifyPassword(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 5331
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "verifyPassword : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UcmService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    if-eqz p1, :cond_36

    const-string v1, ""

    .line 5332
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    if-ne v2, p1, :cond_24

    goto :goto_36

    :cond_24
    if-eqz p2, :cond_2f

    .line 5337
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-ne v2, p1, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 p0, 0x0

    return p0

    :cond_2f
    :goto_2f
    const-string/jumbo p1, "password is empty"

    .line 5338
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_36
    :goto_36
    const-string/jumbo p1, "uri is empty"

    .line 5333
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public verifyPin(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifyPin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3792
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallerSystemUI()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemCaller()Z

    move-result v0

    if-nez v0, :cond_31

    const-string/jumbo v0, "verifyPin"

    .line 3793
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3795
    :cond_31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0x10

    const-string v3, "errorresponse"

    if-eqz p2, :cond_10e

    const-string v4, ""

    .line 3797
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v6, v5, :cond_47

    goto/16 :goto_10e

    :cond_47
    if-eqz p3, :cond_104

    .line 3803
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v6, v4, :cond_51

    goto/16 :goto_104

    :cond_51
    const-string v2, "boot_test"

    .line 3810
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v6, v2, :cond_60

    const-string v2, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    .line 3811
    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    goto :goto_68

    .line 3813
    :cond_60
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    :goto_68
    const/16 v4, 0xe

    if-nez v2, :cond_88

    .line 3817
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "no agent found for Source = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3818
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 3822
    :cond_88
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v5

    if-nez v5, :cond_97

    const-string p0, "agent is not bound"

    .line 3823
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 3828
    :cond_97
    invoke-virtual {v2, p1, p3, p4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->verifyPin(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_ad

    const-string p0, "ERROR: Null Response received from agent"

    .line 3830
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3831
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/16 p1, 0xd

    .line 3832
    invoke-virtual {p0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0

    :cond_ad
    const-string/jumbo p3, "state"

    const/4 p4, -0x1

    .line 3836
    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    const-string/jumbo v0, "remainCnt"

    .line 3837
    invoke-virtual {p1, v0, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p4

    .line 3838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOCK_STATE : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REMAIN_COUNT : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p4, 0x85

    if-ne p3, p4, :cond_fe

    const-string/jumbo p3, "state changed to blocked"

    .line 3842
    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3845
    :try_start_f2
    invoke-virtual {p0, p4, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sendStateChangeBroadcast(ILjava/lang/String;)V
    :try_end_f5
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_f9

    .line 3847
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_fe

    :catchall_f9
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3848
    throw p0

    .line 3850
    :cond_fe
    :goto_fe
    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->displayToastFromAgentResponse(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object p1

    :cond_104
    :goto_104
    const-string/jumbo p0, "pin is empty"

    .line 3804
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_10e
    :goto_10e
    const-string/jumbo p0, "uri is empty"

    .line 3798
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3799
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public verifyPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifyPuk : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3857
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallerSystemUI()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemCaller()Z

    move-result v0

    if-nez v0, :cond_29

    const-string/jumbo v0, "verifyPuk"

    .line 3858
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3860
    :cond_29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0x10

    const-string v3, "errorresponse"

    if-eqz p1, :cond_e7

    const-string v4, ""

    .line 3862
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v6, v5, :cond_3f

    goto/16 :goto_e7

    :cond_3f
    if-eqz p3, :cond_dd

    .line 3868
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v6, v4, :cond_49

    goto/16 :goto_dd

    :cond_49
    const-string v2, "boot_test"

    .line 3875
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v6, v2, :cond_58

    const-string v2, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    .line 3876
    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p0

    goto :goto_60

    .line 3878
    :cond_58
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p0

    :goto_60
    const/16 v2, 0xe

    if-nez p0, :cond_80

    .line 3882
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no agent found for Source = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3883
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 3888
    :cond_80
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result p1

    if-nez p1, :cond_8f

    const-string p0, "agent is not bound"

    .line 3889
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 3894
    :cond_8f
    invoke-virtual {p0, p2, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_a5

    const-string p0, "ERROR: Null Response received from agent"

    .line 3896
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3897
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/16 p1, 0xd

    .line 3898
    invoke-virtual {p0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0

    :cond_a5
    const-string/jumbo p1, "state"

    const/4 p2, -0x1

    .line 3902
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo p3, "remainCnt"

    .line 3903
    invoke-virtual {p0, p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 3904
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LOCK_STATE : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3905
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "REMAIN_COUNT : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_dd
    :goto_dd
    const-string/jumbo p0, "pin is empty"

    .line 3869
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3870
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_e7
    :goto_e7
    const-string/jumbo p0, "uri is empty"

    .line 3863
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3864
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final writePersistentAppletsInfoLocked()V
    .registers 12

    const-string v0, "applet"

    const-string v1, "applets"

    const-string v2, "UcmService"

    const-string/jumbo v3, "writePersistentAppletsInfoLocked is called..."

    .line 1051
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :try_start_c
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_ad

    .line 1054
    :try_start_12
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v5, "utf-8"

    .line 1055
    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1056
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    .line 1057
    invoke-interface {v4, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1058
    invoke-interface {v4, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1059
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_90

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1060
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1061
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    .line 1062
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Persistent  key-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    invoke-interface {v4, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "appletLocation"

    .line 1064
    iget-object v9, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    invoke-interface {v4, v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "pluginName"

    .line 1065
    iget-object v9, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    invoke-interface {v4, v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "adminId"

    .line 1066
    iget v9, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->adminId:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1067
    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    if-eqz v7, :cond_8c

    const-string v8, "aid"

    .line 1068
    invoke-virtual {p0, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->convertByteToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1070
    :cond_8c
    invoke-interface {v4, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_36

    .line 1072
    :cond_90
    invoke-interface {v4, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1073
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1074
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_9b
    .catchall {:try_start_12 .. :try_end_9b} :catchall_a1

    if-eqz v3, :cond_c6

    .line 1075
    :try_start_9d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_ad

    goto :goto_c6

    :catchall_a1
    move-exception p0

    if-eqz v3, :cond_ac

    .line 1053
    :try_start_a4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_a8

    goto :goto_ac

    :catchall_a8
    move-exception v0

    :try_start_a9
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_ac
    :goto_ac
    throw p0
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ad} :catch_ad

    :catch_ad
    move-exception p0

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The exception occurs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c6
    :goto_c6
    return-void
.end method
