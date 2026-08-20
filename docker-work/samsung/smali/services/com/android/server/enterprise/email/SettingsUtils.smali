.class public Lcom/android/server/enterprise/email/SettingsUtils;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/SettingsUtils$PasswordIntentFieldName;
    }
.end annotation


# static fields
.field public static final ACCOUNT_CONTENT_URI:Landroid/net/Uri;

.field public static final ACTION_EAS_INTENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EAS_INTENT_INTERNAL"

.field public static final ACTION_EMAIL_ENABLE_MSG_COMPOSE:Ljava/lang/String; = "com.android.email.ENABLE_MESSAGECOMPOSE"

.field public static final ACTION_EMAIL_GET_DEVICEID:Ljava/lang/String; = "com.android.email.GET_DEVICEID"

.field public static final ACTION_EMAIL_INSTALL_CERT:Ljava/lang/String; = "com.android.email.INSTALL_CERTIFICATE"

.field public static final ACTION_EMAIL_RENAME_CERTIFICATE:Ljava/lang/String; = "com.android.email.RENAME_CERTIFICATE"

.field public static final EAS_PKG_NAME:Ljava/lang/String; = "com.android.exchange"

.field public static final EMAIL_PKG_NAME:Ljava/lang/String; = "com.android.email"

.field public static final EMAIL_PROVIDER_PERMISSION:Ljava/lang/String; = "com.android.email.permission.ACCESS_PROVIDER"

.field public static final HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

.field public static final KNOX_EMAIL_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_EMAIL"

.field public static final NEWEMAIL_PROVIDER_PERMISSION:Ljava/lang/String; = "com.samsung.android.email.permission.ACCESS_PROVIDER"

.field public static final POLICIES_CONTENT_URI:Landroid/net/Uri;

.field public static final TAG:Ljava/lang/String; = "SettingsUtils"

.field public static adminPkg:Ljava/lang/String;

.field public static emails:Landroid/content/Context;

