.class public Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
.super Lcom/samsung/android/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub;
.source "SmartCardBrowserPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static TAG:Ljava/lang/String; = "SmartCardBrowserPolicy"

.field public static packageName:Ljava/lang/String; = "com.chrome.deviceextras.samsung"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field public mPms:Lcom/android/server/pm/PackageManagerService;

.field public preAuthState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 79
    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 81
    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->preAuthState:Ljava/util/Map;

    .line 89
    iput-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    .line 90
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->preAuthState:Ljava/util/Map;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 93
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const-string/jumbo p1, "package"

    .line 94
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageManagerService;

    iput-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mPms:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public final broadcastIntentAsUser(ZII)V
    .registers 8

    .line 383
    new-instance p2, Landroid/content/Intent;

    const-string v0, "edm.intent.action.smartcard.browser.authentication"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.sbrowser"

    .line 384
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "edm.intent.extra.smartcard.authentication.enabled"

    .line 385
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 387
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.chrome"

    .line 388
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 391
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 392
    iget-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 393
    iget-object p0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 394
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public disableAuthentication(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 12

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 166
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 167
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 v8, 0x0

    .line 170
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 171
    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "SmartCardBrowserTable"

    const-string v5, "browserAuthEnabled"

    const/4 v6, 0x0

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-eq p1, v9, :cond_26

    .line 177
    invoke-virtual {p0, v8, v7, v0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->broadcastIntentAsUser(ZII)V

    :cond_26
    if-eqz v1, :cond_2f

    .line 180
    iget-object p0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    const-string p1, "SmartCardBrowserPolicy/isAuthenticationEnabled"

    .line 181
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2f} :catch_30

    :cond_2f
    return v1

    .line 188
    :catch_30
    sget-object p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string p1, "disableAuthentication() failed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method public enableAuthentication(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 13

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 112
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 113
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 118
    :try_start_e
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    .line 119
    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "SmartCardBrowserTable"

    const-string v5, "browserAuthEnabled"

    const/4 v6, 0x1

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-eq p1, v10, :cond_2a

    const/4 p1, 0x1

    .line 146
    invoke-virtual {p0, p1, v7, v0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->broadcastIntentAsUser(ZII)V

    :cond_2a
    if-eqz v1, :cond_33

    .line 149
    iget-object p0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    const-string p1, "SmartCardBrowserPolicy/isAuthenticationEnabled"

    .line 150
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_33} :catch_39
    .catchall {:try_start_e .. :try_end_33} :catchall_37

    .line 159
    :cond_33
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_37
    move-exception p0

    goto :goto_45

    .line 157
    :catch_39
    :try_start_39
    sget-object p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string p1, "enableAuthentication() failed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_37

    .line 159
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_45
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    throw p0
.end method

.method public final enforcePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 3

    .line 105
    invoke-virtual {p0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    const-string v0, "com.samsung.android.knox.permission.KNOX_SMARTCARD"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public getClientCertificateAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 274
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 275
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    if-nez p2, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 279
    :cond_a
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 280
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getClientCertificateAliasAsUser(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->migrationAliasName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getClientCertificateAliasAsUser(IILjava/lang/String;I)Ljava/lang/String;
    .registers 10

    const-string v0, "certAlias"

    .line 402
    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object p2

    .line 404
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 405
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "adminUid"

    .line 406
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "containerID"

    .line 407
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "hostUrl"

    .line 408
    invoke-virtual {v2, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "port"

    .line 409
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 412
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 414
    iget-object v3, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "SmartCardBrowserCertAliasTable"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 417
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_50

    goto :goto_c

    .line 420
    :cond_50
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 421
    :cond_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 422
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 424
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_64} :catch_67

    if-eqz v2, :cond_54

    return-object v2

    .line 433
    :catch_67
    sget-object p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getClientCertificateAliasAsUser() failed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 99
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 101
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public isAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 200
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 201
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabledAsUser(II)Z

    move-result p0

    return p0
.end method

.method public final isAuthenticationEnabledAsUser(II)Z
    .registers 6

    const/4 v0, 0x0

    .line 208
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SmartCardBrowserTable"

    const-string v2, "browserAuthEnabled"

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 210
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_23

    if-eqz p1, :cond_f

    move v0, p1

    goto :goto_2b

    .line 217
    :catch_23
    sget-object p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "isAuthenticationEnabled() failed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_2b
    return v0
.end method

.method public final migrationAliasName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_3

    return-object p1

    :cond_3
    const-string p0, "Key Management"

    .line 292
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const-string p1, "Identity"

    goto :goto_2e

    :cond_e
    const-string p0, "PIV Authentication"

    .line 294
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    const-string p1, "Encryption"

    goto :goto_2e

    :cond_19
    const-string p0, "Digital Signature"

    .line 296
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    const-string p1, "Signature"

    goto :goto_2e

    :cond_24
    const-string p0, "Card Authentication"

    .line 298
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const-string p1, "Card ID"

    :cond_2e
    :goto_2e
    return-object p1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4

    .line 440
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 441
    sget-object p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SmartcardBrowser Policy service is added: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    goto :goto_34

    :catchall_1a
    move-exception p0

    .line 443
    sget-object p1, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failure add service"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_34
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 8

    .line 351
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 355
    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->preAuthState:Ljava/util/Map;

    monitor-enter v1

    const/4 v2, 0x0

    .line 356
    :try_start_d
    invoke-virtual {p0, v2, v0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabledAsUser(II)Z

    move-result v3

    .line 357
    iget-object v4, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->preAuthState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_38

    .line 358
    iget-object v4, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->preAuthState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 359
    iget-object v5, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->preAuthState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    :cond_38
    if-eqz v3, :cond_3b

    move v5, v2

    :cond_3b
    move v4, v5

    .line 363
    :goto_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_d .. :try_end_3d} :catchall_43

    if-eq v3, v4, :cond_42

    .line 367
    invoke-virtual {p0, v3, v2, v0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->broadcastIntentAsUser(ZII)V

    :cond_42
    return-void

    :catchall_43
    move-exception p0

    .line 363
    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public onPreAdminRemoval(I)V
    .registers 6

    .line 374
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 376
    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->preAuthState:Ljava/util/Map;

    monitor-enter v1

    .line 377
    :try_start_c
    iget-object v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->preAuthState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 378
    iget-object v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->preAuthState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabledAsUser(II)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_2a
    monitor-exit v1

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public removeClientCertificateAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Z
    .registers 9

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 312
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 v1, 0x0

    if-nez p2, :cond_a

    return v1

    .line 317
    :cond_a
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 318
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "adminUid"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "containerID"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "hostUrl"

    .line 320
    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo p3, "port"

    invoke-virtual {v2, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    iget-object p2, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p3, "SmartCardBrowserCertAliasTable"

    invoke-virtual {p2, p3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p2

    if-lez p2, :cond_54

    .line 326
    iget-object p2, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p2, p3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p2

    if-lez p2, :cond_54

    .line 329
    iget-object p0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 332
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const-string p2, "SmartCardBrowserPolicy/isAuthenticationEnabled"

    .line 330
    invoke-static {p0, p2, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_54
    return v1
.end method

.method public setClientCertificateAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 12

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 228
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 229
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz p2, :cond_a9

    if-nez p4, :cond_11

    goto/16 :goto_a9

    .line 234
    :cond_11
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 235
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 237
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getClientCertificateAliasAsUser(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 238
    sget-object v4, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setClientCertificateAlias() stored Alias is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_a9

    .line 240
    sget-object v3, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setClientCertificateAlias() Inserting the alias: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for hostURL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and port:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :try_start_61
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "adminUid"

    .line 243
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "containerID"

    .line 244
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "hostUrl"

    .line 245
    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "port"

    .line 246
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "certAlias"

    .line 247
    invoke-virtual {v3, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p2, "SmartCardBrowserCertAliasTable"

    invoke-virtual {p1, p2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p1

    if-eqz p1, :cond_a0

    .line 255
    iget-object p0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    const-string p2, "SmartCardBrowserPolicy/getClientCertificateAlias"

    .line 256
    invoke-static {p0, p2, v1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_a0} :catch_a1

    :cond_a0
    return p1

    .line 264
    :catch_a1
    sget-object p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setClientCertificateAlias() failed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    :goto_a9
    return v2
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
