.class public Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultSystemWrapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public disablePackageCaches()V
    .registers 1

    .line 937
    invoke-static {}, Landroid/content/pm/PackageManager;->disableApplicationInfoCache()V

    .line 938
    invoke-static {}, Landroid/content/pm/PackageManager;->disablePackageInfoCache()V

    .line 939
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateGetPackagesForUidCache()V

    .line 940
    invoke-static {}, Landroid/app/ApplicationPackageManager;->disableGetPackagesForUidCache()V

    .line 941
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateHasSystemFeatureCache()V

    .line 942
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    return-void
.end method

.method public enablePackageCaches()V
    .registers 1

    .line 947
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    return-void
.end method
