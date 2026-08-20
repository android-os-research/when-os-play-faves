.class public Lcom/android/server/enterprise/email/LDAPAccountPolicy;
.super Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy$Stub;
.source "LDAPAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;
    }
.end annotation


# static fields
.field public static final LDAPACCOUNTPOLICY_INTENT_FEILD_BASEDN:Ljava/lang/String; = "basedn"

.field public static final LDAPACCOUNTPOLICY_INTENT_FEILD_HOST:Ljava/lang/String; = "host"

.field public static final LDAPACCOUNTPOLICY_INTENT_FEILD_ISSSL:Ljava/lang/String; = "isssl"

.field public static final LDAPACCOUNTPOLICY_INTENT_FEILD_PORT:Ljava/lang/String; = "port"

.field public static final LDAPACCOUNTPOLICY_INTENT_FEILD_SERVICE:Ljava/lang/String; = "service"

.field public static final LDAPACCOUNTPOLICY_INTENT_FEILD_TRUSTALL:Ljava/lang/String; = "trustall"

.field public static final LDAPACCOUNTPOLICY_INTENT_FEILD_USERID:Ljava/lang/String; = "user_id"

.field public static final LDAPACCOUNTPOLICY_INTENT_FEILD_USERNAME:Ljava/lang/String; = "user_name"

.field public static final LDAPACCOUNTPOLICY_INTENT_FEILD_USERPASSWORD_ID:Ljava/lang/String; = "user_password_id"

.field public static final LDAPACCOUNTPOLICY_INTENT_FEILD_iSANONYMOUS:Ljava/lang/String; = "isanonymous"

.field public static final TAG:Ljava/lang/String; = "LDAPAccountPolicyService"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;


# direct methods
.method public static bridge synthetic -$$Nest$msendBroadcastCreateLDAPAcctResultIntent(Lcom/android/server/enterprise/email/LDAPAccountPolicy;IIJ)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->sendBroadcastCreateLDAPAcctResultIntent(IIJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    const-string v0, "LDAPAccountPolicyService"

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy$Stub;-><init>()V

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 83
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    .line 85
    :try_start_a
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "com.samsung.android.knox.intent.action.LDAP_CREATE_ACCT_RESULT_INTERNAL"

    .line 86
    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "com.samsung.android.knox.permission.KNOX_LDAP"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo p0, "success to add receiver"

    .line 89
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_29} :catch_2a

    goto :goto_30

    :catch_2a
    move-exception p0

    const-string p1, "Regist BroadCast failed : "

    .line 92
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_30
    return-void
.end method


