.class public Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;
.super Ljava/lang/Object;
.source "OmcPermissionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;,
        Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEFAULT_CONFIG_DIR:Ljava/lang/String; = "/system/etc/omc-default-permissions"

.field public static final DEFAULT_PACKAGE_INFO_QUERY_FLAGS:I = 0x2000b000

.field public static final PROPERTY_AID:Ljava/lang/String; = "ro.boot.activatedid"

.field public static final PROPERTY_LEGACY_SALES_CODE:Ljava/lang/String; = "persist.omc.sales_code"

.field public static final PROPERTY_SALES_CODE:Ljava/lang/String; = "ro.csc.sales_code"

.field public static final TAG:Ljava/lang/String; = "OmcPermissionPolicy"

.field public static final TAG_ACTIVATED_ID:Ljava/lang/String; = "activated-id"

.field public static final TAG_CODE:Ljava/lang/String; = "code"

.field public static final TAG_CSC:Ljava/lang/String; = "csc"

.field public static final TAG_FIRSTBOOT:Ljava/lang/String; = "firstboot"

.field public static final TAG_FIXED:Ljava/lang/String; = "systemfixed"

.field public static final TAG_NAME:Ljava/lang/String; = "name"

.field public static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final TAG_PERMISSION:Ljava/lang/String; = "permission"

.field public static final TAG_REVOKE_PERMISSION:Ljava/lang/String; = "revoke-permission"

.field public static final TAG_SALES_CODE:Ljava/lang/String; = "sales-code"


# instance fields
.field public final mConfigDirs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;)V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->getConfigDirs()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mConfigDirs:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mConfigDirs:Ljava/util/ArrayList;

    return-void
.end method

