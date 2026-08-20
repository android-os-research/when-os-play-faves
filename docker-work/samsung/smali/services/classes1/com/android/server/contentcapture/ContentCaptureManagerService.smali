.class public final Lcom/android/server/contentcapture/ContentCaptureManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "ContentCaptureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;,
        Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;,
        Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;,
        Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "Lcom/android/server/contentcapture/ContentCaptureManagerService;",
        "Lcom/android/server/contentcapture/ContentCapturePerUserService;",
        ">;"
    }
.end annotation


# static fields
.field public static final DATA_SHARE_BYTE_BUFFER_LENGTH:I = 0x400

.field public static final EVENT__DATA_SHARE_ERROR_CONCURRENT_REQUEST:I = 0xe

.field public static final EVENT__DATA_SHARE_ERROR_TIMEOUT_INTERRUPTED:I = 0xf

.field public static final EVENT__DATA_SHARE_WRITE_FINISHED:I = 0x9

.field public static final MAX_CONCURRENT_FILE_SHARING_REQUESTS:I = 0xa

.field public static final MAX_DATA_SHARE_FILE_DESCRIPTORS_TTL_MS:I = 0x493e0

.field public static final MAX_TEMP_SERVICE_DURATION_MS:I = 0x1d4c0

.field public static final RECEIVER_BUNDLE_EXTRA_SESSIONS:Ljava/lang/String; = "sessions"

.field public static final TAG:Ljava/lang/String; = "ContentCaptureManagerService"


# instance fields
.field public mAm:Landroid/app/ActivityManagerInternal;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/contentcapture/IContentCaptureOptionsCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mContentCaptureManagerServiceStub:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

.field public final mDataShareExecutor:Ljava/util/concurrent/Executor;

.field public mDevCfgIdleFlushingFrequencyMs:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mDevCfgIdleUnbindTimeoutMs:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mDevCfgLogHistorySize:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mDevCfgLoggingLevel:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mDevCfgMaxBufferSize:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mDevCfgTextChangeFlushingFrequencyMs:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mDisabledByDeviceConfig:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mDisabledBySettings:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

.field public final mHandler:Landroid/os/Handler;

.field public final mLocalService:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

.field public final mPackagesWithShareRequests:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mRequestsHistory:Landroid/util/LocalLog;


