.class public Lcom/android/server/enterprise/security/DeviceAccountPolicy;
.super Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy$Stub;
.source "DeviceAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# static fields
.field public static final ACCOUNT_TYPE_EMAIL:Ljava/lang/String; = "com.samsung.android.email"

.field public static final ACCOUNT_TYPE_EMAIL_OLD:Ljava/lang/String; = "com.android.email"

.field public static final ACCOUNT_TYPE_EXCHANGE:Ljava/lang/String; = "com.samsung.android.exchange"

.field public static final ACCOUNT_TYPE_EXCHANGE_OLD:Ljava/lang/String; = "com.android.exchange"

.field public static final ACCOUNT_TYPE_FACEBOOK:Ljava/lang/String; = "com.facebook.auth.login"

.field public static final ACCOUNT_TYPE_GOOGLE:Ljava/lang/String; = "com.google"

.field public static final ACCOUNT_TYPE_GOOGLE_EXCHANGE:Ljava/lang/String; = "com.google.android.gm.exchange"

.field public static final ACCOUNT_TYPE_GOOGLE_IMAP:Ljava/lang/String; = "com.google.android.gm.legacyimap"

.field public static final ACCOUNT_TYPE_GOOGLE_POP3:Ljava/lang/String; = "com.google.android.gm.pop3"

.field public static final ACCOUNT_TYPE_GOOGLE_WORK:Ljava/lang/String; = "com.google.work"

.field public static final ACCOUNT_TYPE_LDAP:Ljava/lang/String; = "com.samsung.android.ldap"

.field public static final ACCOUNT_TYPE_LDAP_OLD:Ljava/lang/String; = "com.android.ldap"

.field public static final ACCOUNT_TYPE_SIGNIN:Ljava/lang/String; = "com.osp.app.signin"

.field public static final ADDITION_BLACKLIST:Ljava/lang/String; = "ADDITION_BLACKLIST"

.field public static final ADDITION_WHITELIST:Ljava/lang/String; = "ADDITION_WHITELIST"

.field public static final ALL_ACCOUNTS:Ljava/lang/String; = ".*"

.field public static final REMOVAL_BLACKLIST:Ljava/lang/String; = "REMOVAL_BLACKLIST"

.field public static final REMOVAL_WHITELIST:Ljava/lang/String; = "REMOVAL_WHITELIST"

.field public static final TAG:Ljava/lang/String; = "DeviceAccountPolicy"

