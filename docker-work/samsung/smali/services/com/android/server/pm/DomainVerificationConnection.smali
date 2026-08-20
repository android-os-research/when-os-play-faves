.class public final Lcom/android/server/pm/DomainVerificationConnection;
.super Ljava/lang/Object;
.source "DomainVerificationConnection.java"

# interfaces
.implements Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;
.implements Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;
.implements Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;


# instance fields
.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mUmInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 41
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    iput-object p1, p0, Lcom/android/server/pm/DomainVerificationConnection;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method


# virtual methods
.method public doesUserExist(I)Z
    .registers 2

    .line 102
    iget-object p0, p0, Lcom/android/server/pm/DomainVerificationConnection;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result p0

    return p0
.end method

.method public filterAppAccess(Ljava/lang/String;II)Z
    .registers 4

    .line 92
    iget-object p0, p0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public getAllUserIds()[I
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/android/server/pm/DomainVerificationConnection;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object p0

    return-object p0
.end method

.method public getCallingUid()I
    .registers 1

    .line 51
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public getCallingUserId()I
    .registers 1

    .line 57
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    return p0
.end method

.method public getDeviceIdleInternal()Lcom/android/server/DeviceIdleInternal;
    .registers 2

    .line 75
    iget-object p0, p0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v0, Lcom/android/server/DeviceIdleInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/DeviceIdleInternal;

    return-object p0
.end method

.method public getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 2

    .line 87
    iget-object p0, p0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    return-object p0
.end method

.method public getPowerSaveTempWhitelistAppDuration()J
    .registers 3

    .line 70
    iget-object p0, p0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/pm/VerificationUtils;->getDefaultVerificationTimeout(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isCallerPackage(ILjava/lang/String;)Z
    .registers 6

    .line 80
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 81
    iget-object p0, p0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-interface {p0, p2, v1, v2, v0}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-ne p1, p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public schedule(ILjava/lang/Object;)V
    .registers 5

    .line 62
    iget-object v0, p0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 63
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 64
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    iget-object p0, p0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleWriteSettings()V
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    return-void
.end method

.method public snapshot()Lcom/android/server/pm/Computer;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    return-object p0
.end method
