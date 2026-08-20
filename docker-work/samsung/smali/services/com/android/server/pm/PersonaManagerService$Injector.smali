.class public Lcom/android/server/pm/PersonaManagerService$Injector;
.super Ljava/lang/Object;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mBaseUserPath:Ljava/io/File;

.field public final mContainerDependencyWrapper:Lcom/android/server/knox/ContainerDependencyWrapper;

.field public final mContext:Landroid/content/Context;

.field public final mCorePackageUid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mDataDir:Ljava/io/File;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mIsTestingMode:Z

.field public final mObject:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

.field public final mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;Lcom/android/server/knox/ContainerDependencyWrapper;Lcom/samsung/android/knox/PersonaManagerInternal;Landroid/app/admin/DevicePolicyManager;Ljava/util/ArrayList;Landroid/app/ActivityManager;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Lcom/android/server/knox/PersonaPolicyManagerService;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/lang/Object;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Lcom/android/server/knox/ContainerDependencyWrapper;",
            "Lcom/samsung/android/knox/PersonaManagerInternal;",
            "Landroid/app/admin/DevicePolicyManager;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/app/ActivityManager;",
            "Landroid/content/pm/PackageManager;",
            "Landroid/os/UserManager;",
            "Lcom/android/server/knox/PersonaPolicyManagerService;",
            "Z)V"
        }
    .end annotation

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    .line 464
    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 465
    iput-object p3, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mObject:Ljava/lang/Object;

    .line 466
    iput-object p4, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mDataDir:Ljava/io/File;

    .line 467
    iput-object p5, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mBaseUserPath:Ljava/io/File;

    .line 468
    iput-object p7, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 469
    iput-object p8, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 470
    iput-boolean p14, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mIsTestingMode:Z

    .line 471
    iput-object p9, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mCorePackageUid:Ljava/util/ArrayList;

    .line 472
    iput-object p10, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mActivityManager:Landroid/app/ActivityManager;

    .line 473
    iput-object p11, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 474
    iput-object p12, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mUserManager:Landroid/os/UserManager;

    .line 475
    iput-object p6, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContainerDependencyWrapper:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 476
    iput-object p13, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    return-void
.end method


# virtual methods
.method public binderClearCallingIdentity()J
    .registers 3

    .line 480
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public binderRestoreCallingIdentity(J)V
    .registers 3

    .line 484
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public getActivityManager()Landroid/app/ActivityManager;
    .registers 2

    .line 524
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    return-object p0
.end method

.method public getBaseUserPath()Ljava/io/File;
    .registers 1

    .line 504
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mBaseUserPath:Ljava/io/File;

    return-object p0
.end method

.method public getContainerDependencyWrapper()Lcom/android/server/knox/ContainerDependencyWrapper;
    .registers 1

    .line 508
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ContainerDependencyWrapper;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 488
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCorePackageUid()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 520
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mCorePackageUid:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getDataDir()Ljava/io/File;
    .registers 1

    .line 500
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mDataDir:Ljava/io/File;

    return-object p0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 1

    .line 516
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method public getObject()Ljava/lang/Object;
    .registers 1

    .line 496
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mObject:Ljava/lang/Object;

    return-object p0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .registers 1

    .line 528
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .registers 1

    .line 492
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object p0
.end method

.method public getPersonaManagerInternal()Lcom/samsung/android/knox/PersonaManagerInternal;
    .registers 1

    .line 512
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    return-object p0
.end method

.method public getPersonaPolicyManagerService()Lcom/android/server/knox/PersonaPolicyManagerService;
    .registers 1

    .line 536
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/PersonaPolicyManagerService;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/PersonaPolicyManagerService;

    move-result-object p0

    return-object p0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 532
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method

.method public isTestingMode()Z
    .registers 1

    .line 540
    iget-boolean p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mIsTestingMode:Z

    return p0
.end method