# virtual methods
.method public declared-synchronized createLDAPAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/LDAPAccount;)V
    .registers 15

    monitor-enter p0

    .line 117
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 118
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 119
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-nez p2, :cond_16

    const-string p1, "LDAPAccountPolicyService"

    const-string p2, "createLDAPAccount() : failed. ldap is not vaild."

    .line 122
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_de

    .line 123
    monitor-exit p0

    return-void

    .line 126
    :cond_16
    :try_start_16
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-static {v2, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v1

    const-wide/16 v2, -0x1

    const/4 v4, -0x8

    if-nez v1, :cond_3e

    .line 128
    invoke-virtual {p0, v0, v4, v2, v3}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->sendBroadcastCreateLDAPAcctResultIntent(IIJ)V

    const-string p1, "LDAPAccountPolicyService"

    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createLDAPAccount : Error :: Email app is not installed on user "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_16 .. :try_end_3c} :catchall_de

    .line 130
    monitor-exit p0

    return-void

    .line 133
    :cond_3e
    :try_start_3e
    iget-boolean v1, p2, Lcom/samsung/android/knox/accounts/LDAPAccount;->isSSL:Z

    if-eqz v1, :cond_45

    const/4 v1, 0x1

    .line 134
    iput v1, p2, Lcom/samsung/android/knox/accounts/LDAPAccount;->trustAll:I

    .line 138
    :cond_45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 139
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "LDAPAccountPolicyService"

    const-string v8, "createLDAPAccount_new()"

    .line 140
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_3e .. :try_end_54} :catchall_de

    .line 143
    :try_start_54
    iget-object v7, p2, Lcom/samsung/android/knox/accounts/LDAPAccount;->password:Ljava/lang/String;

    invoke-virtual {p0, p1, v7}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v7

    .line 144
    new-instance p1, Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.action.CREATE_LDAPACCOUNT_INTERNAL"

    invoke-direct {p1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 145
    iget-wide v10, p2, Lcom/samsung/android/knox/accounts/LDAPAccount;->id:J

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.USER_NAME_INTERNAL"

    .line 146
    iget-object v10, p2, Lcom/samsung/android/knox/accounts/LDAPAccount;->userName:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.USER_PASSWORD_ID_INTERNAL"

    .line 147
    invoke-virtual {p1, v9, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v7, "com.samsung.android.knox.intent.extra.PORT_INTERNAL"

    .line 148
    iget v8, p2, Lcom/samsung/android/knox/accounts/LDAPAccount;->port:I

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "com.samsung.android.knox.intent.extra.IS_SSL_INTERNAL"

    .line 149
    iget-boolean v8, p2, Lcom/samsung/android/knox/accounts/LDAPAccount;->isSSL:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    const-string/jumbo v8, "ldap"

    .line 150
    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "com.samsung.android.knox.intent.extra.IS_ANONYMOUS_INTERNAL"

    .line 151
    iget-boolean v8, p2, Lcom/samsung/android/knox/accounts/LDAPAccount;->isAnonymous:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "com.samsung.android.knox.intent.extra.HOST_INTERNAL"

    .line 152
    iget-object v8, p2, Lcom/samsung/android/knox/accounts/LDAPAccount;->host:Ljava/lang/String;

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "com.samsung.android.knox.intent.extra.BASE_DN_INTERNAL"

    .line 153
    iget-object v8, p2, Lcom/samsung/android/knox/accounts/LDAPAccount;->baseDN:Ljava/lang/String;

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "com.samsung.android.knox.intent.extra.TRUST_ALL_INTERNAL"

    .line 154
    iget p2, p2, Lcom/samsung/android/knox/accounts/LDAPAccount;->trustAll:I

    invoke-virtual {p1, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object p2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v7, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {p2, p1, v1, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string p1, "LDAPAccountPolicyService"

    const-string p2, "createLDAPAccount_new() : successfully sent intent to Email app. "

    .line 157
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_bc} :catch_c3
    .catchall {:try_start_54 .. :try_end_bc} :catchall_c1

    .line 162
    :try_start_bc
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_de

    .line 158
    monitor-exit p0

    return-void

    :catchall_c1
    move-exception p1

    goto :goto_da

    :catch_c3
    move-exception p1

    :try_start_c4
    const-string p2, "LDAPAccountPolicyService"

    const-string v1, "createLDAPAccount_new() : unexpected Exception occurs. "

    .line 160
    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cb
    .catchall {:try_start_c4 .. :try_end_cb} :catchall_c1

    .line 162
    :try_start_cb
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    invoke-virtual {p0, v0, v4, v2, v3}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->sendBroadcastCreateLDAPAcctResultIntent(IIJ)V

    const-string p1, "LDAPAccountPolicyService"

    const-string p2, "createLDAPAccount() : failed with unknown error."

    .line 167
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d8
    .catchall {:try_start_cb .. :try_end_d8} :catchall_de

    .line 169
    monitor-exit p0

    return-void

    .line 162
    :goto_da
    :try_start_da
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 163
    throw p1
    :try_end_de
    .catchall {:try_start_da .. :try_end_de} :catchall_de

    :catchall_de
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 10

    monitor-enter p0

    .line 176
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 179
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/LDAPAccount;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    const-string p1, "LDAPAccountPolicyService"

    const-string p2, "deleteLDAPAccount() : ldapId is invalid"

    .line 181
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_96

    .line 182
    monitor-exit p0

    return v1

    :cond_15
    :try_start_15
    const-string v2, "device_account_policy"

    .line 185
    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    if-eqz v2, :cond_59

    .line 186
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getAccountLDAPType()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->userName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->host:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_59

    const-string p1, "LDAPAccountPolicyService"

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteLDAPAccount() : MDM DeviceAccountPolicy restriction - cannot delete account : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_15 .. :try_end_57} :catchall_96

    .line 188
    monitor-exit p0

    return v1

    .line 191
    :cond_59
    :try_start_59
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_96

    .line 193
    :try_start_5d
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->deleteLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v1
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_63} :catch_69
    .catchall {:try_start_5d .. :try_end_63} :catchall_67

    .line 198
    :goto_63
    :try_start_63
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_96

    goto :goto_72

    :catchall_67
    move-exception p1

    goto :goto_92

    :catch_69
    move-exception p1

    :try_start_6a
    const-string v0, "LDAPAccountPolicyService"

    const-string v4, "deleteLDAPAccount() : Failed, Exception occurs. "

    .line 195
    invoke-static {v0, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_67

    goto :goto_63

    :goto_72
    :try_start_72
    const-string p1, "LDAPAccountPolicyService"

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteLDAPAccount() : id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", ret = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_72 .. :try_end_90} :catchall_96

    .line 201
    monitor-exit p0

    return v1

    .line 198
    :goto_92
    :try_start_92
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    throw p1
    :try_end_96
    .catchall {:try_start_92 .. :try_end_96} :catchall_96

    :catchall_96
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 78
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_LDAP"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getAccountLDAPType()Ljava/lang/String;
    .registers 1

    const-string p0, "com.samsung.android.ldap"

    return-object p0
.end method

.method public getAllLDAPAccounts(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/LDAPAccount;",
            ">;"
        }
    .end annotation

    const-string v0, "LDAPAccountPolicyService"

    const-string v1, "getAllLDAPAccounts() "

    .line 234
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 238
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 240
    :try_start_10
    iget-object p0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 242
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_21
    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    .line 244
    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getLDAPAccountFromEnterpriseLDAPAccount(Landroid/sec/enterprise/email/EnterpriseLDAPAccount;)Lcom/samsung/android/knox/accounts/LDAPAccount;

    move-result-object v4

    if-eqz v4, :cond_21

    .line 246
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_36} :catch_3e
    .catchall {:try_start_10 .. :try_end_36} :catchall_3c

    goto :goto_21

    :cond_37
    move-object v3, p1

    .line 254
    :cond_38
    :goto_38
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_45

    :catchall_3c
    move-exception p0

    goto :goto_5f

    :catch_3e
    move-exception p0

    :try_start_3f
    const-string p1, "getAllLDAPAccounts() : Failed, Exception occurs. "

    .line 251
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_3c

    goto :goto_38

    .line 256
    :goto_45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getAllLDAPAccounts() ret = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_53

    const/4 p1, 0x1

    goto :goto_54

    :cond_53
    const/4 p1, 0x0

    :goto_54
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 254
    :goto_5f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 255
    throw p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 68
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 70
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public getLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/LDAPAccount;
    .registers 9

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    const-string v2, "LDAPAccountPolicyService"

    if-gez v0, :cond_22

    .line 212
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getLDAPAccount() : ldapId is invalid, id = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 215
    :cond_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 217
    :try_start_26
    iget-object p0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    move-result-object p0

    .line 218
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getLDAPAccountFromEnterpriseLDAPAccount(Landroid/sec/enterprise/email/EnterpriseLDAPAccount;)Lcom/samsung/android/knox/accounts/LDAPAccount;

    move-result-object v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_30} :catch_36
    .catchall {:try_start_26 .. :try_end_30} :catchall_34

    .line 223
    :goto_30
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3d

    :catchall_34
    move-exception p0

    goto :goto_5f

    :catch_36
    move-exception p0

    :try_start_37
    const-string p1, "getLDAPAccount() : Failed, Exception occurs. "

    .line 220
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_34

    goto :goto_30

    .line 225
    :goto_3d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getLDAPAccount() id = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", ret ="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_53

    const/4 p1, 0x1

    goto :goto_54

    :cond_53
    const/4 p1, 0x0

    :goto_54
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 223
    :goto_5f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    throw p0
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