.field public static mSupportedAccountTypes:[Ljava/lang/String;


# instance fields
.field public mAuditLogService:Lcom/android/server/enterprise/auditlog/AuditLogService;

.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    const-string v0, "com.samsung.android.email"

    const-string v1, "com.samsung.android.exchange"

    const-string v2, "com.samsung.android.ldap"

    const-string v3, "com.osp.app.signin"

    const-string v4, "com.google"

    const-string v5, "com.google.android.gm.legacyimap"

    const-string v6, "com.google.android.gm.pop3"

    const-string v7, "com.google.android.gm.exchange"

    const-string v8, "com.google.work"

    const-string v9, "com.facebook.auth.login"

    .line 93
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mSupportedAccountTypes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 101
    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mAuditLogService:Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 118
    iput-object p1, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    .line 119
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method


# virtual methods
.method public addAccountsToAdditionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "ADDITION_BLACKLIST"

    .line 514
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addAccountsToAdditionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "ADDITION_WHITELIST"

    .line 532
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    .line 148
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v11

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getSupportedAccountTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v12, "DeviceAccountPolicy"

    if-eqz v2, :cond_17f

    if-nez p3, :cond_18

    goto/16 :goto_17f

    .line 156
    :cond_18
    invoke-static {v11}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v14

    .line 157
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 160
    :try_start_20
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v2, v18

    :goto_28
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_169

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 163
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "adminUid"

    .line 164
    iget v6, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "type"

    .line 165
    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "name"

    .line 166
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "listType"

    .line 167
    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, p0

    .line 168
    iget-object v5, v10, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "AccountBlackWhiteList"

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v2, :cond_67

    if-eqz v4, :cond_67

    move/from16 v19, v18

    goto :goto_69

    :cond_67
    const/16 v19, 0x0

    :goto_69
    if-eqz v4, :cond_165

    const-string v2, "ADDITION_BLACKLIST"

    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_71} :catch_170
    .catchall {:try_start_20 .. :try_end_71} :catchall_16e

    const-string v4, " has added account "

    const-string v5, "Admin "

    if-eqz v2, :cond_ae

    .line 175
    :try_start_77
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v2

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 176
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v20, "DeviceAccountPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to the addition blacklist."

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v3, v11

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move-object/from16 v8, v20

    move-object v9, v13

    move v10, v14

    .line 175
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_165

    :cond_ae
    const-string v2, "ADDITION_WHITELIST"

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v2

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 182
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "DeviceAccountPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to the addition whitelist."

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v3, v11

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move-object v8, v10

    move-object v9, v13

    move v10, v14

    .line 181
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_165

    :cond_ec
    const-string v2, "REMOVAL_BLACKLIST"

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_129

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v2

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 188
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "DeviceAccountPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to the removal blacklist."

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v3, v11

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move-object v8, v10

    move-object v9, v13

    move v10, v14

    .line 187
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_165

    :cond_129
    const-string v2, "REMOVAL_WHITELIST"

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_165

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v2

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 194
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "DeviceAccountPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to the removal whitelist."

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v3, v11

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move-object v8, v10

    move-object v9, v13

    move v10, v14

    .line 193
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_165} :catch_170
    .catchall {:try_start_77 .. :try_end_165} :catchall_16e

    :cond_165
    :goto_165
    move/from16 v2, v19

    goto/16 :goto_28

    .line 205
    :cond_169
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v13, v2

    goto :goto_17a

    :catchall_16e
    move-exception v0

    goto :goto_17b

    :catch_170
    move-exception v0

    :try_start_171
    const-string v1, "Handled Exception in addAccountsToBWLInternal()"

    .line 202
    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_176
    .catchall {:try_start_171 .. :try_end_176} :catchall_16e

    .line 205
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v13, 0x0

    :goto_17a
    return v13

    :goto_17b
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 206
    throw v0

    :cond_17f
    :goto_17f
    const-string v0, "addAccountsToBWLInternal() : invalid parameter."

    .line 151
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public addAccountsToRemovalBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "REMOVAL_BLACKLIST"

    .line 439
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addAccountsToRemovalWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "REMOVAL_WHITELIST"

    .line 456
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string p0, " ,target ="

    const-string v0, "DeviceAccountPolicy"

    .line 129
    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 130
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 132
    :try_start_10
    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAccountMatch() : matched. match = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_30} :catch_32

    const/4 p0, 0x1

    return p0

    .line 137
    :catch_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAccountMatch() : invalid matched. match = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4d
    const/4 p0, 0x0

    return p0
.end method

