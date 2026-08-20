.class public Lcom/android/server/enterprise/email/EmailPolicy;
.super Lcom/samsung/android/knox/accounts/IEmailPolicy$Stub;
.source "EmailPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final TAG:Ljava/lang/String; = "EmailPolicyService"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mUserRemovedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$monUserRemoved(Lcom/android/server/enterprise/email/EmailPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->onUserRemoved(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/IEmailPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 465
    new-instance v0, Lcom/android/server/enterprise/email/EmailPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/EmailPolicy$1;-><init>(Lcom/android/server/enterprise/email/EmailPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    iput-object p1, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    .line 87
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 88
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->registerUserRemovedReceiver()V

    return-void
.end method


# virtual methods
.method public allowAccountAddition(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EmailPolicyService"

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_8
    new-array v3, v1, [B

    if-eqz p2, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    int-to-byte p2, v1

    aput-byte p2, v3, v2

    .line 97
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "policyName"

    .line 98
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "accountObject"

    .line 99
    invoke-virtual {p2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 100
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v3, "ADMIN_REF"

    invoke-virtual {p0, v1, p1, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "allowAccountAddition: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_47} :catch_48

    goto :goto_4e

    :catch_48
    move-exception p0

    const-string p1, "Exception in allowAccountAddition"

    .line 103
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4e
    return v2
.end method

.method public allowEmailSettingsChange(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 12

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 406
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 407
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, p3, p4, v0, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    const-string v6, "EmailPolicyService"

    if-eqz v0, :cond_40

    .line 408
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 410
    iget-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v3, :cond_34

    :try_start_1b
    const-string p0, "eas_account_policy"

    .line 413
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object p0

    if-eqz p0, :cond_40

    .line 414
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->allowEmailSettingsChange(Lcom/samsung/android/knox/ContextInfo;JZ)Z

    move-result p0
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2b} :catch_2d

    move v1, p0

    goto :goto_40

    :catch_2d
    move-exception p0

    const-string p1, "Failed talking with exchange account policy"

    .line 416
    invoke-static {v6, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 422
    :cond_34
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 423
    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v5, "EmailAllowSettingChange"

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 426
    :cond_40
    :goto_40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "allowEmailSettingsChange() : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "allowEmailSettingsChange() = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " , allow = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " , accId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public allowPopImapEmail(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EmailPolicyService"

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_8
    new-array v3, v1, [B

    if-eqz p2, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    int-to-byte v1, v1

    aput-byte v1, v3, v2

    .line 147
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "policyName"

    const-string v5, "allowPopImapEmail"

    .line 148
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "accountObject"

    .line 149
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 150
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v4, "ADMIN_REF"

    invoke-virtual {p0, v3, p1, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2f} :catch_30

    goto :goto_36

    :catch_30
    move-exception p0

    const-string p1, "allowPopImapEmail() : failed."

    .line 153
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    :goto_36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "allowPopImapEmail() : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "allowPopImapEmail() = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " , allowed = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final enforceEmailPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 80
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_EMAIL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAllowEmailForwarding(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5

    .line 202
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    const-string v1, "EmailAllowForward"

    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAllowEmailForwarding() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EmailPolicyService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAllowEmailForwarding() = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , emailAddress = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5

    .line 219
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    const-string v1, "EmailAllowHTML"

    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAllowHTMLEmail() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EmailPolicyService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAllowHTMLEmail() = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , emailAddress = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final getDefaultValueState(Ljava/lang/String;)Z
    .registers 4

    const/4 p0, 0x0

    if-eqz p1, :cond_47

    const-string v0, "EmailAllowForward"

    .line 311
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    :goto_c
    move p0, v1

    goto :goto_29

    :cond_e
    const-string v0, "EmailAllowHTML"

    .line 313
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_c

    :cond_17
    const-string v0, "EmailAllowNotificationChange"

    .line 315
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_c

    :cond_20
    const-string v0, "EmailAllowSettingChange"

    .line 317
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_c

    .line 320
    :cond_29
    :goto_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultValueState() : ret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", policy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EmailPolicyService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 69
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 71
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public final getPolicyState(ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 13

    .line 257
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/email/EmailPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    const-string/jumbo v2, "getPolicyState() : Invalid entry"

    const-string v3, "EmailPolicyService"

    if-eqz p2, :cond_dd

    .line 260
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_dd

    if-eqz p3, :cond_dd

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d

    goto/16 :goto_dd

    .line 265
    :cond_1d
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 266
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_27
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    .line 273
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 274
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "containerID"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "EmailAddress"

    .line 275
    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "userID"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    :try_start_4a
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "EmailSettingsTable"

    invoke-virtual {p0, v6, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_52} :catch_d5

    if-eqz p0, :cond_d4

    .line 286
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5b

    goto :goto_d4

    :cond_5b
    const-string/jumbo v0, "getPolicyState() : keep going check result. "

    .line 289
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 294
    :cond_65
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 295
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 296
    invoke-virtual {v0, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_65

    if-eqz v1, :cond_7c

    const-string v4, "1"

    goto :goto_7e

    :cond_7c
    const-string v4, "0"

    .line 297
    :goto_7e
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 298
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "getPolicyState() ret = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , containerId = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , emailAddress = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , policy = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , userId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 304
    :cond_ba
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "getPolicyState() : ret = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 p1, v1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p0, v1, 0x1

    return p0

    :cond_d4
    :goto_d4
    return v0

    :catch_d5
    move-exception p0

    const-string/jumbo p1, "getPolicyState() : Exception while getValuesList from EDMStorageProvider"

    .line 282
    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    .line 261
    :cond_dd
    :goto_dd
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isAccountAdditionAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 8

    const-string v0, "EmailPolicyService"

    .line 110
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 111
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    const/4 v2, 0x1

    .line 114
    :try_start_9
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 115
    invoke-static {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "#SelectClause#"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "policyName"

    .line 117
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "ADMIN_REF"

    const-string v4, "accountObject"

    invoke-virtual {p0, v1, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlobList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_33

    const-string/jumbo v1, "isAccountAdditionAllowed:  resultList not null"

    .line 121
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const/4 v1, 0x0

    if-eqz p0, :cond_59

    .line 123
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_59

    move v3, v1

    .line 124
    :goto_3d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_59

    .line 125
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 126
    aget-byte v4, v4, v1
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_4b} :catch_52

    if-nez v4, :cond_4f

    move v2, v1

    goto :goto_59

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :catch_52
    move-exception p0

    const-string/jumbo v1, "isAccountAdditionAllowed() : Exception in isAccountAdditionAllowed"

    .line 134
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    :cond_59
    :goto_59
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isAccountAdditionAllowed() : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isAccountAdditionAllowed() = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , userId = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 9

    .line 379
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 380
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {p1, p2, p3, v1, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v1

    const-string v2, "EmailPolicyService"

    const/4 v3, 0x1

    if-eqz v1, :cond_3d

    .line 381
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v4

    if-eqz v4, :cond_3d

    .line 383
    iget-boolean v4, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v4, :cond_31

    :try_start_18
    const-string p0, "eas_account_policy"

    .line 386
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 387
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result p0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_28} :catch_2a

    move v3, p0

    goto :goto_3d

    :catch_2a
    move-exception p0

    const-string p1, "Failed talking with exchange account policy"

    .line 389
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 394
    :cond_31
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 395
    iget-object v1, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v3, "EmailAllowNotificationChange"

    invoke-virtual {p0, v0, v1, v3, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 398
    :cond_3d
    :goto_3d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isEmailNotificationsEnabled() : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isEmailNotificationsEnabled() = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " , accId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 9

    .line 433
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 434
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {p1, p2, p3, v1, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v1

    const-string v2, "EmailPolicyService"

    const/4 v3, 0x1

    if-eqz v1, :cond_3d

    .line 435
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v4

    if-eqz v4, :cond_3d

    .line 437
    iget-boolean v4, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v4, :cond_31

    :try_start_18
    const-string p0, "eas_account_policy"

    .line 440
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 441
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result p0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_28} :catch_2a

    move v3, p0

    goto :goto_3d

    :catch_2a
    move-exception p0

    const-string p1, "Failed talking with exchange account policy"

    .line 443
    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 449
    :cond_31
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 450
    iget-object v1, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v3, "EmailAllowSettingChange"

    invoke-virtual {p0, v0, v1, v3, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 453
    :cond_3d
    :goto_3d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isEmailSettingsChangeAllowed() : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isEmailSettingsChangeAllowed() = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " , accId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public isPopImapEmailAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EmailPolicyService"

    .line 163
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 164
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    const/4 v2, 0x1

    .line 167
    :try_start_9
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 168
    invoke-static {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "#SelectClause#"

    invoke-virtual {v3, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "policyName"

    const-string v1, "allowPopImapEmail"

    .line 170
    invoke-virtual {v3, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "ADMIN_REF"

    const-string v1, "accountObject"

    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlobList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_4e

    .line 173
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4e

    move v1, p1

    .line 174
    :goto_33
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4e

    .line 175
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 176
    aget-byte v3, v3, p1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_41} :catch_48

    if-nez v3, :cond_45

    move v2, p1

    goto :goto_4e

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :catch_48
    move-exception p0

    const-string p1, "Exception in isPopImapEmailAllowed"

    .line 183
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    :cond_4e
    :goto_4e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isPopImapEmailAllowed() : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
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

    .line 344
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    const-string p1, "content://com.sec.knox.provider2/EmailPolicy/isEmailNotificationsEnabled"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public final onUserRemoved(I)V
    .registers 4

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserRemoved() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EmailPolicyService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    const-string p1, "content://com.sec.knox.provider2/EmailPolicy/isEmailNotificationsEnabled"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public final putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z
    .registers 13

    const-string/jumbo v0, "putPolicyState: Invalid entry"

    const-string v1, "EmailPolicyService"

    const/4 v2, 0x0

    if-eqz p3, :cond_b1

    .line 228
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_b1

    .line 233
    :cond_10
    invoke-static {p3}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 234
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 238
    :cond_1a
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "adminUid"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "containerID"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "EmailAddress"

    .line 241
    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_3b

    const-string v5, "1"

    goto :goto_3d

    :cond_3b
    const-string v5, "0"

    .line 242
    :goto_3d
    invoke-virtual {v0, p5, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 245
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    invoke-virtual {v5, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "EmailSettingsTable"

    invoke-virtual {p0, v2, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putPolicyState() : ret = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putPolicyState() ret = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , admin = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , containerId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , emailAddress = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , state = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " , policy = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 229
    :cond_b1
    :goto_b1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final registerUserRemovedReceiver()V
    .registers 7

    .line 461
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_REMOVED"

    .line 462
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public setAllowEmailForwarding(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .registers 10

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 194
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v5, "EmailAllowForward"

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z

    move-result p0

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAllowEmailForwarding() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EmailPolicyService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAllowEmailForwarding() = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , emailAddress = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , allow = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public setAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .registers 10

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 211
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v5, "EmailAllowHTML"

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z

    move-result p0

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAllowHTMLEmail() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EmailPolicyService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAllowHTMLEmail() = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , emailAddress = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , allow = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public setEmailNotificationsState(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 12

    .line 347
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 349
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 350
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, p3, p4, v0, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    const-string v6, "EmailPolicyService"

    if-eqz v0, :cond_40

    .line 351
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 353
    iget-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v3, :cond_34

    :try_start_1b
    const-string v0, "eas_account_policy"

    .line 356
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 357
    invoke-interface {v0, p1, p3, p4, p2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setEmailNotificationsState(Lcom/samsung/android/knox/ContextInfo;JZ)Z

    move-result p1
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2b} :catch_2d

    move v1, p1

    goto :goto_40

    :catch_2d
    move-exception p1

    const-string v0, "Failed talking with exchange account policy"

    .line 359
    invoke-static {v6, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 365
    :cond_34
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 366
    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v5, "EmailAllowNotificationChange"

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    .line 369
    :cond_40
    :goto_40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setEmailNotificationsState() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setEmailNotificationsState() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , enable = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , accId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_87

    .line 372
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    const-string p1, "content://com.sec.knox.provider2/EmailPolicy/isEmailNotificationsEnabled"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_87
    return v1
.end method

.method public systemReady()V
    .registers 2

    .line 327
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    const-string v0, "content://com.sec.knox.provider2/EmailPolicy/isEmailNotificationsEnabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
