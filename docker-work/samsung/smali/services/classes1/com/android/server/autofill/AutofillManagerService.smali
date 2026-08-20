.class public final Lcom/android/server/autofill/AutofillManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;,
        Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;,
        Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;,
        Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;,
        Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;,
        Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;,
        Lcom/android/server/autofill/AutofillManagerService$LocalService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "Lcom/android/server/autofill/AutofillManagerService;",
        "Lcom/android/server/autofill/AutofillManagerServiceImpl;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMPAT_PACKAGE_DELIMITER:C = ':'

.field public static final COMPAT_PACKAGE_URL_IDS_BLOCK_BEGIN:C = '['

.field public static final COMPAT_PACKAGE_URL_IDS_BLOCK_END:C = ']'

.field public static final COMPAT_PACKAGE_URL_IDS_DELIMITER:C = ','

.field public static final DEFAULT_AUGMENTED_AUTOFILL_REQUEST_TIMEOUT_MILLIS:I = 0x1388

.field public static final RECEIVER_BUNDLE_EXTRA_SESSIONS:Ljava/lang/String; = "sessions"

.field public static final SAMSUNGSMARTSUGGESTIONS_PACKAGENAME:Ljava/lang/String; = "com.samsung.android.smartsuggestions"

.field public static final TAG:Ljava/lang/String; = "AutofillManagerService"

.field public static final sLock:Ljava/lang/Object;

.field public static sPartitionMaxCount:I = 0xa
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLock"
        }
    .end annotation
.end field

.field public static sVisibleDatasetsMaxCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLock"
        }
    .end annotation
.end field


# instance fields
.field public final mAm:Landroid/app/ActivityManagerInternal;

.field public final mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

.field public final mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

.field public mAugmentedServiceIdleUnbindTimeoutMs:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mAugmentedServiceRequestTimeoutMs:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

.field public final mLocalService:Lcom/android/server/autofill/AutofillManagerService$LocalService;

.field public final mRequestsHistory:Landroid/util/LocalLog;

.field public mSupportedSmartSuggestionModes:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mUi:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final mUiLatencyHistory:Landroid/util/LocalLog;

.field public final mWtfHistory:Landroid/util/LocalLog;