.method public clearAccountsFromAdditionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "ADDITION_BLACKLIST"

    .line 527
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public clearAccountsFromAdditionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "ADDITION_WHITELIST"

    .line 545
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "AccountBlackWhiteList"

    const-string v4, "DeviceAccountPolicy"

    .line 311
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v6

    .line 312
    iget v5, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v7, "adminUid"

    const-string/jumbo v8, "type"

    const-string/jumbo v9, "listType"

    .line 315
    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    .line 321
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    aput-object v12, v11, v14

    const/4 v12, 0x1

    aput-object v1, v11, v12

    const/4 v13, 0x2

    aput-object v2, v11, v13

    .line 324
    invoke-static {v6}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v13

    .line 325
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 327
    :try_start_34
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 328
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    invoke-virtual {v14, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v14, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v1, v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v3, v10, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_125

    .line 335
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_56

    goto/16 :goto_125

    .line 340
    :cond_56
    iget-object v1, v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v3, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_120

    const-string v3, "ADDITION_BLACKLIST"

    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_64} :catch_130
    .catchall {:try_start_34 .. :try_end_64} :catchall_12e

    const-string v5, "Admin "

    if-eqz v3, :cond_91

    .line 345
    :try_start_68
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v0

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 346
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    const-string v11, "DeviceAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has removed all accounts from addition blacklist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v5, v0

    .line 345
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_120

    :cond_91
    const-string v3, "ADDITION_WHITELIST"

    .line 349
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v0

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 351
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    const-string v11, "DeviceAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has removed all accounts from addition whitelist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v5, v0

    .line 350
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_120

    :cond_c1
    const-string v3, "REMOVAL_BLACKLIST"

    .line 354
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f1

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v0

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 356
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    const-string v11, "DeviceAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has removed all accounts from removal blacklist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v5, v0

    .line 355
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_120

    :cond_f1
    const-string v3, "REMOVAL_WHITELIST"

    .line 359
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_120

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v0

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 361
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    const-string v11, "DeviceAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has removed all accounts from removal whitelist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v5, v0

    .line 360
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_120} :catch_130
    .catchall {:try_start_68 .. :try_end_120} :catchall_12e

    .line 370
    :cond_120
    :goto_120
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v14, v1

    goto :goto_13a

    :cond_125
    :goto_125
    :try_start_125
    const-string v0, "clearAccountsFromBWLInternal() : no accounts."

    .line 336
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_12a} :catch_130
    .catchall {:try_start_125 .. :try_end_12a} :catchall_12e

    .line 370
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :catchall_12e
    move-exception v0

    goto :goto_13b

    :catch_130
    move-exception v0

    :try_start_131
    const-string v1, "Handled Exception in clearAccountsFromBWLInternal()"

    .line 367
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_136
    .catchall {:try_start_131 .. :try_end_136} :catchall_12e

    .line 370
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v14, 0x0

    :goto_13a
    return v14

    :goto_13b
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 371
    throw v0
.end method

.method public clearAccountsFromRemovalBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "REMOVAL_BLACKLIST"

    .line 452
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public clearAccountsFromRemovalWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "REMOVAL_WHITELIST"

    .line 469
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 123
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAccountsFromAdditionBlackLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "ADDITION_BLACKLIST"

    .line 523
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAccountsFromAdditionWhiteLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "ADDITION_WHITELIST"

    .line 541
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 282
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getSupportedAccountTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "DeviceAccountPolicy"

    if-nez v0, :cond_17

    const-string p0, "getAccountsFromBWLInternal() : no support type."

    .line 283
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 288
    :cond_17
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 289
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_3b

    .line 292
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getAccountsFromBWLInternal() : Account list for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 296
    :cond_3b
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 297
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 299
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 300
    new-instance v1, Lcom/samsung/android/knox/accounts/AccountControlInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/accounts/AccountControlInfo;-><init>()V

    .line 301
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/knox/accounts/AccountControlInfo;->adminPackageName:Ljava/lang/String;

    .line 302
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcom/samsung/android/knox/accounts/AccountControlInfo;->entries:Ljava/util/List;

    .line 303
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    :cond_78
    return-object p3
.end method

.method public getAccountsFromRemovalBlackLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "REMOVAL_BLACKLIST"

    .line 448
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAccountsFromRemovalWhiteLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "REMOVAL_WHITELIST"

    .line 465
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mAuditLogService:Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-nez v0, :cond_e

    const-string v0, "auditlog"

    .line 112
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mAuditLogService:Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 114
    :cond_e
    iget-object p0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mAuditLogService:Lcom/android/server/enterprise/auditlog/AuditLogService;

    return-object p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 105
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 107
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public final getPackageNameForUid(I)Ljava/lang/String;
    .registers 2

    .line 584
    iget-object p0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedAccountTypes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 435
    sget-object p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mSupportedAccountTypes:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 10

    .line 549
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 550
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const-string v1, "ADDITION_BLACKLIST"

    .line 551
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "ADDITION_WHITELIST"

    .line 553
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x1

    const-string v2, "DeviceAccountPolicy"

    if-nez v1, :cond_25

    const-string/jumbo p0, "isAccountAdditionAllowed() : no BlackList."

    .line 557
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 561
    :cond_25
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 562
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2d
    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz p1, :cond_4c

    .line 565
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c

    goto :goto_2d

    .line 570
    :cond_4c
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    if-eqz p3, :cond_64

    const p0, 0x1040179

    .line 572
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 575
    :cond_64
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isAccountAdditionAllowed() : account has blocked. userId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_7b
    return v0
