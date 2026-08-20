.class public Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PermissionState"
.end annotation


# instance fields
.field public mOriginalFlags:Ljava/lang/Integer;

.field public mOriginalGranted:Ljava/lang/Boolean;

.field public final mPermission:Ljava/lang/String;

.field public final mPkgRequestingPerm:Landroid/content/pm/PackageInfo;

.field public final mUser:Landroid/os/UserHandle;

.field public newFlags:Ljava/lang/Integer;

.field public newGranted:Ljava/lang/Boolean;

.field public final synthetic this$1:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V
    .registers 5

    .line 2778
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->this$1:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2779
    iput-object p2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPermission:Ljava/lang/String;

    .line 2780
    iput-object p3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPkgRequestingPerm:Landroid/content/pm/PackageInfo;

    .line 2781
    iput-object p4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mUser:Landroid/os/UserHandle;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public apply()V
    .registers 15

    .line 2796
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newFlags:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 2797
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mOriginalFlags:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    not-int v1, v1

    and-int/2addr v1, v0

    .line 2798
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mOriginalFlags:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newFlags:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    not-int v2, v2

    and-int/2addr v0, v2

    move v5, v0

    goto :goto_22

    :cond_21
    move v5, v1

    :goto_22
    if-eqz v5, :cond_36

    .line 2804
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->this$1:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;

    iget-object v0, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetNO_PM_CACHE(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPermission:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPkgRequestingPerm:Landroid/content/pm/PackageInfo;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mUser:Landroid/os/UserHandle;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    :cond_36
    and-int/lit16 v11, v1, 0x3800

    if-eqz v11, :cond_4c

    .line 2813
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->this$1:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;

    iget-object v0, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetNO_PM_CACHE(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPermission:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPkgRequestingPerm:Landroid/content/pm/PackageInfo;

    const/4 v12, -0x1

    iget-object v13, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mUser:Landroid/os/UserHandle;

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    .line 2817
    :cond_4c
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newGranted:Ljava/lang/Boolean;

    if-eqz v0, :cond_7d

    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mOriginalGranted:Ljava/lang/Boolean;

    if-eq v0, v2, :cond_7d

    .line 2818
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 2819
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->this$1:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;

    iget-object v0, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetNO_PM_CACHE(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPermission:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPkgRequestingPerm:Landroid/content/pm/PackageInfo;

    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->grantPermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V

    goto :goto_7d

    .line 2821
    :cond_6c
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->this$1:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;

    iget-object v0, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetNO_PM_CACHE(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPermission:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPkgRequestingPerm:Landroid/content/pm/PackageInfo;

    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->revokePermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V

    :cond_7d
    :goto_7d
    and-int/lit16 v8, v1, -0x3801

    if-eqz v8, :cond_93

    .line 2829
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->this$1:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;

    iget-object v0, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetNO_PM_CACHE(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPermission:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPkgRequestingPerm:Landroid/content/pm/PackageInfo;

    const/4 v9, -0x1

    iget-object v10, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mUser:Landroid/os/UserHandle;

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    :cond_93
    return-void
.end method

.method public initFlags()V
    .registers 5

    .line 2838
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newFlags:Ljava/lang/Integer;

    if-nez v0, :cond_1e

    .line 2839
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->this$1:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;

    iget-object v0, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetNO_PM_CACHE(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPermission:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPkgRequestingPerm:Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mOriginalFlags:Ljava/lang/Integer;

    .line 2841
    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newFlags:Ljava/lang/Integer;

    :cond_1e
    return-void
.end method

.method public initGranted()V
    .registers 4

    .line 2849
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newGranted:Ljava/lang/Boolean;

    if-nez v0, :cond_27

    .line 2851
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->this$1:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;

    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mUser:Landroid/os/UserHandle;

    invoke-static {v0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->-$$Nest$mcreateContextAsUser(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPermission:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPkgRequestingPerm:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2852
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 2851
    :goto_1f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mOriginalGranted:Ljava/lang/Boolean;

    .line 2854
    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newGranted:Ljava/lang/Boolean;

    :cond_27
    return-void
.end method