# direct methods
.method public static synthetic $r8$lambda$81kv415RrD8dk5TEZqjV-RhW2bw(Ljava/util/ArrayList;Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->lambda$listSessions$3(Ljava/util/ArrayList;Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9r2KDub4kKNVE7HqMZz7nk_ffgw(Lcom/android/server/autofill/AutofillManagerService;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A8XmMUjtQnB8NTfwGXJAnCg7C7U(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/autofill/AutofillManagerService;->lambda$removeAllSessions$2(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AyqZ2jW6Nftltm6I_sbfMgHcrCc(Lcom/android/server/autofill/AutofillManagerService;ILjava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerService;->lambda$new$1(ILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$hUBRfbAHO1bqby68UGCijXssN7E(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/autofill/AutofillManagerService;->lambda$reset$4(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAm(Lcom/android/server/autofill/AutofillManagerService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAutofillCompatState(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisabledInfoCache(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestsHistory(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportedSmartSuggestionModes(Lcom/android/server/autofill/AutofillManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mSupportedSmartSuggestionModes:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUi(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/ui/AutoFillUI;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUiLatencyHistory(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUiLatencyHistory:Landroid/util/LocalLog;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWtfHistory(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mWtfHistory:Landroid/util/LocalLog;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetAllowedCompatModePackagesFromDeviceConfig(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getAllowedCompatModePackagesFromDeviceConfig()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;[Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;[Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsPartitionMaxCount()I
    .registers 1

    sget v0, Lcom/android/server/autofill/AutofillManagerService;->sPartitionMaxCount:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsVisibleDatasetsMaxCount()I
    .registers 1

    sget v0, Lcom/android/server/autofill/AutofillManagerService;->sVisibleDatasetsMaxCount:I

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 120
    const-class v0, Lcom/android/server/autofill/AutofillManagerService;

    sput-object v0, Lcom/android/server/autofill/AutofillManagerService;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 204
    new-instance v0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;

    const-string v1, "autofill_service"

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/SecureSettingsServiceNameResolver;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v1, "no_autofill"

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 158
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    .line 159
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 160
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mWtfHistory:Landroid/util/LocalLog;

    .line 162
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    invoke-direct {v0}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    .line 163
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    invoke-direct {v0}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 165
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/AutofillManagerService$LocalService;-><init>(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/server/autofill/AutofillManagerService$LocalService-IA;)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLocalService:Lcom/android/server/autofill/AutofillManagerService$LocalService;

    .line 168
    new-instance v3, Lcom/android/server/autofill/AutofillManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/autofill/AutofillManagerService$1;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    iput-object v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    invoke-direct {v0}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    .line 207
    new-instance v0, Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 208
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    .line 211
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    const-string v2, "autofill"

    .line 210
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->setLogLevelFromSettings()V

    .line 215
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->setMaxPartitionsFromSettings()V

    .line 216
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->setMaxVisibleDatasetsFromSettings()V

    .line 217
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->setDeviceConfigProperties()V

    .line 219
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 220
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v7, 0x2

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 224
    new-instance p1, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040316

    invoke-direct {p1, v0, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 226
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    invoke-virtual {p1, v0}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->setOnTemporaryServiceNameChangedCallback(Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;)V

    .line 229
    iget p1, p0, Lcom/android/server/autofill/AutofillManagerService;->mSupportedSmartSuggestionModes:I

    if-eqz p1, :cond_da

    .line 230
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getSupportedUsers()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 231
    :goto_b5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_da

    .line 232
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 234
    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 237
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 238
    invoke-virtual {v3, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 239
    invoke-virtual {v4, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->isTemporary(I)Z

    move-result v4

    .line 237
    invoke-static {v2, v1, v3, v4}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->-$$Nest$msetServiceInfo(Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;ILjava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    :cond_da
    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/server/autofill/AutofillManagerService;)Z
    .registers 1

    .line 115
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    return p0
.end method

.method public static synthetic access$1700(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2600(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2700(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2800(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2900(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3000(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3200(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3300(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3400(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3500(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3600(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3700(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3800(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3900(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4000(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$4100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4200(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$4300(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4400(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$4500(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4600(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$4700(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4800(Lcom/android/server/autofill/AutofillManagerService;I)Z
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$4900(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$5000(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$5100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$5200(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$5300(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$5400(Lcom/android/server/autofill/AutofillManagerService;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static getAllowedCompatModePackages(Ljava/lang/String;)Ljava/util/Map;
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 811
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 815
    :cond_8
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 816
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x3a

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 817
    invoke-virtual {v2, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 818
    :goto_17
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_df

    .line 819
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5b

    .line 820
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2d

    move-object v7, v1

    goto/16 :goto_ca

    .line 827
    :cond_2d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const-string v6, "AutofillManagerService"

    const/16 v7, 0x5d

    if-eq v5, v7, :cond_67

    .line 829
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring entry \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' on \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'because it does not end on \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_67
    const/4 v5, 0x0

    .line 834
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 835
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v4, v4, 0x1

    .line 837
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 838
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_b1

    .line 839
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": block:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": urls:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_b1
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x2c

    invoke-direct {v3, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 844
    invoke-virtual {v3, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 845
    :goto_bb
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 846
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 847
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bb

    :cond_c9
    move-object v3, v5

    :goto_ca
    if-nez v7, :cond_d1

    .line 851
    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    .line 853
    :cond_d1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 854
    invoke-interface {v7, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 855
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    :cond_df
    return-object v0
.end method

.method public static getPartitionMaxCount()I
    .registers 2

    .line 865
    sget-object v0, Lcom/android/server/autofill/AutofillManagerService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 866
    :try_start_3
    sget v1, Lcom/android/server/autofill/AutofillManagerService;->sPartitionMaxCount:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 867
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static getVisibleDatasetsMaxCount()I
    .registers 2

    .line 874
    sget-object v0, Lcom/android/server/autofill/AutofillManagerService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 875
    :try_start_3
    sget v1, Lcom/android/server/autofill/AutofillManagerService;->sVisibleDatasetsMaxCount:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 876
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static synthetic lambda$listSessions$3(Ljava/util/ArrayList;Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .registers 2

    .line 435
    invoke-virtual {p1, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->listSessionsLocked(Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 212
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->onDeviceConfigChange(Ljava/util/Set;)V

    return-void
.end method

.method private synthetic lambda$new$1(ILjava/lang/String;Z)V
    .registers 4

    .line 227
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerService;->onAugmentedServiceNameChanged(ILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$removeAllSessions$2(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .registers 1

    .line 409
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->forceRemoveAllSessionsLocked()V

    return-void
.end method

.method public static synthetic lambda$reset$4(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .registers 1

    .line 453
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroyLocked()V

    return-void
.end method


# virtual methods
.method public final addCompatibilityModeRequestsLocked(Lcom/android/server/autofill/AutofillManagerServiceImpl;I)V
    .registers 13

    .line 721
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->reset(I)V

    .line 723
    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getCompatibilityPackagesLocked()Landroid/util/ArrayMap;

    move-result-object p1

    if-eqz p1, :cond_60

    .line 724
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_60

    .line 728
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getAllowedCompatModePackages()Ljava/util/Map;

    move-result-object v0

    .line 729
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_60

    .line 731
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    if-eqz v0, :cond_47

    .line 732
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_47

    .line 736
    :cond_2d
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_5d

    .line 738
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    .line 739
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, [Ljava/lang/String;

    move v9, p2

    .line 738
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->addCompatibilityModeRequest(Ljava/lang/String;J[Ljava/lang/String;I)V

    goto :goto_5d

    .line 733
    :cond_47
    :goto_47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring not allowed compat package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutofillManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_60
    :goto_60
    return-void
.end method

.method public calculateScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 14

    .line 617
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 619
    new-instance v0, Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 620
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, -0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/FieldClassificationStrategy;-><init>(Landroid/content/Context;I)V

    const/4 p0, 0x1

    new-array v1, p0, [Landroid/view/autofill/AutofillValue;

    .line 622
    invoke-static {p2}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-array v3, p0, [Ljava/lang/String;

    aput-object p3, v3, v2

    const/4 p0, 0x0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p4

    move-object v2, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/autofill/FieldClassificationStrategy;->calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public enforceCallingPermissionForManagement()V
    .registers 3

    .line 361
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.MANAGE_AUTO_FILL"

    const-string v1, "AutofillManagerService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getAllowedCompatModePackages()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 765
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getAllowedCompatModePackagesFromDeviceConfig()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/autofill/AutofillManagerService;->getAllowedCompatModePackages(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getAllowedCompatModePackagesFromDeviceConfig()Ljava/lang/String;
    .registers 4

    const-string v0, "autofill"

    const-string v1, "compat_mode_allowed_packages"

    const/4 v2, 0x0

    .line 745
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 749
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    return-object v0

    .line 754
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getAllowedCompatModePackagesFromSettings()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAllowedCompatModePackagesFromSettings()Ljava/lang/String;
    .registers 2

    .line 759
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "autofill_compat_mode_allowed_packages"

    .line 758
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFullScreenMode()Ljava/lang/Boolean;
    .registers 1

    .line 628
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 629
    sget-object p0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getLogLevel()I
    .registers 2

    .line 498
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 500
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 501
    :try_start_6
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    monitor-exit p0

    return v0

    .line 502
    :cond_d
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_14
    const/4 v0, 0x0

    .line 503
    monitor-exit p0

    return v0

    :catchall_17
    move-exception v0

    .line 504
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public getMaxPartitions()I
    .registers 2

    .line 509
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 511
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 512
    :try_start_6
    sget v0, Lcom/android/server/autofill/AutofillManagerService;->sPartitionMaxCount:I

    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    .line 513
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getMaxVisibleDatasets()I
    .registers 2

    .line 543
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 545
    sget-object p0, Lcom/android/server/autofill/AutofillManagerService;->sLock:Ljava/lang/Object;

    monitor-enter p0

    .line 546
    :try_start_6
    sget v0, Lcom/android/server/autofill/AutofillManagerService;->sVisibleDatasetsMaxCount:I

    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    .line 547
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getServiceSettingsProperty()Ljava/lang/String;
    .registers 1

    const-string p0, "autofill_service"

    return-object p0
.end method

.method public getSupportedSmartSuggestionModesLocked()I
    .registers 1

    .line 382
    iget p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mSupportedSmartSuggestionModes:I

    return p0
.end method

.method public final handleInputMethodSwitch(I)V
    .registers 3

    .line 298
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz p0, :cond_e

    .line 301
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->onSwitchInputMethod()V

    .line 303
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public isDefaultAugmentedServiceEnabled(I)Z
    .registers 2

    .line 662
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 663
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-virtual {p0, p1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->isDefaultServiceEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isInstantServiceAllowed()Z
    .registers 1

    .line 394
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    return p0
.end method

.method public isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z
    .registers 2

    .line 372
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->isFull()Z

    move-result p0

    if-nez p0, :cond_f

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->isManagedProfile()Z

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

.method public listSessions(ILcom/android/internal/os/IResultReceiver;)V
    .registers 7

    const-string v0, "AutofillManagerService"

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "listSessions() for userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 425
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 426
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 428
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, -0x1

    if-eq p1, v3, :cond_36

    .line 430
    :try_start_2a
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz p0, :cond_3e

    .line 432
    invoke-virtual {p0, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->listSessionsLocked(Ljava/util/ArrayList;)V

    goto :goto_3e

    .line 435
    :cond_36
    new-instance p1, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda1;

    invoke-direct {p1, v1}, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    .line 437
    :cond_3e
    :goto_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_2a .. :try_end_3f} :catchall_4a

    const-string/jumbo p0, "sessions"

    .line 439
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 p0, 0x0

    .line 441
    :try_start_46
    invoke-interface {p2, p0, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_49} :catch_49

    :catch_49
    return-void

    :catchall_4a
    move-exception p0

    .line 437
    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method public logRequestLocked(Ljava/lang/String;)V
    .registers 2

    .line 389
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public newServiceLocked(IZ)Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .registers 14

    .line 341
    new-instance v10, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mUiLatencyHistory:Landroid/util/LocalLog;

    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService;->mWtfHistory:Landroid/util/LocalLog;

    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v7, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    iget-object v9, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    move-object v0, v10

    move-object v1, p0

    move v5, p1

    move v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/autofill/AutofillManagerServiceImpl;-><init>(Lcom/android/server/autofill/AutofillManagerService;Ljava/lang/Object;Landroid/util/LocalLog;Landroid/util/LocalLog;ILcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;ZLcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;)V

    return-object v10
.end method

.method public bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 3

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->newServiceLocked(IZ)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object p0

    return-object p0
.end method

.method public final onAugmentedServiceNameChanged(ILjava/lang/String;Z)V
    .registers 5

    .line 325
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->-$$Nest$msetServiceInfo(Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;ILjava/lang/String;Z)V

    .line 326
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 327
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p3

    check-cast p3, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-nez p3, :cond_14

    .line 331
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    goto :goto_17

    .line 333
    :cond_14
    invoke-virtual {p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateRemoteAugmentedAutofillService()V

    .line 335
    :goto_17
    monitor-exit p2

    return-void

    :catchall_19
    move-exception p0

    monitor-exit p2
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final onDeviceConfigChange(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 307
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 308
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_6c

    goto :goto_48

    :sswitch_1c
    const-string/jumbo v2, "smart_suggestion_supported_modes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_48

    :cond_26
    const/4 v1, 0x3

    goto :goto_48

    :sswitch_28
    const-string v2, "compat_mode_allowed_packages"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_48

    :cond_31
    const/4 v1, 0x2

    goto :goto_48

    :sswitch_33
    const-string v2, "augmented_service_request_timeout"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_48

    :cond_3c
    const/4 v1, 0x1

    goto :goto_48

    :sswitch_3e
    const-string v2, "augmented_service_idle_unbind_timeout"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    goto :goto_48

    :cond_47
    const/4 v1, 0x0

    :goto_48
    packed-switch v1, :pswitch_data_7e

    .line 318
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring change on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 315
    :pswitch_62
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->updateCachedServices()V

    goto :goto_4

    .line 312
    :pswitch_66
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->setDeviceConfigProperties()V

    goto :goto_4

    :cond_6a
    return-void

    nop

    :sswitch_data_6c
    .sparse-switch
        -0x5c32f116 -> :sswitch_3e
        -0x3adc2628 -> :sswitch_33
        0x45a52bc3 -> :sswitch_28
        0x65df5c5a -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_66
        :pswitch_66
        :pswitch_62
        :pswitch_66
    .end packed-switch
.end method

.method public onServiceEnabledLocked(Lcom/android/server/autofill/AutofillManagerServiceImpl;I)V
    .registers 3

    .line 356
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->addCompatibilityModeRequestsLocked(Lcom/android/server/autofill/AutofillManagerServiceImpl;I)V

    return-void
.end method

.method public bridge synthetic onServiceEnabledLocked(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .registers 3

    .line 115
    check-cast p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->onServiceEnabledLocked(Lcom/android/server/autofill/AutofillManagerServiceImpl;I)V

    return-void
.end method

.method public onServiceRemoved(Lcom/android/server/autofill/AutofillManagerServiceImpl;I)V
    .registers 3

    .line 348
    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroyLocked()V

    .line 349
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->remove(I)V

    .line 350
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    invoke-virtual {p0, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->removeCompatibilityModeRequests(I)V

    return-void
.end method

.method public bridge synthetic onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .registers 3

    .line 115
    check-cast p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->onServiceRemoved(Lcom/android/server/autofill/AutofillManagerServiceImpl;I)V

    return-void
.end method

.method public onSettingsChanged(ILjava/lang/String;)V
    .registers 6

    .line 268
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_72

    goto :goto_38

    :sswitch_c
    const-string/jumbo v0, "selected_input_method_subtype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_38

    :cond_16
    const/4 v1, 0x3

    goto :goto_38

    :sswitch_18
    const-string v0, "autofill_max_partitions_size"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_38

    :cond_21
    const/4 v1, 0x2

    goto :goto_38

    :sswitch_23
    const-string v0, "autofill_logging_level"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_38

    :cond_2c
    const/4 v1, 0x1

    goto :goto_38

    :sswitch_2e
    const-string v0, "autofill_max_visible_datasets"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    packed-switch v1, :pswitch_data_84

    const-string v0, "AutofillManagerService"

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected property ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "); updating cache instead"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 284
    :try_start_59
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 285
    monitor-exit p2

    goto :goto_70

    :catchall_5e
    move-exception p0

    monitor-exit p2
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_5e

    throw p0

    .line 279
    :pswitch_61
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->handleInputMethodSwitch(I)V

    goto :goto_70

    .line 273
    :pswitch_65
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->setMaxPartitionsFromSettings()V

    goto :goto_70

    .line 270
    :pswitch_69
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->setLogLevelFromSettings()V

    goto :goto_70

    .line 276
    :pswitch_6d
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->setMaxVisibleDatasetsFromSettings()V

    :goto_70
    return-void

    nop

    :sswitch_data_72
    .sparse-switch
        -0x6e3577f0 -> :sswitch_2e
        -0x4d71a329 -> :sswitch_23
        -0x3e858531 -> :sswitch_18
        0x472be455 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_69
        :pswitch_65
        :pswitch_61
    .end packed-switch
.end method

.method public onStart()V
    .registers 3

    .line 366
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    const-string v1, "autofill"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 367
    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mLocalService:Lcom/android/server/autofill/AutofillManagerService$LocalService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 377
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_b

    const-string p1, "AutofillManagerService"

    const-string p2, "Hiding UI when user switched"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_b
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method public registerForExtraSettingsChanges(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 5

    const-string p0, "autofill_logging_level"

    .line 252
    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string p0, "autofill_max_partitions_size"

    .line 255
    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string p0, "autofill_max_visible_datasets"

    .line 258
    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo p0, "selected_input_method_subtype"

    .line 261
    invoke-static {p0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public removeAllSessions(ILcom/android/internal/os/IResultReceiver;)V
    .registers 6

    const-string v0, "AutofillManagerService"

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeAllSessions() for userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 402
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2c

    .line 404
    :try_start_20
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz p0, :cond_34

    .line 406
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->forceRemoveAllSessionsLocked()V

    goto :goto_34

    .line 409
    :cond_2c
    new-instance p1, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    .line 411
    :cond_34
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_20 .. :try_end_35} :catchall_3f

    const/4 p0, 0x0

    .line 414
    :try_start_36
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p2, p0, p1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void

    :catchall_3f
    move-exception p0

    .line 411
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public requestSavedPasswordCount(ILcom/android/internal/os/IResultReceiver;)Z
    .registers 5

    .line 696
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 697
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 698
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz p0, :cond_14

    .line 700
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->requestSavedPasswordCount(Lcom/android/internal/os/IResultReceiver;)V

    const/4 p0, 0x1

    .line 701
    monitor-exit v0

    return p0

    .line 702
    :cond_14
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_2f

    const-string p0, "AutofillManagerService"

    .line 703
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestSavedPasswordCount(): no service for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_2f
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public reset()V
    .registers 3

    const-string v0, "AutofillManagerService"

    const-string/jumbo v1, "reset()"

    .line 449
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 452
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_e
    new-instance v1, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    .line 454
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->clearCacheLocked()V

    .line 455
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public resetTemporaryAugmentedAutofillService(I)V
    .registers 2

    .line 656
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 657
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-virtual {p0, p1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->resetTemporaryService(I)V

    return-void
.end method

.method public final send(Lcom/android/internal/os/IResultReceiver;I)V
    .registers 3

    const/4 p0, 0x0

    .line 770
    :try_start_1
    invoke-interface {p1, p2, p0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_1c

    :catch_5
    move-exception p0

    .line 772
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error async reporting result to client: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutofillManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    return-void
.end method

.method public final send(Lcom/android/internal/os/IResultReceiver;II)V
    .registers 4

    .line 802
    :try_start_0
    invoke-static {p3}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(I)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_1f

    :catch_8
    move-exception p0

    .line 804
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error async reporting result to client: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutofillManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method

.method public final send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;)V
    .registers 3

    const/4 p0, 0x0

    .line 778
    :try_start_1
    invoke-interface {p1, p0, p2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_1c

    :catch_5
    move-exception p0

    .line 780
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error async reporting result to client: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutofillManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    return-void
.end method

.method public final send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V
    .registers 3

    .line 793
    invoke-static {p2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;)V

    return-void
.end method

.method public final send(Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V
    .registers 3

    .line 785
    invoke-static {p2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;)V

    return-void
.end method

.method public final send(Lcom/android/internal/os/IResultReceiver;Z)V
    .registers 3

    .line 797
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;I)V

    return-void
.end method

.method public final send(Lcom/android/internal/os/IResultReceiver;[Ljava/lang/String;)V
    .registers 3

    .line 789
    invoke-static {p2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;)V

    return-void
.end method

.method public setDefaultAugmentedServiceEnabled(IZ)Z
    .registers 6

    .line 668
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultAugmentedServiceEnabled() for userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 671
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_25
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz v1, :cond_56

    .line 674
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 675
    invoke-virtual {v2, p1, p2}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->setDefaultServiceEnabled(IZ)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 677
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateRemoteAugmentedAutofillService()V

    const/4 p0, 0x1

    .line 678
    monitor-exit v0

    return p0

    .line 680
    :cond_3b
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p0, :cond_56

    const-string p0, "AutofillManagerService"

    .line 681
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDefaultAugmentedServiceEnabled(): already "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_56
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_59
    move-exception p0

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_25 .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public final setDeviceConfigProperties()V
    .registers 5

    .line 575
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "autofill"

    const-string v2, "augmented_service_idle_unbind_timeout"

    const/4 v3, 0x0

    .line 576
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceIdleUnbindTimeoutMs:I

    const-string v1, "autofill"

    const-string v2, "augmented_service_request_timeout"

    const/16 v3, 0x1388

    .line 580
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceRequestTimeoutMs:I

    const-string v1, "autofill"

    const-string/jumbo v2, "smart_suggestion_supported_modes"

    const/4 v3, 0x1

    .line 584
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mSupportedSmartSuggestionModes:I

    const v1, 0xea60

    .line 591
    iput v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceIdleUnbindTimeoutMs:I

    .line 595
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v1, :cond_60

    .line 596
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDeviceConfigProperties(): augmentedIdleTimeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceIdleUnbindTimeoutMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", augmentedRequestTimeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceRequestTimeoutMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", smartSuggestionMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mSupportedSmartSuggestionModes:I

    .line 600
    invoke-static {p0}, Landroid/view/autofill/AutofillManager;->getSmartSuggestionModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 596
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_60
    monitor-exit v0

    return-void

    :catchall_62
    move-exception p0

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_62

    throw p0
.end method

.method public setFullScreenMode(Ljava/lang/Boolean;)V
    .registers 2

    .line 634
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 635
    sput-object p1, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    return-void
.end method

.method public setLogLevel(I)V
    .registers 5

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLogLevel(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 463
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 465
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "autofill_logging_level"

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_2f

    .line 468
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 469
    throw p0
.end method

.method public final setLogLevelFromSettings()V
    .registers 7

    .line 474
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_logging_level"

    sget v2, Landroid/view/autofill/AutofillManager;->DEFAULT_LOGGING_LEVEL:I

    .line 473
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_34

    const/4 v3, 0x4

    if-ne v0, v3, :cond_19

    move v2, v1

    goto :goto_35

    :cond_19
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1d

    goto :goto_35

    :cond_1d
    const-string v1, "AutofillManagerService"

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLogLevelFromSettings(): invalid level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    move v1, v2

    :goto_35
    if-nez v1, :cond_3b

    .line 487
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_62

    :cond_3b
    const-string v3, "AutofillManagerService"

    .line 488
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setLogLevelFromSettings(): level="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", debug="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", verbose="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_62
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_65
    invoke-virtual {p0, v1, v2}, Lcom/android/server/autofill/AutofillManagerService;->setLoggingLevelsLocked(ZZ)V

    .line 493
    monitor-exit v0

    return-void

    :catchall_6a
    move-exception p0

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public final setLoggingLevelsLocked(ZZ)V
    .registers 3

    .line 710
    sput-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 711
    sput-boolean p1, Landroid/view/autofill/Helper;->sDebug:Z

    .line 712
    iput-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 714
    sput-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 715
    sput-boolean p2, Landroid/view/autofill/Helper;->sVerbose:Z

    .line 716
    iput-boolean p2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    return-void
.end method

.method public setMaxPartitions(I)V
    .registers 5

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaxPartitions(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 521
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 523
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "autofill_max_partitions_size"

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_2f

    .line 526
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 527
    throw p0
.end method

.method public final setMaxPartitionsFromSettings()V
    .registers 4

    .line 531
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "autofill_max_partitions_size"

    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 534
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2b

    const-string v0, "AutofillManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxPartitionsFromSettings(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_2b
    sget-object v0, Lcom/android/server/autofill/AutofillManagerService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    :try_start_2e
    sput p0, Lcom/android/server/autofill/AutofillManagerService;->sPartitionMaxCount:I

    .line 538
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_32

    throw p0
.end method

.method public setMaxVisibleDatasets(I)V
    .registers 5

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaxVisibleDatasets(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 555
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 557
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "autofill_max_visible_datasets"

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_2f

    .line 560
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 561
    throw p0
.end method

.method public final setMaxVisibleDatasetsFromSettings()V
    .registers 4

    .line 565
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "autofill_max_visible_datasets"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 568
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2a

    const-string v0, "AutofillManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxVisibleDatasetsFromSettings(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_2a
    sget-object v0, Lcom/android/server/autofill/AutofillManagerService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    :try_start_2d
    sput p0, Lcom/android/server/autofill/AutofillManagerService;->sVisibleDatasetsMaxCount:I

    .line 571
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_31

    throw p0
.end method

.method public setTemporaryAugmentedAutofillService(ILjava/lang/String;I)V
    .registers 7

    .line 641
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTemporaryAugmentedAutofillService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 645
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x1d4c0

    if-gt p3, v0, :cond_3e

    .line 651
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->setTemporaryService(ILjava/lang/String;I)V

    return-void

    .line 647
    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Max duration is 120000 (called with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateCachedServices()V
    .registers 4

    .line 606
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getSupportedUsers()Ljava/util/List;

    move-result-object v0

    .line 607
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 608
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 609
    :try_start_17
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 610
    monitor-exit v2

    goto :goto_8

    :catchall_1e
    move-exception p0

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_1e

    throw p0

    :cond_21
    return-void
.end method