.field public static mServerPassword:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mServerPasswordFocus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static preCallingUid:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.android.email.provider/account"

    .line 94
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.email.provider/hostauth"

    .line 96
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.email.provider/policies"

    .line 98
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->POLICIES_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 100
    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 101
    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    const/4 v0, -0x1

    .line 102
    sput v0, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    .line 699
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    .line 727
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPasswordFocus:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIDforAccount()J
    .registers 6

    .line 757
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_10

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    mul-long/2addr v0, v2

    :cond_10
    const-string v2, "SettingsUtils"

    const-string v3, ">>>>  createIDforAccount   <<<<"

    .line 759
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public static getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    .registers 49

    move-wide/from16 v0, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    const-string/jumbo v4, "value"

    const-string/jumbo v5, "name"

    const-string v6, "_id"

    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    const/4 v8, 0x0

    const-string v9, "SettingsUtils"

    if-gtz v7, :cond_2c

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEASAccounts fail : invalid account Id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    .line 337
    :cond_2c
    invoke-static/range {p7 .. p7}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    .line 338
    iget v10, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 339
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getEASAccounts() :    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "_id"

    const-string v13, "displayName"

    const-string v14, "emailAddress"

    const-string/jumbo v15, "syncLookback"

    const-string/jumbo v16, "syncInterval"

    const-string/jumbo v17, "peakDays"

    const-string/jumbo v18, "peakStartMinute"

    const-string/jumbo v19, "peakEndMinute"

    const-string/jumbo v20, "peakSchedule"

    const-string/jumbo v21, "offPeakSchedule"

    const-string/jumbo v22, "roamingSchedule"

    const-string/jumbo v23, "hostAuthKeyRecv"

    const-string/jumbo v24, "hostAuthKeySend"

    const-string v25, "flags"

    const-string/jumbo v26, "isDefault"

    const-string v27, "compatibilityUuid"

    const-string/jumbo v28, "senderName"

    const-string/jumbo v29, "ringtoneUri"

    const-string/jumbo v30, "protocolVersion"

    const-string/jumbo v31, "signature"

    const-string v32, "calendarSyncLookback"

    const-string v33, "emailsize"

    const-string/jumbo v34, "roamingemailsize"

    .line 340
    filled-new-array/range {v12 .. v34}, [Ljava/lang/String;

    move-result-object v37

    .line 353
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    const/4 v13, 0x0

    if-eqz v7, :cond_e9

    .line 356
    :try_start_8f
    invoke-static {v7, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_bd

    .line 357
    invoke-static {v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v3

    new-instance v14, Landroid/os/UserHandle;

    invoke-direct {v14, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v13, v14}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getAccountDetails for Persona : USER space   "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_eb

    .line 360
    :cond_bd
    iget v14, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Landroid/os/UserHandle;

    invoke-direct {v15, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v14, v13, v15}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v14

    sput-object v14, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 361
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAccountDetails : USER space   "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_eb

    .line 365
    :cond_e9
    sput-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_eb} :catch_39e

    .line 374
    :goto_eb
    :try_start_eb
    sget-object v3, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id = "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v36, p1

    invoke-virtual/range {v35 .. v40}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_10c} :catch_37a
    .catchall {:try_start_eb .. :try_end_10c} :catchall_375

    if-eqz v3, :cond_136

    .line 377
    :try_start_10e
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAccount row count : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_126} :catch_12d
    .catchall {:try_start_10e .. :try_end_126} :catchall_127

    goto :goto_13b

    :catchall_127
    move-exception v0

    move-object/from16 v21, v8

    move-object v8, v3

    goto/16 :goto_393

    :catch_12d
    move-exception v0

    move-object v14, v8

    move-object/from16 v21, v14

    move-wide/from16 v24, v11

    :goto_133
    move-object v8, v3

    goto/16 :goto_381

    :cond_136
    :try_start_136
    const-string v14, "getAccount row count : Email cursor is invalid"

    .line 379
    invoke-static {v9, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13b
    if-eqz v3, :cond_35e

    .line 381
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-lez v14, :cond_35e

    .line 382
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 383
    new-instance v14, Lcom/android/server/enterprise/email/AccountMetaData;

    invoke-direct {v14}, Lcom/android/server/enterprise/email/AccountMetaData;-><init>()V
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_14b} :catch_370
    .catchall {:try_start_136 .. :try_end_14b} :catchall_36d

    .line 384
    :try_start_14b
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    const-string v15, "displayName"

    .line 385
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    const-string v15, "emailAddress"

    .line 386
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string/jumbo v15, "syncLookback"

    .line 387
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    const-string/jumbo v15, "syncInterval"

    .line 388
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    const-string/jumbo v15, "peakDays"

    .line 389
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    const-string/jumbo v15, "peakStartMinute"

    .line 390
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    const-string/jumbo v15, "peakEndMinute"

    .line 391
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    const-string/jumbo v15, "peakSchedule"

    .line 392
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    const-string/jumbo v15, "offPeakSchedule"

    .line 394
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 393
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    const-string/jumbo v15, "roamingSchedule"

    .line 396
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 395
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    const-string/jumbo v15, "hostAuthKeyRecv"

    .line 398
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v22, v9

    .line 397
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    const-string/jumbo v8, "hostAuthKeySend"

    .line 400
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 399
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    const-string v8, "flags"

    .line 401
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    and-int/lit8 v9, v8, 0x2

    const/4 v15, 0x2

    const/4 v13, 0x1

    if-ne v15, v9, :cond_205

    move v9, v13

    goto :goto_206

    :cond_205
    const/4 v9, 0x0

    .line 402
    :goto_206
    iput-boolean v9, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    const/16 v9, 0x40

    and-int/2addr v8, v9

    if-ne v9, v8, :cond_20f

    move v8, v13

    goto :goto_210

    :cond_20f
    const/4 v8, 0x0

    .line 403
    :goto_210
    iput-boolean v8, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    const-string/jumbo v8, "isDefault"

    .line 404
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v13, :cond_221

    move v8, v13

    goto :goto_222

    :cond_221
    const/4 v8, 0x0

    :goto_222
    iput-boolean v8, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    const-string v8, "compatibilityUuid"

    .line 406
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 405
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    const-string/jumbo v8, "senderName"

    .line 407
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    const-string/jumbo v8, "ringtoneUri"

    .line 408
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    const-string/jumbo v8, "protocolVersion"

    .line 410
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 409
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    const-string/jumbo v8, "signature"

    .line 411
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    const-string v8, "calendarSyncLookback"

    .line 412
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    const-string v8, "emailsize"

    .line 413
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    const-string/jumbo v8, "roamingemailsize"

    .line 414
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    .line 417
    iget-wide v8, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    const/16 v19, 0x1

    sget-object v20, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v15, p0

    move-wide/from16 v16, v8

    move-object/from16 v18, v14

    invoke-static/range {v15 .. v20}, Lcom/android/server/enterprise/email/SettingsUtils;->loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z

    move-result v8
    :try_end_299
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_299} :catch_359
    .catchall {:try_start_14b .. :try_end_299} :catchall_36d

    move-wide/from16 v24, v11

    .line 418
    :try_start_29b
    iget-wide v11, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    const/16 v19, 0x0

    sget-object v20, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v15, p0

    move-wide/from16 v16, v11

    move-object/from16 v18, v14

    invoke-static/range {v15 .. v20}, Lcom/android/server/enterprise/email/SettingsUtils;->loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z

    move-result v9

    if-eqz v8, :cond_349

    if-nez v9, :cond_2b1

    goto/16 :goto_349

    :cond_2b1
    if-eqz p6, :cond_2c0

    .line 427
    invoke-static {v10, v0, v1, v2, v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getPassword(IJLandroid/content/Context;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    .line 428
    aget-object v8, v2, v7

    iput-object v8, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 429
    aget-object v2, v2, v13

    iput-object v2, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    :cond_2c0
    const/4 v2, 0x0

    .line 432
    iput-boolean v2, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 433
    iget-object v2, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const-string v7, "eas"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e0

    .line 434
    iget-object v2, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 435
    iput-boolean v13, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    const/4 v7, 0x0

    .line 436
    aget-object v7, v2, v7

    iput-object v7, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 437
    aget-object v2, v2, v13

    iput-object v2, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 438
    iput-object v2, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 440
    :cond_2e0
    iput-boolean v13, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    const-string/jumbo v2, "type"

    const-string v7, "account_id"

    .line 441
    filled-new-array {v6, v5, v2, v4, v7}, [Ljava/lang/String;

    move-result-object v10

    .line 443
    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account_id = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p2

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_30a
    .catch Ljava/lang/Exception; {:try_start_29b .. :try_end_30a} :catch_357
    .catchall {:try_start_29b .. :try_end_30a} :catchall_36d

    if-eqz v8, :cond_362

    .line 444
    :try_start_30c
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_362

    .line 445
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_362

    .line 447
    :cond_318
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33d

    if-eqz v0, :cond_33d

    const-string v2, "AllowHTMLEmail"

    .line 450
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33d

    const-string/jumbo v1, "true"

    .line 451
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    .line 454
    :cond_33d
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_341
    .catch Ljava/lang/Exception; {:try_start_30c .. :try_end_341} :catch_344
    .catchall {:try_start_30c .. :try_end_341} :catchall_127

    if-nez v0, :cond_318

    goto :goto_362

    :catch_344
    move-exception v0

    move-object/from16 v21, v8

    goto/16 :goto_133

    :cond_349
    :goto_349
    :try_start_349
    const-string v0, "getAccountIds : null "

    move-object/from16 v1, v22

    .line 422
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_350
    .catch Ljava/lang/Exception; {:try_start_349 .. :try_end_350} :catch_355
    .catchall {:try_start_349 .. :try_end_350} :catchall_36d

    .line 462
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    return-object v1

    :catch_355
    move-exception v0

    goto :goto_373

    :catch_357
    move-exception v0

    goto :goto_35c

    :catch_359
    move-exception v0

    move-wide/from16 v24, v11

    :goto_35c
    move-object v8, v3

    goto :goto_37f

    :cond_35e
    move-wide/from16 v24, v11

    const/4 v8, 0x0

    const/4 v14, 0x0

    :cond_362
    :goto_362
    if-eqz v3, :cond_367

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_367
    if-eqz v8, :cond_38e

    .line 464
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_38e

    :catchall_36d
    move-exception v0

    move-object v8, v3

    goto :goto_377

    :catch_370
    move-exception v0

    move-wide/from16 v24, v11

    :goto_373
    move-object v8, v3

    goto :goto_37e

    :catchall_375
    move-exception v0

    const/4 v8, 0x0

    :goto_377
    const/16 v21, 0x0

    goto :goto_393

    :catch_37a
    move-exception v0

    move-wide/from16 v24, v11

    const/4 v8, 0x0

    :goto_37e
    const/4 v14, 0x0

    :goto_37f
    const/16 v21, 0x0

    .line 459
    :goto_381
    :try_start_381
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_384
    .catchall {:try_start_381 .. :try_end_384} :catchall_392

    if-eqz v8, :cond_389

    .line 462
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_389
    if-eqz v21, :cond_38e

    .line 464
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 467
    :cond_38e
    :goto_38e
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v14

    :catchall_392
    move-exception v0

    :goto_393
    if-eqz v8, :cond_398

    .line 462
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_398
    if-eqz v21, :cond_39d

    .line 464
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 465
    :cond_39d
    throw v0

    :catch_39e
    move-exception v0

    .line 369
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getAccountContentUri(I)Landroid/net/Uri;
    .registers 2

    .line 627
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/account"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;
    .registers 14

    const-class v0, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v0

    .line 309
    :try_start_3
    iget v1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 310
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 311
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 312
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getPoliciesContentUri(I)Landroid/net/Uri;

    move-result-object v4

    const/4 v8, 0x0

    move-wide v5, p1

    move-object v7, p3

    move-object v9, p0

    .line 313
    invoke-static/range {v2 .. v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v0

    return-object p0

    :catchall_1b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;
    .registers 15

    const-class v1, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v1

    .line 318
    :try_start_3
    iget v2, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v3, "SettingsUtils"

    const-string v4, "getAccountDetails() :  with P"

    .line 319
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 321
    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 322
    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getPoliciesContentUri(I)Landroid/net/Uri;

    move-result-object v5

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-wide v5, p1

    move-object v7, p3

    move v8, p4

    move-object v9, p0

    .line 323
    invoke-static/range {v2 .. v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_25

    monitor-exit v1

    return-object v0

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getAccountFromEnterpriseEmailAccount(Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Lcom/samsung/android/knox/accounts/Account;
    .registers 8

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccountFromEnterpriseEmailAccount() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsUtils"

    invoke-static {v1, v0}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p0, :cond_1a

    return-object v0

    .line 920
    :cond_1a
    new-instance v1, Lcom/samsung/android/knox/accounts/Account;

    invoke-direct {v1}, Lcom/samsung/android/knox/accounts/Account;-><init>()V

    .line 921
    iget-wide v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    long-to-int v2, v2

    iput v2, v1, Lcom/samsung/android/knox/accounts/Account;->id:I

    .line 922
    iget-object v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mDisplayName:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/knox/accounts/Account;->displayName:Ljava/lang/String;

    .line 923
    iget-object v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailAddress:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/knox/accounts/Account;->emailAddress:Ljava/lang/String;

    const-string v2, "0"

    .line 924
    iput-object v2, v1, Lcom/samsung/android/knox/accounts/Account;->syncKey:Ljava/lang/String;

    .line 925
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSyncLookback:I

    iput v2, v1, Lcom/samsung/android/knox/accounts/Account;->syncLookback:I

    .line 926
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSyncInterval:I

    iput v2, v1, Lcom/samsung/android/knox/accounts/Account;->syncInterval:I

    const-wide/16 v2, -0x1

    .line 927
    iput-wide v2, v1, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeyRecv:J

    .line 928
    iput-wide v2, v1, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeySend:J

    const/4 v4, -0x1

    .line 929
    iput v4, v1, Lcom/samsung/android/knox/accounts/Account;->flags:I

    .line 930
    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mIsDefault:Z

    iput-boolean v5, v1, Lcom/samsung/android/knox/accounts/Account;->isDefault:Z

    .line 931
    iput-object v0, v1, Lcom/samsung/android/knox/accounts/Account;->compatibilityUuid:Ljava/lang/String;

    .line 932
    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSenderName:Ljava/lang/String;

    iput-object v5, v1, Lcom/samsung/android/knox/accounts/Account;->senderName:Ljava/lang/String;

    .line 933
    iput-object v0, v1, Lcom/samsung/android/knox/accounts/Account;->ringtoneUri:Ljava/lang/String;

    .line 934
    iput-object v0, v1, Lcom/samsung/android/knox/accounts/Account;->protocolVersion:Ljava/lang/String;

    .line 935
    iput-object v0, v1, Lcom/samsung/android/knox/accounts/Account;->securitySyncKey:Ljava/lang/String;

    .line 936
    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSignature:Ljava/lang/String;

    iput-object v5, v1, Lcom/samsung/android/knox/accounts/Account;->signature:Ljava/lang/String;

    .line 937
    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateAlways:Z

    iput-boolean v5, v1, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateAlways:Z

    const/4 v5, 0x0

    .line 938
    iput-boolean v5, v1, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateWhenSilent:Z

    .line 940
    new-instance v5, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v5}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v5, v1, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    .line 941
    iput v4, v5, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    .line 942
    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    .line 943
    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerAddress:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    .line 944
    iget v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerPort:I

    iput v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    .line 945
    iput v4, v5, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    .line 946
    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUserName:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    .line 947
    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingPassword:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    .line 948
    iput-object v0, v5, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    .line 949
    iput-wide v2, v5, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    .line 950
    iget-boolean v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseSSL:Z

    iput-boolean v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    .line 951
    iget-boolean v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseTLS:Z

    iput-boolean v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    .line 952
    iget-boolean v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingAcceptAllCertificates:Z

    iput-boolean v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    .line 954
    new-instance v5, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v5}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v5, v1, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    .line 955
    iput v4, v5, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    .line 956
    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingProtocol:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    .line 957
    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerAddress:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    .line 958
    iget v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerPort:I

    iput v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    .line 959
    iput v4, v5, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    .line 960
    iget-object v4, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUserName:Ljava/lang/String;

    iput-object v4, v5, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    .line 961
    iget-object v4, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingPassword:Ljava/lang/String;

    iput-object v4, v5, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    .line 962
    iput-object v0, v5, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    .line 963
    iput-wide v2, v5, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    .line 964
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseSSL:Z

    iput-boolean v0, v5, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    .line 965
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseTLS:Z

    iput-boolean v0, v5, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    .line 966
    iget-boolean p0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingAcceptAllCertificates:Z

    iput-boolean p0, v5, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    return-object v1
.end method

.method public static getAccountFromEnterpriseExchangeAccount(Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Lcom/samsung/android/knox/accounts/Account;
    .registers 10

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccountFromEnterpriseExchangeAccount() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsUtils"

    invoke-static {v1, v0}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p0, :cond_1a

    return-object v0

    .line 978
    :cond_1a
    new-instance v1, Lcom/samsung/android/knox/accounts/Account;

    invoke-direct {v1}, Lcom/samsung/android/knox/accounts/Account;-><init>()V

    .line 979
    iget-wide v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mId:J

    long-to-int v2, v2

    iput v2, v1, Lcom/samsung/android/knox/accounts/Account;->id:I

    .line 980
    iget-object v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mDisplayName:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/knox/accounts/Account;->displayName:Ljava/lang/String;

    .line 981
    iget-object v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/knox/accounts/Account;->emailAddress:Ljava/lang/String;

    const-string v2, "0"

    .line 982
    iput-object v2, v1, Lcom/samsung/android/knox/accounts/Account;->syncKey:Ljava/lang/String;

    .line 983
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncLookback:I

    iput v2, v1, Lcom/samsung/android/knox/accounts/Account;->syncLookback:I

    .line 984
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncInterval:I

    iput v2, v1, Lcom/samsung/android/knox/accounts/Account;->syncInterval:I

    const-wide/16 v2, -0x1

    .line 985
    iput-wide v2, v1, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeyRecv:J

    .line 986
    iput-wide v2, v1, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeySend:J

    const/4 v4, -0x1

    .line 987
    iput v4, v1, Lcom/samsung/android/knox/accounts/Account;->flags:I

    .line 988
    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mIsDefault:Z

    iput-boolean v5, v1, Lcom/samsung/android/knox/accounts/Account;->isDefault:Z

    .line 989
    iput-object v0, v1, Lcom/samsung/android/knox/accounts/Account;->compatibilityUuid:Ljava/lang/String;

    .line 990
    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSenderName:Ljava/lang/String;

    iput-object v5, v1, Lcom/samsung/android/knox/accounts/Account;->senderName:Ljava/lang/String;

    .line 991
    iput-object v0, v1, Lcom/samsung/android/knox/accounts/Account;->ringtoneUri:Ljava/lang/String;

    .line 992
    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    iput-object v5, v1, Lcom/samsung/android/knox/accounts/Account;->protocolVersion:Ljava/lang/String;

    .line 993
    iput-object v0, v1, Lcom/samsung/android/knox/accounts/Account;->securitySyncKey:Ljava/lang/String;

    .line 994
    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSignature:Ljava/lang/String;

    iput-object v5, v1, Lcom/samsung/android/knox/accounts/Account;->signature:Ljava/lang/String;

    .line 995
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakDays:I

    iput v5, v1, Lcom/samsung/android/knox/accounts/Account;->peakDays:I

    .line 996
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakStartMinute:I

    iput v5, v1, Lcom/samsung/android/knox/accounts/Account;->peakStartMinute:I

    .line 997
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakEndMinute:I

    iput v5, v1, Lcom/samsung/android/knox/accounts/Account;->peakEndMinute:I

    .line 998
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakSyncSchedule:I

    iput v5, v1, Lcom/samsung/android/knox/accounts/Account;->peakSyncSchedule:I

    .line 999
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mOffPeakSyncSchedule:I

    iput v5, v1, Lcom/samsung/android/knox/accounts/Account;->offPeakSyncSchedule:I

    .line 1000
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mRoamingSyncSchedule:I

    iput v5, v1, Lcom/samsung/android/knox/accounts/Account;->roamingSyncSchedule:I

    .line 1001
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    iput v5, v1, Lcom/samsung/android/knox/accounts/Account;->syncCalendarAge:I

    .line 1002
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailBodyTruncationSize:I

    iput v5, v1, Lcom/samsung/android/knox/accounts/Account;->emailBodyTruncationSize:I

    .line 1003
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailRoamingBodyTruncationSize:I

    iput v5, v1, Lcom/samsung/android/knox/accounts/Account;->emailRoamingBodyTruncationSize:I

    .line 1004
    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncContacts:Z

    iput-boolean v5, v1, Lcom/samsung/android/knox/accounts/Account;->syncContacts:Z

    .line 1005
    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendar:Z

    iput-boolean v5, v1, Lcom/samsung/android/knox/accounts/Account;->syncCalendar:Z

    .line 1006
    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncTasks:Z

    iput-boolean v5, v1, Lcom/samsung/android/knox/accounts/Account;->syncTasks:Z

    .line 1007
    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncNotes:Z

    iput-boolean v5, v1, Lcom/samsung/android/knox/accounts/Account;->syncNotes:Z

    .line 1008
    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateAlways:Z

    iput-boolean v5, v1, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateAlways:Z

    const/4 v5, 0x0

    .line 1009
    iput-boolean v5, v1, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateWhenSilent:Z

    .line 1011
    new-instance v6, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v6}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v6, v1, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    .line 1012
    iput v4, v6, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    const-string v7, "eas"

    .line 1013
    iput-object v7, v6, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    .line 1014
    iget-object v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    iput-object v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    .line 1015
    iput v5, v6, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    .line 1016
    iput v4, v6, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    .line 1017
    iget-object v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    iput-object v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    .line 1018
    iget-object v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    iput-object v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    .line 1019
    iput-object v0, v6, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    .line 1020
    iput-wide v2, v6, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    .line 1021
    iget-boolean v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    iput-boolean v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    .line 1022
    iget-boolean v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseTLS:Z

    iput-boolean v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    .line 1023
    iget-boolean v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    iput-boolean v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    .line 1025
    new-instance v6, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v6}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v6, v1, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    .line 1026
    iput v4, v6, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    .line 1027
    iput-object v7, v6, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    .line 1028
    iget-object v7, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    iput-object v7, v6, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    .line 1029
    iput v5, v6, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    .line 1030
    iput v4, v6, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    .line 1031
    iget-object v4, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    iput-object v4, v6, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    .line 1032
    iget-object v4, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    iput-object v4, v6, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    .line 1033
    iput-object v0, v6, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    .line 1034
    iput-wide v2, v6, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    .line 1035
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    iput-boolean v0, v6, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    .line 1036
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseTLS:Z

    iput-boolean v0, v6, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    .line 1037
    iget-boolean p0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    iput-boolean p0, v6, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    return-object v1
.end method

.method public static declared-synchronized getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .registers 18

    const-class v1, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v1

    move-object v0, p0

    .line 193
    :try_start_4
    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 194
    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 195
    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v4

    const-string v2, "SettingsUtils"

    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAccountId : USER space    UserHandle.myUserId() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    move-object v3, v4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object v10, p0

    .line 198
    invoke-static/range {v2 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)J

    move-result-wide v2
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_39

    monitor-exit v1

    return-wide v2

    :catchall_39
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)J
    .registers 25

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    .line 207
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 210
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    const-string v8, "SettingsUtils"

    if-eqz v3, :cond_1c1

    if-eqz v4, :cond_1c1

    if-nez v5, :cond_20

    goto/16 :goto_1c1

    :cond_20
    if-eqz p6, :cond_38

    if-eqz v2, :cond_38

    .line 217
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_38
    const-string v2, "_id"

    .line 219
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v5, 0x1

    aput-object v4, v10, v5

    const/4 v4, 0x2

    aput-object v3, v10, v4

    .line 227
    iget v3, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 228
    invoke-static/range {p8 .. p8}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 229
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    if-eqz v3, :cond_b2

    .line 233
    :try_start_56
    invoke-static {v3, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v14
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5a} :catch_1bc

    const-string v15, "getAccountIdInternal : USER space   "

    if-eqz v14, :cond_88

    .line 234
    :try_start_5e
    iget v14, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v14

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v14, v11, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    .line 237
    :cond_88
    iget v5, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    new-instance v14, Landroid/os/UserHandle;

    invoke-direct {v14, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v5, v11, v14}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    .line 243
    :cond_b2
    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_b4} :catch_1bc

    :goto_b4
    const/4 v1, 0x0

    .line 250
    :try_start_b5
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "protocol=? AND address=? AND login=? "

    const/4 v5, 0x0

    move-object/from16 p2, v0

    move-object/from16 p3, p0

    move-object/from16 p4, v9

    move-object/from16 p5, v3

    move-object/from16 p6, v10

    move-object/from16 p7, v5

    invoke-virtual/range {p2 .. p7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_cf} :catch_117
    .catchall {:try_start_b5 .. :try_end_cf} :catchall_114

    .line 255
    :try_start_cf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAccountId for HOST_AUTH row count : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 257
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_f5} :catch_112
    .catchall {:try_start_cf .. :try_end_f5} :catchall_1b4

    int-to-long v9, v0

    .line 258
    :try_start_f6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getAccountIdInternal : hostAuthId "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_10a} :catch_10b
    .catchall {:try_start_f6 .. :try_end_10a} :catchall_1b4

    goto :goto_10e

    :catch_10b
    move-exception v0

    goto :goto_11a

    :cond_10d
    move-wide v9, v6

    .line 264
    :goto_10e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_120

    :catch_112
    move-exception v0

    goto :goto_119

    :catchall_114
    move-exception v0

    goto/16 :goto_1b6

    :catch_117
    move-exception v0

    move-object v3, v1

    :goto_119
    move-wide v9, v6

    .line 261
    :goto_11a
    :try_start_11a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11d
    .catchall {:try_start_11a .. :try_end_11d} :catchall_1b4

    if-eqz v3, :cond_120

    goto :goto_10e

    :cond_120
    :goto_120
    cmp-long v0, v6, v9

    if-eqz v0, :cond_1b0

    .line 269
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/String;

    .line 273
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 276
    :try_start_137
    sget-object v4, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hostAuthKeyRecv=? OR hostAuthKeySend=? "

    const/4 v9, 0x0

    move-object/from16 p2, v4

    move-object/from16 p3, p1

    move-object/from16 p4, v0

    move-object/from16 p5, v5

    move-object/from16 p6, v3

    move-object/from16 p7, v9

    invoke-virtual/range {p2 .. p7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_16c

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccountId for ACCOUNT row count : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_171

    :cond_16c
    const-string v0, "getAccountId for ACCOUNT row count : Email cursor is invalid"

    .line 284
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_171
    if-eqz v1, :cond_19b

    .line 286
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_19b

    .line 287
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_181} :catch_1a3
    .catchall {:try_start_137 .. :try_end_181} :catchall_1a1

    int-to-long v2, v0

    .line 288
    :try_start_182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getAccountIdInternal : ACCOUNT "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_196} :catch_198
    .catchall {:try_start_182 .. :try_end_196} :catchall_1a1

    move-wide v6, v2

    goto :goto_19b

    :catch_198
    move-exception v0

    move-wide v6, v2

    goto :goto_1a4

    :cond_19b
    :goto_19b
    if-eqz v1, :cond_1b0

    .line 294
    :goto_19d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1b0

    :catchall_1a1
    move-exception v0

    goto :goto_1aa

    :catch_1a3
    move-exception v0

    .line 291
    :goto_1a4
    :try_start_1a4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1a7
    .catchall {:try_start_1a4 .. :try_end_1a7} :catchall_1a1

    if-eqz v1, :cond_1b0

    goto :goto_19d

    :goto_1aa
    if-eqz v1, :cond_1af

    .line 294
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 295
    :cond_1af
    throw v0

    .line 297
    :cond_1b0
    :goto_1b0
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v6

    :catchall_1b4
    move-exception v0

    move-object v1, v3

    :goto_1b6
    if-eqz v1, :cond_1bb

    .line 264
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 265
    :cond_1bb
    throw v0

    :catch_1bc
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v6

    :cond_1c1
    :goto_1c1
    const-string v0, "getAccountId : Error :: Invalid input parameters."

    .line 213
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v6
.end method

