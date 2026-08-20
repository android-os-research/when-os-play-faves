.class public Lcom/android/server/telecom/TelecomLoaderService;
.super Lcom/android/server/SystemService;
.source "TelecomLoaderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    }
.end annotation


# static fields
.field public static final SERVICE_ACTION:Ljava/lang/String; = "com.android.ITelecomService"

.field public static final SERVICE_COMPONENT:Landroid/content/ComponentName;

.field public static final TAG:Ljava/lang/String; = "TelecomLoaderService"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultSimCallManagerRequests:Landroid/util/IntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mSamsungTelecomServiceConnection:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;

.field public mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mServiceRepo:Lcom/android/server/telecom/InternalServiceRepository;


# direct methods
.method public static synthetic $r8$lambda$29uo3akrJVM9ql-ynPZGjI7w7cs(Lcom/android/server/telecom/TelecomLoaderService;I)[Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomLoaderService;->lambda$registerDefaultAppProviders$1(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VX3H7IFPxN9BpIPus6fQztWmMOk(Lcom/android/server/telecom/TelecomLoaderService;I)[Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomLoaderService;->lambda$registerDefaultAppProviders$0(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dqrtRwAN6K4zhsxWm512q3KK_jU(Lcom/android/server/telecom/TelecomLoaderService;I)[Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomLoaderService;->lambda$registerDefaultAppProviders$2(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xg-UIxkabAX3NfXZvxXPnX7oji4(Lcom/android/server/telecom/TelecomLoaderService;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/TelecomLoaderService;->lambda$registerDefaultAppNotifier$3(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultSimCallManagerRequests(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceRepo(Lcom/android/server/telecom/TelecomLoaderService;)Lcom/android/server/telecom/InternalServiceRepository;
    .registers 1

    iget-object p0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceRepo:Lcom/android/server/telecom/InternalServiceRepository;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mconnectToTelecom(Lcom/android/server/telecom/TelecomLoaderService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomLoaderService;->connectToTelecom()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSimCallManagerPermissions(Lcom/android/server/telecom/TelecomLoaderService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/TelecomLoaderService;->updateSimCallManagerPermissions(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 107
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.server.telecom"

    const-string v2, "com.android.server.telecom.components.TelecomService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/telecom/TelecomLoaderService;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    .line 129
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    .line 130
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomLoaderService;->registerDefaultAppProviders()V

    .line 131
    new-instance v1, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mSamsungTelecomServiceConnection:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;

    return-void
.end method

.method private synthetic lambda$registerDefaultAppNotifier$3(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    .line 245
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/TelecomLoaderService;->updateSimCallManagerPermissions(I)V

    return-void
.end method

.method private synthetic lambda$registerDefaultAppProviders$0(I)[Ljava/lang/String;
    .registers 4

    .line 183
    iget-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 184
    :try_start_3
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 185
    monitor-exit p1

    return-object v1

    .line 187
    :cond_a
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1f

    .line 188
    iget-object p0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1e

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    return-object p1

    :cond_1e
    return-object v1

    :catchall_1f
    move-exception p0

    .line 187
    :try_start_20
    monitor-exit p1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method private synthetic lambda$registerDefaultAppProviders$1(I)[Ljava/lang/String;
    .registers 4

    .line 198
    iget-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 199
    :try_start_3
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 200
    monitor-exit p1

    return-object v1

    .line 202
    :cond_a
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    .line 203
    iget-object p0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    return-object p1

    :cond_1a
    return-object v1

    :catchall_1b
    move-exception p0

    .line 202
    :try_start_1c
    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method private synthetic lambda$registerDefaultAppProviders$2(I)[Ljava/lang/String;
    .registers 7

    .line 212
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_3
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    .line 214
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    if-nez v1, :cond_13

    .line 215
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    .line 217
    :cond_13
    iget-object p0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->add(I)V

    .line 218
    monitor-exit v0

    return-object v2

    .line 220
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_60

    .line 221
    iget-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/SubscriptionManager;

    .line 222
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    if-nez p1, :cond_28

    return-object v2

    .line 226
    :cond_28
    iget-object p0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "telecom"

    .line 227
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object p1

    .line 230
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_3f
    if-ge v3, v1, :cond_57

    aget v4, p1, v3

    .line 232
    invoke-virtual {p0, v4}, Landroid/telecom/TelecomManager;->getSimCallManagerForSubscription(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    if-eqz v4, :cond_54

    .line 234
    invoke-virtual {v4}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :cond_57
    new-array p0, v2, [Ljava/lang/String;

    .line 237
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :catchall_60
    move-exception p0

    .line 220
    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p0
.end method


# virtual methods
.method public final connectToTelecom()V
    .registers 7

    .line 151
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_3
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 154
    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 155
    iput-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    .line 158
    :cond_f
    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    invoke-direct {v1, p0, v2}, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;-><init>(Lcom/android/server/telecom/TelecomLoaderService;Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection-IA;)V

    .line 159
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.ITelecomService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    sget-object v3, Lcom/android/server/telecom/TelecomLoaderService;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const v3, 0x4000041

    .line 165
    iget-object v4, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v1, v3, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 166
    iput-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    .line 168
    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x226

    if-ne p1, v0, :cond_15

    .line 141
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomLoaderService;->registerDefaultAppNotifier()V

    .line 142
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomLoaderService;->registerCarrierConfigChangedReceiver()V

    .line 144
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomLoaderService;->setupServiceRepository()V

    .line 145
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomLoaderService;->connectToTelecom()V

    .line 146
    iget-object p0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mSamsungTelecomServiceConnection:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;

    invoke-virtual {p0}, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;->connectToSamsungTelecom()V

    :cond_15
    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public final registerCarrierConfigChangedReceiver()V
    .registers 7

    .line 251
    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$1;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/TelecomLoaderService$1;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    .line 262
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string p0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v3, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final registerDefaultAppNotifier()V
    .registers 4

    .line 243
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    .line 244
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final registerDefaultAppProviders()V
    .registers 3

    .line 178
    const-class v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 179
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 182
    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->setSmsAppPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V

    .line 197
    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->setDialerAppPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V

    .line 211
    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/TelecomLoaderService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->setSimCallManagerPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V

    return-void
.end method

.method public final setupServiceRepository()V
    .registers 3

    .line 172
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    .line 173
    new-instance v1, Lcom/android/server/telecom/InternalServiceRepository;

    invoke-direct {v1, v0}, Lcom/android/server/telecom/InternalServiceRepository;-><init>(Lcom/android/server/DeviceIdleInternal;)V

    iput-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceRepo:Lcom/android/server/telecom/InternalServiceRepository;

    return-void
.end method

.method public final updateSimCallManagerPermissions(I)V
    .registers 5

    .line 267
    const-class v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 268
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 269
    iget-object p0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    .line 270
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    .line 271
    invoke-virtual {p0, p1}, Landroid/telecom/TelecomManager;->getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updating sim call manager permissions for userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelecomLoaderService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 275
    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V

    :cond_3b
    return-void
.end method
