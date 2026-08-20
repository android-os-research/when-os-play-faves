.class public final Lcom/android/internal/telephony/CarrierAppUtils;
.super Ljava/lang/Object;
.source "CarrierAppUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "CarrierAppUtils"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized blacklist disableCarrierAppsUntilPrivileged(Ljava/lang/String;ILandroid/content/Context;)V
    .registers 12
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/internal/telephony/CarrierAppUtils;

    monitor-enter v0

    .line 110
    :try_start_3
    const-class v1, Landroid/os/SystemConfigManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemConfigManager;

    .line 111
    .local v1, "config":Landroid/os/SystemConfigManager;
    nop

    .line 112
    invoke-virtual {v1}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/Set;

    move-result-object v6

    .line 114
    .local v6, "systemCarrierAppsDisabledUntilUsed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 115
    invoke-virtual {v1}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries()Ljava/util/Map;

    move-result-object v7

    .line 116
    .local v7, "systemCarrierAssociatedAppsDisabledUntilUsed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;>;"
    invoke-static {p2, p1}, Lcom/android/internal/telephony/CarrierAppUtils;->getContentResolverForUser(Landroid/content/Context;I)Landroid/content/ContentResolver;

    move-result-object v4

    .line 117
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    move-object v2, p0

    move v5, p1

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;ILjava/util/Set;Ljava/util/Map;Landroid/content/Context;)V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_22

    .line 120
    monitor-exit v0

    return-void

    .line 109
    .end local v1    # "config":Landroid/os/SystemConfigManager;
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v6    # "systemCarrierAppsDisabledUntilUsed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "systemCarrierAssociatedAppsDisabledUntilUsed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;>;"
    .end local p0    # "callingPackage":Ljava/lang/String;
    .end local p1    # "userId":I
    .end local p2    # "context":Landroid/content/Context;
    :catchall_22
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized blacklist disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;ILandroid/content/Context;)V
    .registers 13
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p2, "userId"    # I
    .param p3, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/internal/telephony/CarrierAppUtils;

    monitor-enter v0

    .line 83
    :try_start_3
    const-class v1, Landroid/os/SystemConfigManager;

    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemConfigManager;

    .line 84
    .local v1, "config":Landroid/os/SystemConfigManager;
    nop

    .line 85
    invoke-virtual {v1}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/Set;

    move-result-object v6

    .line 86
    .local v6, "systemCarrierAppsDisabledUntilUsed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 87
    invoke-virtual {v1}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries()Ljava/util/Map;

    move-result-object v7

    .line 88
    .local v7, "systemCarrierAssociatedAppsDisabledUntilUsed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;>;"
    invoke-static {p3, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getContentResolverForUser(Landroid/content/Context;I)Landroid/content/ContentResolver;

    move-result-object v4

    .line 89
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-object v8, p3

    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;ILjava/util/Set;Ljava/util/Map;Landroid/content/Context;)V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_22

    .line 92
    monitor-exit v0

    return-void

    .line 82
    .end local v1    # "config":Landroid/os/SystemConfigManager;
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v6    # "systemCarrierAppsDisabledUntilUsed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "systemCarrierAssociatedAppsDisabledUntilUsed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;>;"
    .end local p0    # "callingPackage":Ljava/lang/String;
    .end local p1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local p2    # "userId":I
    .end local p3    # "context":Landroid/content/Context;
    :catchall_22
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static blacklist disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;ILjava/util/Set;Ljava/util/Map;Landroid/content/Context;)V
    .registers 39
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "userId"    # I
    .param p6, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/telephony/TelephonyManager;",
            "Landroid/content/ContentResolver;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/CarrierAssociatedAppEntry;",
            ">;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 143
    .local p4, "systemCarrierAppsDisabledUntilUsed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "systemCarrierAssociatedAppsDisabledUntilUsed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    const-string v6, "CarrierAppUtils"

    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 144
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    nop

    .line 145
    const-string/jumbo v0, "legacy_permission"

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/permission/LegacyPermissionManager;

    .line 146
    .local v8, "permissionManager":Landroid/permission/LegacyPermissionManager;
    move-object/from16 v9, p4

    invoke-static {v4, v9, v5}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(ILjava/util/Set;Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    .line 148
    .local v10, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v10, :cond_397

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    move-object v2, v3

    move-object/from16 v20, v7

    move-object/from16 v19, v10

    goto/16 :goto_39c

    .line 152
    :cond_30
    move-object/from16 v11, p5

    invoke-static {v4, v11, v5}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAssociatedAppsHelper(ILjava/util/Map;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v12

    .line 155
    .local v12, "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 156
    .local v13, "enabledCarrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    .line 157
    const-string v14, "carrier_apps_handled"

    const/4 v15, 0x0

    invoke-static {v3, v14, v15, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    .line 162
    .local v9, "carrierAppsHandledSdk":I
    if-eqz v9, :cond_4d

    const/16 v16, 0x1

    goto :goto_4f

    :cond_4d
    move/from16 v16, v15

    .line 163
    .local v16, "hasRunEver":Z
    :goto_4f
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v9, v15, :cond_55

    const/4 v15, 0x1

    goto :goto_56

    :cond_55
    const/4 v15, 0x0

    .line 166
    .local v15, "hasRunForSdk":Z
    :goto_56
    :try_start_56
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18
    :try_end_5e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_56 .. :try_end_5e} :catch_389

    if-eqz v18, :cond_33c

    :try_start_60
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ApplicationInfo;
    :try_end_66
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_60 .. :try_end_66} :catch_332

    move-object/from16 v19, v18

    .line 167
    .local v19, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v19

    move-object/from16 v19, v10

    .end local v10    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    .local v19, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :try_start_6c
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_6e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6c .. :try_end_6e} :catch_329

    .line 168
    .local v10, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_81

    .line 169
    :try_start_70
    invoke-virtual {v2, v10}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v11
    :try_end_74
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_70 .. :try_end_74} :catch_79

    const/4 v2, 0x1

    if-ne v11, v2, :cond_81

    const/4 v2, 0x1

    goto :goto_82

    .line 322
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "packageName":Ljava/lang/String;
    :catch_79
    move-exception v0

    move-object v2, v3

    move-object/from16 v20, v7

    move-object/from16 v21, v12

    goto/16 :goto_391

    .line 169
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "packageName":Ljava/lang/String;
    :cond_81
    const/4 v2, 0x0

    .line 173
    .local v2, "hasPrivileges":Z
    :goto_82
    const/4 v11, 0x0

    :try_start_83
    invoke-virtual {v7, v10, v11}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V

    .line 175
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;
    :try_end_8c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_83 .. :try_end_8c} :catch_329

    .line 176
    .local v11, "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    if-eqz v11, :cond_ca

    .line 177
    :try_start_8e
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_92
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_bd

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    :try_end_9e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8e .. :try_end_9e} :catch_c2

    move-object/from16 v22, v21

    .line 178
    .local v22, "associatedApp":Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    move-object/from16 v21, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v8

    .end local v8    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .local v12, "associatedApp":Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    .local v21, "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .local v22, "permissionManager":Landroid/permission/LegacyPermissionManager;
    :try_start_a6
    iget-object v8, v12, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v12

    const/4 v12, 0x0

    .end local v12    # "associatedApp":Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    .local v23, "associatedApp":Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    invoke-virtual {v7, v8, v12}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V
    :try_end_b0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a6 .. :try_end_b0} :catch_b5

    .line 180
    .end local v23    # "associatedApp":Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    move-object/from16 v12, v21

    move-object/from16 v8, v22

    goto :goto_92

    .line 322
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "hasPrivileges":Z
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    :catch_b5
    move-exception v0

    move-object v2, v3

    move-object/from16 v20, v7

    move-object/from16 v8, v22

    goto/16 :goto_391

    .line 177
    .end local v21    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .end local v22    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "hasPrivileges":Z
    .restart local v8    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v11    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    .local v12, "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    :cond_bd
    move-object/from16 v22, v8

    move-object/from16 v21, v12

    .end local v8    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .end local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v21    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v22    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    goto :goto_ce

    .line 322
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "hasPrivileges":Z
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    .end local v21    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .end local v22    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .restart local v8    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .restart local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    :catch_c2
    move-exception v0

    move-object/from16 v21, v12

    move-object v2, v3

    move-object/from16 v20, v7

    .end local v8    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .end local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v21    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v22    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    goto/16 :goto_391

    .line 176
    .end local v21    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .end local v22    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "hasPrivileges":Z
    .restart local v8    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v11    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    .restart local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    :cond_ca
    move-object/from16 v22, v8

    move-object/from16 v21, v12

    .line 183
    .end local v8    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .end local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v21    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v22    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    :goto_ce
    :try_start_ce
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    const/4 v12, 0x0

    invoke-virtual {v5, v8, v12}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v8

    .line 184
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v8
    :try_end_df
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ce .. :try_end_df} :catch_320

    .line 185
    .local v8, "enabledSetting":I
    const-string v12, "Update associated state ("

    move-object/from16 v20, v7

    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .local v20, "packageManager":Landroid/content/pm/PackageManager;
    const-string v7, "Update state ("

    const/high16 v23, 0x800000

    if-eqz v2, :cond_200

    .line 188
    :try_start_e9
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierAppUtils;->isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v24
    :try_end_ed
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e9 .. :try_end_ed} :catch_1f9

    move/from16 v25, v2

    .end local v2    # "hasPrivileges":Z
    .local v25, "hasPrivileges":Z
    const-string v2, "): ENABLED for user "

    const/4 v3, 0x4

    if-nez v24, :cond_f6

    if-eqz v8, :cond_106

    :cond_f6
    if-eq v8, v3, :cond_106

    :try_start_f8
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_fa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f8 .. :try_end_fa} :catch_ff

    and-int v3, v3, v23

    if-nez v3, :cond_144

    goto :goto_106

    .line 322
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "enabledSetting":I
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    .end local v25    # "hasPrivileges":Z
    :catch_ff
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v8, v22

    goto/16 :goto_391

    .line 193
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "enabledSetting":I
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v11    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    .restart local v25    # "hasPrivileges":Z
    :cond_106
    :goto_106
    :try_start_106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    .line 196
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 197
    const/4 v7, 0x2

    invoke-virtual {v3, v10, v7}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V

    .line 199
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 200
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 201
    const/4 v7, 0x1

    invoke-virtual {v3, v10, v7, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 208
    :cond_144
    if-eqz v11, :cond_1eb

    .line 209
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;

    .line 210
    .local v7, "associatedApp":Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    nop

    .line 211
    move-object/from16 v27, v3

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    move-object/from16 v28, v14

    const/4 v14, 0x0

    invoke-virtual {v5, v3, v14}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    .line 212
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v14, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 213
    invoke-virtual {v3, v14}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    .line 215
    .local v3, "associatedAppEnabledSetting":I
    iget-object v14, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_174
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_106 .. :try_end_174} :catch_1f9

    and-int v14, v14, v23

    if-eqz v14, :cond_17a

    const/4 v14, 0x1

    goto :goto_17b

    :cond_17a
    const/4 v14, 0x0

    .line 223
    .local v14, "associatedAppInstalled":Z
    :goto_17b
    if-eqz v3, :cond_189

    move/from16 v29, v9

    const/4 v9, 0x4

    .end local v9    # "carrierAppsHandledSdk":I
    .local v29, "carrierAppsHandledSdk":I
    if-eq v3, v9, :cond_18c

    if-nez v14, :cond_185

    goto :goto_18c

    :cond_185
    move-object/from16 v31, v2

    const/4 v2, 0x1

    goto :goto_1db

    .end local v29    # "carrierAppsHandledSdk":I
    .restart local v9    # "carrierAppsHandledSdk":I
    :cond_189
    move/from16 v29, v9

    const/4 v9, 0x4

    .line 228
    .end local v9    # "carrierAppsHandledSdk":I
    .restart local v29    # "carrierAppsHandledSdk":I
    :cond_18c
    :goto_18c
    :try_start_18c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v30, v3

    .end local v3    # "associatedAppEnabledSetting":I
    .local v30, "associatedAppEnabledSetting":I
    iget-object v3, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v5, v3, v9}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    .line 232
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v9, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 233
    move-object/from16 v31, v2

    const/4 v2, 0x2

    invoke-virtual {v3, v9, v2}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V

    .line 235
    nop

    .line 236
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 235
    const/4 v9, 0x0

    invoke-virtual {v5, v1, v9, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 237
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v9, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 238
    const/4 v2, 0x1

    invoke-virtual {v3, v9, v2, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 243
    .end local v7    # "associatedApp":Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    .end local v14    # "associatedAppInstalled":Z
    .end local v30    # "associatedAppEnabledSetting":I
    :goto_1db
    move-object/from16 v3, v27

    move-object/from16 v14, v28

    move/from16 v9, v29

    move-object/from16 v2, v31

    goto/16 :goto_14a

    .line 209
    .end local v29    # "carrierAppsHandledSdk":I
    .restart local v9    # "carrierAppsHandledSdk":I
    :cond_1e5
    move/from16 v29, v9

    move-object/from16 v28, v14

    const/4 v2, 0x1

    .end local v9    # "carrierAppsHandledSdk":I
    .restart local v29    # "carrierAppsHandledSdk":I
    goto :goto_1f0

    .line 208
    .end local v29    # "carrierAppsHandledSdk":I
    .restart local v9    # "carrierAppsHandledSdk":I
    :cond_1eb
    move/from16 v29, v9

    move-object/from16 v28, v14

    const/4 v2, 0x1

    .line 247
    .end local v9    # "carrierAppsHandledSdk":I
    .restart local v29    # "carrierAppsHandledSdk":I
    :goto_1f0
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18c .. :try_end_1f5} :catch_245

    move/from16 v9, v29

    goto/16 :goto_303

    .line 322
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "enabledSetting":I
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    .end local v25    # "hasPrivileges":Z
    .end local v29    # "carrierAppsHandledSdk":I
    .restart local v9    # "carrierAppsHandledSdk":I
    :catch_1f9
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v8, v22

    .end local v9    # "carrierAppsHandledSdk":I
    .restart local v29    # "carrierAppsHandledSdk":I
    goto/16 :goto_391

    .line 251
    .end local v29    # "carrierAppsHandledSdk":I
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "hasPrivileges":Z
    .restart local v8    # "enabledSetting":I
    .restart local v9    # "carrierAppsHandledSdk":I
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v11    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    :cond_200
    move/from16 v25, v2

    move/from16 v29, v9

    move-object/from16 v28, v14

    const/4 v2, 0x1

    .end local v2    # "hasPrivileges":Z
    .end local v9    # "carrierAppsHandledSdk":I
    .restart local v25    # "hasPrivileges":Z
    .restart local v29    # "carrierAppsHandledSdk":I
    :try_start_207
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierAppUtils;->isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3
    :try_end_20b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_207 .. :try_end_20b} :catch_317

    const/4 v9, 0x3

    const-string v14, "): DISABLED_UNTIL_USED for user "

    if-nez v3, :cond_24e

    if-nez v8, :cond_24e

    :try_start_212
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int v3, v3, v23

    if-eqz v3, :cond_24e

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    .line 257
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 258
    invoke-virtual {v3, v10, v9}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V
    :try_end_244
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_212 .. :try_end_244} :catch_245

    goto :goto_24e

    .line 322
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "enabledSetting":I
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    .end local v25    # "hasPrivileges":Z
    :catch_245
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v8, v22

    move/from16 v9, v29

    goto/16 :goto_391

    .line 268
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "enabledSetting":I
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v11    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    .restart local v25    # "hasPrivileges":Z
    :cond_24e
    :goto_24e
    if-eqz v11, :cond_2ff

    .line 269
    :try_start_250
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_254
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2fa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;

    .line 270
    .restart local v7    # "associatedApp":Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    if-eqz v16, :cond_281

    if-nez v15, :cond_27b

    iget v2, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->addedInSdk:I

    const/4 v9, -0x1

    if-eq v2, v9, :cond_27b

    iget v2, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->addedInSdk:I
    :try_end_26b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_250 .. :try_end_26b} :catch_317

    move/from16 v9, v29

    .end local v29    # "carrierAppsHandledSdk":I
    .restart local v9    # "carrierAppsHandledSdk":I
    if-le v2, v9, :cond_278

    :try_start_26f
    iget v2, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->addedInSdk:I

    move-object/from16 v26, v0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v26, "ai":Landroid/content/pm/ApplicationInfo;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, v0, :cond_27f

    goto :goto_285

    .end local v26    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_278
    move-object/from16 v26, v0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v26    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_27f

    .end local v9    # "carrierAppsHandledSdk":I
    .end local v26    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v29    # "carrierAppsHandledSdk":I
    :cond_27b
    move-object/from16 v26, v0

    move/from16 v9, v29

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v29    # "carrierAppsHandledSdk":I
    .restart local v9    # "carrierAppsHandledSdk":I
    .restart local v26    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_27f
    :goto_27f
    const/4 v0, 0x0

    goto :goto_286

    .end local v9    # "carrierAppsHandledSdk":I
    .end local v26    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v29    # "carrierAppsHandledSdk":I
    :cond_281
    move-object/from16 v26, v0

    move/from16 v9, v29

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v29    # "carrierAppsHandledSdk":I
    .restart local v9    # "carrierAppsHandledSdk":I
    .restart local v26    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_285
    const/4 v0, 0x1

    .line 275
    .local v0, "allowDisable":Z
    :goto_286
    nop

    .line 276
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v5, v2, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    .line 277
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 278
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    .line 280
    .local v1, "associatedAppEnabledSetting":I
    iget-object v2, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int v2, v2, v23

    if-eqz v2, :cond_2a6

    const/4 v2, 0x1

    goto :goto_2a7

    :cond_2a6
    const/4 v2, 0x0

    .line 290
    .local v2, "associatedAppInstalled":Z
    :goto_2a7
    if-eqz v0, :cond_2e9

    if-nez v1, :cond_2e9

    if-eqz v2, :cond_2e9

    .line 294
    move/from16 v27, v0

    .end local v0    # "allowDisable":Z
    .local v27, "allowDisable":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v29, v1

    .end local v1    # "associatedAppEnabledSetting":I
    .local v29, "associatedAppEnabledSetting":I
    iget-object v1, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 300
    move/from16 v30, v2

    const/4 v2, 0x3

    .end local v2    # "associatedAppInstalled":Z
    .local v30, "associatedAppInstalled":Z
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V
    :try_end_2e8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26f .. :try_end_2e8} :catch_ff

    goto :goto_2f0

    .line 290
    .end local v27    # "allowDisable":Z
    .end local v29    # "associatedAppEnabledSetting":I
    .end local v30    # "associatedAppInstalled":Z
    .restart local v0    # "allowDisable":Z
    .restart local v1    # "associatedAppEnabledSetting":I
    .restart local v2    # "associatedAppInstalled":Z
    :cond_2e9
    move/from16 v27, v0

    move/from16 v29, v1

    move/from16 v30, v2

    const/4 v2, 0x3

    .line 303
    .end local v0    # "allowDisable":Z
    .end local v1    # "associatedAppEnabledSetting":I
    .end local v2    # "associatedAppInstalled":Z
    .end local v7    # "associatedApp":Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    :goto_2f0
    move-object/from16 v1, p0

    move/from16 v29, v9

    move-object/from16 v0, v26

    move v9, v2

    const/4 v2, 0x1

    goto/16 :goto_254

    .line 269
    .end local v9    # "carrierAppsHandledSdk":I
    .end local v26    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    .local v29, "carrierAppsHandledSdk":I
    :cond_2fa
    move-object/from16 v26, v0

    move/from16 v9, v29

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v29    # "carrierAppsHandledSdk":I
    .restart local v9    # "carrierAppsHandledSdk":I
    .restart local v26    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_303

    .line 268
    .end local v9    # "carrierAppsHandledSdk":I
    .end local v26    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v29    # "carrierAppsHandledSdk":I
    :cond_2ff
    move-object/from16 v26, v0

    move/from16 v9, v29

    .line 306
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "enabledSetting":I
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    .end local v25    # "hasPrivileges":Z
    .end local v29    # "carrierAppsHandledSdk":I
    .restart local v9    # "carrierAppsHandledSdk":I
    :goto_303
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v11, p5

    move-object/from16 v10, v19

    move-object/from16 v7, v20

    move-object/from16 v12, v21

    move-object/from16 v8, v22

    move-object/from16 v14, v28

    goto/16 :goto_5a

    .line 322
    .end local v9    # "carrierAppsHandledSdk":I
    .restart local v29    # "carrierAppsHandledSdk":I
    :catch_317
    move-exception v0

    move/from16 v9, v29

    move-object/from16 v2, p2

    move-object/from16 v8, v22

    .end local v29    # "carrierAppsHandledSdk":I
    .restart local v9    # "carrierAppsHandledSdk":I
    goto/16 :goto_391

    .end local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    :catch_320
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v2, p2

    move-object/from16 v8, v22

    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v20    # "packageManager":Landroid/content/pm/PackageManager;
    goto/16 :goto_391

    .end local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v21    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .end local v22    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .restart local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .local v8, "permissionManager":Landroid/permission/LegacyPermissionManager;
    .restart local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    :catch_329
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v21, v12

    move-object/from16 v2, p2

    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v8    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .end local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v21    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v22    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    goto/16 :goto_391

    .end local v19    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v21    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .end local v22    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .restart local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v8    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .local v10, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    :catch_332
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v19, v10

    move-object/from16 v21, v12

    move-object/from16 v2, p2

    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v8    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .end local v10    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v19    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v21    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v22    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    goto :goto_391

    .line 309
    .end local v19    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v21    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .end local v22    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .restart local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v8    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .restart local v10    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    :cond_33c
    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v19, v10

    move-object/from16 v21, v12

    move-object/from16 v28, v14

    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v8    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .end local v10    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v19    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v21    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v22    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    if-eqz v16, :cond_34e

    if-nez v15, :cond_34b

    goto :goto_34e

    :cond_34b
    move-object/from16 v2, p2

    goto :goto_35b

    .line 310
    :cond_34e
    :goto_34e
    :try_start_34e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1
    :try_end_354
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34e .. :try_end_354} :catch_383

    .line 310
    move-object/from16 v2, p2

    move-object/from16 v3, v28

    :try_start_358
    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 314
    :goto_35b
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37e

    .line 317
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 318
    .local v0, "packageNames":[Ljava/lang/String;
    invoke-interface {v13, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 319
    nop

    .line 320
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/util/TelephonyUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/internal/telephony/CarrierAppUtils$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/internal/telephony/CarrierAppUtils$$ExternalSyntheticLambda0;-><init>()V
    :try_end_376
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_358 .. :try_end_376} :catch_381

    .line 319
    move-object/from16 v8, v22

    .end local v22    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .restart local v8    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    :try_start_378
    invoke-virtual {v8, v0, v1, v3, v7}, Landroid/permission/LegacyPermissionManager;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_37b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_378 .. :try_end_37b} :catch_37c

    goto :goto_380

    .line 322
    .end local v0    # "packageNames":[Ljava/lang/String;
    :catch_37c
    move-exception v0

    goto :goto_391

    .line 314
    .end local v8    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .restart local v22    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    :cond_37e
    move-object/from16 v8, v22

    .line 324
    .end local v22    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .restart local v8    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    :goto_380
    goto :goto_396

    .line 322
    .end local v8    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .restart local v22    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    :catch_381
    move-exception v0

    goto :goto_386

    :catch_383
    move-exception v0

    move-object/from16 v2, p2

    :goto_386
    move-object/from16 v8, v22

    .end local v22    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .restart local v8    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    goto :goto_391

    .end local v19    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v21    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v10    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    :catch_389
    move-exception v0

    move-object v2, v3

    move-object/from16 v20, v7

    move-object/from16 v19, v10

    move-object/from16 v21, v12

    .line 323
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v10    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v12    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v19    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v21    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    :goto_391
    const-string v1, "Could not reach PackageManager"

    invoke-static {v6, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_396
    return-void

    .line 148
    .end local v9    # "carrierAppsHandledSdk":I
    .end local v13    # "enabledCarrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "hasRunForSdk":Z
    .end local v16    # "hasRunEver":Z
    .end local v19    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v21    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    .restart local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v10    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_397
    move-object v2, v3

    move-object/from16 v20, v7

    move-object/from16 v19, v10

    .line 149
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v10    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v19    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v20    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_39c
    return-void
.end method

.method private static blacklist getApplicationInfoIfSystemApp(ILjava/lang/String;Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .registers 6
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 429
    :try_start_0
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x20108000

    .line 431
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_14} :catch_18

    .line 435
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_17

    .line 436
    return-object v0

    .line 440
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_17
    goto :goto_20

    .line 438
    :catch_18
    move-exception v0

    .line 439
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "CarrierAppUtils"

    const-string v2, "Could not reach PackageManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getContentResolverForUser(Landroid/content/Context;I)Landroid/content/ContentResolver;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 124
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 125
    .local v0, "userContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getDefaultCarrierAppCandidates(ILandroid/content/Context;)Ljava/util/List;
    .registers 4
    .param p0, "userId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 372
    const-class v0, Landroid/os/SystemConfigManager;

    .line 373
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemConfigManager;

    .line 374
    invoke-virtual {v0}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/Set;

    move-result-object v0

    .line 375
    .local v0, "systemCarrierAppsDisabledUntilUsed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(ILjava/util/Set;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getDefaultCarrierAppCandidatesHelper(ILjava/util/Set;Landroid/content/Context;)Ljava/util/List;
    .registers 7
    .param p0, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 381
    .local p1, "systemCarrierAppsDisabledUntilUsed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_2e

    .line 382
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2e

    .line 386
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 387
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 388
    .local v2, "packageName":Ljava/lang/String;
    nop

    .line 389
    invoke-static {p0, v2, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getApplicationInfoIfSystemApp(ILjava/lang/String;Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 390
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_2c

    .line 391
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2c
    goto :goto_16

    .line 394
    :cond_2d
    return-object v0

    .line 383
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getDefaultCarrierApps(Landroid/telephony/TelephonyManager;ILandroid/content/Context;)Ljava/util/List;
    .registers 9
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            "I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 337
    invoke-static {p1, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidates(ILandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 338
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_30

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_30

    .line 345
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_13
    if-ltz v1, :cond_2f

    .line 346
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 347
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 348
    .local v4, "packageName":Ljava/lang/String;
    nop

    .line 349
    invoke-virtual {p0, v4}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_26

    move v5, v2

    goto :goto_27

    :cond_26
    const/4 v5, 0x0

    .line 351
    .local v5, "hasPrivileges":Z
    :goto_27
    if-nez v5, :cond_2c

    .line 352
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 345
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "hasPrivileges":Z
    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 356
    .end local v1    # "i":I
    :cond_2f
    return-object v0

    .line 339
    :cond_30
    :goto_30
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getDefaultCarrierAssociatedAppsHelper(ILjava/util/Map;Landroid/content/Context;)Ljava/util/Map;
    .registers 15
    .param p0, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/CarrierAssociatedAppEntry;",
            ">;>;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;",
            ">;>;"
        }
    .end annotation

    .line 400
    .local p1, "systemCarrierAssociatedAppsDisabledUntilUsed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 401
    .local v0, "size":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 403
    .local v1, "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 404
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 405
    .local v4, "carrierAppPackage":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 406
    .local v5, "associatedAppPackages":Ljava/util/List;, "Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_62

    .line 407
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/CarrierAssociatedAppEntry;

    .line 408
    .local v7, "associatedApp":Landroid/os/CarrierAssociatedAppEntry;
    iget-object v8, v7, Landroid/os/CarrierAssociatedAppEntry;->packageName:Ljava/lang/String;

    .line 409
    invoke-static {p0, v8, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getApplicationInfoIfSystemApp(ILjava/lang/String;Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 412
    .local v8, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_5f

    invoke-static {v8}, Lcom/android/internal/telephony/CarrierAppUtils;->isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    if-nez v9, :cond_5f

    .line 413
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 414
    .local v9, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    if-nez v9, :cond_55

    .line 415
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v10

    .line 416
    invoke-interface {v1, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_55
    new-instance v10, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;

    iget v11, v7, Landroid/os/CarrierAssociatedAppEntry;->addedInSdk:I

    invoke-direct {v10, v8, v11}, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    .end local v7    # "associatedApp":Landroid/os/CarrierAssociatedAppEntry;
    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;>;"
    :cond_5f
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 421
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;>;"
    .end local v4    # "carrierAppPackage":Ljava/lang/String;
    .end local v5    # "associatedAppPackages":Ljava/util/List;, "Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;"
    .end local v6    # "j":I
    :cond_62
    goto :goto_11

    .line 422
    :cond_63
    return-object v1
.end method

.method private static blacklist isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 129
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic blacklist lambda$disableCarrierAppsUntilPrivileged$0(Ljava/lang/Boolean;)V
    .registers 1
    .param p0, "isSuccess"    # Ljava/lang/Boolean;

    .line 320
    return-void
.end method