.method public static getAccountType(ZI)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_5

    const-string p0, "com.samsung.android.exchange"

    goto :goto_7

    :cond_5
    const-string p0, "com.samsung.android.email"

    :goto_7
    return-object p0
.end method

.method public static getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 536
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_45

    const-string v1, "\\"

    .line 541
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_43

    .line 542
    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_45

    .line 543
    array-length v1, p0

    if-lez v1, :cond_45

    const/4 v1, 0x2

    .line 544
    array-length v2, p0

    const/4 v4, 0x0

    if-ne v1, v2, :cond_37

    .line 545
    aget-object v1, p0, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 546
    aget-object p0, p0, v3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    goto :goto_45

    .line 547
    :cond_37
    array-length v1, p0

    if-ne v3, v1, :cond_45

    .line 548
    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    goto :goto_45

    .line 552
    :cond_43
    aput-object p0, v0, v3

    :cond_45
    :goto_45
    return-object v0
.end method

.method public static getEasPackageName(I)Ljava/lang/String;
    .registers 1

    const-string p0, "com.samsung.android.email.provider"

    return-object p0
.end method

.method public static getEmailPackageName(I)Ljava/lang/String;
    .registers 1

    const-string p0, "com.samsung.android.email.provider"

    return-object p0
.end method

.method public static getHostAuthContentUri(I)Landroid/net/Uri;
    .registers 2

    .line 631
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/hostauth"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getLDAPAccountFromEnterpriseLDAPAccount(Landroid/sec/enterprise/email/EnterpriseLDAPAccount;)Lcom/samsung/android/knox/accounts/LDAPAccount;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1046
    :cond_4
    new-instance v0, Lcom/samsung/android/knox/accounts/LDAPAccount;

    invoke-direct {v0}, Lcom/samsung/android/knox/accounts/LDAPAccount;-><init>()V

    .line 1047
    iget-wide v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mId:J

    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->id:J

    .line 1048
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUserName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->userName:Ljava/lang/String;

    .line 1049
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPassword:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->password:Ljava/lang/String;

    .line 1050
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPort:I

    iput v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->port:I

    .line 1051
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mHost:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->host:Ljava/lang/String;

    .line 1052
    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUseSSL:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->isSSL:Z

    .line 1053
    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mIsAnonymous:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->isAnonymous:Z

    .line 1054
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mBaseDN:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->baseDN:Ljava/lang/String;

    .line 1055
    iget p0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mTrustAll:I

    iput p0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->trustAll:I

    return-object v0
