.class public Lcom/android/server/enterprise/profile/ProfilePolicyService;
.super Lcom/samsung/android/knox/profile/IProfilePolicy$Stub;
.source "ProfilePolicyService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final MDM_ENTERPRISE_CONTAINER_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CONTAINER"

.field public static final TAG:Ljava/lang/String; = "ProfilePolicyService"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/knox/profile/IProfilePolicy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 74
    iput-object v0, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 75
    iput-object v0, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 80
    iput-object p1, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "device_policy"

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 214
    iget-object p1, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mContext:Landroid/content/Context;

    const-string p3, "ProfilePolicyService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    const-string p1, "ProfilePolicy : "

    .line 216
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "restriction_property_calendar_share_to_owner : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    const-string/jumbo v0, "restriction_property_calendar_share_to_owner"

    invoke-virtual {p0, p3, v0}, Lcom/android/server/enterprise/profile/ProfilePolicyService;->getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "restriction_property_screencapture_save_to_owner: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "restriction_property_screencapture_save_to_owner"

    invoke-virtual {p0, p3, v0}, Lcom/android/server/enterprise/profile/ProfilePolicyService;->getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final enforceDOPOPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 192
    invoke-virtual {p0}, Lcom/android/server/enterprise/profile/ProfilePolicyService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceDOPOPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .line 208
    iget-object p0, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 111
    iget-object v0, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 113
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5

    const-string p1, "ProfilePolicyService"

    const-string/jumbo v0, "getRestrictionPolicy"

    .line 179
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_11

    const-string p0, "bad arguments. Cannnot be null"

    .line 181
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 184
    :cond_11
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "ProfilePolicyPORestrictionsProperty"

    .line 185
    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object p0, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p2, "ProfilePolicyPORestrictions"

    const-string v1, "ProfilePolicyPORestrictionsValue"

    invoke-virtual {p0, p2, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_29

    move v0, p1

    :cond_29
    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public final sendPolicyUpdateIntent()V
    .registers 6

    .line 196
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 199
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.profilepolicy.intent.action.update"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 200
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 201
    iget-object p0, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1f

    .line 203
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    throw p0
.end method

.method public setRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .registers 16

    const-string v0, "ProfilePolicyService"

    const-string/jumbo v1, "setRestrictionPolicy"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p1, :cond_108

    if-nez p2, :cond_f

    goto/16 :goto_108

    .line 123
    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/profile/ProfilePolicyService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 128
    :try_start_26
    iget-object v4, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getPolicyManagedProfiles(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 129
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/16 v6, 0x3e8

    const/4 v7, -0x1

    if-ne v5, v6, :cond_8b

    .line 130
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v7

    :goto_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    const-string v8, ""
    :try_end_4b
    .catchall {:try_start_26 .. :try_end_4b} :catchall_103

    .line 133
    :try_start_4b
    iget-object v9, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    new-instance v10, Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v10}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 134
    iget-object v9, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v9, v8, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5
    :try_end_6c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4b .. :try_end_6c} :catch_6d
    .catchall {:try_start_4b .. :try_end_6c} :catchall_103

    goto :goto_3d

    :catch_6d
    move-exception v6

    .line 136
    :try_start_6e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid admin package name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :cond_8b
    if-ne v5, v7, :cond_96

    const-string p0, "Invalid admin UID"

    .line 143
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catchall {:try_start_6e .. :try_end_92} :catchall_103

    .line 147
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_96
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 151
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "adminUid"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "ProfilePolicyPORestrictionsProperty"

    .line 152
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    iget-object p1, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p2, "ProfilePolicyPORestrictions"

    invoke-virtual {p1, p2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p1

    const-string v2, "ProfilePolicyPORestrictionsValue"

    if-lez p1, :cond_d4

    .line 159
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 160
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    iget-object p3, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p3, p2, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p1

    goto :goto_e1

    .line 164
    :cond_d4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    iget-object p1, p0, Lcom/android/server/enterprise/profile/ProfilePolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p1, p2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p1

    :goto_e1
    if-nez p1, :cond_ea

    const-string/jumbo p0, "setRestrictionPolicy failed."

    .line 169
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ed

    .line 171
    :cond_ea
    invoke-virtual {p0}, Lcom/android/server/enterprise/profile/ProfilePolicyService;->sendPolicyUpdateIntent()V

    .line 173
    :goto_ed
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setRestrictionPolicy result : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :catchall_103
    move-exception p0

    .line 147
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 148
    throw p0

    :cond_108
    :goto_108
    const-string p0, "bad arguments. Cannnot be null"

    .line 120
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
