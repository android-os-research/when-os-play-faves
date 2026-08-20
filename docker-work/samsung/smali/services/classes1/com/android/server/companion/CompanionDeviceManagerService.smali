.class public Lcom/android/server/companion/CompanionDeviceManagerService;
.super Lcom/android/server/SystemService;
.source "CompanionDeviceManagerService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;,
        Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;,
        Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;
    }
.end annotation


# static fields
.field public static final ASSOCIATIONS_IDS_PER_USER_RANGE:I = 0x186a0

.field public static final ASSOCIATION_REMOVAL_TIME_WINDOW_DEFAULT:J

.field public static final DEBUG:Z = false

.field public static final PAIR_WITHOUT_PROMPT_WINDOW_MS:J = 0x927c0L

.field public static final PREF_FILE_NAME:Ljava/lang/String; = "companion_device_preferences.xml"

.field public static final PREF_KEY_AUTO_REVOKE_GRANTS_DONE:Ljava/lang/String; = "auto_revoke_grants_done"

.field public static final SYS_PROP_DEBUG_REMOVAL_TIME_WINDOW:Ljava/lang/String; = "debug.cdm.cdmservice.removal_time_window"

.field public static final TAG:Ljava/lang/String; = "CompanionDeviceManagerService"


# instance fields
.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

.field public final mApplicationControllerCallback:Lcom/android/server/companion/CompanionApplicationController$Callback;

.field public mAssociationRequestsProcessor:Lcom/android/server/companion/AssociationRequestsProcessor;

.field public final mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

.field public final mAssociationStoreChangeListener:Lcom/android/server/companion/AssociationStore$OnChangeListener;

.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

.field public final mDevicePresenceCallback:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;

.field public mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

.field public final mImpl:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

.field public final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/companion/IOnAssociationsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public mPersistentStore:Lcom/android/server/companion/PersistentDataStore;

.field public final mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

.field public final mPreviouslyUsedIds:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPreviouslyUsedIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserPersistenceHandler:Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;