.end method

.method public static getPackageNameForUid(I)Ljava/lang/String;
    .registers 2

    .line 149
    sget v0, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    if-ne p0, v0, :cond_20

    .line 150
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "getPackageNameForUid :   "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SettingsUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object p0, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    return-object p0

    .line 153
    :cond_20
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPassword(IJLandroid/content/Context;I)[Ljava/lang/String;
    .registers 13

    .line 651
    new-instance p0, Landroid/os/ConditionVariable;

    invoke-direct {p0}, Landroid/os/ConditionVariable;-><init>()V

    .line 652
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.knox.intent.action.RESULT_EMAILACCOUNT_PASSWORD_INTERNAL"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    .line 655
    new-instance v7, Lcom/android/server/enterprise/email/SettingsUtils$1;

    invoke-direct {v7, v6, p0}, Lcom/android/server/enterprise/email/SettingsUtils$1;-><init>([Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 683
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 685
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.REQUEST_EMAILACCOUNT_PASSWORD_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    .line 686
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 687
    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string p2, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {p3, v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-wide/16 p1, 0x2710

    .line 690
    invoke-virtual {p0, p1, p2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result p0

    const-string p1, "SettingsUtils"

    if-eqz p0, :cond_48

    const-string/jumbo p0, "password obtained"

    .line 691
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :cond_48
    const-string/jumbo p0, "timeout while obtaining password"

    .line 693
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :goto_4e
    invoke-virtual {p3, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-object v6
.end method

.method public static getPoliciesContentUri(I)Landroid/net/Uri;
    .registers 2

    .line 635
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/policies"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getSMIMEAlias(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Ljava/lang/String;
    .registers 19

    move-object v0, p0

    move-object/from16 v1, p3

    const-class v2, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v2

    .line 564
    :try_start_6
    invoke-static {p0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 565
    iget v4, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 566
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    const/4 v7, 0x2

    new-array v10, v7, [Ljava/lang/String;

    const-string v7, "_id"

    const/4 v8, 0x0

    aput-object v7, v10, v8

    const/4 v7, 0x1

    if-eqz p4, :cond_1f

    const-string/jumbo v9, "smimeOwnSignCertAlias"

    goto :goto_22

    :cond_1f
    const-string/jumbo v9, "smimeOwnCertificateAlias"

    :goto_22
    aput-object v9, v10, v7
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_114

    const/4 v7, 0x0

    if-eqz v3, :cond_87

    .line 574
    :try_start_27
    invoke-static {v3, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_58

    .line 575
    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v8, v9}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string v0, "SettingsUtils"

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSMIMEAlias : USER space   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 579
    :cond_58
    iget v9, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 580
    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 579
    invoke-virtual {v1, v9, v8, v11}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string v1, "SettingsUtils"

    .line 581
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSMIMEAlias : USER space   "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 582
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 585
    :cond_87
    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string v0, "SettingsUtils"

    const-string/jumbo v1, "getSMIMEAlias : get Context with no MUM Enviroment."

    .line 586
    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :goto_91
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v3, p1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_b3} :catch_f7
    .catchall {:try_start_27 .. :try_end_b3} :catchall_f5

    if-eqz v1, :cond_ec

    :try_start_b5
    const-string v0, "SettingsUtils"

    .line 592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccount row count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_ec

    .line 594
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    if-eqz p4, :cond_de

    const-string/jumbo v0, "smimeOwnSignCertAlias"

    goto :goto_e1

    :cond_de
    const-string/jumbo v0, "smimeOwnCertificateAlias"

    .line 595
    :goto_e1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_e9} :catch_ea
    .catchall {:try_start_b5 .. :try_end_e9} :catchall_109

    goto :goto_ec

    :catch_ea
    move-exception v0

    goto :goto_f9

    .line 603
    :cond_ec
    :goto_ec
    :try_start_ec
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_107

    .line 605
    :goto_f1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_f4
    .catchall {:try_start_ec .. :try_end_f4} :catchall_114

    goto :goto_107

    :catchall_f5
    move-exception v0

    goto :goto_10b

    :catch_f7
    move-exception v0

    move-object v1, v7

    :goto_f9
    :try_start_f9
    const-string v3, "SettingsUtils"

    const-string/jumbo v4, "getSMIMEAlias() : failed. "

    .line 600
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_101
    .catchall {:try_start_f9 .. :try_end_101} :catchall_109

    .line 603
    :try_start_101
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_104
    .catchall {:try_start_101 .. :try_end_104} :catchall_114

    if-eqz v1, :cond_107

    goto :goto_f1

    .line 608
    :cond_107
    :goto_107
    monitor-exit v2

    return-object v7

    :catchall_109
    move-exception v0

    move-object v7, v1

    .line 603
    :goto_10b
    :try_start_10b
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v7, :cond_113

    .line 605
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 607
    :cond_113
    throw v0
    :try_end_114
    .catchall {:try_start_10b .. :try_end_114} :catchall_114

    :catchall_114
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static getSMIMEModeFromAction(Ljava/lang/String;)I
    .registers 2

    if-eqz p0, :cond_20

    const-string v0, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_INTERNAL"

    .line 865
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    goto :goto_21

    :cond_c
    const-string v0, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

    .line 869
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p0, 0x2

    goto :goto_21

    :cond_16
    const-string v0, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

    .line 873
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x3

    goto :goto_21

    :cond_20
    const/4 p0, -0x1

    :goto_21
    return p0
.end method

.method public static getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 719
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 720
    sget-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_17

    :catch_e
    const-string p0, "SettingsUtils"

    const-string/jumbo v0, "getSecurityPassword() failed"

    .line 722
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_17
    return-object v0
.end method

.method public static getSecurityPasswordFocus(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 747
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPasswordFocus:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 748
    sget-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPasswordFocus:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_17

    :catch_e
    const-string p0, "SettingsUtils"

    const-string/jumbo v0, "getSecurityPasswordFocus() failed"

    .line 750
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_17
    return-object v0
.end method

.method public static getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I
    .registers 13

    const/4 v0, 0x6

    const/16 v1, 0x64

    const/16 v2, 0x32

    const/16 v3, 0x14

    const/4 v4, 0x3

    const/16 v5, 0xa

    const/4 v6, 0x7

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x5

    if-eqz p0, :cond_2d

    const-string v10, "2.5"

    .line 765
    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    if-gt p1, v7, :cond_1b

    return v7

    :cond_1b
    if-gt p1, v9, :cond_1e

    return v4

    :cond_1e
    if-gt p1, v5, :cond_21

    return v8

    :cond_21
    if-gt p1, v3, :cond_24

    return v9

    :cond_24
    if-gt p1, v2, :cond_27

    return v0

    :cond_27
    if-gt p1, v1, :cond_2a

    return v6

    :cond_2a
    const/16 p0, 0x8

    return p0

    :cond_2d
    if-gt p1, v8, :cond_31

    const/4 p0, 0x0

    return p0

    :cond_31
    if-gt p1, v9, :cond_35

    const/4 p0, 0x1

    return p0

    :cond_35
    if-gt p1, v6, :cond_38

    return v7

    :cond_38
    if-gt p1, v5, :cond_3b

    return v4

    :cond_3b
    if-gt p1, v3, :cond_3e

    return v8

    :cond_3e
    if-gt p1, v2, :cond_41

    return v9

    :cond_41
    if-gt p1, v1, :cond_44

    return v0

    :cond_44
    return v6
.end method

.method public static getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I
    .registers 10

    const v0, 0x7fffffff

    const/16 v1, 0x64

    const/16 v2, 0x32

    const/16 v3, 0x14

    const/16 v4, 0xa

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-eqz p0, :cond_23

    const-string v7, "2.5"

    .line 802
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    packed-switch p1, :pswitch_data_32

    return v0

    :pswitch_1b
    return v1

    :pswitch_1c
    return v2

    :pswitch_1d
    return v3

    :pswitch_1e
    return v4

    :pswitch_1f
    return v5

    :pswitch_20
    const/4 p0, 0x2

    return p0

    :pswitch_22
    return v6

    :cond_23
    packed-switch p1, :pswitch_data_48

    return v0

    :pswitch_27
    return v1

    :pswitch_28
    return v2

    :pswitch_29
    return v3

    :pswitch_2a
    return v4

    :pswitch_2b
    const/4 p0, 0x7

    return p0

    :pswitch_2d
    return v5

    :pswitch_2e
    const/4 p0, 0x4

    return p0

    :pswitch_30
    return v6

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2e
        :pswitch_2d
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch
.end method

.method public static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    goto :goto_f

    .line 141
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_10

    if-lez v1, :cond_f

    move-object v0, p0

    :cond_f
    :goto_f
    return-object v0

    :catch_10
    move-exception p0

    .line 143
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string p1, "device_account_policy"

    .line 904
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    .line 906
    invoke-static {v0, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p0, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0
.end method

.method public static isPackageInstalled(Ljava/lang/String;I)Z
    .registers 8

    .line 881
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 882
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    if-eqz v0, :cond_2e

    const-wide/16 v4, 0x0

    .line 885
    :try_start_d
    invoke-interface {v0, p0, v4, v5, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_1e
    .catchall {:try_start_d .. :try_end_11} :catchall_1c

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    .line 894
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_18
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_1c
    move-exception p0

    goto :goto_2a

    :catch_1e
    move-exception p0

    :try_start_1f
    const-string p1, "SettingsUtils"

    const-string v0, "Exception in isPackageInstalled()"

    .line 892
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1c

    .line 894
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2e

    :goto_2a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 895
    throw p0

    :cond_2e
    :goto_2e
    return v3
.end method

.method public static isPersona(ILandroid/content/Context;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public static isValidEmailAddress(Ljava/lang/String;)Z
    .registers 8

    .line 166
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_33

    .line 169
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    .line 170
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 171
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x2e

    .line 172
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 173
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_21} :catch_2f

    const/4 v5, 0x1

    if-lez v3, :cond_33

    if-ne v3, v2, :cond_33

    if-ge v4, v6, :cond_33

    if-gt v6, p0, :cond_33

    sub-int/2addr v1, v5

    if-ge p0, v1, :cond_33

    move v0, v5

    goto :goto_33

    :catch_2f
    move-exception p0

    .line 177
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_33
    :goto_33
    return v0
.end method

.method public static loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z
    .registers 21

    move-object/from16 v0, p3

    const-string v1, "_id"

    const-string/jumbo v2, "protocol"

    const-string v3, "address"

    const-string/jumbo v4, "port"

    const-string v5, "flags"

    const-string/jumbo v6, "login"

    const-string/jumbo v7, "password"

    const-string v8, "domain"

    .line 476
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 482
    :try_start_1c
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, p0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3a} :catch_149
    .catchall {:try_start_1c .. :try_end_3a} :catchall_147

    const-string v3, "SettingsUtils"

    const/4 v4, 0x1

    if-eqz v2, :cond_13b

    .line 485
    :try_start_3f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadHostAuth row count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_141

    .line 487
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_61} :catch_149
    .catchall {:try_start_3f .. :try_end_61} :catchall_147

    const-string v3, "domain"

    const-string/jumbo v5, "password"

    const-string/jumbo v6, "login"

    const-string v7, "flags"

    const-string/jumbo v8, "port"

    const-string v9, "address"

    const-string/jumbo v10, "protocol"

    const/16 v11, 0x8

    const/4 v12, 0x2

    if-eqz p4, :cond_d9

    .line 489
    :try_start_78
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 491
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 490
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 492
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    .line 493
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v8, v7, 0x1

    if-ne v4, v8, :cond_a6

    move v8, v4

    goto :goto_a7

    :cond_a6
    move v8, v1

    .line 494
    :goto_a7
    iput-boolean v8, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    and-int/lit8 v8, v7, 0x2

    if-ne v12, v8, :cond_af

    move v8, v4

    goto :goto_b0

    :cond_af
    move v8, v1

    .line 495
    :goto_b0
    iput-boolean v8, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    and-int/2addr v7, v11

    if-ne v11, v7, :cond_b7

    move v7, v4

    goto :goto_b8

    :cond_b7
    move v7, v1

    .line 496
    :goto_b8
    iput-boolean v7, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 497
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 500
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 499
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 503
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 502
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    goto :goto_139

    .line 505
    :cond_d9
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 507
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 506
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 508
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    .line 509
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v8, v7, 0x1

    if-ne v4, v8, :cond_107

    move v8, v4

    goto :goto_108

    :cond_107
    move v8, v1

    .line 510
    :goto_108
    iput-boolean v8, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    and-int/lit8 v8, v7, 0x2

    if-ne v12, v8, :cond_110

    move v8, v4

    goto :goto_111

    :cond_110
    move v8, v1

    .line 511
    :goto_111
    iput-boolean v8, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    and-int/2addr v7, v11

    if-ne v11, v7, :cond_118

    move v7, v4

    goto :goto_119

    :cond_118
    move v7, v1

    .line 512
    :goto_119
    iput-boolean v7, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 513
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 516
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 515
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 519
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 518
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    :goto_139
    move v1, v4

    goto :goto_141

    :cond_13b
    const-string/jumbo v0, "loadHostAuth row count : Email cursor is invalid"

    .line 524
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_141} :catch_149
    .catchall {:try_start_78 .. :try_end_141} :catchall_147

    :cond_141
    :goto_141
    if-eqz v2, :cond_150

    .line 530
    :goto_143
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_150

    :catchall_147
    move-exception v0

    goto :goto_151

    :catch_149
    move-exception v0

    .line 527
    :try_start_14a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14d
    .catchall {:try_start_14a .. :try_end_14d} :catchall_147

    if-eqz v2, :cond_150

    goto :goto_143

    :cond_150
    :goto_150
    return v1

    :goto_151
    if-eqz v2, :cond_156

    .line 530
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_156
    throw v0
.end method

.method public static declared-synchronized sendAccountsChangedBroadcast(ILandroid/content/Context;I)V
    .registers 8

    const-class v0, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v0

    .line 105
    :try_start_3
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9a

    :try_start_7
    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    const/high16 v3, 0x10000000

    .line 109
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_8c
    .catchall {:try_start_7 .. :try_end_1b} :catchall_9a

    if-eqz v1, :cond_67

    .line 114
    :try_start_1d
    invoke-static {v1, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4f

    .line 115
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, p2, v3, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string p1, "SettingsUtils"

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendAccountsChangedBroadcast : USER space   "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 118
    :cond_4f
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, p2, v3, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string p1, "SettingsUtils"

    const-string/jumbo p2, "sendAccountsChangedBroadcast : USER space"

    .line 119
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 123
    :cond_67
    sput-object p1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_69} :catch_86
    .catchall {:try_start_1d .. :try_end_69} :catchall_9a

    .line 131
    :goto_69
    :try_start_69
    sget-object p1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 132
    sget-object p1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v2, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_90

    :catch_86
    move-exception p0

    .line 127
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_8a} :catch_8c
    .catchall {:try_start_69 .. :try_end_8a} :catchall_9a

    .line 128
    monitor-exit v0

    return-void

    :catch_8c
    move-exception p0

    .line 134
    :try_start_8d
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_90
    const-string p0, "SettingsUtils"

    const-string/jumbo p1, "sendAccountsChangedBroadcast()"

    .line 136
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_8d .. :try_end_98} :catchall_9a

    .line 137
    monitor-exit v0

    return-void

    :catchall_9a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setPackageNameForUid(ILjava/lang/String;)V
    .registers 2

    .line 158
    sput p0, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    .line 159
    sput-object p1, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    .line 160
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setPackageNameForUid :   "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const-string v1, "SettingsUtils"

    if-eqz p0, :cond_1c

    if-nez p1, :cond_8

    goto :goto_1c

    .line 707
    :cond_8
    :try_start_8
    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_15

    const-string/jumbo p0, "setSecurityPassword() success"

    .line 712
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :catch_15
    const-string/jumbo p0, "setSecurityPassword() failed"

    .line 709
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1c
    :goto_1c
    const-string/jumbo p0, "setSecurityPassword() failed : invalid parameter"

    .line 703
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static setSecurityPasswordFocus(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const-string v1, "SettingsUtils"

    if-eqz p0, :cond_1c

    if-nez p1, :cond_8

    goto :goto_1c

    .line 735
    :cond_8
    :try_start_8
    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPasswordFocus:Ljava/util/Map;

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_15

    const-string/jumbo p0, "setSecurityPasswordFocus() success"

    .line 740
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :catch_15
    const-string/jumbo p0, "setSecurityPasswordFocus() failed"

    .line 737
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1c
    :goto_1c
    const-string/jumbo p0, "setSecurityPasswordFocus() failed : invalid parameter"

    .line 731
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static updateStatus()V
    .registers 0

    return-void
.end method