.method public static createPmServiceProxy(Landroid/content/Context;)Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;
    .registers 2

    .line 381
    new-instance v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final allowlistRestrictedRuntimePermissionsForAll([I)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_55

    .line 138
    array-length v2, v1

    if-gtz v2, :cond_a

    goto :goto_55

    .line 142
    :cond_a
    iget-object v2, v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;

    const v3, 0x2000b000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->getInstalledPackagesProxy(II)Ljava/util/List;

    move-result-object v2

    .line 144
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v5, v4

    :goto_19
    if-ge v5, v3, :cond_55

    .line 146
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 147
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v7, :cond_26

    goto :goto_51

    .line 151
    :cond_26
    array-length v8, v7

    move v9, v4

    :goto_28
    if-ge v9, v8, :cond_51

    aget-object v10, v7, v9

    .line 152
    iget-object v11, v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;

    .line 153
    invoke-virtual {v11, v10}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->getPermissionInfoProxy(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v11

    if-eqz v11, :cond_4d

    .line 154
    iget v11, v11, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v11, v11, 0xc

    if-nez v11, :cond_3b

    goto :goto_4d

    .line 158
    :cond_3b
    array-length v11, v1

    move v12, v4

    :goto_3d
    if-ge v12, v11, :cond_4d

    aget v13, v1, v12

    .line 159
    iget-object v14, v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;

    iget-object v15, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v14, v15, v10, v4, v13}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->addAllowlistedRestrictedPermissionProxy(Ljava/lang/String;Ljava/lang/String;II)V

    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    goto :goto_3d

    :cond_4d
    :goto_4d
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    goto :goto_28

    :cond_51
    :goto_51
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_19

    :cond_55
    :goto_55
    return-void
.end method

.method public final getConfigDirs()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "/system/etc/omc-default-permissions"

    .line 90
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v0, Ljava/io/File;

    const-string v1, "mdc.sys.omc_etcpath"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "omc-default-permissions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    return-object p0
.end method

.method public grantDefaultPermissions([IZ)V
    .registers 5

    .line 105
    iget-object v0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mConfigDirs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    invoke-virtual {p0, p1, v1, p2}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->grantDefaultPermissionsInternal([ILjava/lang/String;Z)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final grantDefaultPermissionsInternal([ILjava/lang/String;Z)V
    .registers 9

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "grantDefaultPermissionsInternal : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firstBootOrUpgrade: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OmcPermissionPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_2a

    return-void

    .line 118
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->allowlistRestrictedRuntimePermissionsForAll([I)V

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_33
    if-ge v1, v0, :cond_5a

    aget-object v2, p2, v1

    .line 120
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3e

    goto :goto_57

    .line 123
    :cond_3e
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4b

    goto :goto_57

    .line 127
    :cond_4b
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p3}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->grantOrRevokePermissions(Ljava/lang/String;[IZ)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception v2

    .line 129
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_5a
    return-void
.end method

.method public final grantOrRevokePermissions(Ljava/lang/String;[IZ)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move/from16 v3, p3

    .line 170
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->readDefaultPermissionXML(Ljava/lang/String;Z)Landroid/util/ArrayMap;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_127

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 173
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;

    if-eqz v4, :cond_123

    if-nez v3, :cond_31

    goto :goto_14

    .line 177
    :cond_31
    iget-object v5, v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;

    const v6, 0x2000b000

    invoke-virtual {v5, v4, v6}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->getPackageInfoProxy(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    if-eqz v11, :cond_123

    .line 179
    iget-object v5, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v5, :cond_41

    goto :goto_14

    .line 182
    :cond_41
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-nez v5, :cond_48

    goto :goto_14

    .line 186
    :cond_48
    array-length v12, v1

    const/4 v13, 0x0

    move v14, v13

    :goto_4b
    if-ge v14, v12, :cond_123

    aget v15, v1, v14

    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Granting permission for package <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "> userId <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v10, "OmcPermissionPolicy"

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {v3}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->getFixedGrantedPermission()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_86

    .line 190
    iget-object v5, v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;

    .line 191
    invoke-virtual {v3}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->getFixedGrantedPermission()Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x1

    .line 190
    invoke-virtual {v5, v11, v6, v7, v15}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->grantRuntimePermissionsProxy(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 193
    :cond_86
    invoke-virtual {v3}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->getNonFixedGrantedPermission()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_99

    .line 194
    iget-object v5, v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;

    .line 195
    invoke-virtual {v3}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->getNonFixedGrantedPermission()Ljava/util/Set;

    move-result-object v6

    .line 194
    invoke-virtual {v5, v11, v6, v13, v15}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->grantRuntimePermissionsProxy(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 198
    :cond_99
    iget-object v5, v11, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v5, :cond_b3

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " use shared user id, skip revoke permission."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11b

    .line 200
    :cond_b3
    invoke-virtual {v3}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->getRevokedPermission()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_11b

    .line 201
    invoke-virtual {v3}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->getRevokedPermission()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_c5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_d5

    goto :goto_c5

    .line 206
    :cond_d5
    :try_start_d5
    iget-object v5, v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;
    :try_end_d7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d5 .. :try_end_d7} :catch_f7

    const v8, 0x3fbff

    const/16 v17, 0x0

    move-object v6, v9

    move-object v7, v4

    move-object v13, v9

    move/from16 v9, v17

    move-object v1, v10

    move v10, v15

    :try_start_e3
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->updatePermissionFlagsProxy(Ljava/lang/String;Ljava/lang/String;III)V

    .line 208
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 209
    invoke-interface {v5, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v6, v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;
    :try_end_f0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e3 .. :try_end_f0} :catch_f5

    const/4 v7, 0x0

    :try_start_f1
    invoke-virtual {v6, v4, v5, v7, v15}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->revokeRuntimePermissionsProxy(Ljava/lang/String;Ljava/util/Set;ZI)V
    :try_end_f4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f1 .. :try_end_f4} :catch_fa

    goto :goto_116

    :catch_f5
    const/4 v7, 0x0

    goto :goto_fa

    :catch_f7
    move-object v1, v10

    move v7, v13

    move-object v13, v9

    .line 213
    :catch_fa
    :goto_fa
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_116
    move-object v10, v1

    move v13, v7

    move-object/from16 v1, p2

    goto :goto_c5

    :cond_11b
    :goto_11b
    move v7, v13

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p2

    move v13, v7

    goto/16 :goto_4b

    :cond_123
    move-object/from16 v1, p2

    goto/16 :goto_14

    :cond_127
    return-void
.end method

.method public final readDefaultPermissionPackage(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;",
            ">;)V"
        }
    .end annotation

    const-string p0, "OmcPermissionPolicy"

    const-string v0, "name"

    const/4 v1, 0x0

    .line 312
    :try_start_5
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read permission for package <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v3, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;

    invoke-direct {v3, v1}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;-><init>(Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission-IA;)V

    .line 316
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 318
    :cond_2b
    :goto_2b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_8e

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3b

    .line 319
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v4, :cond_8e

    :cond_3b
    if-eq v5, v6, :cond_2b

    const/4 v6, 0x4

    if-ne v5, v6, :cond_41

    goto :goto_2b

    .line 324
    :cond_41
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "permission"

    .line 327
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 328
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "systemfixed"

    .line 330
    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 329
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 331
    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->addGrantedPermission(Ljava/lang/String;Z)V

    goto :goto_2b

    :cond_61
    const-string/jumbo v6, "revoke-permission"

    .line 335
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 336
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 337
    invoke-virtual {v3, v5}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->addRevokePermission(Ljava/lang/String;)V

    goto :goto_2b

    .line 339
    :cond_72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <defaultgrant - package>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 339
    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2b

    .line 344
    :cond_8e
    invoke-virtual {p2, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_91} :catch_92

    goto :goto_ab

    :catch_92
    move-exception p1

    .line 346
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ab
    return-void
.end method

.method public final readDefaultPermissionXML(Ljava/lang/String;Z)Landroid/util/ArrayMap;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;",
            ">;"
        }
    .end annotation

    const-string v0, "OmcPermissionPolicy"

    .line 224
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 226
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_13

    return-object v1

    .line 231
    :cond_13
    :try_start_13
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_12c

    .line 232
    :try_start_18
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 233
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 235
    :goto_25
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_30

    if-eq v3, v5, :cond_30

    goto :goto_25

    :cond_30
    if-ne v3, v4, :cond_11a

    .line 243
    iget-object v3, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;

    const-string/jumbo v4, "ro.boot.activatedid"

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->getSystemPropertyProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    iget-object v4, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;

    const-string/jumbo v6, "persist.omc.sales_code"

    invoke-virtual {v4, v6}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->getSystemPropertyProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 245
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 246
    iget-object v4, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;

    const-string/jumbo v6, "ro.csc.sales_code"

    invoke-virtual {v4, v6}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->getSystemPropertyProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 248
    :cond_53
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current sales code : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", aid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 250
    :cond_73
    :goto_73
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v5, :cond_116

    const/4 v8, 0x3

    if-ne v7, v8, :cond_82

    .line 251
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v6, :cond_116

    :cond_82
    if-eq v7, v8, :cond_73

    const/4 v8, 0x4

    if-ne v7, v8, :cond_88

    goto :goto_73

    .line 256
    :cond_88
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string/jumbo v9, "sales-code"

    .line 258
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_94
    .catchall {:try_start_18 .. :try_end_94} :catchall_122

    const-string v10, "firstboot"

    const-string v11, "code"

    const/4 v12, 0x0

    if-eqz v9, :cond_c3

    :try_start_9b
    const-string v7, "csc"

    .line 259
    invoke-interface {v2, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a7

    .line 261
    invoke-interface {v2, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_a7
    if-eqz v7, :cond_af

    .line 264
    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b0

    :cond_af
    move v8, v5

    .line 268
    :cond_b0
    invoke-interface {v2, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz p2, :cond_bd

    if-nez v7, :cond_bd

    move v8, v5

    :cond_bd
    if-eqz v8, :cond_73

    .line 275
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_73

    :cond_c3
    const-string v9, "activated-id"

    .line 278
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_eb

    .line 279
    invoke-interface {v2, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d7

    .line 280
    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d8

    :cond_d7
    move v8, v5

    .line 284
    :cond_d8
    invoke-interface {v2, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz p2, :cond_e5

    if-nez v7, :cond_e5

    move v8, v5

    :cond_e5
    if-eqz v8, :cond_73

    .line 291
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_73

    :cond_eb
    const-string/jumbo v8, "package"

    .line 296
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f9

    .line 297
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->readDefaultPermissionPackage(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V

    goto/16 :goto_73

    .line 299
    :cond_f9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <defaultgrant>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_114
    .catchall {:try_start_9b .. :try_end_114} :catchall_122

    goto/16 :goto_73

    .line 303
    :cond_116
    :try_start_116
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_119} :catch_12c

    goto :goto_145

    .line 241
    :cond_11a
    :try_start_11a
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "No start tag found in packages file"

    invoke-direct {p0, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_122
    .catchall {:try_start_11a .. :try_end_122} :catchall_122

    :catchall_122
    move-exception p0

    .line 231
    :try_start_123
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_127

    goto :goto_12b

    :catchall_127
    move-exception p1

    :try_start_128
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12b
    throw p0
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_12c} :catch_12c

    :catch_12c
    move-exception p0

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_145
    return-object v1
.end method