.method public final sendBroadcastCreateLDAPAcctResultIntent(IIJ)V
    .registers 8

    const-string v0, "LDAPAccountPolicyService"

    .line 298
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.LDAP_CREATE_ACCT_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.knox.intent.extra.LDAP_RESULT"

    .line 299
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "com.samsung.android.knox.intent.extra.LDAP_ACCT_ID"

    .line 300
    invoke-virtual {v1, p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "com.samsung.android.knox.intent.extra.LDAP_USER_ID"

    .line 301
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 304
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p4, "com.samsung.android.knox.permission.KNOX_LDAP"

    invoke-virtual {p0, v1, p3, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string/jumbo p0, "sendBroadcastCreateLDAPAcctResultIntent() success to send result Intent 2. "

    .line 305
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    goto :goto_35

    :catchall_2c
    move-exception p0

    goto :goto_39

    :catch_2e
    move-exception p0

    :try_start_2f
    const-string/jumbo p3, "sendBroadcastCreateLDAPAcctResultIntent() failed to send result Intent 2. "

    .line 307
    invoke-static {v0, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_2c

    .line 309
    :goto_35
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_39
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    throw p0
.end method

.method public final setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .registers 7

    .line 273
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 273
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    .line 275
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 276
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide p0

    const-wide/16 v0, -0x1

    if-nez p2, :cond_22

    return-wide v0

    .line 280
    :cond_22
    :try_start_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "E#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-static {v2, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_36} :catch_37

    return-wide p0

    :catch_37
    move-exception p0

    const-string p1, "LDAPAccountPolicyService"

    const-string/jumbo p2, "setAccountEmailPassword() failed"

    .line 283
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v0
.end method

.method public systemReady()V
    .registers 2

    const-string p0, "LDAPAccountPolicyService"

    const-string/jumbo v0, "systemReady()... "

    .line 262
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