# direct methods
.method public static synthetic $r8$lambda$AUQpV4rFj28-A8SQEhydAfHG1uY(Ljava/util/ArrayList;Lcom/android/server/contentcapture/ContentCapturePerUserService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->lambda$listSessions$2(Ljava/util/ArrayList;Lcom/android/server/contentcapture/ContentCapturePerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FDuZ1p7y-i2aiPAsfebLOPHm-V0(Ljava/lang/String;Landroid/content/ContentCaptureOptions;Landroid/view/contentcapture/IContentCaptureOptionsCallback;Ljava/lang/Object;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->lambda$updateOptions$3(Ljava/lang/String;Landroid/content/ContentCaptureOptions;Landroid/view/contentcapture/IContentCaptureOptionsCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VqglsIyEwsKUp0orkRVmJSRKCxQ(Lcom/android/server/contentcapture/ContentCapturePerUserService;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->lambda$destroySessions$1(Lcom/android/server/contentcapture/ContentCapturePerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dPqKFRjm5sLLx0XxUXYCLi_rDuk(Lcom/android/server/contentcapture/ContentCaptureManagerService;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDataShareExecutor(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDataShareExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisabledByDeviceConfig(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackagesWithShareRequests(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mPackagesWithShareRequests:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$massertCalledByServiceLocked(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByServiceLocked(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetAmInternal(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getAmInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misCalledByServiceLocked(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isCalledByServiceLocked(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDefaultServiceLocked(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isDefaultServiceLocked(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDisabledBySettingsLocked(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isDisabledBySettingsLocked(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mthrowsSecurityException(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->throwsSecurityException(Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 189
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x104031a

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v1, "no_content_capture"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 142
    new-instance p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService-IA;)V

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLocalService:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 144
    new-instance p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

    invoke-direct {p1, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentCaptureManagerServiceStub:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

    .line 176
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDataShareExecutor:Ljava/util/concurrent/Executor;

    .line 177
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mHandler:Landroid/os/Handler;

    .line 179
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mPackagesWithShareRequests:Ljava/util/Set;

    .line 182
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 185
    new-instance p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    invoke-direct {p1, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 194
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    const-string v3, "content_capture"

    .line 193
    invoke-static {v3, p1, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setDeviceConfigProperties()V

    .line 198
    iget p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    if-lez p1, :cond_84

    .line 199
    iget-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p1, :cond_7a

    sget-object p1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "log history size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_7a
    new-instance p1, Landroid/util/LocalLog;

    iget v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    invoke-direct {p1, v0}, Landroid/util/LocalLog;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    goto :goto_a2

    .line 202
    :cond_84
    iget-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p1, :cond_a0

    .line 203
    sget-object p1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disabled log history because size is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_a0
    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    .line 208
    :goto_a2
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getSupportedUsers()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 209
    :goto_a7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_fc

    .line 210
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 211
    invoke-virtual {p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isEnabledBySettings(I)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_e8

    .line 214
    sget-object v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " disabled by settings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    if-nez v3, :cond_e3

    .line 216
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    .line 218
    :cond_e3
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 221
    :cond_e8
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    .line 222
    invoke-interface {v4, v1}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    .line 223
    invoke-interface {v5, v1}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result v5

    .line 221
    invoke-static {v3, v1, v4, v5}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->-$$Nest$msetServiceInfo(Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;ILjava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a7

    :cond_fc
    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/infra/ServiceNameResolver;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/infra/ServiceNameResolver;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2700(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/infra/ServiceNameResolver;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    return-object p0
.end method

.method public static synthetic access$2800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$destroySessions$1(Lcom/android/server/contentcapture/ContentCapturePerUserService;)V
    .registers 1

    .line 515
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->destroySessionsLocked()V

    return-void
.end method

.method public static synthetic lambda$listSessions$2(Ljava/util/ArrayList;Lcom/android/server/contentcapture/ContentCapturePerUserService;)V
    .registers 2

    .line 541
    invoke-virtual {p1, p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->listSessionsLocked(Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->onDeviceConfigChange(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic lambda$updateOptions$3(Ljava/lang/String;Landroid/content/ContentCaptureOptions;Landroid/view/contentcapture/IContentCaptureOptionsCallback;Ljava/lang/Object;)V
    .registers 4

    .line 555
    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 557
    :try_start_6
    invoke-interface {p2, p1}, Landroid/view/contentcapture/IContentCaptureOptionsCallback;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_21

    :catch_a
    move-exception p0

    .line 559
    sget-object p1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to send setContentCaptureOptions(): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    return-void
.end method


# virtual methods
.method public assertCalledByPackageOwner(Ljava/lang/String;)V
    .registers 6

    .line 313
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->assertCalledByPackageOwner(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    .line 315
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 318
    const-class v2, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 319
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 320
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionManagerInternal;->getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    move-result-object v2

    .line 322
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    move-result v3

    if-eq v1, v3, :cond_1f

    .line 323
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    return-void

    .line 328
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 330
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getOwnerUid()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_41

    .line 332
    array-length v1, p0

    const/4 v2, 0x0

    :goto_33
    if-ge v2, v1, :cond_41

    aget-object v3, p0, v2

    .line 333
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    return-void

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 337
    :cond_41
    throw v0
.end method

.method public final assertCalledByServiceLocked(Ljava/lang/String;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 576
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isCalledByServiceLocked(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 577
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "caller is not user\'s ContentCapture service"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public destroySessions(ILcom/android/internal/os/IResultReceiver;)V
    .registers 6

    .line 505
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySessions() for userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->enforceCallingPermissionForManagement()V

    .line 508
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2b

    .line 510
    :try_start_1f
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    if-eqz p0, :cond_33

    .line 512
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->destroySessionsLocked()V

    goto :goto_33

    .line 515
    :cond_2b
    new-instance p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    .line 517
    :cond_33
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_3e

    const/4 p0, 0x0

    .line 520
    :try_start_35
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p2, p0, p1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3d} :catch_3d

    :catch_3d
    return-void

    :catchall_3e
    move-exception p0

    .line 517
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 651
    invoke-super {p0, p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Users disabled by Settings: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 656
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "DeviceConfig Settings: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "disabled: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 658
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "loggingLevel: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 659
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "maxBufferSize: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgMaxBufferSize:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 660
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "idleFlushingFrequencyMs: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 661
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleFlushingFrequencyMs:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 662
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "textChangeFlushingFrequencyMs: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 663
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgTextChangeFlushingFrequencyMs:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 664
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "logHistorySize: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 665
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "idleUnbindTimeoutMs: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 666
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleUnbindTimeoutMs:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 667
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "Global Options:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final enableTimeout()Z
    .registers 2

    .line 414
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.feature.samsung_experience_mobile_lite"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public enforceCallingPermissionForManagement()V
    .registers 3

    .line 276
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    const-string v1, "android.permission.MANAGE_CONTENT_CAPTURE"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getAmInternal()Landroid/app/ActivityManagerInternal;
    .registers 3

    .line 566
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 567
    :try_start_3
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    if-nez v1, :cond_11

    .line 568
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    .line 570
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_15

    .line 571
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    return-object p0

    :catchall_15
    move-exception p0

    .line 570
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getMaximumTemporaryServiceDurationMs()I
    .registers 1

    const p0, 0x1d4c0

    return p0
.end method

.method public final isCalledByServiceLocked(Ljava/lang/String;)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 583
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 584
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 585
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v2, v0}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ": called by UID "

    const/4 v4, 0x0

    if-nez v2, :cond_33

    .line 587
    sget-object p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but there\'s no service set for user "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 592
    :cond_33
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_53

    .line 594
    sget-object p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": invalid service name: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 598
    :cond_53
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 603
    :try_start_5f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_67
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5f .. :try_end_67} :catch_8b

    if-eq v1, p0, :cond_89

    .line 609
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but service UID is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_89
    const/4 p0, 0x1

    return p0

    .line 605
    :catch_8b
    sget-object p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not verify UID for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public final isDefaultServiceLocked(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v0, p1}, Lcom/android/server/infra/ServiceNameResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 645
    :cond_a
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {p0, p1}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object p0

    .line 646
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isDisabledBySettingsLocked(I)Z
    .registers 2

    .line 342
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isDisabledLocked(I)Z
    .registers 3

    .line 306
    iget-boolean v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    if-nez v0, :cond_13

    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isDisabledBySettingsLocked(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 307
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public final isEnabledBySettings(I)Z
    .registers 4

    .line 346
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content_capture_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z
    .registers 2

    .line 235
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

    .line 528
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "listSessions() for userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->enforceCallingPermissionForManagement()V

    .line 531
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 532
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 534
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, -0x1

    if-eq p1, v3, :cond_36

    .line 536
    :try_start_2a
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    if-eqz p0, :cond_3e

    .line 538
    invoke-virtual {p0, v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->listSessionsLocked(Ljava/util/ArrayList;)V

    goto :goto_3e

    .line 541
    :cond_36
    new-instance p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda2;

    invoke-direct {p1, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    .line 543
    :cond_3e
    :goto_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_2a .. :try_end_3f} :catchall_4a

    const-string/jumbo p0, "sessions"

    .line 545
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 p0, 0x0

    .line 547
    :try_start_46
    invoke-interface {p2, p0, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_49} :catch_49

    :catch_49
    return-void

    :catchall_4a
    move-exception p0

    .line 543
    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method public newServiceLocked(IZ)Lcom/android/server/contentcapture/ContentCapturePerUserService;
    .registers 5

    .line 230
    new-instance v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/Object;ZI)V

    return-object v0
.end method

.method public bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 3

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->newServiceLocked(IZ)Lcom/android/server/contentcapture/ContentCapturePerUserService;

    move-result-object p0

    return-object p0
.end method

.method public final onDeviceConfigChange(Landroid/provider/DeviceConfig$Properties;)V
    .registers 7

    .line 352
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 353
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_a0

    goto :goto_73

    :sswitch_20
    const-string/jumbo v3, "idle_flush_frequency"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_73

    :cond_2a
    const/4 v2, 0x6

    goto :goto_73

    :sswitch_2c
    const-string/jumbo v3, "idle_unbind_timeout"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto :goto_73

    :cond_36
    const/4 v2, 0x5

    goto :goto_73

    :sswitch_38
    const-string/jumbo v3, "max_buffer_size"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    goto :goto_73

    :cond_42
    const/4 v2, 0x4

    goto :goto_73

    :sswitch_44
    const-string/jumbo v3, "log_history_size"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    goto :goto_73

    :cond_4e
    const/4 v2, 0x3

    goto :goto_73

    :sswitch_50
    const-string/jumbo v3, "text_change_flush_frequency"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    goto :goto_73

    :cond_5a
    const/4 v2, 0x2

    goto :goto_73

    :sswitch_5c
    const-string/jumbo v3, "service_explicitly_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    goto :goto_73

    :cond_66
    const/4 v2, 0x1

    goto :goto_73

    :sswitch_68
    const-string/jumbo v3, "logging_level"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    goto :goto_73

    :cond_72
    const/4 v2, 0x0

    :goto_73
    packed-switch v2, :pswitch_data_be

    .line 368
    sget-object v2, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring change on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 365
    :pswitch_8e
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setFineTuneParamsFromDeviceConfig()V

    return-void

    :pswitch_92
    const/4 v0, 0x0

    .line 355
    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setDisabledByDeviceConfig(Ljava/lang/String;)V

    return-void

    .line 358
    :pswitch_9b
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setLoggingLevelFromDeviceConfig()V

    :cond_9e
    return-void

    nop

    :sswitch_data_a0
    .sparse-switch
        -0x756f795c -> :sswitch_68
        -0x120a1673 -> :sswitch_5c
        -0x8e1195c -> :sswitch_50
        0xd94a5e7 -> :sswitch_44
        0x42b4ba45 -> :sswitch_38
        0x5d828843 -> :sswitch_2c
        0x7b4a3376 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_92
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
    .end packed-switch
.end method

.method public onServiceNameChanged(ILjava/lang/String;Z)V
    .registers 5

    .line 269
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->-$$Nest$msetServiceInfo(Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;ILjava/lang/String;Z)V

    .line 271
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceNameChanged(ILjava/lang/String;Z)V

    return-void
.end method

.method public onServicePackageUpdatedLocked(I)V
    .registers 2

    .line 260
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    if-eqz p0, :cond_b

    .line 262
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onPackageUpdatedLocked()V

    :cond_b
    return-void
.end method

.method public onServicePackageUpdatingLocked(I)V
    .registers 2

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    if-eqz p0, :cond_b

    .line 254
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onPackageUpdatingLocked()V

    :cond_b
    return-void
.end method

.method public onServiceRemoved(Lcom/android/server/contentcapture/ContentCapturePerUserService;I)V
    .registers 3

    .line 247
    invoke-virtual {p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->destroyLocked()V

    return-void
.end method

.method public bridge synthetic onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .registers 3

    .line 123
    check-cast p1, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->onServiceRemoved(Lcom/android/server/contentcapture/ContentCapturePerUserService;I)V

    return-void
.end method

.method public onSettingsChanged(ILjava/lang/String;)V
    .registers 4

    .line 294
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "content_capture_enabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 300
    sget-object p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected property ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "); updating cache instead"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 297
    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isEnabledBySettings(I)Z

    move-result p2

    .line 296
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setContentCaptureFeatureEnabledBySettingsForUser(IZ)V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mContentCaptureManagerServiceStub:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

    const-string v1, "content_capture"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 241
    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLocalService:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public registerForExtraSettingsChanges(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 5

    const-string p0, "content_capture_enabled"

    .line 287
    invoke-static {p0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final setContentCaptureFeatureEnabledBySettingsForUser(IZ)V
    .registers 8

    .line 478
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_3
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_e

    .line 480
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    .line 482
    :cond_e
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    xor-int/2addr v1, p2

    if-nez v1, :cond_36

    .line 484
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p0, :cond_34

    .line 485
    sget-object p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setContentCaptureFeatureEnabledForUser(): already "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_34
    monitor-exit v0

    return-void

    :cond_36
    if-eqz p2, :cond_55

    .line 490
    sget-object v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setContentCaptureFeatureEnabled(): enabling service for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_71

    .line 494
    :cond_55
    sget-object v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setContentCaptureFeatureEnabled(): disabling service for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_71
    if-eqz p2, :cond_79

    .line 498
    iget-boolean p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    if-eqz p2, :cond_78

    goto :goto_79

    :cond_78
    const/4 v2, 0x0

    .line 499
    :cond_79
    :goto_79
    invoke-virtual {p0, p1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 500
    monitor-exit v0

    return-void

    :catchall_7e
    move-exception p0

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_3 .. :try_end_80} :catchall_7e

    throw p0
.end method

.method public final setDeviceConfigProperties()V
    .registers 3

    .line 435
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setLoggingLevelFromDeviceConfig()V

    .line 436
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setFineTuneParamsFromDeviceConfig()V

    const-string v0, "content_capture"

    const-string/jumbo v1, "service_explicitly_enabled"

    .line 437
    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setDisabledByDeviceConfig(Ljava/lang/String;)V

    return-void
.end method

.method public final setDisabledByDeviceConfig(Ljava/lang/String;)V
    .registers 11

    .line 443
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_1b

    .line 444
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisabledByDeviceConfig(): explicitlyEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getSupportedUsers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2d

    const-string v3, "false"

    .line 450
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    move p1, v1

    goto :goto_2e

    :cond_2d
    move p1, v2

    .line 456
    :goto_2e
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 457
    :try_start_31
    iget-boolean v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    if-ne v4, p1, :cond_52

    .line 458
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_50

    .line 459
    sget-object p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisabledByDeviceConfig(): already "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_50
    monitor-exit v3

    return-void

    .line 463
    :cond_52
    iput-boolean p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    .line 465
    sget-object p1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDisabledByDeviceConfig(): set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    .line 466
    :goto_6e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_b6

    .line 467
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 468
    iget-boolean v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    if-nez v5, :cond_89

    invoke-virtual {p0, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isDisabledBySettingsLocked(I)Z

    move-result v5

    if-eqz v5, :cond_87

    goto :goto_89

    :cond_87
    move v5, v2

    goto :goto_8a

    :cond_89
    :goto_89
    move v5, v1

    .line 469
    :goto_8a
    sget-object v6, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setDisabledByDeviceConfig(): updating service for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_a4

    const-string v8, "\'disabled\'"

    goto :goto_a6

    :cond_a4
    const-string v8, "\'enabled\'"

    .line 470
    :goto_a6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 469
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p0, v4, v5}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;

    add-int/lit8 p1, p1, 0x1

    goto :goto_6e

    .line 473
    :cond_b6
    monitor-exit v3

    return-void

    :catchall_b8
    move-exception p0

    monitor-exit v3
    :try_end_ba
    .catchall {:try_start_31 .. :try_end_ba} :catchall_b8

    throw p0
.end method

.method public final setFineTuneParamsFromDeviceConfig()V
    .registers 5

    .line 374
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "content_capture"

    const-string/jumbo v2, "max_buffer_size"

    const/16 v3, 0x1f4

    .line 375
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgMaxBufferSize:I

    const-string v1, "content_capture"

    const-string/jumbo v2, "idle_flush_frequency"

    const/16 v3, 0x1388

    .line 379
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleFlushingFrequencyMs:I

    const-string v1, "content_capture"

    const-string/jumbo v2, "text_change_flush_frequency"

    const/16 v3, 0x3e8

    .line 383
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgTextChangeFlushingFrequencyMs:I

    const-string v1, "content_capture"

    const-string/jumbo v2, "log_history_size"

    const/16 v3, 0x14

    .line 387
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    const-string v1, "content_capture"

    const-string/jumbo v2, "idle_unbind_timeout"

    const/4 v3, 0x0

    .line 390
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleUnbindTimeoutMs:I

    .line 396
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->enableTimeout()Z

    move-result v1

    if-eqz v1, :cond_4e

    const v1, 0x1d4c0

    .line 397
    iput v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleUnbindTimeoutMs:I

    .line 401
    :cond_4e
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v1, :cond_93

    .line 402
    sget-object v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFineTuneParamsFromDeviceConfig(): bufferSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgMaxBufferSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", idleFlush="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleFlushingFrequencyMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", textFluxh="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgTextChangeFlushingFrequencyMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", logHistory="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", idleUnbindTimeoutMs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleUnbindTimeoutMs:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_93
    monitor-exit v0

    return-void

    :catchall_95
    move-exception p0

    monitor-exit v0
    :try_end_97
    .catchall {:try_start_3 .. :try_end_97} :catchall_95

    throw p0
.end method

.method public final setLoggingLevelFromDeviceConfig()V
    .registers 4

    .line 424
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureHelper;->getDefaultLoggingLevel()I

    move-result v0

    const-string v1, "content_capture"

    const-string/jumbo v2, "logging_level"

    .line 421
    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    .line 425
    invoke-static {v0}, Landroid/view/contentcapture/ContentCaptureHelper;->setLoggingLevel(I)V

    .line 426
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 427
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    iput-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_49

    .line 429
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLoggingLevelFromDeviceConfig(): level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", debug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", verbose="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    return-void
.end method

.method public final throwsSecurityException(Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z
    .registers 5

    .line 626
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x0

    return p0

    :catch_5
    move-exception p0

    const/4 p2, -0x1

    .line 630
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    goto :goto_2f

    :catch_13
    move-exception p1

    .line 632
    sget-object p2, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to send security exception ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "): "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    const/4 p0, 0x1

    return p0
.end method

.method public updateOptions(Ljava/lang/String;Landroid/content/ContentCaptureOptions;)V
    .registers 4

    .line 554
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Landroid/content/ContentCaptureOptions;)V

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    return-void
.end method
