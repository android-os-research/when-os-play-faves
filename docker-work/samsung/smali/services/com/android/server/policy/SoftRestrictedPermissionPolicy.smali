.class public abstract Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
.super Ljava/lang/Object;
.source "SoftRestrictedPermissionPolicy.java"


# static fields
.field public static final DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

.field public static final FLAGS_PERMISSION_RESTRICTION_ANY_EXEMPT:I = 0x3800

.field public static final sForcedScopedStorageAppWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 63
    new-instance v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$1;

    invoke-direct {v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$1;-><init>()V

    sput-object v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    .line 72
    invoke-static {}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getForcedScopedStorageAppWhitelist()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->sForcedScopedStorageAppWhitelist:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 122
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_40

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 254
    sget-object v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    return-object v0

    :cond_20
    if-eqz v1, :cond_39

    .line 237
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3, v7, v2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3

    and-int/lit16 v3, v3, 0x3800

    if-eqz v3, :cond_31

    goto :goto_32

    :cond_31
    move v5, v6

    .line 240
    :goto_32
    invoke-static {v0, v1, v2}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I

    move-result v6

    move v0, v6

    move v6, v5

    goto :goto_3a

    :cond_39
    move v0, v6

    .line 246
    :goto_3a
    new-instance v1, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;

    invoke-direct {v1, v6, v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;-><init>(ZI)V

    return-object v1

    :cond_40
    if-eqz v1, :cond_90

    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 138
    const-class v7, Landroid/os/storage/StorageManagerInternal;

    .line 139
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManagerInternal;

    .line 140
    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3, v8, v2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3

    and-int/lit16 v4, v3, 0x3800

    if-eqz v4, :cond_5a

    move v4, v5

    goto :goto_5b

    :cond_5a
    move v4, v6

    .line 142
    :goto_5b
    iget v8, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManagerInternal;->hasLegacyExternalStorage(I)Z

    move-result v7

    .line 143
    iget v8, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8, v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->hasUidRequestedLegacyExternalStorage(ILandroid/content/Context;)Z

    move-result v8

    .line 145
    iget v9, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->hasWriteMediaStorageGrantedForUid(ILandroid/content/Context;)Z

    move-result v9

    .line 148
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->hasPreserveLegacyExternalStorage()Z

    move-result v10

    .line 149
    invoke-static {v0, v1, v2}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I

    move-result v0

    and-int/lit16 v2, v3, 0x4000

    if-eqz v2, :cond_7a

    goto :goto_7b

    :cond_7a
    move v5, v6

    .line 152
    :goto_7b
    sget-object v2, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->sForcedScopedStorageAppWhitelist:Ljava/util/HashSet;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 153
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    move v13, v0

    move v12, v4

    move v14, v5

    move v15, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v16, v9

    move/from16 v19, v10

    goto :goto_9c

    :cond_90
    move v12, v6

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    .line 169
    :goto_9c
    new-instance v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;

    move-object v11, v0

    invoke-direct/range {v11 .. v19}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;-><init>(ZIZZZZZZ)V

    return-object v0
.end method

.method public static getForcedScopedStorageAppWhitelist()[Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "storage_native_boot"

    const-string v1, "forced_scoped_storage_whitelist"

    const-string v2, ""

    .line 296
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 298
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_1b

    :cond_14
    const-string v1, ","

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I
    .registers 10

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 88
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 90
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 92
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_2a

    aget-object v5, v1, v4

    .line 93
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    .line 96
    :try_start_1d
    invoke-virtual {p0, v5, v3, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_21} :catch_27

    .line 101
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0, v5}, Ljava/lang/Integer;->min(II)I

    move-result v0

    :catch_27
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_2a
    return v0
.end method

.method public static hasUidRequestedLegacyExternalStorage(ILandroid/content/Context;)Z
    .registers 7

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 260
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 264
    :cond_c
    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 265
    array-length v2, v0

    move v3, v1

    :goto_12
    if-ge v3, v2, :cond_25

    aget-object v4, v0, v3

    .line 268
    :try_start_16
    invoke-virtual {p1, v4, v1, p0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_1a} :catch_22

    .line 272
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->hasRequestedLegacyExternalStorage()Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 p0, 0x1

    return p0

    :catch_22
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_25
    return v1
.end method

.method public static hasWriteMediaStorageGrantedForUid(ILandroid/content/Context;)Z
    .registers 7

    .line 280
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 281
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    .line 286
    :cond_c
    array-length v1, p0

    move v2, v0

    :goto_e
    if-ge v2, v1, :cond_1f

    aget-object v3, p0, v2

    const-string v4, "android.permission.WRITE_MEDIA_STORAGE"

    .line 287
    invoke-virtual {p1, v4, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1f
    return v0
.end method


# virtual methods
.method public getExtraAppOpCode()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public mayAllowExtraAppOp()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public mayDenyExtraAppOpIfGranted()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract mayGrantPermission()Z
.end method