# direct methods
.method public static synthetic $r8$lambda$Elb0tl4qtf2ylfE5p2CqXcj9AxU(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->maybeGrantAutoRevokeExemptions()V

    return-void
.end method

.method public static synthetic $r8$lambda$ILqtqyjVllonSIXCsdX8a0zbcRs(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationInfo;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->lambda$disassociateInternal$4(Landroid/companion/AssociationInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KMv89jv8BUId1jtHv6UM2YBOxqU(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->lambda$disassociateInternal$3(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LDq8JXIf4RjfGxdz6snSWHSn1Dk(ILjava/util/List;Landroid/companion/IOnAssociationsChangedListener;Ljava/lang/Object;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/companion/CompanionDeviceManagerService;->lambda$notifyListeners$0(ILjava/util/List;Landroid/companion/IOnAssociationsChangedListener;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TMtyjV4Hu2PxW3eP6v-kOhT6CX4(Ljava/lang/String;)Ljava/util/Set;
    .registers 1

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->lambda$markIdAsPreviouslyUsedForPackage$1(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TYXl7kEEtvh9bTqZajoR0wPGx1E(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->lambda$disassociateInternal$2(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yF-5Y5rnJRZjEMZLZiVLnPwHR1Y(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/content/pm/PackageInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->lambda$updateSpecialAccessPermissionForAssociatedPackage$5(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAssociationRequestsProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationRequestsProcessor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationRequestsProcessor:Lcom/android/server/companion/AssociationRequestsProcessor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationStoreImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCompanionAppController(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/CompanionApplicationController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDevicePresenceMonitor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monAssociationChangedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILandroid/companion/AssociationInfo;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->onAssociationChangedInternal(ILandroid/companion/AssociationInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monCompanionApplicationBindingDiedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->onCompanionApplicationBindingDiedInternal(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monDeviceAppearedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->onDeviceAppearedInternal(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monDeviceDisappearedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->onDeviceDisappearedInternal(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageModifiedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->onPackageModifiedInternal(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageRemoveOrDataClearedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->onPackageRemoveOrDataClearedInternal(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monRebindCompanionApplicationTimeoutInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->onRebindCompanionApplicationTimeoutInternal(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpersistStateForUser(Lcom/android/server/companion/CompanionDeviceManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->persistStateForUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldBindPackage(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->shouldBindPackage(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 129
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/companion/CompanionDeviceManagerService;->ASSOCIATION_REMOVAL_TIME_WINDOW_DEFAULT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 153
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPreviouslyUsedIds:Landroid/util/SparseArray;

    .line 156
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 1083
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$1;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStoreChangeListener:Lcom/android/server/companion/AssociationStore$OnChangeListener;

    .line 1091
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$2;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceCallback:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;

    .line 1104
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$3;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mApplicationControllerCallback:Lcom/android/server/companion/CompanionApplicationController$Callback;

    .line 1117
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$4;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 162
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mImpl:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    .line 163
    const-class v0, Landroid/os/PowerWhitelistManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerWhitelistManager;

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    const-string v0, "appops"

    .line 165
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

    .line 166
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 167
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 168
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 169
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUserManager:Landroid/os/UserManager;

    .line 171
    new-instance p1, Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;

    invoke-direct {p1, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUserPersistenceHandler:Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;

    .line 172
    new-instance p1, Lcom/android/server/companion/AssociationStoreImpl;

    invoke-direct {p1}, Lcom/android/server/companion/AssociationStoreImpl;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    return-void
.end method

.method public static containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;TT;)Z"
        }
    .end annotation

    .line 1155
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public static deepUnmodifiableCopy(Ljava/util/Map;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1146
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1147
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1148
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 1151
    :cond_32
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getFirstAssociationIdForUser(I)I
    .registers 2

    const v0, 0x186a0

    mul-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getLastAssociationIdForUser(I)I
    .registers 2

    add-int/lit8 p0, p0, 0x1

    const v0, 0x186a0

    mul-int/2addr p0, v0

    return p0
.end method

.method public static synthetic lambda$disassociateInternal$2(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z
    .registers 2

    .line 942
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$disassociateInternal$3(Landroid/companion/AssociationInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 945
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/companion/RolesUtils;->removeRoleHolderForAssociation(Landroid/content/Context;Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method private synthetic lambda$disassociateInternal$4(Landroid/companion/AssociationInfo;)Z
    .registers 3

    .line 953
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    .line 954
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->isDevicePresent(I)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static synthetic lambda$markIdAsPreviouslyUsedForPackage$1(Ljava/lang/String;)Ljava/util/Set;
    .registers 1

    .line 389
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public static synthetic lambda$notifyListeners$0(ILjava/util/List;Landroid/companion/IOnAssociationsChangedListener;Ljava/lang/Object;)V
    .registers 4

    .line 370
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, p0, :cond_b

    .line 372
    :try_start_8
    invoke-interface {p2, p1}, Landroid/companion/IOnAssociationsChangedListener;->onAssociationsChanged(Ljava/util/List;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method private synthetic lambda$updateSpecialAccessPermissionForAssociatedPackage$5(Landroid/content/pm/PackageInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 967
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateSpecialAccessPermissionAsSystem(Landroid/content/pm/PackageInfo;)V

    return-void
.end method


# virtual methods
.method public final checkOp(ILjava/lang/String;)I
    .registers 4

    .line 1015
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

    const/16 v0, 0x46

    invoke-interface {p0, v0, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_25

    :catch_9
    move-exception p0

    .line 1018
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cdm checkOp RemoteException e="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CompanionDeviceManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method public createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Z)Landroid/companion/AssociationInfo;
    .registers 22

    move-object v0, p0

    .line 832
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getNewAssociationIdForPackage(ILjava/lang/String;)I

    move-result v2

    .line 833
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 835
    new-instance v14, Landroid/companion/AssociationInfo;

    const/4 v9, 0x0

    const-wide v12, 0x7fffffffffffffffL

    move-object v1, v14

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v13}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;ZZJJ)V

    .line 838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New CDM association created="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CompanionDeviceManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v1, v0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v1, v14}, Lcom/android/server/companion/AssociationStoreImpl;->addAssociation(Landroid/companion/AssociationInfo;)V

    if-eqz p5, :cond_45

    .line 844
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v14}, Lcom/android/server/companion/RolesUtils;->addRoleHolderForAssociation(Landroid/content/Context;Landroid/companion/AssociationInfo;)V

    .line 847
    :cond_45
    invoke-virtual {p0, v14}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateSpecialAccessPermissionForAssociatedPackage(Landroid/companion/AssociationInfo;)Landroid/content/pm/PackageInfo;

    .line 848
    invoke-static/range {p5 .. p5}, Lcom/android/server/companion/MetricUtils;->logCreateAssociation(Ljava/lang/String;)V

    return-object v14
.end method

.method public disassociateInternal(I)V
    .registers 8

    .line 924
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 925
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v1

    .line 926
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 927
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v3

    .line 929
    iget-object v4, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    invoke-virtual {v4, p1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->isDevicePresent(I)Z

    move-result v4

    .line 932
    iget-object v5, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v5, p1}, Lcom/android/server/companion/AssociationStoreImpl;->removeAssociation(I)V

    .line 933
    invoke-static {v3}, Lcom/android/server/companion/MetricUtils;->logRemoveAssociation(Ljava/lang/String;)V

    .line 935
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    .line 936
    invoke-virtual {p1, v1, v2}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz v3, :cond_3b

    .line 941
    new-instance v5, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v5, v3}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5}, Lcom/android/internal/util/CollectionUtils;->any(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 944
    new-instance v3, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationInfo;)V

    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_3b
    if-eqz v4, :cond_55

    .line 949
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_55

    .line 952
    :cond_44
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    invoke-static {p1, v0}, Lcom/android/internal/util/CollectionUtils;->any(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_50

    return-void

    .line 956
    :cond_50
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/companion/CompanionApplicationController;->unbindCompanionApplication(ILjava/lang/String;)V

    :cond_55
    :goto_55
    return-void
.end method

.method public final exemptFromAutoRevoke(Ljava/lang/String;I)V
    .registers 5

    .line 1026
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

    const/16 v0, 0x61

    const/4 v1, 0x1

    invoke-interface {p0, v0, p2, p1, v1}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_20

    :catch_9
    move-exception p0

    .line 1032
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error while granting auto revoke exemption for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CompanionDeviceManagerService"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return-void
.end method

.method public getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object p1

    .line 254
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/companion/PermissionsUtils;->sanitizeWithCallerChecks(Landroid/content/Context;Landroid/companion/AssociationInfo;)Landroid/companion/AssociationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAssociationWithCallerChecks(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;
    .registers 5

    .line 246
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForPackageWithAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    move-result-object p1

    .line 248
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/companion/PermissionsUtils;->sanitizeWithCallerChecks(Landroid/content/Context;Landroid/companion/AssociationInfo;)Landroid/companion/AssociationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getNewAssociationIdForPackage(ILjava/lang/String;)I
    .registers 8

    .line 887
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPreviouslyUsedIds:Landroid/util/SparseArray;

    monitor-enter v0

    .line 889
    :try_start_3
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 896
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v2}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociations()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/AssociationInfo;

    .line 897
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_12

    .line 902
    :cond_27
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getPreviouslyUsedIdsForPackageLocked(ILjava/lang/String;)Ljava/util/Set;

    move-result-object p0

    .line 904
    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getFirstAssociationIdForUser(I)I

    move-result v2

    .line 905
    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getLastAssociationIdForUser(I)I

    move-result v3

    .line 908
    :goto_33
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_46

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    goto :goto_46

    .line 918
    :cond_44
    monitor-exit v0

    return v2

    :cond_46
    :goto_46
    add-int/lit8 v2, v2, 0x1

    if-gt v2, v3, :cond_4b

    goto :goto_33

    .line 913
    :cond_4b
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create a new Association ID for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for user "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_6a
    move-exception p0

    .line 919
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public final getPreviouslyUsedIdsForPackageLocked(ILjava/lang/String;)Ljava/util/Set;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPreviouslyUsedIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 875
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getPreviouslyUsedIdsForUserLocked(I)Ljava/util/Map;

    move-result-object p0

    .line 876
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_10

    .line 879
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    :cond_10
    return-object p0
.end method

.method public final getPreviouslyUsedIdsForUser(I)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 854
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPreviouslyUsedIds:Landroid/util/SparseArray;

    monitor-enter v0

    .line 855
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getPreviouslyUsedIdsForUserLocked(I)Ljava/util/Map;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 856
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final getPreviouslyUsedIdsForUserLocked(I)Ljava/util/Map;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPreviouslyUsedIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 862
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPreviouslyUsedIds:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_f

    .line 864
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 866
    :cond_f
    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->deepUnmodifiableCopy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public legacyCreateAssociation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 825
    invoke-static {p2}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v5, p4

    .line 826
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/companion/CompanionDeviceManagerService;->createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Z)Landroid/companion/AssociationInfo;

    return-void
.end method

.method public loadAssociationsFromDisk()V
    .registers 6

    .line 203
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 204
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPreviouslyUsedIds:Landroid/util/SparseArray;

    monitor-enter v1

    .line 207
    :try_start_8
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPersistentStore:Lcom/android/server/companion/PersistentDataStore;

    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUserManager:Landroid/os/UserManager;

    .line 208
    invoke-virtual {v3}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPreviouslyUsedIds:Landroid/util/SparseArray;

    .line 207
    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/companion/PersistentDataStore;->readStateForUsers(Ljava/util/List;Ljava/util/Set;Landroid/util/SparseArray;)V

    .line 209
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1c

    .line 211
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {p0, v0}, Lcom/android/server/companion/AssociationStoreImpl;->setAssociations(Ljava/util/Collection;)V

    return-void

    :catchall_1c
    move-exception p0

    .line 209
    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final markIdAsPreviouslyUsedForPackage(IILjava/lang/String;)V
    .registers 6

    .line 381
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPreviouslyUsedIds:Landroid/util/SparseArray;

    monitor-enter v0

    .line 382
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPreviouslyUsedIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_17

    .line 384
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 385
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPreviouslyUsedIds:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 388
    :cond_17
    new-instance p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda0;-><init>()V

    .line 389
    invoke-interface {v1, p3, p0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 390
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 391
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public final maybeGrantAutoRevokeExemptions()V
    .registers 16

    const-string v0, "CompanionDeviceManagerService"

    const-string/jumbo v1, "maybeGrantAutoRevokeExemptions()"

    .line 1055
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1058
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1f
    if-ge v5, v3, :cond_9b

    aget v6, v2, v5

    .line 1059
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    .line 1060
    invoke-static {v6}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v9

    const-string v10, "companion_device_preferences.xml"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1059
    invoke-virtual {v7, v8, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "auto_revoke_grants_done"

    .line 1062
    invoke-interface {v7, v8, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_3f

    goto :goto_8b

    :cond_3f
    const/4 v9, 0x1

    .line 1067
    :try_start_40
    iget-object v10, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    .line 1068
    invoke-virtual {v10, v6}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForUser(I)Ljava/util/List;

    move-result-object v10

    .line 1069
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_80

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/companion/AssociationInfo;
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_8e

    .line 1071
    :try_start_56
    invoke-virtual {v11}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v12

    .line 1072
    invoke-virtual {v11}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13, v12}, Lcom/android/server/companion/CompanionDeviceManagerService;->exemptFromAutoRevoke(Ljava/lang/String;I)V
    :try_end_65
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_56 .. :try_end_65} :catch_66
    .catchall {:try_start_56 .. :try_end_65} :catchall_8e

    goto :goto_4a

    :catch_66
    move-exception v12

    .line 1074
    :try_start_67
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown companion package: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_67 .. :try_end_7f} :catchall_8e

    goto :goto_4a

    .line 1078
    :cond_80
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_8b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :catchall_8e
    move-exception p0

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1079
    throw p0

    :cond_9b
    return-void
.end method

.method public final notifyListeners(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    .line 369
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda2;-><init>(ILjava/util/List;)V

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final onAssociationChangedInternal(ILandroid/companion/AssociationInfo;)V
    .registers 6

    .line 338
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    .line 339
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v1

    .line 340
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_12

    .line 343
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->markIdAsPreviouslyUsedForPackage(IILjava/lang/String;)V

    .line 346
    :cond_12
    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    .line 347
    invoke-virtual {p2, v1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForUser(I)Ljava/util/List;

    move-result-object p2

    .line 349
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUserPersistenceHandler:Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;->postPersistUserState(I)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_23

    .line 355
    invoke-virtual {p0, v1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->notifyListeners(ILjava/util/List;)V

    .line 357
    :cond_23
    invoke-virtual {p0, v1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAtm(ILjava/util/List;)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 6

    .line 216
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_1e

    .line 221
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 222
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    invoke-virtual {p0, v0}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->init(Landroid/content/Context;)V

    goto :goto_29

    :cond_1e
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_29

    .line 225
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/companion/InactiveAssociationsRemovalService;->schedule(Landroid/content/Context;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public final onCompanionApplicationBindingDiedInternal(ILjava/lang/String;)Z
    .registers 4

    .line 306
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/companion/AssociationInfo;

    .line 307
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    .line 308
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    .line 309
    invoke-virtual {p2, v0}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->isDevicePresent(I)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 310
    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    invoke-virtual {p2, v0}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onSelfManagedDeviceReporterBinderDied(I)V

    goto :goto_a

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public final onDeviceAppearedInternal(I)V
    .registers 6

    .line 260
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object p1

    .line 263
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->shouldBindWhenPresent()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 265
    :cond_d
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    .line 266
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v2

    .line 271
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/companion/CompanionApplicationController;->isCompanionApplicationBound(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 272
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/companion/CompanionApplicationController;->bindCompanionApplication(ILjava/lang/String;Z)V

    .line 276
    :cond_26
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionApplicationController;->notifyCompanionApplicationDeviceAppeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public final onDeviceDisappearedInternal(I)V
    .registers 5

    .line 282
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object p1

    .line 285
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    .line 286
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 288
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/companion/CompanionApplicationController;->isCompanionApplicationBound(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    return-void

    .line 293
    :cond_17
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->shouldBindWhenPresent()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 294
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

    invoke-virtual {v2, p1}, Lcom/android/server/companion/CompanionApplicationController;->notifyCompanionApplicationDeviceDisappeared(Landroid/companion/AssociationInfo;)V

    .line 298
    :cond_22
    invoke-virtual {p0, v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->shouldBindPackage(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_29

    return-void

    .line 300
    :cond_29
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/companion/CompanionApplicationController;->unbindCompanionApplication(ILjava/lang/String;)V

    return-void
.end method

.method public final onPackageModifiedInternal(ILjava/lang/String;)V
    .registers 9

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageModified() u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CompanionDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    .line 416
    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 417
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_29
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 419
    invoke-virtual {p0, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateSpecialAccessPermissionForAssociatedPackage(Landroid/companion/AssociationInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_54

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPackageModifiedInternal pkg not available, but has association,so clearing it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->onPackageRemoveOrDataClearedInternal(ILjava/lang/String;)V

    goto :goto_29

    .line 427
    :cond_54
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 429
    :try_start_5a
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6f

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6f

    const/4 v4, 0x4

    if-ne v3, v4, :cond_29

    .line 433
    :cond_6f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPackageModified unregisterDevicePresence(device address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " packageState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 433
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5a .. :try_end_95} :catch_bb

    .line 437
    :try_start_95
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mImpl:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, p2, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->unregisterDevicePresenceListenerService(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_9e} :catch_9f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_95 .. :try_end_9e} :catch_bb

    goto :goto_29

    :catch_9f
    move-exception v2

    .line 440
    :try_start_a0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterDevicePresenceListenerService RemoteException e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a0 .. :try_end_b9} :catch_bb

    goto/16 :goto_29

    :catch_bb
    move-exception v2

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed! to get getApplicationEnabledSetting for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_29

    .line 452
    :cond_d2
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionApplicationController;->onPackagesChanged(I)V

    return-void
.end method

.method public final onPackageRemoveOrDataClearedInternal(ILjava/lang/String;)V
    .registers 5

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageRemove_Or_DataCleared() u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CompanionDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    .line 403
    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 404
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_29
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;

    .line 405
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/companion/AssociationStoreImpl;->removeAssociation(I)V

    goto :goto_29

    .line 408
    :cond_3f
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionApplicationController;->onPackagesChanged(I)V

    return-void
.end method

.method public final onRebindCompanionApplicationTimeoutInternal(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onStart()V
    .registers 4

    .line 177
    new-instance v0, Lcom/android/server/companion/PersistentDataStore;

    invoke-direct {v0}, Lcom/android/server/companion/PersistentDataStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPersistentStore:Lcom/android/server/companion/PersistentDataStore;

    .line 179
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->loadAssociationsFromDisk()V

    .line 180
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStoreChangeListener:Lcom/android/server/companion/AssociationStore$OnChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/server/companion/AssociationStoreImpl;->registerListener(Lcom/android/server/companion/AssociationStore$OnChangeListener;)V

    .line 182
    new-instance v0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceCallback:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;

    invoke-direct {v0, v1, v2}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;-><init>(Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    .line 185
    new-instance v0, Lcom/android/server/companion/AssociationRequestsProcessor;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/AssociationRequestsProcessor;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/AssociationStore;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationRequestsProcessor:Lcom/android/server/companion/AssociationRequestsProcessor;

    .line 188
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 189
    new-instance v1, Lcom/android/server/companion/CompanionApplicationController;

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mApplicationControllerCallback:Lcom/android/server/companion/CompanionApplicationController$Callback;

    invoke-direct {v1, v0, v2}, Lcom/android/server/companion/CompanionApplicationController;-><init>(Landroid/content/Context;Lcom/android/server/companion/CompanionApplicationController$Callback;)V

    iput-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

    .line 196
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mImpl:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    const-string v1, "companiondevice"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 199
    const-class v0, Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;

    new-instance v1, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/CompanionDeviceManagerService$LocalService-IA;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    .line 231
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 232
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForUser(I)Ljava/util/List;

    move-result-object v0

    .line 234
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    .line 236
    :cond_11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAtm(ILjava/util/List;)V

    .line 238
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda6;-><init>()V

    .line 239
    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    .line 240
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 238
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public persistState()V
    .registers 3

    .line 1170
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUserPersistenceHandler:Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;->clearMessages()V

    .line 1171
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1172
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->persistStateForUser(I)V

    goto :goto_f

    :cond_21
    return-void
.end method

.method public final persistStateForUser(I)V
    .registers 4

    .line 361
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    .line 362
    invoke-virtual {v0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForUser(I)Ljava/util/List;

    move-result-object v0

    .line 363
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getPreviouslyUsedIdsForUser(I)Ljava/util/Map;

    move-result-object v1

    .line 364
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPersistentStore:Lcom/android/server/companion/PersistentDataStore;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/companion/PersistentDataStore;->persistStateForUser(ILjava/util/Collection;Ljava/util/Map;)V

    return-void
.end method

.method public removeInactiveSelfManagedAssociations()V
    .registers 9

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "debug.cdm.cdmservice.removal_time_window"

    const-wide/16 v3, -0x1

    .line 458
    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_14

    .line 461
    sget-wide v2, Lcom/android/server/companion/CompanionDeviceManagerService;->ASSOCIATION_REMOVAL_TIME_WINDOW_DEFAULT:J

    .line 464
    :cond_14
    iget-object v4, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v4}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociations()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1e
    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/companion/AssociationInfo;

    .line 465
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v6

    if-nez v6, :cond_31

    goto :goto_1e

    .line 466
    :cond_31
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getLastTimeConnectedMs()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v0, v6

    cmp-long v6, v6, v2

    if-ltz v6, :cond_41

    const/4 v6, 0x1

    goto :goto_42

    :cond_41
    const/4 v6, 0x0

    :goto_42
    if-eqz v6, :cond_1e

    .line 468
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing inactive self-managed association: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CompanionDeviceManagerService"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/companion/CompanionDeviceManagerService;->disassociateInternal(I)V

    goto :goto_1e

    :cond_66
    return-void
.end method

.method public final shouldBindPackage(ILjava/lang/String;)Z
    .registers 4

    .line 327
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    .line 328
    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 329
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/companion/AssociationInfo;

    .line 330
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->shouldBindWhenPresent()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_a

    .line 331
    :cond_1d
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->isDevicePresent(I)Z

    move-result p2

    if-eqz p2, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public final updateAtm(ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    .line 1037
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1038
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/AssociationInfo;

    .line 1039
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-ltz v1, :cond_9

    .line 1042
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1045
    :cond_2b
    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz p2, :cond_32

    .line 1046
    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setCompanionAppUids(ILjava/util/Set;)V

    .line 1048
    :cond_32
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-eqz p0, :cond_3e

    .line 1050
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityManagerInternal;->setCompanionAppUids(ILjava/util/Set;)V

    :cond_3e
    return-void
.end method

.method public final updateSpecialAccessPermissionAsSystem(Landroid/content/pm/PackageInfo;)V
    .registers 6

    .line 973
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v1, "android.permission.RUN_IN_BACKGROUND"

    const-string v2, "android.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND"

    invoke-static {v0, v1, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "CompanionDeviceManagerService"

    if-eqz v0, :cond_42

    .line 978
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->checkOp(ILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_23

    .line 980
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/PowerWhitelistManager;->addToWhitelist(Ljava/lang/String;)V

    goto :goto_60

    .line 982
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring pkg to allowlist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 988
    :cond_42
    :try_start_42
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/PowerWhitelistManager;->removeFromWhitelist(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_42 .. :try_end_49} :catch_4a

    goto :goto_60

    .line 990
    :catch_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can\'t be removed from power save whitelist. It might due to the package is whitelisted by the system."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :goto_60
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    .line 996
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v2, "android.permission.USE_DATA_IN_BACKGROUND"

    const-string v3, "android.permission.REQUEST_COMPANION_USE_DATA_IN_BACKGROUND"

    invoke-static {v1, v2, v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_7d

    .line 999
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->addUidPolicy(II)V

    goto :goto_84

    .line 1003
    :cond_7d
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->removeUidPolicy(II)V

    .line 1008
    :goto_84
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->exemptFromAutoRevoke(Ljava/lang/String;I)V

    return-void
.end method

.method public final updateSpecialAccessPermissionForAssociatedPackage(Landroid/companion/AssociationInfo;)Landroid/content/pm/PackageInfo;
    .registers 4

    .line 961
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/android/server/companion/PackageUtils;->getPackageInfo(Landroid/content/Context;ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_1c

    const-string p0, "CompanionDeviceManagerService"

    const-string/jumbo p1, "packageInfo is null"

    .line 964
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 967
    :cond_1c
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/content/pm/PackageInfo;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-object p1
.end method
