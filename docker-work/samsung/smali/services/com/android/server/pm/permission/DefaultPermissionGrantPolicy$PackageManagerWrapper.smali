.class public abstract Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "PackageManagerWrapper"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V
    .registers 2

    .line 2509
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V

    return-void
.end method


# virtual methods
.method public getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2564
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2569
    :cond_8
    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
.end method

.method public abstract getPermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)I
.end method

.method public abstract getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;
.end method

.method public getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 2

    .line 2530
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 2531
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_10

    :cond_f
    return-object p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract grantPermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V
.end method

.method public abstract isGranted(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Z
.end method

.method public isPermissionDangerous(Ljava/lang/String;)Z
    .registers 3

    .line 2547
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return p1

    .line 2552
    :cond_8
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_10

    move p1, v0

    :cond_10
    return p1
.end method

.method public isPermissionRestricted(Ljava/lang/String;)Z
    .registers 2

    .line 2538
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 2543
    :cond_8
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->isRestricted()Z

    move-result p0

    return p0
.end method

.method public isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageInfo;)Z
    .registers 5

    .line 2585
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_e

    const/4 p0, 0x1

    return p0

    .line 2588
    :cond_e
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    return v1

    .line 2591
    :cond_18
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetmServiceInternal(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2592
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2591
    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 2594
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_40

    .line 2595
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_40

    return v1

    .line 2599
    :cond_37
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_40

    return v1

    .line 2602
    :cond_40
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetmServiceInternal(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSystemPackage(Landroid/content/pm/PackageInfo;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2580
    :cond_4
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2581
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    if-nez p0, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method public isSystemPackage(Ljava/lang/String;)Z
    .registers 2

    .line 2573
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    return p0
.end method

.method public abstract revokePermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V
.end method

.method public abstract updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V
.end method