.end method

.method public isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6

    .line 473
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 474
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 475
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z
    .registers 10

    const-string v0, "REMOVAL_BLACKLIST"

    .line 479
    invoke-virtual {p0, p4, p1, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "REMOVAL_WHITELIST"

    .line 481
    invoke-virtual {p0, p4, p1, v1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 p4, 0x1

    const-string v1, "DeviceAccountPolicy"

    if-nez v0, :cond_18

    const-string/jumbo p0, "isAccountRemovalAllowedAsUser() : no BlackList."

    .line 485
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 489
    :cond_18
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 490
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz p1, :cond_45

    .line 493
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    const-string/jumbo v3, "isAccountRemovalAllowedAsUser() : no WhiteList."

    .line 494
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 499
    :cond_45
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    if-eqz p3, :cond_5d

    const p0, 0x104017a

    .line 501
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 504
    :cond_5d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isAccountRemovalAllowedAsUser() : account has blocked. userId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_74
    return p4
.end method

.method public final declared-synchronized loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "DeviceAccountPolicy"

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadAccounts() : userId  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "AccountBlackWhiteList"

    const-string v2, "adminUid"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_33

    const-string p1, "DeviceAccountPolicy"

    const-string/jumbo p2, "loadAccounts() : admin is null "

    .line 384
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_f2

    const/4 p1, 0x0

    .line 385
    monitor-exit p0

    return-object p1

    .line 388
    :cond_33
    :try_start_33
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 391
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 393
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 394
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidFromLUID(J)I

    move-result v2

    .line 395
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    :cond_66
    const-string v1, "adminUid"

    const-string/jumbo v2, "name"

    .line 398
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1
    :try_end_6f
    .catchall {:try_start_33 .. :try_end_6f} :catchall_f2

    .line 405
    :try_start_6f
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "containerID"

    const/4 v4, 0x0

    .line 406
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "userID"

    .line 407
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "type"

    .line 408
    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "listType"

    .line 409
    invoke-virtual {v2, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object p1, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p2, "AccountBlackWhiteList"

    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p1

    .line 413
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_aa

    const-string p2, "DeviceAccountPolicy"

    const-string/jumbo p3, "loadAccounts() : list empty "

    .line 414
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_aa
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ae
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ContentValues;

    const-string p3, "adminUid"

    .line 418
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_df

    .line 420
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidFromLUID(J)I

    move-result p3

    .line 421
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    const-string/jumbo v1, "name"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_ae

    :cond_df
    const-string p2, "DeviceAccountPolicy"

    const-string/jumbo p3, "loadAccounts() : can not get admin. "

    .line 423
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_e7} :catch_e8
    .catchall {:try_start_6f .. :try_end_e7} :catchall_f2

    goto :goto_ae

    :catch_e8
    move-exception p1

    :try_start_e9
    const-string p2, "DeviceAccountPolicy"

    const-string p3, "Handled Exception in loadAccounts()"

    .line 428
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f0
    .catchall {:try_start_e9 .. :try_end_f0} :catchall_f2

    .line 431
    :cond_f0
    monitor-exit p0

    return-object v0

    :catchall_f2
    move-exception p1

    monitor-exit p0

    throw p1
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

.method public onContainerCreation(II)V
    .registers 4

    .line 610
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DeviceAccountPolicy.onContainerCreation("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceAccountPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 4

    .line 621
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DeviceAccountPolicy.onContainerRemoved("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceAccountPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 4

    .line 615
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DeviceAccountPolicy.onPreContainerRemoval("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceAccountPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeAccountsFromAdditionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "ADDITION_BLACKLIST"

    .line 519
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeAccountsFromAdditionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "ADDITION_WHITELIST"

    .line 537
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    .line 212
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v11

    .line 213
    iget v12, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getSupportedAccountTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v13, "DeviceAccountPolicy"

    const/4 v14, 0x0

    if-eqz v2, :cond_181

    if-nez p3, :cond_1b

    goto/16 :goto_181

    .line 221
    :cond_1b
    invoke-static {v11}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v15

    .line 222
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 225
    :try_start_23
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v2, v19

    :goto_2b
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "adminUid"

    const-string/jumbo v5, "type"

    const-string/jumbo v6, "name"

    const-string/jumbo v7, "listType"

    .line 228
    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    .line 233
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v14

    aput-object v0, v5, v19

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const/4 v6, 0x3

    aput-object v1, v5, v6

    move-object/from16 v10, p0

    .line 235
    iget-object v6, v10, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "AccountBlackWhiteList"

    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v2, :cond_68

    if-eqz v4, :cond_68

    move/from16 v20, v19

    goto :goto_6a

    :cond_68
    move/from16 v20, v14

    :goto_6a
    if-eqz v4, :cond_166

    const-string v2, "ADDITION_BLACKLIST"

    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_72} :catch_172
    .catchall {:try_start_23 .. :try_end_72} :catchall_170

    const-string v4, " has removed account "

    const-string v5, "Admin "

    if-eqz v2, :cond_af

    .line 242
    :try_start_78
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v2

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 243
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v21, "DeviceAccountPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from addition blacklist."

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v3, v11

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move-object/from16 v8, v21

    move-object v9, v14

    move v10, v15

    .line 242
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_166

    :cond_af
    const-string v2, "ADDITION_WHITELIST"

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v2

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 249
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "DeviceAccountPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from addition whitelist."

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v3, v11

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move-object v8, v10

    move-object v9, v14

    move v10, v15

    .line 248
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_166

    :cond_ed
    const-string v2, "REMOVAL_BLACKLIST"

    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v2

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 255
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "DeviceAccountPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from removal blacklist."

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v3, v11

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move-object v8, v10

    move-object v9, v14

    move v10, v15

    .line 254
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_166

    :cond_12a
    const-string v2, "REMOVAL_WHITELIST"

    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_166

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAuditLogService()Lcom/android/server/enterprise/auditlog/AuditLogService;

    move-result-object v2

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 261
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "DeviceAccountPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from removal whitelist."

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v3, v11

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move-object v8, v10

    move-object v9, v14

    move v10, v15

    .line 260
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_166} :catch_172
    .catchall {:try_start_78 .. :try_end_166} :catchall_170

    :cond_166
    :goto_166
    move/from16 v2, v20

    const/4 v14, 0x0

    goto/16 :goto_2b

    .line 272
    :cond_16b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v14, v2

    goto :goto_17c

    :catchall_170
    move-exception v0

    goto :goto_17d

    :catch_172
    move-exception v0

    :try_start_173
    const-string v1, "Handled Exception in removeAccountsFromBWLInternal()"

    .line 269
    invoke-static {v13, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_178
    .catchall {:try_start_173 .. :try_end_178} :catchall_170

    .line 272
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v14, 0x0

    :goto_17c
    return v14

    :goto_17d
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 273
    throw v0

    :cond_181
    :goto_181
    const-string/jumbo v0, "removeAccountsFromBWLInternal() : invalid parameter."

    .line 216
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public removeAccountsFromRemovalBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "REMOVAL_BLACKLIST"

    .line 444
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeAccountsFromRemovalWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "REMOVAL_WHITELIST"

    .line 461
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
