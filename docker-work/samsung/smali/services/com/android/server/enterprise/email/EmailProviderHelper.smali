.class public Lcom/android/server/enterprise/email/EmailProviderHelper;
.super Ljava/lang/Object;
.source "EmailProviderHelper.java"


# static fields
.field public static final EMAIL_CONTENT_URI:Ljava/lang/String; = "content://com.samsung.android.email.mdm.provider"

.field public static final FAIL_SET_ACCOUNT_OBJECT:J = -0x1L

.field public static final LDAP_CONTENT_URI:Ljava/lang/String; = "content://com.samsung.android.email.ldap.provider"

.field public static final TAG:Ljava/lang/String; = "EmailProviderHelperService"

.field public static final TAG_MAP_ACCOUNT:Ljava/lang/String; = "A"

.field public static mAccountObjectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 19

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    if-nez v0, :cond_6

    return-object v2

    .line 68
    :cond_6
    iget v3, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 69
    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 71
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 74
    :try_start_12
    invoke-static {v1, p0}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_27

    .line 76
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 75
    invoke-virtual {p0, v3, v7, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    goto :goto_34

    .line 80
    :cond_27
    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 79
    invoke-virtual {p0, v1, v7, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 87
    :goto_34
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_44} :catch_4a
    .catchall {:try_start_12 .. :try_end_44} :catchall_48

    .line 91
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_48
    move-exception v0

    goto :goto_56

    :catch_4a
    move-exception v0

    :try_start_4b
    const-string v1, "EmailProviderHelperService"

    const-string v3, "createEmailContentProviderCursor() : Failed, Exception occurs. "

    .line 89
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_48

    .line 91
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :goto_56
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    throw v0
.end method

.method public static createID()J
    .registers 4

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_d

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    :cond_d
    return-wide v0
.end method

.method public static deleteLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 14

    const-string v0, "EmailProviderHelperService"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 463
    :try_start_4
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getLDAPContentUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "deleteLDAPAccount"

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v8, v1

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 464
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_47

    const-string p0, "deleteLDAPAccount"

    .line 465
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 466
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deleteLDAPAccount() : ret = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p0

    goto :goto_4c

    :cond_47
    const-string p0, "deleteLDAPAccount() : cannot get cursor from EmailProvider."

    .line 469
    invoke-static {v0, p0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4c} :catch_5a
    .catchall {:try_start_4 .. :try_end_4c} :catchall_58

    :goto_4c
    if-eqz v2, :cond_69

    .line 476
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_69

    :goto_54
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_69

    :catchall_58
    move-exception p0

    goto :goto_6a

    :catch_5a
    move-exception p0

    :try_start_5b
    const-string p1, "deleteLDAPAccount() : Failed, Exception occurs. "

    .line 473
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_58

    if-eqz v2, :cond_69

    .line 476
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_69

    goto :goto_54

    :cond_69
    :goto_69
    return v1

    :goto_6a
    if-eqz v2, :cond_75

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_75

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 477
    :cond_75
    throw p0
.end method

.method public static getAccountId(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J
    .registers 12

    .line 183
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 184
    invoke-static {p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 185
    invoke-static {p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, " , arg3 = "

    const-string v1, " , arg2 = "

    const-string v2, "EmailProviderHelperService"

    const-wide/16 v3, -0x1

    if-eqz p3, :cond_df

    if-nez p4, :cond_1a

    goto/16 :goto_df

    :cond_1a
    const/4 v5, 0x0

    if-eqz p5, :cond_61

    if-nez p2, :cond_20

    goto :goto_34

    .line 194
    :cond_20
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\\"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 196
    :goto_34
    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object p0

    if-eqz p0, :cond_de

    .line 198
    array-length p1, p0

    :goto_3b
    if-ge v5, p1, :cond_de

    aget-object p2, p0, v5

    if-eqz p2, :cond_5e

    .line 200
    iget-object p5, p2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    if-eqz p5, :cond_5e

    iget-object p5, p2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_5e

    iget-object p5, p2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_5e

    .line 201
    iget-wide p0, p2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mId:J

    :goto_5b
    move-wide v3, p0

    goto/16 :goto_de

    :cond_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    :cond_61
    if-eqz p2, :cond_be

    .line 212
    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object p0

    if-eqz p0, :cond_de

    .line 214
    array-length p1, p0

    :goto_6a
    if-ge v5, p1, :cond_de

    aget-object p5, p0, v5

    if-eqz p5, :cond_bb

    .line 217
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p5, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p5, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p5, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    .line 218
    :cond_94
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p5, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p5, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p5, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 219
    :cond_b8
    iget-wide p0, p5, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    goto :goto_5b

    :cond_bb
    add-int/lit8 v5, v5, 0x1

    goto :goto_6a

    .line 226
    :cond_be
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getAccountId() : [EMAIL] faild with Invalid input parameters. arg1 = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_de
    :goto_de
    return-wide v3

    .line 187
    :cond_df
    :goto_df
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getAccountId() : faild with Invalid input parameters. arg1 = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v3
.end method

.method public static getAllAccountIDS(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[J
    .registers 12

    const-string v0, "_id"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 101
    :try_start_4
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v5

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_4a
    .catchall {:try_start_4 .. :try_end_15} :catchall_48

    if-eqz p0, :cond_3c

    .line 102
    :try_start_17
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_3c

    .line 103
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    .line 105
    new-array p1, p1, [J

    .line 106
    :goto_23
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_38

    add-int/lit8 v3, v1, 0x1

    .line 107
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    aput-wide v4, p1, v1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_36} :catch_3a
    .catchall {:try_start_17 .. :try_end_36} :catchall_5d

    move v1, v3

    goto :goto_23

    :cond_38
    move-object v2, p1

    goto :goto_3c

    :catch_3a
    move-exception p1

    goto :goto_4c

    :cond_3c
    :goto_3c
    if-eqz p0, :cond_5c

    .line 114
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_5c

    :goto_44
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_5c

    :catchall_48
    move-exception p1

    goto :goto_5f

    :catch_4a
    move-exception p1

    move-object p0, v2

    :goto_4c
    :try_start_4c
    const-string v0, "EmailProviderHelperService"

    const-string v1, "getAllAccountIDS() : Failed, Exception occurs. "

    .line 111
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_5d

    if-eqz p0, :cond_5c

    .line 114
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_5c

    goto :goto_44

    :cond_5c
    :goto_5c
    return-object v2

    :catchall_5d
    move-exception p1

    move-object v2, p0

    :goto_5f
    if-eqz v2, :cond_6a

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_6a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_6a
    throw p1
.end method

.method public static getAllEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .registers 9

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllAccountIDS(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[J

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 299
    array-length v3, v1

    move v4, v2

    :goto_e
    if-ge v4, v3, :cond_1e

    aget-wide v5, v1, v4

    .line 300
    invoke-static {p0, p1, v5, v6}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v5

    if-eqz v5, :cond_1b

    .line 302
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 306
    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_40

    .line 307
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 309
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    add-int/lit8 v1, v2, 0x1

    .line 310
    aput-object v0, p0, v2

    move v2, v1

    goto :goto_2e

    :cond_40
    const/4 p0, 0x0

    :cond_41
    return-object p0
.end method

.method public static getAllEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .registers 9

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllAccountIDS(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[J

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 384
    array-length v3, v1

    move v4, v2

    :goto_e
    if-ge v4, v3, :cond_1e

    aget-wide v5, v1, v4

    .line 385
    invoke-static {p0, p1, v5, v6}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v5

    if-eqz v5, :cond_1b

    .line 387
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 391
    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_40

    .line 392
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 394
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    add-int/lit8 v1, v2, 0x1

    .line 395
    aput-object v0, p0, v2

    move v2, v1

    goto :goto_2e

    :cond_40
    const/4 p0, 0x0

    :cond_41
    return-object p0
.end method

.method public static getAllLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/sec/enterprise/email/EnterpriseLDAPAccount;",
            ">;"
        }
    .end annotation

    const-string v0, "EmailProviderHelperService"

    const/4 v1, 0x0

    .line 435
    :try_start_3
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getLDAPContentUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "getAllLDAPAccounts"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_44
    .catchall {:try_start_3 .. :try_end_12} :catchall_42

    if-eqz p0, :cond_31

    .line 437
    :try_start_14
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_29

    const-string v2, "email.ldap.all.account"

    .line 439
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_27

    .line 441
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_27
    move-object v1, p1

    goto :goto_36

    :cond_29
    const-string p1, "getAllLDAPAccount() : Fail to get Data from Email. "

    .line 444
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :catch_2f
    move-exception p1

    goto :goto_46

    :cond_31
    const-string p1, "getAllLDAPAccount() : cannot get cursor from EmailProvider."

    .line 447
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_36} :catch_2f
    .catchall {:try_start_14 .. :try_end_36} :catchall_55

    :goto_36
    if-eqz p0, :cond_54

    .line 453
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_54

    :goto_3e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_54

    :catchall_42
    move-exception p1

    goto :goto_57

    :catch_44
    move-exception p1

    move-object p0, v1

    :goto_46
    :try_start_46
    const-string v2, "getAllLDAPAccount() : Failed, Exception occurs. "

    .line 450
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_55

    if-eqz p0, :cond_54

    .line 453
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_54

    goto :goto_3e

    :cond_54
    :goto_54
    return-object v1

    :catchall_55
    move-exception p1

    move-object v1, p0

    :goto_57
    if-eqz v1, :cond_62

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_62

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 454
    :cond_62
    throw p1
.end method

.method public static getEmailAccountObject(Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .registers 6

    .line 136
    sget-object p0, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 137
    instance-of v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    if-eqz v0, :cond_34

    .line 138
    sget-object v0, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    check-cast p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    return-object p0

    :cond_34
    const-string p0, "EmailProviderHelperService"

    const-string p1, "getEmailAccountObject() : failed. "

    .line 141
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getEmailContentUri()Landroid/net/Uri;
    .registers 1

    const-string v0, "content://com.samsung.android.email.mdm.provider"

    .line 173
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    const-string v2, "EmailProviderHelperService"

    if-gtz v0, :cond_1e

    .line 239
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getEnterpriseEmailAccount() : Failed, invalid account Id = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 243
    :cond_1e
    :try_start_1e
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailContentUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "getAccountInfo"

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_36} :catch_69
    .catchall {:try_start_1e .. :try_end_36} :catchall_67

    if-eqz p0, :cond_56

    .line 245
    :try_start_38
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4e

    const-string v0, "email.account"

    .line 247
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_5b

    .line 248
    instance-of v0, p1, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    if-eqz v0, :cond_5b

    .line 249
    check-cast p1, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-object v1, p1

    goto :goto_5b

    :cond_4e
    const-string p1, "getEnterpriseEmailAccount() : Fail to get Data from Email. "

    .line 252
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    :catch_54
    move-exception p1

    goto :goto_6b

    :cond_56
    const-string p1, "getEnterpriseEmailAccount() : cannot get cursor from EmailProvider."

    .line 255
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_5b} :catch_54
    .catchall {:try_start_38 .. :try_end_5b} :catchall_a5

    :cond_5b
    :goto_5b
    if-eqz p0, :cond_79

    .line 261
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_79

    :goto_63
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_79

    :catchall_67
    move-exception p1

    goto :goto_a7

    :catch_69
    move-exception p1

    move-object p0, v1

    :goto_6b
    :try_start_6b
    const-string v0, "getEnterpriseEmailAccount() : Failed, Exception occurs. "

    .line 258
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_a5

    if-eqz p0, :cond_79

    .line 261
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_79

    goto :goto_63

    :cond_79
    :goto_79
    if-nez v1, :cond_90

    .line 264
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getEnterpriseEmailAccount() : Failed, accId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 266
    :cond_90
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getEnterpriseEmailAccount() : successfully get Data from Email, accId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a4
    return-object v1

    :catchall_a5
    move-exception p1

    move-object v1, p0

    :goto_a7
    if-eqz v1, :cond_b2

    .line 261
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_b2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 262
    :cond_b2
    throw p1
.end method

.method public static getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    const-string v2, "EmailProviderHelperService"

    if-gtz v0, :cond_1e

    .line 324
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getEnterpriseExchangeAccount() : Failed, invalid account Id = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 328
    :cond_1e
    :try_start_1e
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailContentUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "getAccountInfo"

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_36} :catch_69
    .catchall {:try_start_1e .. :try_end_36} :catchall_67

    if-eqz p0, :cond_56

    .line 330
    :try_start_38
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4e

    const-string v0, "eas.account"

    .line 332
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_5b

    .line 333
    instance-of v0, p1, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    if-eqz v0, :cond_5b

    .line 334
    check-cast p1, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-object v1, p1

    goto :goto_5b

    :cond_4e
    const-string p1, "getEnterpriseExchangeAccount() : Fail to get Data from Email. "

    .line 337
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    :catch_54
    move-exception p1

    goto :goto_6b

    :cond_56
    const-string p1, "getEnterpriseExchangeAccount() : cannot get cursor from EmailProvider."

    .line 340
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_5b} :catch_54
    .catchall {:try_start_38 .. :try_end_5b} :catchall_a5

    :cond_5b
    :goto_5b
    if-eqz p0, :cond_79

    .line 346
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_79

    :goto_63
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_79

    :catchall_67
    move-exception p1

    goto :goto_a7

    :catch_69
    move-exception p1

    move-object p0, v1

    :goto_6b
    :try_start_6b
    const-string v0, "getEnterpriseExchangeAccount() : Failed, Exception occurs. "

    .line 343
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_a5

    if-eqz p0, :cond_79

    .line 346
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_79

    goto :goto_63

    :cond_79
    :goto_79
    if-nez v1, :cond_90

    .line 349
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getEnterpriseExchangeAccount() : Failed, accId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 351
    :cond_90
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getEnterpriseExchangeAccount() : successfully get Data from Email. accId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a4
    return-object v1

    :catchall_a5
    move-exception p1

    move-object v1, p0

    :goto_a7
    if-eqz v1, :cond_b2

    .line 346
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_b2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 347
    :cond_b2
    throw p1
.end method

.method public static getEnterpriseLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    .registers 13

    const-string v0, "EmailProviderHelperService"

    const/4 v1, 0x0

    .line 406
    :try_start_3
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getLDAPContentUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "getLDAPAccount"

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v7, v2

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_53
    .catchall {:try_start_3 .. :try_end_1b} :catchall_51

    if-eqz p0, :cond_40

    .line 408
    :try_start_1d
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_38

    const-string p2, "email.ldap.account"

    .line 410
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_45

    .line 411
    instance-of p2, p1, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    if-eqz p2, :cond_45

    .line 412
    check-cast p1, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    const-string p2, "getEnterpriseLDAPAccount() : successfully get Data from Email. "

    .line 413
    invoke-static {v0, p2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    goto :goto_45

    :cond_38
    const-string p1, "getEnterpriseLDAPAccount() : Fail to get Data from Email. "

    .line 416
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    :catch_3e
    move-exception p1

    goto :goto_55

    :cond_40
    const-string p1, "getEnterpriseLDAPAccount() : cannot get cursor from EmailProvider."

    .line 419
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_45} :catch_3e
    .catchall {:try_start_1d .. :try_end_45} :catchall_64

    :cond_45
    :goto_45
    if-eqz p0, :cond_63

    .line 425
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_63

    :goto_4d
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_63

    :catchall_51
    move-exception p1

    goto :goto_66

    :catch_53
    move-exception p1

    move-object p0, v1

    :goto_55
    :try_start_55
    const-string p2, "getEnterpriseExchangeAccount() : Failed, Exception occurs. "

    .line 422
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_64

    if-eqz p0, :cond_63

    .line 425
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_63

    goto :goto_4d

    :cond_63
    :goto_63
    return-object v1

    :catchall_64
    move-exception p1

    move-object v1, p0

    :goto_66
    if-eqz v1, :cond_71

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_71

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 426
    :cond_71
    throw p1
.end method

.method public static getExchangeAccountObject(Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .registers 6

    .line 127
    sget-object p0, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 128
    instance-of v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    if-eqz v0, :cond_34

    .line 129
    sget-object v0, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    check-cast p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    return-object p0

    :cond_34
    const-string p0, "EmailProviderHelperService"

    const-string p1, "getExchangeAccountObject() : failed. "

    .line 132
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLDAPContentUri()Landroid/net/Uri;
    .registers 1

    const-string v0, "content://com.samsung.android.email.ldap.provider"

    .line 177
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static setEnterpriseEmailAccountObject(Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)J
    .registers 6

    if-nez p1, :cond_d

    const-string p0, "EmailProviderHelperService"

    const-string/jumbo p1, "setEnterpriseEmailAccountObject() : failed with invalid object. "

    .line 157
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0

    .line 160
    :cond_d
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createID()J

    move-result-wide v0

    .line 161
    sget-object p0, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v0
.end method

.method public static setEnterpriseExchangeAccountObject(Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)J
    .registers 6

    if-nez p1, :cond_d

    const-string p0, "EmailProviderHelperService"

    const-string/jumbo p1, "setEnterpriseExchangeAccountObject() : failed with invalid object. "

    .line 147
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0

    .line 150
    :cond_d
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createID()J

    move-result-wide v0

    .line 151
    sget-object p0, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v0
.end method

.method public static updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z
    .registers 15

    const-string v0, "EmailProviderHelperService"

    .line 274
    invoke-static {p1, p2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->setEnterpriseEmailAccountObject(Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 277
    :try_start_8
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailContentUri()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const-string/jumbo v9, "updateEmailAccount"

    const/4 v5, 0x2

    new-array v10, v5, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v3

    const/4 v1, 0x1

    iget-object p2, p2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    aput-object p2, v10, v1

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v5 .. v11}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_3d

    .line 278
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_3d

    const-string/jumbo p0, "updateEmailAccount"

    .line 279
    invoke-interface {v4, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v4, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_43

    :cond_3d
    const-string/jumbo p0, "updateEnterpriseEmailAccount() : cannot get cursor from EmailProvider."

    .line 281
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_43} :catch_51
    .catchall {:try_start_8 .. :try_end_43} :catchall_4f

    :goto_43
    if-eqz v4, :cond_61

    .line 287
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_61

    :goto_4b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_61

    :catchall_4f
    move-exception p0

    goto :goto_77

    :catch_51
    move-exception p0

    :try_start_52
    const-string/jumbo p1, "updateEnterpriseEmailAccount() : Failed, Exception occurs. "

    .line 284
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_4f

    if-eqz v4, :cond_61

    .line 287
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_61

    goto :goto_4b

    .line 289
    :cond_61
    :goto_61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "updateEnterpriseEmailAccount() : ret = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_77
    if-eqz v4, :cond_82

    .line 287
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_82

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_82
    throw p0
.end method

.method public static updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z
    .registers 14

    const-string v0, "EmailProviderHelperService"

    .line 359
    invoke-static {p1, p2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->setEnterpriseExchangeAccountObject(Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)J

    move-result-wide v1

    const/4 p2, 0x0

    const/4 v3, 0x0

    .line 362
    :try_start_8
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailContentUri()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const-string/jumbo v8, "updateEmailAccount"

    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, p2

    const/4 v1, 0x1

    const-string v2, "eas"

    aput-object v2, v9, v1

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 363
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_3d

    const-string/jumbo p0, "updateEmailAccount"

    .line 364
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_43

    :cond_3d
    const-string/jumbo p0, "updateEnterpriseExchangeAccount() : cannot get cursor from EmailProvider."

    .line 366
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_43} :catch_51
    .catchall {:try_start_8 .. :try_end_43} :catchall_4f

    :goto_43
    if-eqz v3, :cond_61

    .line 372
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_61

    :goto_4b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_61

    :catchall_4f
    move-exception p0

    goto :goto_77

    :catch_51
    move-exception p0

    :try_start_52
    const-string/jumbo p1, "updateEnterpriseExchangeAccount() : Failed, Exception occurs. "

    .line 369
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_4f

    if-eqz v3, :cond_61

    .line 372
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_61

    goto :goto_4b

    .line 374
    :cond_61
    :goto_61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "updateEnterpriseExchangeAccount() : ret = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :goto_77
    if-eqz v3, :cond_82

    .line 372
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_82

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 373
    :cond_82
    throw p0
.end method
