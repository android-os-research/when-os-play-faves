.class public Lcom/android/server/enterprise/email/EmailAccountPolicy;
.super Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;
.source "EmailAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/EmailAccountPolicy$IntentFieldName;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "EmailAccountPolicy"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public preCallingUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    const/4 v1, -0x1

    .line 67
    iput v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->preCallingUid:I

    .line 68
    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 122
    iput-object p1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 123
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method


# virtual methods
.method public addNewAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    const-string v13, "EmailAccountPolicy"

    const-string v14, "addNewAccount() EX"

    .line 131
    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "Send from SamsungMobile"

    const/16 v20, 0x1

    .line 132
    invoke-virtual/range {v0 .. v20}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J
    .registers 48

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p10

    .line 146
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v10

    const-string v11, "EmailAccountPolicy"

    const-string v3, ">>>>>>>>>>>>>>>>>\t\taddNewAccount EX "

    .line 147
    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v12

    .line 149
    iget v13, v10, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 150
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 151
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 152
    invoke-static/range {p9 .. p9}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p3

    .line 153
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v3, p8

    .line 154
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 155
    invoke-static/range {p11 .. p11}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 156
    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-static/range {p12 .. p12}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    invoke-static/range {p7 .. p7}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v16, -0x1

    if-eqz v14, :cond_1e7

    .line 160
    invoke-static {v14}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1e7

    if-eqz v15, :cond_1e7

    if-eqz v9, :cond_1e7

    if-eqz v8, :cond_1e7

    if-eqz v7, :cond_1e7

    move-object/from16 p1, v3

    const/4 v3, 0x1

    if-gt v3, v1, :cond_1e7

    if-gt v3, v2, :cond_1e7

    if-eqz v6, :cond_1e7

    if-nez v5, :cond_5e

    goto/16 :goto_1e7

    .line 169
    :cond_5e
    invoke-static {v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-static {v3, v13}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_7d

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addNewAccount() EX : Error :: Email app is not installed on user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    :cond_7d
    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 175
    iget-object v3, v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v21, v3

    move/from16 v20, v13

    move-object/from16 v13, p1

    move-object v3, v10

    move-object v2, v4

    move-object/from16 v4, v18

    move-object/from16 v22, v5

    move-object v5, v14

    move-object/from16 v23, v6

    move-object v6, v15

    move-object/from16 v24, v7

    move-object v7, v8

    move-object/from16 v25, v8

    move/from16 v8, v19

    move-object/from16 v26, v9

    move-object/from16 v9, v21

    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_ae

    const-string v0, "addNewAccount() EX : Error :: Account already exists."

    .line 177
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    :cond_ae
    const-string/jumbo v3, "ssl"

    const-string/jumbo v4, "none"

    if-eqz p13, :cond_bc

    if-nez p14, :cond_bc

    if-nez p15, :cond_bc

    move-object v7, v3

    goto :goto_bd

    :cond_bc
    move-object v7, v4

    :goto_bd
    const-string/jumbo v8, "tls"

    if-nez p13, :cond_c7

    if-eqz p14, :cond_c7

    if-nez p15, :cond_c7

    move-object v7, v8

    :cond_c7
    const-string/jumbo v9, "ssl+trustallcerts"

    if-eqz p13, :cond_d1

    if-nez p14, :cond_d1

    if-eqz p15, :cond_d1

    move-object v7, v9

    :cond_d1
    const-string/jumbo v16, "tls+trustallcerts"

    if-nez p13, :cond_dc

    if-eqz p14, :cond_dc

    if-eqz p15, :cond_dc

    move-object/from16 v7, v16

    :cond_dc
    if-eqz p16, :cond_e3

    if-nez p17, :cond_e3

    if-nez p18, :cond_e3

    goto :goto_e4

    :cond_e3
    move-object v3, v4

    :goto_e4
    if-nez p16, :cond_eb

    if-eqz p17, :cond_eb

    if-nez p18, :cond_eb

    goto :goto_ec

    :cond_eb
    move-object v8, v3

    :goto_ec
    if-eqz p16, :cond_f3

    if-nez p17, :cond_f3

    if-eqz p18, :cond_f3

    goto :goto_f4

    :cond_f3
    move-object v9, v8

    :goto_f4
    if-nez p16, :cond_fc

    if-eqz p17, :cond_fc

    if-eqz p18, :cond_fc

    move-object/from16 v9, v16

    .line 208
    :cond_fc
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 210
    :try_start_100
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addNewAccount() EX : "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.action.CREATE_EMAILACCOUNT_INTERNAL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_11b} :catch_1ba
    .catchall {:try_start_100 .. :try_end_11b} :catchall_1b6

    move-wide/from16 p3, v3

    .line 213
    :try_start_11d
    invoke-virtual {v0, v10, v2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v2
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_121} :catch_1b4
    .catchall {:try_start_11d .. :try_end_121} :catchall_1e2

    move-object v4, v11

    .line 214
    :try_start_122
    invoke-virtual {v0, v10, v13}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v10

    const-string v6, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    .line 217
    invoke-virtual {v5, v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 218
    invoke-virtual {v5, v6, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.USER_PASSWD_ID_INTERNAL"

    .line 219
    invoke-virtual {v5, v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.OUTGOING_USER_PASSWD_ID_INTERNAL"

    .line 220
    invoke-virtual {v5, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    move-object/from16 v3, v25

    .line 221
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.OUTGOING_SERVICE_INTERNAL"

    move-object/from16 v3, v24

    .line 222
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.RECEIVE_HOST_INTERNAL"

    .line 223
    invoke-virtual {v5, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.RECEIVE_SECURITY_INTERNAL"

    .line 224
    invoke-virtual {v5, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.RECEIVE_PORT_INTERNAL"

    .line 225
    invoke-virtual {v5, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.SEND_HOST_INTERNAL"

    move-object/from16 v2, v26

    .line 226
    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.SEND_SECURITY_INTERNAL"

    .line 227
    invoke-virtual {v5, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.SEND_PORT_INTERNAL"

    move/from16 v2, p10

    .line 228
    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.SENDER_NAME_INTERNAL"

    move-object/from16 v2, v22

    .line 229
    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.OUTGOING_SENDER_NAME_INTERNAL"

    move-object/from16 v2, v23

    .line 230
    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.SIGNATURE_INTERNAL"

    move-object/from16 v2, p19

    .line 231
    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.EXTRA_NOTIFY_INTERNAL"

    move/from16 v2, p20

    .line 232
    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v0, v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v12}, Landroid/os/UserHandle;-><init>(I)V

    const-string v2, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " addNewAccount_ex() : sent intent to Email app : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_1aa} :catch_1b1
    .catchall {:try_start_122 .. :try_end_1aa} :catchall_1e2

    move-object v1, v4

    :try_start_1ab
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_1ae} :catch_1af
    .catchall {:try_start_1ab .. :try_end_1ae} :catchall_1e2

    goto :goto_1c3

    :catch_1af
    move-exception v0

    goto :goto_1be

    :catch_1b1
    move-exception v0

    move-object v1, v4

    goto :goto_1be

    :catch_1b4
    move-exception v0

    goto :goto_1bd

    :catchall_1b6
    move-exception v0

    move-wide/from16 p3, v3

    goto :goto_1e3

    :catch_1ba
    move-exception v0

    move-wide/from16 p3, v3

    :goto_1bd
    move-object v1, v11

    :goto_1be
    :try_start_1be
    const-string v2, "addNewAccount_ex() : "

    .line 238
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c3
    .catchall {:try_start_1be .. :try_end_1c3} :catchall_1e2

    .line 241
    :goto_1c3
    invoke-static/range {p3 .. p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v0, "<<<<<<<<<<<<<<<<<\t\taddNewAccount EX : Broadcasting Email"

    .line 243
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<<<<<<<<<<<<<<<\t\taddNewAccount EX : Broadcasting Email + recvSecurityStr "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    return-wide v1

    :catchall_1e2
    move-exception v0

    .line 241
    :goto_1e3
    invoke-static/range {p3 .. p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    throw v0

    :cond_1e7
    :goto_1e7
    move-object v1, v11

    const-string v0, "addNewAccount() EX : Error :: Invalid input parameters."

    .line 165
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16
.end method

.method public addNewAccount_new(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/EmailAccount;)J
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1140
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v9

    const-string v10, "EmailAccountPolicy"

    const-string v2, ">>>>>>>>>>>>>>>>>\t\taddNewAccount NEW "

    .line 1141
    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-static {v9}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v11

    .line 1143
    iget v12, v9, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-wide/16 v13, -0x1

    if-nez v1, :cond_1f

    const-string v0, "addNewAccount() NEW : Error :: Invalid Account."

    .line 1148
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v13

    .line 1153
    :cond_1f
    iget-object v2, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->emailAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1154
    iget-object v2, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1155
    iget-object v2, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1156
    iget-object v2, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingProtocol:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1157
    iget-object v2, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingProtocol:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1158
    iget-object v2, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerLogin:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1159
    iget-object v2, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerLogin:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1160
    iget-object v2, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerPassword:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1161
    iget-object v13, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerPassword:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1162
    iget v14, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerPort:I

    move-object/from16 p1, v13

    .line 1163
    iget v13, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerPort:I

    if-eqz v15, :cond_211

    .line 1164
    invoke-static {v15}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_211

    if-eqz v8, :cond_211

    if-eqz v7, :cond_211

    if-eqz v6, :cond_211

    if-eqz v5, :cond_211

    move-object/from16 v16, v2

    const/4 v2, 0x1

    if-gt v2, v14, :cond_211

    if-gt v2, v13, :cond_211

    if-eqz v3, :cond_211

    if-nez v4, :cond_78

    goto/16 :goto_211

    .line 1173
    :cond_78
    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 1174
    invoke-static {v2, v12}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_99

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addNewAccount() EX : Error :: Email app is not installed on user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_96
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_99
    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 1179
    iget-object v2, v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v16

    move-object/from16 v16, v2

    move-object v2, v9

    move-object/from16 v20, v3

    move-object/from16 v3, v17

    move-object/from16 v21, v4

    move-object v4, v15

    move-object/from16 v22, v5

    move-object v5, v8

    move-object/from16 v17, v6

    move-object/from16 v23, v7

    move/from16 v7, v18

    move/from16 v18, v11

    move-object v11, v8

    move-object/from16 v8, v16

    invoke-static/range {v2 .. v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_c9

    const-string v0, "addNewAccount() NEW : Error :: Account already exists."

    .line 1181
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    .line 1188
    :cond_c9
    iget-boolean v2, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseSSL:Z

    const-string/jumbo v3, "ssl"

    const-string/jumbo v6, "none"

    if-eqz v2, :cond_dd

    iget-boolean v7, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseTLS:Z

    if-nez v7, :cond_dd

    iget-boolean v7, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAcceptAllCertificates:Z

    if-nez v7, :cond_dd

    move-object v7, v3

    goto :goto_de

    :cond_dd
    move-object v7, v6

    :goto_de
    const-string/jumbo v8, "tls"

    if-nez v2, :cond_ec

    .line 1191
    iget-boolean v4, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseTLS:Z

    if-eqz v4, :cond_ec

    iget-boolean v4, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAcceptAllCertificates:Z

    if-nez v4, :cond_ec

    move-object v7, v8

    :cond_ec
    const-string/jumbo v4, "ssl+trustallcerts"

    if-eqz v2, :cond_fa

    .line 1194
    iget-boolean v5, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseTLS:Z

    if-nez v5, :cond_fa

    iget-boolean v5, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAcceptAllCertificates:Z

    if-eqz v5, :cond_fa

    move-object v7, v4

    :cond_fa
    const-string/jumbo v5, "tls+trustallcerts"

    if-nez v2, :cond_108

    .line 1197
    iget-boolean v2, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseTLS:Z

    if-eqz v2, :cond_108

    iget-boolean v2, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAcceptAllCertificates:Z

    if-eqz v2, :cond_108

    move-object v7, v5

    .line 1200
    :cond_108
    iget-boolean v2, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseSSL:Z

    if-eqz v2, :cond_119

    move-object/from16 v16, v3

    iget-boolean v3, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseTLS:Z

    if-nez v3, :cond_119

    iget-boolean v3, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAcceptAllCertificates:Z

    if-nez v3, :cond_119

    move-object/from16 v3, v16

    goto :goto_11a

    :cond_119
    move-object v3, v6

    :goto_11a
    if-nez v2, :cond_125

    .line 1203
    iget-boolean v6, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseTLS:Z

    if-eqz v6, :cond_125

    iget-boolean v6, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAcceptAllCertificates:Z

    if-nez v6, :cond_125

    goto :goto_126

    :cond_125
    move-object v8, v3

    :goto_126
    if-eqz v2, :cond_131

    .line 1206
    iget-boolean v3, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseTLS:Z

    if-nez v3, :cond_131

    iget-boolean v3, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAcceptAllCertificates:Z

    if-eqz v3, :cond_131

    goto :goto_132

    :cond_131
    move-object v4, v8

    :goto_132
    if-nez v2, :cond_13d

    .line 1209
    iget-boolean v2, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseTLS:Z

    if-eqz v2, :cond_13d

    iget-boolean v2, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAcceptAllCertificates:Z

    if-eqz v2, :cond_13d

    goto :goto_13e

    :cond_13d
    move-object v5, v4

    .line 1212
    :goto_13e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1214
    :try_start_142
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.action.CREATE_EMAILACCOUNT_INTERNAL"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_149} :catch_1e5
    .catchall {:try_start_142 .. :try_end_149} :catchall_1e1

    move-object/from16 v6, p1

    move-wide/from16 v24, v2

    .line 1216
    :try_start_14d
    invoke-virtual {v0, v9, v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v6, v19

    .line 1217
    invoke-virtual {v0, v9, v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v8

    const-string v6, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    .line 1220
    invoke-virtual {v4, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 1221
    invoke-virtual {v4, v6, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.USER_PASSWD_ID_INTERNAL"

    .line 1222
    invoke-virtual {v4, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.OUTGOING_USER_PASSWD_ID_INTERNAL"

    .line 1223
    invoke-virtual {v4, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    move-object/from16 v3, v17

    .line 1224
    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.OUTGOING_SERVICE_INTERNAL"

    move-object/from16 v3, v22

    .line 1225
    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.RECEIVE_HOST_INTERNAL"

    .line 1226
    invoke-virtual {v4, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.RECEIVE_SECURITY_INTERNAL"

    .line 1227
    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.RECEIVE_PORT_INTERNAL"

    .line 1228
    invoke-virtual {v4, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.SEND_HOST_INTERNAL"

    move-object/from16 v3, v23

    .line 1229
    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.SEND_SECURITY_INTERNAL"

    .line 1230
    invoke-virtual {v4, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.SEND_PORT_INTERNAL"

    .line 1231
    invoke-virtual {v4, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.SENDER_NAME_INTERNAL"

    move-object/from16 v3, v21

    .line 1232
    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.OUTGOING_SENDER_NAME_INTERNAL"

    move-object/from16 v3, v20

    .line 1233
    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.SIGNATURE_INTERNAL"

    .line 1234
    iget-object v3, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->signature:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.EXTRA_NOTIFY_INTERNAL"

    .line 1235
    iget-boolean v1, v1, Lcom/samsung/android/knox/accounts/EmailAccount;->isNotify:Z

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1236
    invoke-static {v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1238
    iget-object v0, v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    move/from16 v2, v18

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v2, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " addNewAccount() NEW : sent intent to Email app : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1de
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_1de} :catch_1df
    .catchall {:try_start_14d .. :try_end_1de} :catchall_20c

    goto :goto_1ed

    :catch_1df
    move-exception v0

    goto :goto_1e8

    :catchall_1e1
    move-exception v0

    move-wide/from16 v24, v2

    goto :goto_20d

    :catch_1e5
    move-exception v0

    move-wide/from16 v24, v2

    :goto_1e8
    :try_start_1e8
    const-string v1, "addNewAccount() NEW :  failed. "

    .line 1241
    invoke-static {v10, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1ed
    .catchall {:try_start_1e8 .. :try_end_1ed} :catchall_20c

    .line 1243
    :goto_1ed
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v0, "<<<<<<<<<<<<<<<<<\t\taddNewAccount NEW : Broadcasting Email"

    .line 1245
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<\t\taddNewAccount NEW : Broadcasting Email +  recvSecurityStr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    return-wide v1

    :catchall_20c
    move-exception v0

    .line 1243
    :goto_20d
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1244
    throw v0

    :cond_211
    :goto_211
    const-string v0, "addNewAccount() NEW : Error :: Invalid input parameters."

    .line 1169
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_96
.end method

.method public deleteAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 11

    .line 969
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 970
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 971
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 972
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 975
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object p1

    const-string v2, "EmailAccountPolicy"

    const/4 v3, 0x0

    if-nez p1, :cond_2c

    .line 977
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "deleteAccount_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 980
    :cond_2c
    iget-object p1, p1, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailAddress:Ljava/lang/String;

    invoke-static {v3, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 981
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "deleteAccount_new() : MDM DeviceAccountPolicy restriction - cannot delete account : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 984
    :cond_4d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 987
    :try_start_51
    new-instance p1, Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.action.DELETE_EMAILACCOUNT_INTERNAL"

    invoke-direct {p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    .line 988
    invoke-virtual {p1, v6, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 992
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 994
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string p3, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_70} :catch_74
    .catchall {:try_start_51 .. :try_end_70} :catchall_72

    const/4 v3, 0x1

    goto :goto_7a

    :catchall_72
    move-exception p0

    goto :goto_7e

    :catch_74
    move-exception p0

    :try_start_75
    const-string p1, "deleteAccount_new() : failed. "

    .line 997
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_72

    .line 1000
    :goto_7a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_7e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1001
    throw p0
.end method

.method public final enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5

    .line 107
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 108
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_EMAIL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 111
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 112
    iget v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->preCallingUid:I

    if-eq v1, v0, :cond_48

    .line 113
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->setPackageNameForUid(ILjava/lang/String;)V

    .line 115
    iput v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->preCallingUid:I

    .line 116
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling UID changed :    "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  callingUid   "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EmailAccountPolicy"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    return-object p1
.end method

.method public final fillInEmailAccountData(Lcom/android/server/enterprise/email/AccountMetaData;)Lcom/samsung/android/knox/accounts/Account;
    .registers 7

    .line 1021
    new-instance p0, Lcom/samsung/android/knox/accounts/Account;

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/Account;-><init>()V

    .line 1023
    iget v0, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    iput v0, p0, Lcom/samsung/android/knox/accounts/Account;->id:I

    .line 1024
    iget-object v0, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/Account;->displayName:Ljava/lang/String;

    .line 1025
    iget-object v0, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/Account;->emailAddress:Ljava/lang/String;

    const-string v0, "0"

    .line 1026
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/Account;->syncKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1027
    iput v0, p0, Lcom/samsung/android/knox/accounts/Account;->syncLookback:I

    .line 1028
    iget v0, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    iput v0, p0, Lcom/samsung/android/knox/accounts/Account;->syncInterval:I

    const-wide/16 v0, -0x1

    .line 1029
    iput-wide v0, p0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeyRecv:J

    .line 1030
    iput-wide v0, p0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeySend:J

    .line 1031
    iget v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    iput v2, p0, Lcom/samsung/android/knox/accounts/Account;->flags:I

    .line 1032
    iget-boolean v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/accounts/Account;->isDefault:Z

    const/4 v2, 0x0

    .line 1033
    iput-object v2, p0, Lcom/samsung/android/knox/accounts/Account;->compatibilityUuid:Ljava/lang/String;

    .line 1034
    iget-object v3, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/knox/accounts/Account;->senderName:Ljava/lang/String;

    .line 1035
    iput-object v2, p0, Lcom/samsung/android/knox/accounts/Account;->ringtoneUri:Ljava/lang/String;

    .line 1036
    iput-object v2, p0, Lcom/samsung/android/knox/accounts/Account;->protocolVersion:Ljava/lang/String;

    .line 1037
    iput-object v2, p0, Lcom/samsung/android/knox/accounts/Account;->securitySyncKey:Ljava/lang/String;

    .line 1038
    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/accounts/Account;->signature:Ljava/lang/String;

    .line 1039
    iget-boolean v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateAlways:Z

    xor-int/lit8 v2, v2, 0x1

    .line 1040
    iput-boolean v2, p0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateWhenSilent:Z

    .line 1042
    new-instance v2, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v2}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    const/4 v3, -0x1

    .line 1043
    iput v3, v2, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    .line 1044
    iget-object v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    iput-object v4, v2, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    .line 1045
    iget-object v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v4, v2, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    .line 1046
    iget v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    iput v4, v2, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    .line 1047
    iget v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iput v4, v2, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    .line 1048
    iget-boolean v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    iput-boolean v4, v2, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    .line 1049
    iget-boolean v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    iput-boolean v4, v2, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    .line 1050
    iget-boolean v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    iput-boolean v4, v2, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    .line 1051
    iget-object v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iput-object v4, v2, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    .line 1052
    iget-object v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v4, v2, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    .line 1053
    iget-object v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    iput-object v4, v2, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    .line 1054
    iput-wide v0, v2, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    .line 1056
    new-instance v2, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v2}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    .line 1057
    iput v3, v2, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    .line 1058
    iget-object v3, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    .line 1059
    iget-object v3, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    .line 1060
    iget v3, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    iput v3, v2, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    .line 1061
    iget v3, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    iput v3, v2, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    .line 1062
    iget-boolean v3, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    iput-boolean v3, v2, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    .line 1063
    iget-boolean v3, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    iput-boolean v3, v2, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    .line 1064
    iget-boolean v3, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    iput-boolean v3, v2, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    .line 1065
    iget-object v3, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    .line 1066
    iget-object v3, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    .line 1067
    iget-object p1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    iput-object p1, v2, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    .line 1068
    iput-wide v0, v2, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    return-object p0
.end method

.method public getAccountDetails(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/Account;
    .registers 6

    .line 952
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccountDetails() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmailAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 956
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseEmailAccount(Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Lcom/samsung/android/knox/accounts/Account;

    move-result-object p0

    return-object p0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 12

    .line 940
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 941
    iget-object v6, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getAllEmailAccounts(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/accounts/Account;
    .registers 5

    .line 1079
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string v1, "getAllEmailAccounts()"

    .line 1080
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 1084
    array-length p1, p0

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, p1, :cond_2f

    aget-object v2, p0, v0

    if-eqz v2, :cond_27

    .line 1086
    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseEmailAccount(Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Lcom/samsung/android/knox/accounts/Account;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2a
    const-string p0, "getAllEmailAccounts_new( ): ids is empty "

    .line 1089
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_2f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_42

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/samsung/android/knox/accounts/Account;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/samsung/android/knox/accounts/Account;

    goto :goto_43

    :cond_42
    const/4 p0, 0x0

    :goto_43
    return-object p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 95
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 97
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public getSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;
    .registers 6

    const-string v0, "EmailAccountPolicy"

    .line 1268
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    const-string v1, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    .line 1269
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1272
    :try_start_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "I#"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1273
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "getSecurityInComingServerPassword() success"

    .line 1274
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_29} :catch_2a

    goto :goto_32

    :catch_2a
    move-exception p0

    const-string/jumbo p1, "getSecurityInComingServerPassword() failed "

    .line 1276
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_32
    return-object p0
.end method

.method public getSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;
    .registers 6

    const-string v0, "EmailAccountPolicy"

    .line 1252
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    const-string v1, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    .line 1253
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1256
    :try_start_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "O#"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1257
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "getSecurityOutGoingServerPassword() success"

    .line 1258
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_29} :catch_2a

    goto :goto_32

    :catch_2a
    move-exception p0

    const-string/jumbo p1, "getSecurityOutGoingServerPassword() failed"

    .line 1260
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_32
    return-object p0
.end method

.method public final getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 477
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 480
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "pop3"

    .line 481
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    const-string/jumbo p1, "imap"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    const/4 p0, 0x0

    .line 485
    :cond_1d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "getValidIncomingProtocol returned  protocol : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 708
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 711
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "smtp"

    .line 712
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p0, 0x0

    .line 716
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "getValidOutgoingProtocol returned  protocol : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
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

.method public removePendingAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 1096
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1097
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1098
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1099
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1103
    :try_start_10
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.knox.intent.action.DELETE_NOT_VALIDATED_EMAILACCOUNT_INTERNAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 1104
    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    .line 1105
    invoke-virtual {v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.samsung.android.knox.intent.extra.RECEIVE_HOST_INTERNAL"

    .line 1106
    invoke-virtual {v3, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1107
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string p1, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {p0, v3, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_39} :catch_3c
    .catchall {:try_start_10 .. :try_end_39} :catchall_3a

    goto :goto_45

    :catchall_3a
    move-exception p0

    goto :goto_49

    :catch_3c
    move-exception p0

    :try_start_3d
    const-string p1, "EmailAccountPolicy"

    const-string/jumbo p2, "removePendingAccount() : failed. "

    .line 1111
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_3a

    .line 1113
    :goto_45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_49
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    throw p0
.end method

.method public sendAccountsChangedBroadcast(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 5

    .line 1011
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1012
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1013
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1014
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1015
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p0, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->sendAccountsChangedBroadcast(ILandroid/content/Context;I)V

    .line 1016
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setAccountName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 8

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 258
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 260
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "EmailAccountPolicy"

    if-nez v0, :cond_29

    .line 262
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setAccountName_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_29
    if-nez p2, :cond_32

    const-string/jumbo p0, "setAccountName_new() : accountName is null"

    .line 266
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 269
    :cond_32
    iput-object p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mDisplayName:Ljava/lang/String;

    .line 270
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result p0

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAccountName ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " )"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public setAlwaysVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 8

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAlwaysVibrateOnEmailNotification("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmailAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 404
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_3f

    .line 406
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setAlwaysVibrateOnEmailNotification_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3f
    if-eqz p2, :cond_47

    const/4 p2, 0x1

    .line 410
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateAlways:Z

    .line 411
    iput-boolean v2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateWhenSilent:Z

    goto :goto_49

    .line 413
    :cond_47
    iput-boolean v2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateAlways:Z

    .line 415
    :goto_49
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result p0

    return p0
.end method

.method public setAsDefaultAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 6

    .line 923
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAsDefaultAccount :  userID ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",   accId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmailAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    if-nez v0, :cond_44

    .line 927
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setAsDefaultAccount_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_44
    const/4 p2, 0x1

    .line 930
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mIsDefault:Z

    .line 931
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result p0

    return p0
.end method

.method public setEmailAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
    .registers 5

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-string p0, "EmailAccountPolicy"

    const-string/jumbo p1, "setEmailAddress() : deprecated."

    .line 313
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public setInComingProtocol(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 9

    .line 498
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setInComingProtocol()"

    .line 499
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    if-nez p2, :cond_1a

    const-string/jumbo p0, "setInComingProtocol() : Error :: Invalid input parameter."

    .line 504
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 507
    :cond_1a
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v2

    if-nez v2, :cond_38

    .line 509
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setInComingProtocol_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 512
    :cond_38
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInComingProtocol returned  protocol : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result p0

    return p0
.end method

.method public setInComingServerAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 7

    .line 604
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setInComingServerAcceptAllCertificates()"

    .line 605
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 608
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setInComingServerAcceptAllCertificates_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 611
    :cond_2b
    iput-boolean p2, v1, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingAcceptAllCertificates:Z

    .line 613
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setInComingServerAcceptAllCertificates returned  acceptAllCertificates : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result p0

    return p0
.end method

.method public setInComingServerAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
    .registers 9

    .line 525
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setInComingServerAddress()"

    .line 526
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v1, -0x1

    if-nez p2, :cond_1b

    const-string/jumbo p0, "setInComingServerAddress() : Error :: Invalid input parameter."

    .line 531
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    .line 534
    :cond_1b
    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v3

    if-nez v3, :cond_39

    .line 536
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setInComingServerAddress_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    .line 539
    :cond_39
    iput-object p2, v3, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerAddress:Ljava/lang/String;

    .line 541
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setInComingServerAddress returned  serverAddress : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result p0

    if-eqz p0, :cond_5a

    iget-wide v1, v3, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    :cond_5a
    return-wide v1
.end method

.method public setInComingServerLogin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
    .registers 8

    .line 625
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setInComingServerLogin() : deprecated. "

    .line 626
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v1, -0x1

    if-nez p2, :cond_1b

    const-string/jumbo p0, "setInComingServerLogin() : Error :: Invalid input parameter."

    .line 630
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    .line 634
    :cond_1b
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 635
    invoke-static {p1, p3, p4, p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object p0

    if-nez p0, :cond_39

    .line 638
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setInComingServerLogin() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_39
    const-string/jumbo p1, "setInComingServerLogin deprecated "

    .line 641
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iput-object p2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    return-wide v1
.end method

.method public setInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 8

    .line 657
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 658
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 659
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "EmailAccountPolicy"

    if-nez p2, :cond_16

    const-string/jumbo p0, "setInComingServerPassword : Error :: Invalid input parameter."

    .line 661
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 665
    :cond_16
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v2

    if-nez v2, :cond_34

    .line 667
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setInComingServerPassword_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 670
    :cond_34
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingPassword:Ljava/lang/String;

    .line 671
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result p0

    return p0
.end method

.method public setInComingServerPathPrefix(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 7

    .line 683
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setInComingServerPathPrefix() : deprecated"

    .line 684
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 687
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 688
    invoke-static {p1, p3, p4, p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_2f

    .line 691
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setInComingServerPathPrefix() : No exist accId : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 695
    :cond_2f
    iput-object p2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    return p1
.end method

.method public setInComingServerPort(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .registers 8

    .line 553
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setInComingServerPort()"

    .line 554
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-gez p2, :cond_16

    const-string/jumbo p0, "setInComingServerPort() : Error :: Invalid input parameter."

    .line 557
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 561
    :cond_16
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v2

    if-nez v2, :cond_34

    .line 563
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setInComingServerPort_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 566
    :cond_34
    iput p2, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerPort:I

    .line 567
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setInComingServerPort returned  port : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result p0

    return p0
.end method

.method public setInComingServerSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 7

    .line 580
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setInComingServerSSL()"

    .line 581
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 585
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setInComingServerSSL_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 588
    :cond_2b
    iput-boolean p2, v1, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseSSL:Z

    .line 590
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setInComingServerSSL returned  enableSSL : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result p0

    return p0
.end method

.method public setOutGoingProtocol(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 7

    .line 725
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setOutGoingProtocol : deprecated."

    .line 726
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    if-nez p2, :cond_1a

    const-string/jumbo p0, "setOutGoingProtocol : Error :: Invalid input parameter."

    .line 731
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 735
    :cond_1a
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 736
    invoke-static {p1, p3, p4, p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object p0

    if-nez p0, :cond_38

    .line 739
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setOutGoingProtocol() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 743
    :cond_38
    iput-object p2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    return v1
.end method

.method public setOutGoingServerAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 7

    .line 820
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOutGoingServerAcceptAllCertificates() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmailAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 825
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setOutGoingServerAcceptAllCertificates_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 828
    :cond_3a
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingAcceptAllCertificates:Z

    .line 829
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setOutGoingServerAcceptAllCertificates returned  port : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result p0

    return p0
.end method

.method public setOutGoingServerAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
    .registers 9

    .line 750
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 751
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, -0x1

    const-string v2, "EmailAccountPolicy"

    if-nez p2, :cond_15

    const-string/jumbo p0, "setOutGoingServerAddress() : Error :: Invalid input parameter."

    .line 754
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    .line 758
    :cond_15
    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v3

    if-nez v3, :cond_33

    .line 760
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setOutGoingServerAddress_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    .line 763
    :cond_33
    iput-object p2, v3, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerAddress:Ljava/lang/String;

    .line 765
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setOutGoingServerAddress() returned  serverAddress : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result p0

    if-eqz p0, :cond_54

    iget-wide v0, v3, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    :cond_54
    return-wide v0
.end method

.method public setOutGoingServerLogin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
    .registers 8

    .line 842
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 844
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "EmailAccountPolicy"

    const-wide/16 v1, -0x1

    if-nez p2, :cond_15

    const-string/jumbo p0, "setOutGoingServerLogin() : Error :: Invalid input parameter."

    .line 847
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    .line 851
    :cond_15
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 852
    invoke-static {p1, p3, p4, p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object p0

    if-nez p0, :cond_33

    .line 855
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setOutGoingServerLogin() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    .line 859
    :cond_33
    iput-object p2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    return-wide v1
.end method

.method public setOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 8

    .line 873
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 874
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 876
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "EmailAccountPolicy"

    if-nez p2, :cond_16

    const-string/jumbo p0, "setOutGoingServerPassword : Error :: Invalid input parameter."

    .line 878
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 881
    :cond_16
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v2

    if-nez v2, :cond_34

    .line 883
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setOutGoingServerPassword_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 886
    :cond_34
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingPassword:Ljava/lang/String;

    .line 887
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result p0

    return p0
.end method

.method public setOutGoingServerPathPrefix(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 7

    .line 898
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setOutGoingServerPathPrefix() : deprecated. "

    .line 899
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 902
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 903
    invoke-static {p1, p3, p4, p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_2f

    .line 906
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setOutGoingServerPathPrefix() : No exist accId : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 910
    :cond_2f
    iput-object p2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    return p1
.end method

.method public setOutGoingServerPort(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .registers 8

    .line 770
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "EmailAccountPolicy"

    if-gez p2, :cond_10

    const-string/jumbo p0, "setOutGoingServerPort : Error :: Invalid input parameter."

    .line 773
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 777
    :cond_10
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v2

    if-nez v2, :cond_2e

    .line 779
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setOutGoingServerPort_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 782
    :cond_2e
    iput p2, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerPort:I

    .line 783
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setOutGoingServerPort returned  port : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result p0

    return p0
.end method

.method public setOutGoingServerSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 7

    .line 796
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOutGoingServerSSL() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmailAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 801
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setOutGoingServerSSL_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 804
    :cond_3a
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseSSL:Z

    .line 805
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setOutGoingServerSSL returned  port : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result p0

    return p0
.end method

.method public setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .registers 6

    .line 1304
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    const-string v0, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 1305
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide p0

    const-string v0, "EmailAccountPolicy"

    if-nez p2, :cond_1a

    const-string/jumbo p0, "setSecurityInComingServerPassword() : password is null"

    .line 1307
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0

    .line 1311
    :cond_1a
    :try_start_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "I#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1312
    invoke-static {v1, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo p2, "setSecurityInComingServerPassword() success"

    .line 1313
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_34} :catch_35
    .catchall {:try_start_1a .. :try_end_34} :catchall_3c

    return-wide p0

    :catch_35
    move-exception p2

    :try_start_36
    const-string/jumbo v1, "setSecurityInComingServerPassword() failed"

    .line 1315
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_3c

    :catchall_3c
    return-wide p0
.end method

.method public setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .registers 6

    .line 1284
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    const-string v0, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 1285
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide p0

    const-string v0, "EmailAccountPolicy"

    if-nez p2, :cond_1a

    const-string/jumbo p0, "setSecurityOutGoingServerPassword() : password is null"

    .line 1287
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0

    .line 1291
    :cond_1a
    :try_start_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "O#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1292
    invoke-static {v1, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo p2, "setSecurityOutGoingServerPassword() success"

    .line 1293
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_34} :catch_35
    .catchall {:try_start_1a .. :try_end_34} :catchall_3c

    return-wide p0

    :catch_35
    move-exception p2

    :try_start_36
    const-string/jumbo v1, "setSecurityOutGoingServerPassword() failed"

    .line 1295
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_3c

    :catchall_3c
    return-wide p0
.end method

.method public setSenderName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 8

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 352
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "EmailAccountPolicy"

    if-nez p2, :cond_14

    const-string/jumbo p0, "setSenderName() : senderName is null"

    .line 355
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 359
    :cond_14
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v2

    if-nez v2, :cond_32

    .line 361
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setEmailAddress_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 364
    :cond_32
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSenderName:Ljava/lang/String;

    .line 365
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result p0

    return p0
.end method

.method public setSignature(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 8

    .line 376
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "EmailAccountPolicy"

    if-nez p2, :cond_10

    const-string/jumbo p0, "setSignature() : signature is null"

    .line 380
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 384
    :cond_10
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v2

    if-nez v2, :cond_2e

    .line 386
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setSignature_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 389
    :cond_2e
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSignature:Ljava/lang/String;

    .line 390
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result p0

    return p0
.end method

.method public setSilentVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 5

    .line 427
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-string p0, "EmailAccountPolicy"

    const-string/jumbo p1, "setSilentVibrateOnEmailNotification() : deprecated."

    .line 466
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setSyncInterval(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .registers 6

    .line 326
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 328
    iget-object p0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 329
    invoke-static {p1, p3, p4, p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "EmailAccountPolicy"

    if-nez p0, :cond_25

    .line 331
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setSyncInterval() : No exist accId : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 335
    :cond_25
    iput p2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    const-string/jumbo p0, "setSyncInterval() : deprecated."

    .line 337
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
