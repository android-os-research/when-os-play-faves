.class public Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
.super Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;
.source "ExchangeAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;,
        Lcom/android/server/enterprise/email/ExchangeAccountPolicy$IntentFieldName;
    }
.end annotation


# static fields
.field public static final FOCUS_PKG_NAME:Ljava/lang/String; = "com.samsung.android.focus"

.field public static final NOTE_AUTHORITY:Ljava/lang/String; = "note"

.field public static final PERMISSION_SMIME_CERTIFICATE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

.field public static final RESTART_DELAY:I = 0x1388

.field public static final RESTART_EMAIL_APP:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ExchangeAccountPolicy"

.field public static final TASK_AUTHORITY:Ljava/lang/String; = "tasks"

.field public static mDeviceId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mExchangeServiceDisabled:Z

.field public mHandler:Landroid/os/Handler;

.field public mRestartExtendDelay:Z

.field public mSMIMEIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

.field public mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

.field public preCallingUid:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExchangeServiceDisabled(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmExchangeServiceDisabled(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRestartExtendDelay(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mputPolicyState(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mresetForcedSMIMECertificateInternal(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Lcom/samsung/android/knox/ContextInfo;JIIZ)Z
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendSMIMEAliasResultIntent(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;JII)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendSMIMEAliasResultIntent(JII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetmDeviceId()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smgetExchangeServiceName(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getExchangeServiceName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11

    const-string v0, "ExchangeAccountPolicy"

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;-><init>()V

    const/4 v1, 0x0

    .line 99
    iput-boolean v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    const/4 v2, -0x1

    .line 103
    iput v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    const/4 v2, 0x0

    .line 104
    iput-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 151
    iput-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mSMIMEIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

    .line 185
    iput-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 1247
    new-instance v2, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    .line 154
    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 155
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 158
    :try_start_24
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    new-instance p1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

    invoke-direct {p1, p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V

    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mSMIMEIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

    const-string p1, "com.samsung.edm.intent.action.EXCHANGE_SMIME_INSTALL_STATUS"

    .line 160
    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    .line 161
    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mSMIMEIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo p1, "success to add receiver"

    .line 163
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_4c} :catch_4d

    goto :goto_53

    :catch_4d
    move-exception p1

    const-string v2, "Regist BroadCast failed : "

    .line 166
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    :goto_53
    :try_start_53
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 172
    new-instance p1, Landroid/content/ComponentName;

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-static {v1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getExchangeServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_7f

    .line 175
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7f

    const-string v2, "Enabling EAS ExchangeService"

    .line 176
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 177
    invoke-virtual {p0, p1, v2, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_78} :catch_79

    goto :goto_7f

    :catch_79
    move-exception p0

    const-string p1, "Constructor failed : "

    .line 181
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7f
    :goto_7f
    return-void
.end method

.method public static getExchangeServiceName(I)Ljava/lang/String;
    .registers 2

    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".exchange.ExchangeService"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addNewAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    .registers 52

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "addNewAccount() EX 2"

    .line 293
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x1e0

    const/16 v21, 0x3fc

    const/16 v22, 0x3e

    const/16 v23, -0x2

    const/16 v24, 0x0

    const/16 v25, 0x3

    const/16 v26, 0x4

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 298
    invoke-virtual/range {v0 .. v31}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J
    .registers 55

    move-object/from16 v0, p0

    move/from16 v1, p12

    move/from16 v2, p13

    const-string v3, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 318
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v11

    const-string v12, "ExchangeAccountPolicy"

    const-string v4, ">>>>>>>>>>>>>>>>>\t\taddNewAccount EX "

    .line 319
    invoke-static {v12, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {v11}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v13

    .line 321
    iget v14, v11, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 324
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 325
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 326
    invoke-static/range {p14 .. p14}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 327
    invoke-static/range {p10 .. p10}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 328
    invoke-static/range {p9 .. p9}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 329
    invoke-static/range {p11 .. p11}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 330
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 331
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 332
    invoke-static/range {p18 .. p18}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v3

    .line 333
    invoke-static/range {p19 .. p19}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v17, -0x1

    if-eqz v10, :cond_1ff

    .line 335
    invoke-static {v10}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1ff

    if-eqz v9, :cond_1ff

    if-eqz v4, :cond_1ff

    if-nez v7, :cond_54

    goto/16 :goto_1ff

    .line 341
    :cond_54
    invoke-static {v13}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    .line 342
    invoke-static {v4, v14}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v4

    move-object/from16 p1, v15

    const-string v15, "com.samsung.android.focus"

    if-nez v4, :cond_7d

    invoke-static {v15, v14}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_7d

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addNewAccount() EX : Error :: Email and Focus are not installed on user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v17

    :cond_7d
    const/4 v4, 0x1

    if-ne v4, v1, :cond_88

    if-ne v4, v2, :cond_88

    const-string v0, "addNewAccount() EX : Error :: Invalid input parameters. \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    .line 352
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v17

    :cond_88
    const/16 v19, 0x1

    move-object/from16 p2, v10

    .line 357
    iget-object v10, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v20, "eas"

    move/from16 v21, v4

    move-object v4, v11

    move-object/from16 p3, v15

    move-object v15, v5

    move-object v5, v6

    move/from16 v22, v14

    move-object v14, v6

    move-object v6, v7

    move-object v1, v7

    move-object v7, v9

    move-object v2, v8

    move-object/from16 v8, v20

    move-object/from16 v20, v2

    move-object v2, v9

    move/from16 v9, v19

    move-object/from16 v19, v14

    move-object/from16 v14, p2

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_b9

    const-string v0, "addNewAccount() EX : Error :: Account already exists."

    .line 359
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v17

    .line 364
    :cond_b9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 367
    :try_start_bd
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addNewAccount() EX : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v0, v11, v15}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v10, p31

    .line 371
    invoke-virtual {v0, v11, v10}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v10

    .line 374
    new-instance v15, Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.action.CREATE_EMAILACCOUNT_INTERNAL"

    invoke-direct {v15, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    .line 375
    invoke-virtual {v15, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 376
    invoke-virtual {v15, v6, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    const-string v7, "eas"

    .line 377
    invoke-virtual {v15, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    .line 378
    invoke-virtual {v15, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.EXTRA_USER_NAME_INTERNAL"

    .line 379
    invoke-virtual {v15, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.USER_PASSWD_ID_INTERNAL"

    .line 380
    invoke-virtual {v15, v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.SERVER_PATH_PREFIX_INTERNAL"

    .line 381
    invoke-virtual {v15, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.USE_SSL_INTERNAL"

    const/4 v2, 0x0

    if-eqz p15, :cond_10f

    move/from16 v3, v21

    goto :goto_110

    :cond_10f
    move v3, v2

    .line 382
    :goto_110
    invoke-virtual {v15, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.USE_TLS_INTERNAL"

    if-eqz p16, :cond_11a

    move/from16 v3, v21

    goto :goto_11b

    :cond_11a
    move v3, v2

    .line 383
    :goto_11b
    invoke-virtual {v15, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.TRUST_ALL_INTERNAL"

    if-eqz p17, :cond_124

    move/from16 v2, v21

    .line 384
    :cond_124
    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.DOMAIN_INTERNAL"

    move-object/from16 v2, v19

    .line 385
    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.PEAK_START_TIME_INTERNAL"

    move/from16 v2, p20

    .line 386
    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.PEAK_END_TIME_INTERNAL"

    move/from16 v2, p21

    .line 387
    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.PEAK_DAYS_INTERNAL"

    move/from16 v2, p22

    .line 388
    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.PEAK_INTERNAL"

    move/from16 v2, p7

    .line 389
    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.OFF_PEAK_INTERNAL"

    move/from16 v2, p23

    .line 390
    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.ROAMING_SCHEDULE_INTERNAL"

    move/from16 v2, p24

    .line 391
    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.PERIOD_EMAIL_INTERNAL"

    move/from16 v2, p6

    .line 392
    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra."

    move/from16 v2, p25

    .line 393
    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.PERIOD_CALENDAR_INTERNAL"

    move/from16 v2, p26

    .line 394
    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.NOTIFY_INTERNAL"

    move/from16 v2, p27

    .line 395
    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.SYNC_CONTACTS_INTERNAL"

    move/from16 v2, p28

    .line 396
    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.SYNC_CALENDAR_INTERNAL"

    move/from16 v2, p29

    .line 397
    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.ACCOUNT_NAME_INTERNAL"

    move-object/from16 v2, p1

    .line 398
    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.SIGNATURE_INTERNAL"

    move-object/from16 v2, v20

    .line 399
    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.VIBRATE_WHEN_SILENT_INTERNAL"

    move/from16 v2, p13

    .line 400
    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.EXTRA_VIBRATE_INTERNAL"

    move/from16 v2, p12

    .line 401
    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.IS_DEFAULT_INTERNAL"

    move/from16 v2, p8

    .line 402
    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.CERTIFICATE_DATA_INTERNAL"

    move-object/from16 v2, p30

    .line 403
    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.CERTIFICATE_PASSWD_ID_INTERNAL"

    .line 404
    invoke-virtual {v15, v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 405
    invoke-static/range {v22 .. v22}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    iget-object v1, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v13}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v15, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    move-object/from16 v1, p3

    .line 410
    invoke-virtual {v15, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v15, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addNewAccount() EX : sent intent to Email app : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e7
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_1e7} :catch_1ea
    .catchall {:try_start_bd .. :try_end_1e7} :catchall_1e8

    goto :goto_1f0

    :catchall_1e8
    move-exception v0

    goto :goto_1fb

    :catch_1ea
    move-exception v0

    :try_start_1eb
    const-string v1, "addNewAccount() EX : failed. "

    .line 416
    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f0
    .catchall {:try_start_1eb .. :try_end_1f0} :catchall_1e8

    .line 418
    :goto_1f0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v0, "<<<<<<<<<<<<<<<<<\t\taddNewAccount EX : Broadcasting Email"

    .line 420
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    return-wide v1

    .line 418
    :goto_1fb
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 419
    throw v0

    :cond_1ff
    :goto_1ff
    const-string v0, "addNewAccount() EX : Error :: Invalid input parameters."

    .line 337
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v17
.end method

.method public addNewAccount_new(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/ExchangeAccount;)J
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 2102
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v10

    .line 2103
    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v11

    .line 2104
    iget v12, v10, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-wide/16 v13, -0x1

    const-string v15, "ExchangeAccountPolicy"

    if-nez v1, :cond_1c

    const-string v0, "addNewAccount_new : Error :: Invalid Account."

    .line 2108
    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v13

    .line 2112
    :cond_1c
    iget-object v3, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateStorageName:Ljava/lang/String;

    invoke-virtual {v0, v10, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceUCMPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 2114
    iget-object v3, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->displayName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 2115
    iget-object v3, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2116
    iget-object v3, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2117
    iget-object v3, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->protocolVersion:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2118
    iget-object v4, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->senderName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 2119
    iget-object v4, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->signature:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 2120
    iget-object v4, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easUser:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2121
    iget-object v4, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easDomain:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2122
    iget-object v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverPassword:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2123
    iget-object v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverPathPrefix:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 2124
    iget-boolean v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    xor-int/lit8 v13, v5, 0x1

    if-eqz v9, :cond_2b3

    .line 2127
    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2b3

    if-eqz v8, :cond_2b3

    if-eqz v3, :cond_2b3

    if-nez v7, :cond_6d

    goto/16 :goto_2b3

    .line 2132
    :cond_6d
    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 2133
    invoke-static {v3, v12}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v3

    const-string v14, "com.samsung.android.focus"

    if-nez v3, :cond_96

    invoke-static {v14, v12}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_96

    .line 2134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addNewAccount() EX : Error :: Email and focus are not installed on user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v16, -0x1

    return-wide v16

    :cond_96
    const-wide/16 v16, -0x1

    const/4 v3, 0x1

    if-ne v3, v5, :cond_a3

    if-ne v3, v13, :cond_a3

    const-string v0, "addNewAccount_new : Error :: Invalid input parameters. \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    .line 2138
    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    :cond_a3
    const/4 v13, 0x1

    .line 2142
    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v18, "eas"

    move-object v3, v10

    move-object/from16 v19, v5

    move-object v5, v7

    move-object/from16 v20, v6

    move-object v6, v8

    move-object/from16 p1, v14

    move-object v14, v7

    move-object/from16 v7, v18

    move-object/from16 v18, v2

    move-object v2, v8

    move v8, v13

    move-object v13, v9

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_cd

    const-string v0, "addNewAccount : Error :: Account already exists."

    .line 2144
    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ca
    const-wide/16 v0, -0x1

    return-wide v0

    .line 2148
    :cond_cd
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2152
    :try_start_d1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addNewAccount() New : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    iget-object v7, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePath:Ljava/lang/String;

    if-eqz v7, :cond_123

    iget-object v7, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePassword:Ljava/lang/String;

    if-eqz v7, :cond_123

    const-string v7, "addNewAccount_new : SMIME Certificate at creation time"

    .line 2154
    invoke-static {v15, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    iget v7, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificareMode:I

    .line 2156
    sget v8, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v9, 0x11

    if-lt v8, v9, :cond_103

    .line 2158
    iget v8, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificateMode:I

    const/4 v9, 0x1

    if-lt v8, v9, :cond_103

    const/4 v9, 0x3

    if-gt v8, v9, :cond_103

    move v7, v8

    .line 2163
    :cond_103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2164
    new-instance v9, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget-object v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePath:Ljava/lang/String;

    iget-object v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePassword:Ljava/lang/String;

    invoke-direct {v9, v10, v5, v6, v7}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2166
    invoke-static {v8, v9}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    :cond_123
    move-object/from16 v5, v20

    .line 2169
    invoke-virtual {v0, v10, v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v5

    .line 2170
    iget-object v7, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificatePassword:Ljava/lang/String;

    invoke-virtual {v0, v10, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v7

    .line 2174
    new-instance v9, Landroid/content/Intent;

    move/from16 v19, v11

    const-string v11, "com.samsung.android.knox.intent.action.CREATE_EMAILACCOUNT_INTERNAL"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    .line 2175
    invoke-virtual {v9, v11, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v11, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 2176
    invoke-virtual {v9, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    move-object/from16 v20, v13

    const-string v13, "eas"

    .line 2177
    invoke-virtual {v9, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    .line 2178
    invoke-virtual {v9, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.EXTRA_USER_NAME_INTERNAL"

    .line 2179
    invoke-virtual {v9, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.USER_PASSWD_ID_INTERNAL"

    .line 2180
    invoke-virtual {v9, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.USE_SSL_INTERNAL"

    .line 2182
    iget-boolean v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->useSSL:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_163

    const/4 v5, 0x1

    goto :goto_164

    :cond_163
    move v5, v6

    :goto_164
    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.USE_TLS_INTERNAL"

    .line 2183
    iget-boolean v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->useTLS:Z

    if-eqz v5, :cond_16f

    const/4 v5, 0x1

    goto :goto_170

    :cond_16f
    move v5, v6

    :goto_170
    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.TRUST_ALL_INTERNAL"

    .line 2184
    iget-boolean v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->acceptAllCertificates:Z

    if-eqz v5, :cond_17b

    const/4 v5, 0x1

    goto :goto_17c

    :cond_17b
    move v5, v6

    :goto_17c
    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.DOMAIN_INTERNAL"

    .line 2185
    iget-object v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easDomain:Ljava/lang/String;

    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.PEAK_START_TIME_INTERNAL"

    .line 2186
    iget v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakStartTime:I

    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.PEAK_END_TIME_INTERNAL"

    .line 2187
    iget v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakEndTime:I

    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.PEAK_DAYS_INTERNAL"

    .line 2188
    iget v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakDays:I

    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.PEAK_INTERNAL"

    .line 2189
    iget v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncInterval:I

    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.OFF_PEAK_INTERNAL"

    .line 2190
    iget v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->offPeak:I

    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.ROAMING_SCHEDULE_INTERNAL"

    .line 2191
    iget v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->roamingSchedule:I

    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.PERIOD_EMAIL_INTERNAL"

    .line 2192
    iget v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncLookback:I

    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra."

    .line 2193
    iget v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->retrivalSize:I

    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.PERIOD_CALENDAR_INTERNAL"

    .line 2194
    iget v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->periodCalendar:I

    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.NOTIFY_INTERNAL"

    .line 2195
    iget-boolean v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->isNotify:Z

    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.SYNC_CONTACTS_INTERNAL"

    .line 2196
    iget v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncContacts:I

    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.SYNC_CALENDAR_INTERNAL"

    .line 2197
    iget v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncCalendar:I

    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.ACCOUNT_NAME_INTERNAL"

    .line 2198
    iget-object v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->displayName:Ljava/lang/String;

    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.SIGNATURE_INTERNAL"

    .line 2199
    iget-object v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->signature:Ljava/lang/String;

    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.VIBRATE_WHEN_SILENT_INTERNAL"

    .line 2200
    iget-boolean v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    if-nez v5, :cond_1ef

    const/4 v6, 0x1

    :cond_1ef
    invoke-virtual {v9, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.EXTRA_VIBRATE_INTERNAL"

    .line 2201
    iget-boolean v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.IS_DEFAULT_INTERNAL"

    .line 2202
    iget-boolean v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->isDefault:Z

    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.CERTIFICATE_DATA_INTERNAL"

    .line 2203
    iget-object v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateData:[B

    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.CERTIFICATE_PASSWD_ID_INTERNAL"

    .line 2204
    invoke-virtual {v9, v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2205
    invoke-static {v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2207
    iget-object v2, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateAlias:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25e

    .line 2208
    iget-object v2, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateStorageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v10, v2, v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->convertUcmUri(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_245

    .line 2214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNewAccount : Error :: certificate storage name "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateStorageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not exist!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_240
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_240} :catch_294
    .catchall {:try_start_d1 .. :try_end_240} :catchall_292

    .line 2231
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_ca

    :cond_245
    :try_start_245
    const-string v1, "com.samsung.android.knox.intent.extra.CERTIFICATE_ALIAS_INTERNAL"

    .line 2219
    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addNewAccount : alias has added, alias = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    :cond_25e
    iget-object v1, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    move/from16 v5, v19

    invoke-direct {v2, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v6, v18

    invoke-virtual {v1, v9, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    move-object/from16 v1, p1

    .line 2224
    invoke-virtual {v9, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2225
    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v9, v1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addNewAccount_new : sent intent to Email app : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_291
    .catch Ljava/lang/Exception; {:try_start_245 .. :try_end_291} :catch_294
    .catchall {:try_start_245 .. :try_end_291} :catchall_292

    goto :goto_2a9

    :catchall_292
    move-exception v0

    goto :goto_2af

    :catch_294
    move-exception v0

    .line 2229
    :try_start_295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNewAccount() NEW : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a9
    .catchall {:try_start_295 .. :try_end_2a9} :catchall_292

    .line 2231
    :goto_2a9
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-wide/16 v1, 0x0

    return-wide v1

    :goto_2af
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2232
    throw v0

    :cond_2b3
    :goto_2b3
    const-string v0, "addNewAccount_new : Error :: Invalid input parameters."

    .line 2129
    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ca
.end method

.method public final adminSatisfiesForceSMIMECertificateRules(IJZI)Z
    .registers 21

    move-object v0, p0

    move/from16 v1, p5

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v4, "ExchangeAccountTable"

    const-string v5, "AccountId"

    const-string v6, "adminUid"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz p4, :cond_63

    .line 2445
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v9

    .line 2447
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2448
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 2449
    invoke-static {v7, v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, "#SelectClause#"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2451
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-ne v1, v3, :cond_34

    const-string v1, "(ForceSmimeCertForSigning=1 OR ForceSmimeCert=1)"

    .line 2455
    invoke-virtual {v10, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :cond_34
    if-ne v1, v2, :cond_3c

    const-string v1, "(ForceSmimeCertForEncryption=1 OR ForceSmimeCert=1)"

    .line 2459
    invoke-virtual {v10, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :cond_3c
    const-string v1, "((ForceSmimeCertForEncryption=1 AND ForceSmimeCertForSigning=1) OR (ForceSmimeCert=1))"

    .line 2464
    invoke-virtual {v10, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2467
    :goto_41
    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v4, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b4

    .line 2470
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b4

    .line 2472
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 2473
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v9, p1

    if-eq v0, v9, :cond_b4

    goto/16 :goto_e2

    :cond_63
    move/from16 v9, p1

    const-string v10, "ForceSmimeCert"

    const-string v11, "ForceSmimeCertForEncryption"

    const-string v12, "ForceSmimeCertForSigning"

    .line 2485
    filled-new-array {v10, v11, v12}, [Ljava/lang/String;

    move-result-object v13

    .line 2489
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 2490
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v14, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2491
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2493
    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v4, v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e2

    .line 2496
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e2

    .line 2499
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 2500
    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 2501
    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 2502
    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-ne v1, v3, :cond_b6

    if-eqz v0, :cond_ac

    .line 2505
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v8, :cond_b4

    :cond_ac
    if-eqz v4, :cond_e2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_e2

    :cond_b4
    :goto_b4
    move v7, v8

    goto :goto_e2

    :cond_b6
    if-ne v1, v2, :cond_c9

    if-eqz v5, :cond_c0

    .line 2509
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v8, :cond_b4

    :cond_c0
    if-eqz v4, :cond_e2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_e2

    goto :goto_b4

    :cond_c9
    if-eqz v5, :cond_d9

    .line 2513
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v8, :cond_d9

    if-eqz v0, :cond_d9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v8, :cond_b4

    :cond_d9
    if-eqz v4, :cond_e2

    .line 2514
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_e2

    goto :goto_b4

    :cond_e2
    :goto_e2
    return v7
.end method

.method public allowEmailSettingsChange(Lcom/samsung/android/knox/ContextInfo;JZ)Z
    .registers 14

    .line 1861
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowEmailSettingsChange() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1864
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1866
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 1867
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "allowEmailSettingsChange() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_3a
    const-string v8, "AllowSettingChange"

    move-object v2, p0

    move-wide v5, p2

    move v7, p4

    .line 1870
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result p0

    .line 1871
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allowEmailSettingsChange() : = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , accId  ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " , allow  ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public allowInComingAttachments(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 14

    .line 1785
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowInComingAttachments() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1788
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1790
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 1791
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "allowInComingAttachments_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_3a
    const-string v8, "AttachmentEnable"

    move-object v2, p0

    move-wide v5, p3

    move v7, p2

    .line 1795
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result p0

    .line 1797
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allowInComingAttachments() : = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , enable  ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , accId  ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final convertUcmUri(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 2250
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_48

    .line 2251
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 2253
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAvailableCredentialStorages(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 2255
    array-length v0, p0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v0, :cond_29

    aget-object v3, p0, v2

    if-eqz v3, :cond_26

    .line 2256
    iget-object v4, v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 2257
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_2a

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_29
    move-object v3, v1

    :goto_2a
    if-eqz v3, :cond_47

    .line 2265
    new-instance p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object p2, v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 2266
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p3

    goto :goto_48

    :cond_47
    move-object p3, v1

    :cond_48
    :goto_48
    return-object p3
.end method

.method public createAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v14, p5

    move-object/from16 v18, p6

    const-string v2, "ExchangeAccountPolicy"

    const-string v6, "addNewAccount() EX 1"

    .line 247
    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "2.5"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x0

    .line 248
    invoke-virtual/range {v0 .. v19}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->addNewAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 14

    .line 1083
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1084
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAccount() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExchangeAccountPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_3a

    .line 1093
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "deleteAccount_new() : Not valid accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1096
    :cond_3a
    iget-object v4, v1, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    .line 1097
    iget-object v1, v1, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    if-eqz v4, :cond_cd

    if-nez v1, :cond_44

    goto/16 :goto_cd

    :cond_44
    const/4 v5, 0x1

    .line 1105
    invoke-static {v5, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_64

    .line 1106
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "deleteAccount() : MDM DeviceAccountPolicy restriction - cannot delete account : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1110
    :cond_64
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1111
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1114
    :try_start_6c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteAccount() : accId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " , userId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.action.DELETE_EMAILACCOUNT_INTERNAL"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    .line 1119
    invoke-virtual {v8, v9, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 1120
    invoke-virtual {v8, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    const-string p3, "eas"

    .line 1121
    invoke-virtual {v8, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    .line 1122
    invoke-virtual {v8, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1123
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1124
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string p1, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {p0, v8, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_b8} :catch_bf
    .catchall {:try_start_6c .. :try_end_b8} :catchall_bd

    .line 1130
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v5

    goto :goto_c8

    :catchall_bd
    move-exception p0

    goto :goto_c9

    :catch_bf
    move-exception p0

    :try_start_c0
    const-string p1, "deleteAccount() : failed. "

    .line 1127
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c5
    .catchall {:try_start_c0 .. :try_end_c5} :catchall_bd

    .line 1130
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_c8
    return v3

    :goto_c9
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1131
    throw p0

    .line 1101
    :cond_cd
    :goto_cd
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "deleteAccount() : no Inforamtion for accId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public final enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5

    .line 195
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 195
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 198
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 199
    iget v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    if-eq v1, v0, :cond_46

    .line 200
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {v0, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->setPackageNameForUid(ILjava/lang/String;)V

    .line 202
    iput v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    .line 203
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling UID changed : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callingUid "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExchangeAccountPolicy"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    return-object p1
.end method

.method public final enforceUCMPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final fillInExchangeAccountData(ILcom/android/server/enterprise/email/AccountMetaData;I)Lcom/samsung/android/knox/accounts/Account;
    .registers 15

    const-string p0, "eas"

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fillInExchangeAccountData() : accId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , userID =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 969
    new-instance v0, Lcom/samsung/android/knox/accounts/Account;

    invoke-direct {v0}, Lcom/samsung/android/knox/accounts/Account;-><init>()V

    .line 972
    :try_start_2b
    iget v4, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    iput v4, v0, Lcom/samsung/android/knox/accounts/Account;->id:I

    .line 973
    iget-object v4, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->displayName:Ljava/lang/String;

    .line 974
    iget-object v4, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->emailAddress:Ljava/lang/String;

    const-string v4, "0"

    .line 975
    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->syncKey:Ljava/lang/String;

    .line 976
    iget v4, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    iput v4, v0, Lcom/samsung/android/knox/accounts/Account;->syncLookback:I

    .line 977
    iget v4, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    iput v4, v0, Lcom/samsung/android/knox/accounts/Account;->syncInterval:I

    const-wide/16 v4, -0x1

    .line 978
    iput-wide v4, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeyRecv:J

    .line 979
    iput-wide v4, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeySend:J

    .line 980
    iget v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    iput v6, v0, Lcom/samsung/android/knox/accounts/Account;->flags:I

    .line 981
    iget-boolean v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    iput-boolean v6, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateAlways:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_57

    move v6, v7

    goto :goto_58

    :cond_57
    move v6, v8

    .line 982
    :goto_58
    iput-boolean v6, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateWhenSilent:Z

    .line 983
    iget-boolean v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    iput-boolean v6, v0, Lcom/samsung/android/knox/accounts/Account;->isDefault:Z

    const/4 v6, 0x0

    .line 984
    iput-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->compatibilityUuid:Ljava/lang/String;

    .line 985
    iget-object v9, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    iput-object v9, v0, Lcom/samsung/android/knox/accounts/Account;->senderName:Ljava/lang/String;

    .line 986
    iput-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->ringtoneUri:Ljava/lang/String;

    .line 987
    iget-object v9, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iput-object v9, v0, Lcom/samsung/android/knox/accounts/Account;->protocolVersion:Ljava/lang/String;

    .line 988
    iput-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->securitySyncKey:Ljava/lang/String;

    .line 989
    iget-object v9, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    iput-object v9, v0, Lcom/samsung/android/knox/accounts/Account;->signature:Ljava/lang/String;

    .line 990
    iget v9, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    iput v9, v0, Lcom/samsung/android/knox/accounts/Account;->peakDays:I

    .line 991
    iget v9, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    iput v9, v0, Lcom/samsung/android/knox/accounts/Account;->peakStartMinute:I

    .line 992
    iget v9, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    iput v9, v0, Lcom/samsung/android/knox/accounts/Account;->peakEndMinute:I

    .line 993
    iget v9, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    iput v9, v0, Lcom/samsung/android/knox/accounts/Account;->peakSyncSchedule:I

    .line 994
    iget v9, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    iput v9, v0, Lcom/samsung/android/knox/accounts/Account;->offPeakSyncSchedule:I

    .line 995
    iget v9, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    iput v9, v0, Lcom/samsung/android/knox/accounts/Account;->roamingSyncSchedule:I

    .line 996
    iget v9, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    iput v9, v0, Lcom/samsung/android/knox/accounts/Account;->syncCalendarAge:I

    .line 997
    iget v9, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    iput v9, v0, Lcom/samsung/android/knox/accounts/Account;->emailBodyTruncationSize:I

    .line 998
    iget v9, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    iput v9, v0, Lcom/samsung/android/knox/accounts/Account;->emailRoamingBodyTruncationSize:I

    .line 999
    new-instance v9, Landroid/accounts/Account;

    iget-object v10, v0, Lcom/samsung/android/knox/accounts/Account;->emailAddress:Ljava/lang/String;

    .line 1000
    invoke-static {v7, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v9, v10, p1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.android.contacts"

    .line 1001
    invoke-static {v9, p1, p3}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, v0, Lcom/samsung/android/knox/accounts/Account;->syncContacts:Z

    const-string p1, "com.android.calendar"

    .line 1003
    invoke-static {v9, p1, p3}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, v0, Lcom/samsung/android/knox/accounts/Account;->syncCalendar:Z

    const-string/jumbo p1, "tasks"

    .line 1005
    invoke-static {v9, p1, p3}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, v0, Lcom/samsung/android/knox/accounts/Account;->syncTasks:Z

    const-string/jumbo p1, "note"

    .line 1008
    invoke-static {v9, p1, p3}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, v0, Lcom/samsung/android/knox/accounts/Account;->syncNotes:Z

    .line 1010
    new-instance p1, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {p1}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    const/4 p3, -0x1

    .line 1011
    iput p3, p1, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    .line 1012
    iput-object p0, p1, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    .line 1013
    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v7, p1, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    .line 1014
    iput v8, p1, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    .line 1015
    iget v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iput v7, p1, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    .line 1016
    iget-boolean v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    iput-boolean v7, p1, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    .line 1017
    iget-boolean v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    iput-boolean v7, p1, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    .line 1018
    iget-boolean v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    iput-boolean v7, p1, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    .line 1019
    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_e6} :catch_15c
    .catchall {:try_start_2b .. :try_end_e6} :catchall_15a

    const-string v9, "\\"

    if-eqz v7, :cond_101

    :try_start_ea
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_103

    .line 1020
    :cond_101
    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    :goto_103
    iput-object v7, p1, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    .line 1021
    iget-object p1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v7, p1, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    .line 1022
    iput-object v6, p1, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    .line 1023
    iput-wide v4, p1, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    .line 1025
    new-instance p1, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {p1}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    .line 1026
    iput p3, p1, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    .line 1027
    iput-object p0, p1, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    .line 1028
    iget-object p0, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object p0, p1, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    .line 1029
    iput v8, p1, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    .line 1030
    iget p0, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iput p0, p1, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    .line 1031
    iget-boolean p0, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    iput-boolean p0, p1, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    .line 1032
    iget-boolean p0, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    iput-boolean p0, p1, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    .line 1033
    iget-boolean p0, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    iput-boolean p0, p1, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    .line 1034
    iget-object p0, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz p0, :cond_14b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_14d

    .line 1035
    :cond_14b
    iget-object p0, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    :goto_14d
    iput-object p0, p1, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    .line 1036
    iget-object p0, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object p1, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    .line 1037
    iput-object v6, p0, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    .line 1038
    iput-wide v4, p0, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_159} :catch_15c
    .catchall {:try_start_ea .. :try_end_159} :catchall_15a

    goto :goto_162

    :catchall_15a
    move-exception p0

    goto :goto_166

    :catch_15c
    move-exception p0

    :try_start_15d
    const-string p1, "fillInExchangeAccountData() : failed."

    .line 1041
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_162
    .catchall {:try_start_15d .. :try_end_162} :catchall_15a

    .line 1043
    :goto_162
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :goto_166
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1044
    throw p0
.end method

.method public getAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;
    .registers 7

    const-string v0, "ExchangeAccountPolicy"

    .line 2341
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2342
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2341
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    .line 2344
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2347
    :try_start_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "C#"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2348
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_30} :catch_31

    goto :goto_38

    :catch_31
    move-exception p0

    const-string p1, "getAccountCertificatePassword() failed"

    .line 2350
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_38
    const-string p1, "getAccountCertificatePassword() success"

    .line 2353
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getAccountDetails(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/Account;
    .registers 7

    .line 953
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 954
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 955
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountDetails() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ,  userID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 960
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseExchangeAccount(Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Lcom/samsung/android/knox/accounts/Account;

    move-result-object p0

    goto :goto_36

    :cond_35
    const/4 p0, 0x0

    :goto_36
    return-object p0
.end method

.method public getAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;
    .registers 8

    const-string v0, "ExchangeAccountPolicy"

    .line 2317
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 2318
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2317
    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2320
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2321
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2322
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    .line 2325
    :try_start_27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "E#"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.android.focus"

    .line 2326
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_45

    .line 2327
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPasswordFocus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_51

    .line 2329
    :cond_45
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_49} :catch_4a

    goto :goto_51

    :catch_4a
    move-exception p0

    const-string p1, "getAccountEmailPassword() failed"

    .line 2332
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_51
    const-string p1, "getAccountEmailPassword() success"

    .line 2335
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 13

    .line 938
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    .line 939
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccountId() : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v7, "ExchangeAccountPolicy"

    invoke-static {v7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v4, "eas"

    const/4 v5, 0x1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide p0

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccountId() : = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,  easDomain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", easUser = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", activeSyncHost = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p0
.end method

.method public getAllEASAccounts(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/accounts/Account;
    .registers 5

    .line 1056
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1057
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1058
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllEASAccounts() : userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1063
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object p0

    if-eqz p0, :cond_3f

    .line 1065
    array-length p1, p0

    const/4 v1, 0x0

    :goto_2f
    if-ge v1, p1, :cond_44

    aget-object v2, p0, v1

    if-eqz v2, :cond_3c

    .line 1067
    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseExchangeAccount(Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Lcom/samsung/android/knox/accounts/Account;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_3f
    const-string p0, "getAllEASAccounts_new( ): fail to get list."

    .line 1070
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_44
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_57

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/samsung/android/knox/accounts/Account;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/samsung/android/knox/accounts/Account;

    goto :goto_58

    :cond_57
    const/4 p0, 0x0

    :goto_58
    return-object p0
.end method

.method public final getDefaultValueState(Ljava/lang/String;)Z
    .registers 4

    const-string p0, "ReqSigSmime"

    .line 1659
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_c

    :cond_a
    :goto_a
    move v0, v1

    goto :goto_4a

    :cond_c
    const-string p0, "ReqEncryptSmime"

    .line 1661
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_a

    :cond_15
    const-string p0, "ForceSmimeCert"

    .line 1663
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    goto :goto_a

    :cond_1e
    const-string p0, "AllowSettingChange"

    .line 1665
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    goto :goto_4a

    :cond_27
    const-string p0, "AllowNotificationChange"

    .line 1667
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    goto :goto_4a

    :cond_30
    const-string p0, "ForceSmimeCertForEncryption"

    .line 1669
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    goto :goto_a

    :cond_39
    const-string p0, "ForceSmimeCertForSigning"

    .line 1671
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    goto :goto_a

    :cond_42
    const-string p0, "AttachmentEnable"

    .line 1673
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 1676
    :goto_4a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultValueState() : policy = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ret = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExchangeAccountPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final getDefaultValueStateInteger(Ljava/lang/String;)I
    .registers 4

    const-string p0, "IncomingAttachmentSize"

    .line 1681
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_29

    :cond_9
    const-string p0, "MaxCalendarAgeFilter"

    .line 1683
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_29

    :cond_12
    const-string p0, "MaxEmailAgeFilter"

    .line 1685
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_29

    :cond_1b
    const-string p0, "MaxEmailBodyTruncationSize"

    .line 1687
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    goto :goto_29

    :cond_24
    const-string p0, "MaxEmailHTMLBodyTruncationSize"

    .line 1689
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_29
    const/4 p0, 0x0

    .line 1693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultValueStateInteger() : policy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ret = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExchangeAccountPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getDeviceId(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 13

    .line 1169
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1170
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    const-string v0, "ExchangeAccountPolicy"

    .line 1171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceId() : userID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 1174
    invoke-static {v0, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_40

    const-string p0, "ExchangeAccountPolicy"

    .line 1175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceId() failed : Email App is not installed. : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1179
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_6b

    .line 1180
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6b

    const-string p0, "ExchangeAccountPolicy"

    .line 1182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceId() failed : Email App is disabled. : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1186
    :cond_6b
    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 1187
    sget-object p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 1189
    :cond_84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1190
    monitor-enter v0

    .line 1191
    :try_start_8a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_134

    .line 1193
    :try_start_8e
    new-instance v9, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;

    invoke-direct {v9, p0, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Ljava/lang/Object;)V

    const-string v10, "com.samsung.android.knox.intent.action.GET_EMAIL_DEVICEID_REQUEST_INTERNAL"

    const-string v3, "com.samsung.android.knox.intent.action.GET_EMAIL_DEVICEID_RESULT_INTERNAL"

    .line 1213
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "edm.intent.action.internal.GET_DEVICEID_RESULT"

    .line 1216
    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1217
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1219
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1220
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1221
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string v3, "ExchangeAccountPolicy"

    .line 1222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceId() : sendBroadcast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_d6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_d8

    :cond_d6
    const-string v5, ""

    :goto_d8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_e2} :catch_119
    .catchall {:try_start_8e .. :try_end_e2} :catchall_117

    .line 1224
    :try_start_e2
    sget-object v3, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_fa

    const-string v3, "ExchangeAccountPolicy"

    const-string v4, "getDeviceId() : Device id is still null, waiting 5 seconds..."

    .line 1225
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x1388

    .line 1226
    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_fa
    .catch Ljava/lang/InterruptedException; {:try_start_e2 .. :try_end_fa} :catch_102
    .catchall {:try_start_e2 .. :try_end_fa} :catchall_100

    .line 1232
    :cond_fa
    :try_start_fa
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    :goto_fc
    invoke-virtual {p0, v9}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_ff} :catch_119
    .catchall {:try_start_fa .. :try_end_ff} :catchall_117

    goto :goto_10d

    :catchall_100
    move-exception v3

    goto :goto_111

    :catch_102
    move-exception v3

    :try_start_103
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "getDeviceId() Inturrupted."

    .line 1229
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10a
    .catchall {:try_start_103 .. :try_end_10a} :catchall_100

    .line 1232
    :try_start_10a
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10c} :catch_119
    .catchall {:try_start_10a .. :try_end_10c} :catchall_117

    goto :goto_fc

    .line 1238
    :goto_10d
    :try_start_10d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_110
    .catchall {:try_start_10d .. :try_end_110} :catchall_134

    goto :goto_122

    .line 1232
    :goto_111
    :try_start_111
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v9}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1234
    throw v3
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_117} :catch_119
    .catchall {:try_start_111 .. :try_end_117} :catchall_117

    :catchall_117
    move-exception p0

    goto :goto_130

    :catch_119
    move-exception p0

    :try_start_11a
    const-string v3, "ExchangeAccountPolicy"

    const-string v4, "getDeviceId() : failed. "

    .line 1236
    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_121
    .catchall {:try_start_11a .. :try_end_121} :catchall_117

    goto :goto_10d

    .line 1240
    :goto_122
    :try_start_122
    monitor-exit v0
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_134

    .line 1241
    sget-object p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 1238
    :goto_130
    :try_start_130
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1239
    throw p0

    :catchall_134
    move-exception p0

    .line 1240
    monitor-exit v0
    :try_end_136
    .catchall {:try_start_130 .. :try_end_136} :catchall_134

    throw p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 189
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 191
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public getForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 5

    .line 1503
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public getForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 10

    .line 2077
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2078
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    const-string v4, "ForceSmimeCertForEncryption"

    move-object v0, p0

    move-wide v2, p2

    .line 2079
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 10

    .line 2048
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2049
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    const-string v4, "ForceSmimeCertForSigning"

    move-object v0, p0

    move-wide v2, p2

    .line 2050
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;J)I
    .registers 11

    .line 1828
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1830
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    const-string v4, "IncomingAttachmentSize"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    .line 1831
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I
    .registers 11

    .line 1910
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1912
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    const-string v4, "MaxCalendarAgeFilter"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    .line 1913
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I
    .registers 11

    .line 1944
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1946
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    const-string v4, "MaxEmailAgeFilter"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    .line 1947
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public getMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I
    .registers 11

    .line 1990
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1992
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    const-string v4, "MaxEmailBodyTruncationSize"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    .line 1993
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I
    .registers 11

    .line 2035
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2037
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    const-string v4, "MaxEmailHTMLBodyTruncationSize"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    .line 2038
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public final getPolicyState(IJLjava/lang/String;I)Z
    .registers 13

    const-string v0, "ExchangeAccountPolicy"

    .line 1564
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p4, v3, v4

    .line 1568
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1569
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "containerID"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1570
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "userID"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1571
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "AccountId"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1575
    :try_start_2d
    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ExchangeAccountTable"

    invoke-virtual {v5, v6, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_35} :catch_c8

    const-string v4, ", container id = "

    const-string v5, ", user id = "

    if-eqz v3, :cond_a6

    .line 1584
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_42

    goto :goto_a6

    .line 1589
    :cond_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPolicyState() : results = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", accId = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v2

    .line 1595
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1596
    :cond_74
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9e

    .line 1597
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ContentValues;

    .line 1598
    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_74

    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p0, :cond_8f

    const-string p3, "1"

    goto :goto_91

    :cond_8f
    const-string p3, "0"

    :goto_91
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_74

    const-string/jumbo p1, "getPolicyState: restricted. "

    .line 1599
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_9e
    const-string/jumbo p1, "getPolicyState: no restrictData. "

    .line 1604
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/2addr p0, v2

    return p0

    .line 1585
    :cond_a6
    :goto_a6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "getPolicyState() : results is default value(null), accId = "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_c8
    move-exception p0

    const-string/jumbo p1, "getPolicyState() : Exception while getValuesList from EDMStorageProvider"

    .line 1580
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final getPolicyStateasInteger(IJLjava/lang/String;IZ)I
    .registers 13

    const-string v0, "ExchangeAccountPolicy"

    .line 1609
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueStateInteger(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    .line 1613
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1614
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "containerID"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1615
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "userID"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1616
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "AccountId"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1619
    :try_start_2d
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ExchangeAccountTable"

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_ca

    .line 1622
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3f

    goto/16 :goto_ca

    .line 1625
    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPolicyStateasInteger() : results = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", accId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", user id = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", container id = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_6c} :catch_cb

    .line 1635
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const p1, 0x7fffffff

    const/high16 p2, -0x80000000

    if-eqz p6, :cond_79

    move p3, p1

    goto :goto_7a

    :cond_79
    move p3, p2

    .line 1637
    :cond_7a
    :goto_7a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_ac

    .line 1638
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/content/ContentValues;

    .line 1639
    invoke-virtual {p5, p4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p5

    if-eqz p5, :cond_7a

    .line 1640
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_7a

    if-eqz p6, :cond_9f

    .line 1642
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, p3, :cond_9f

    .line 1643
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_7a

    :cond_9f
    if-nez p6, :cond_7a

    .line 1644
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, p3, :cond_7a

    .line 1645
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_7a

    :cond_ac
    if-eqz p6, :cond_b2

    if-eq p3, p1, :cond_b5

    :goto_b0
    move v1, p3

    goto :goto_b5

    :cond_b2
    if-eq p3, p2, :cond_b5

    goto :goto_b0

    .line 1653
    :cond_b5
    :goto_b5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "getPolicyStateasInteger() : result = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ca
    :goto_ca
    return v1

    :catch_cb
    move-exception p0

    const-string/jumbo p1, "getPolicyStateasInteger() : Exception while getValuesListasInteger from EDMStorageProvider"

    .line 1631
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public getRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 10

    .line 1357
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1359
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    const-string v4, "ReqEncryptSmime"

    move-object v0, p0

    move-wide v2, p2

    .line 1357
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 10

    .line 1332
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1334
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    const-string v4, "ReqSigSmime"

    move-object v0, p0

    move-wide v2, p2

    .line 1332
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getSMIMECertificateAlias(Lcom/samsung/android/knox/ContextInfo;JI)Ljava/lang/String;
    .registers 8

    .line 2526
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ExchangeAccountPolicy"

    if-nez v0, :cond_1f

    .line 2527
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "getSMIMECertificateAlias() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1f
    if-nez p4, :cond_2b

    .line 2532
    :try_start_21
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p0, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSMIMEAlias(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_29
    move-exception p0

    goto :goto_35

    :cond_2b
    const/4 v0, 0x1

    if-ne p4, v0, :cond_3b

    .line 2534
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, p0, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSMIMEAlias(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_34} :catch_29

    return-object p0

    :goto_35
    const-string/jumbo p1, "getSMIMECertificateAlias() : failed. "

    .line 2537
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2540
    :cond_3b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "getSMIMECertificateAlias() : accId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", type = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .registers 1

    .line 2680
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    return-object p0
.end method

.method public final isEmailHTMLAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 4

    const/4 p0, 0x1

    :try_start_1
    const-string v0, "email_policy"

    .line 2700
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/accounts/IEmailPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IEmailPolicy;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2701
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->getAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_12

    goto :goto_1b

    :catch_12
    move-exception p1

    const-string p2, "ExchangeAccountPolicy"

    const-string/jumbo v0, "setMaxEmailBodyTruncationSize() : Failed talking with email policy"

    .line 2704
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b
    :goto_1b
    return p0
.end method

.method public isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 10

    .line 1853
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1855
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    const-string v4, "AllowNotificationChange"

    move-object v0, p0

    move-wide v2, p2

    .line 1856
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 10

    .line 1876
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1878
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    const-string v4, "AllowSettingChange"

    move-object v0, p0

    move-wide v2, p2

    .line 1879
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isIncomingAttachmentsAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 10

    .line 1802
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1804
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    const-string v4, "AttachmentEnable"

    move-object v0, p0

    move-wide v2, p2

    .line 1805
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_10

    .line 2666
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
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

    .line 1747
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ExchangeAccountPolicy.onContainerCreation("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExchangeAccountPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 4

    .line 1782
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ExchangeAccountPolicy.onContainerRemoved("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExchangeAccountPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 9

    .line 1716
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string v1, "AccountId"

    const-string v2, "ForceSmimeCert"

    .line 1722
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    .line 1724
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1725
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v5, "adminUid"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1727
    iget-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ExchangeAccountTable"

    invoke-virtual {p1, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 1730
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_28
    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1731
    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_28

    .line 1734
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_28

    const/4 v4, 0x0

    .line 1736
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificate(IJI)V

    goto :goto_28

    :cond_4d
    const-string p0, "ExchangeAccountPolicy"

    const-string/jumbo p1, "onPreAdminRemoval() : "

    .line 1742
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 9

    .line 1753
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExchangeAccountPolicy.onPreContainerRemoval("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "AccountId"

    const-string v1, "ForceSmimeCert"

    .line 1759
    filled-new-array {p2, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 1761
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1762
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "containerID"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1764
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ExchangeAccountTable"

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 1767
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4b
    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1768
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_4b

    .line 1771
    invoke-virtual {v3, p2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_4b

    .line 1773
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, p1, v3, v4, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificate(IJI)V

    goto :goto_4b

    :cond_6f
    return-void
.end method

.method public final putPolicyState(IIJILjava/lang/String;)Z
    .registers 12

    .line 1547
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1548
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1549
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "containerID"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1550
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "AccountId"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1551
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1553
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1554
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1555
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1556
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1558
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "ExchangeAccountTable"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0

    .line 1559
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "putPolicyState: ret = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , accId  ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " , value  ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , policy ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExchangeAccountPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final putPolicyState(IIJZLjava/lang/String;)Z
    .registers 12

    .line 1528
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1529
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1530
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "containerID"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1531
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "AccountId"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p5, :cond_25

    const-string v1, "1"

    goto :goto_27

    :cond_25
    const-string v1, "0"

    .line 1532
    :goto_27
    invoke-virtual {v0, p6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1535
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1536
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1537
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1539
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "ExchangeAccountTable"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0

    .line 1540
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "putPolicyState: ret = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , accId  ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " , state  ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , policy ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExchangeAccountPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public removePendingAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 1289
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1290
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1291
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removePendingAccount() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExchangeAccountPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1299
    :try_start_25
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.samsung.android.knox.intent.action.DELETE_NOT_VALIDATED_EMAILACCOUNT_INTERNAL"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 1300
    invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    const-string v5, "eas"

    .line 1301
    invoke-virtual {v1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    .line 1302
    invoke-virtual {v1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.samsung.android.knox.intent.extra.EXTRA_USER_NAME_INTERNAL"

    .line 1303
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.samsung.android.knox.intent.extra.DOMAIN_INTERNAL"

    .line 1304
    invoke-virtual {v1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1305
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1306
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string p1, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {p0, v1, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_5a} :catch_5d
    .catchall {:try_start_25 .. :try_end_5a} :catchall_5b

    goto :goto_73

    :catchall_5b
    move-exception p0

    goto :goto_77

    :catch_5d
    move-exception p0

    .line 1308
    :try_start_5e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "removePendingAccount() : fail to remove pending EAS Account. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_5e .. :try_end_73} :catchall_5b

    .line 1310
    :goto_73
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_77
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1311
    throw p0
.end method

.method public final resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z
    .registers 11

    .line 2639
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2640
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2642
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p5, v3, :cond_1a

    .line 2644
    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "ForceSmimeCertForEncryption"

    invoke-virtual {v1, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-nez p6, :cond_29

    .line 2646
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificateForEncryption(IJI)V

    goto :goto_29

    :cond_1a
    const/4 v3, 0x3

    if-ne p5, v3, :cond_4c

    .line 2650
    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "ForceSmimeCertForSigning"

    invoke-virtual {v1, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-nez p6, :cond_29

    .line 2652
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificateForSigning(IJI)V

    .line 2658
    :cond_29
    :goto_29
    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    .line 2659
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p5, "adminUid"

    invoke-virtual {p4, p5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2660
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "AccountId"

    invoke-virtual {p4, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2661
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "ExchangeAccountTable"

    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result p0

    if-lez p0, :cond_4b

    const/4 v2, 0x1

    :cond_4b
    return v2

    .line 2655
    :cond_4c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "resetForcedSMIMECertificateInternal() : failed. There is unsupport type requested : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExchangeAccountPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public sendAccountsChangedBroadcast(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 8

    .line 1140
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1141
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1142
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1143
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1146
    :try_start_10
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->sendAccountsChangedBroadcast(ILandroid/content/Context;I)V

    .line 1148
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1149
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1150
    iput p1, v1, Landroid/os/Message;->arg2:I

    .line 1151
    iget-boolean p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_45

    const-string v0, "ExchangeAccountPolicy"

    if-nez p1, :cond_34

    :try_start_26
    const-string/jumbo p1, "sendAccountsChangedBroadcast()"

    .line 1152
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_41

    :cond_34
    const-string/jumbo p1, "sendAccountsChangedBroadcast() : Delayed Broadcast"

    .line 1155
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3a98

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_45

    .line 1159
    :goto_41
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_45
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1160
    throw p0
.end method

.method public final sendReleaseSMIMECertificate(IJI)V
    .registers 7

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendReleaseSMIMECertificate() : accId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", containerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", userId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExchangeAccountPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_INTERNAL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    .line 1515
    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1516
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 1518
    :try_start_37
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string p4, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    invoke-virtual {p0, p1, v0, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_47

    .line 1521
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_47
    move-exception p0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1522
    throw p0
.end method

.method public final sendReleaseSMIMECertificateForEncryption(IJI)V
    .registers 7

    .line 2085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendReleaseSMIMECertificateForEncryption() : accId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", containerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", userId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExchangeAccountPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    .line 2090
    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2091
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 2094
    :try_start_37
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string p4, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    invoke-virtual {p0, p1, v0, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_47

    .line 2097
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_47
    move-exception p0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2098
    throw p0
.end method

.method public final sendReleaseSMIMECertificateForSigning(IJI)V
    .registers 7

    .line 2056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendReleaseSMIMECertificateForSigning() : accId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", containerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", userId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExchangeAccountPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    .line 2061
    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2062
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 2064
    :try_start_37
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string p4, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    invoke-virtual {p0, p1, v0, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_47

    .line 2067
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_47
    move-exception p0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2068
    throw p0
.end method

.method public final sendSMIMEAliasResultIntent(JII)V
    .registers 7

    .line 2690
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    .line 2691
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.samsung.android.knox.intent.extra.SMIME_RESULT"

    .line 2692
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_TYPE"

    .line 2693
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2694
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p2, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public setAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 7

    .line 452
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAcceptAllCertificates() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 456
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setAcceptAllCertificates_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 459
    :cond_3a
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    .line 460
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    return p0
.end method

.method public setAccountBaseParameters(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .registers 8

    .line 542
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-string p0, "ExchangeAccountPolicy"

    const-string/jumbo p1, "setAccountBaseParameters() : deprecated "

    .line 544
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .registers 8

    const-string v0, "ExchangeAccountPolicy"

    .line 2297
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2298
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2297
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    .line 2300
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2301
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide p0

    const-wide/16 v1, -0x1

    if-nez p2, :cond_24

    return-wide v1

    .line 2305
    :cond_24
    :try_start_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "C#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2306
    invoke-static {v3, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_38} :catch_3f

    const-string/jumbo p2, "setAccountCertificatePassword() success"

    .line 2311
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p0

    :catch_3f
    move-exception p0

    const-string/jumbo p1, "setAccountCertificatePassword() failed"

    .line 2308
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v1
.end method

.method public setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .registers 8

    const-string v0, "ExchangeAccountPolicy"

    .line 2277
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2278
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2277
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    .line 2280
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2281
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide p0

    const-wide/16 v1, -0x1

    if-nez p2, :cond_24

    return-wide v1

    .line 2285
    :cond_24
    :try_start_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "E#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2286
    invoke-static {v3, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2287
    invoke-static {v3, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPasswordFocus(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3b} :catch_42

    const-string/jumbo p2, "setAccountEmailPassword() success"

    .line 2292
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p0

    :catch_42
    move-exception p0

    const-string/jumbo p1, "setAccountEmailPassword() failed"

    .line 2289
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v1
.end method

.method public setAccountName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 8

    .line 795
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAccountName() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_29

    const-string/jumbo p0, "setAccountName() : accountName is null"

    .line 802
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 805
    :cond_29
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    if-nez v2, :cond_47

    .line 807
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setAccountName_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 810
    :cond_47
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mDisplayName:Ljava/lang/String;

    .line 811
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    .line 813
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAccountName() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", accountName ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , accId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public setAlwaysVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 7

    .line 472
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAlwaysVibrateOnEmailNotification() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 476
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setAlwaysVibrateOnEmailNotification_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 479
    :cond_3a
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateAlways:Z

    .line 480
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    return p0
.end method

.method public setAsDefaultAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 7

    .line 771
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAsDefaultAccount() :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 776
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

    :cond_3a
    const/4 v2, 0x1

    .line 779
    iput-boolean v2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mIsDefault:Z

    .line 780
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    .line 782
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAsDefaultAccount() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , accId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public setClientAuthCert(Lcom/samsung/android/knox/ContextInfo;[BLjava/lang/String;J)V
    .registers 13

    .line 664
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setClientAuthCert() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 668
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 670
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 671
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setClientAuthCert() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3d
    if-eqz p2, :cond_8c

    if-eqz p3, :cond_8c

    const-wide/16 v2, 0x1

    cmp-long v2, p4, v2

    if-gez v2, :cond_48

    goto :goto_8c

    .line 679
    :cond_48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x1

    .line 681
    :try_start_4d
    iput-boolean v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    .line 682
    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 685
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.knox.intent.action.EMAIL_INSTALL_CERT_INTERNAL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v5

    const-string p1, "com.samsung.android.knox.intent.extra.CERTIFICATE_DATA_INTERNAL"

    .line 687
    invoke-virtual {v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    .line 688
    invoke-virtual {v4, p1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.samsung.android.knox.intent.extra.CERTIFICATE_PASSWD_ID_INTERNAL"

    .line 689
    invoke-virtual {v4, p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 691
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string p2, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {p0, v4, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_7a} :catch_7d
    .catchall {:try_start_4d .. :try_end_7a} :catchall_7b

    goto :goto_84

    :catchall_7b
    move-exception p0

    goto :goto_88

    :catch_7d
    move-exception p0

    :try_start_7e
    const-string/jumbo p1, "setClientAuthCert() : failed"

    .line 693
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_7b

    .line 695
    :goto_84
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_88
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 696
    throw p0

    .line 675
    :cond_8c
    :goto_8c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setClientAuthCert() : error : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDataSyncs(Lcom/samsung/android/knox/ContextInfo;ZZZZJ)Z
    .registers 10

    .line 906
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 907
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDataSyncs() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p6, p7}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    if-nez v0, :cond_3c

    .line 913
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setSSL_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 916
    :cond_3c
    iput-boolean p3, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncContacts:Z

    .line 917
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendar:Z

    .line 918
    iput-boolean p4, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncTasks:Z

    .line 919
    iput-boolean p5, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncNotes:Z

    .line 920
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    .line 923
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setDataSyncs() : = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " ,  syncCalendar = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", syncContacts = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", accid = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public setEmailNotificationsState(Lcom/samsung/android/knox/ContextInfo;JZ)Z
    .registers 14

    .line 1836
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEmailNotificationsState() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1839
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1841
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result p1

    if-nez p1, :cond_3b

    .line 1842
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "allowInComingAttachments() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_3b
    const-string v8, "AllowNotificationChange"

    move-object v2, p0

    move-wide v5, p2

    move v7, p4

    .line 1845
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result p0

    .line 1846
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setEmailNotificationsState() : = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , accId  ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " , enable  ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public setForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .registers 13

    const-string v6, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_INTERNAL"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 1498
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setForceSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setForceSMIMECertificateAlias(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;I)Z
    .registers 24

    move-object/from16 v0, p0

    move-wide/from16 v7, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    .line 2358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setForceSMIMECertificateAlias() : accId = "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", alias = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v13, "ExchangeAccountPolicy"

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 2360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setForceSMIMECertificateAlias() : credential storage name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    :cond_4c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v14

    .line 2366
    invoke-virtual {v0, v14, v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceUCMPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 2368
    invoke-static {v14}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v15

    const/4 v1, 0x1

    const/16 v16, 0x0

    if-eq v11, v1, :cond_86

    if-eqz v11, :cond_86

    .line 2372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setForceSMIMECertificateAlias() : invalid type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    .line 2376
    :cond_86
    invoke-virtual {v0, v14, v7, v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    if-nez v2, :cond_a2

    .line 2377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setForceSMIMECertificateAlias() : No exist accId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    :cond_a2
    const/4 v2, 0x3

    if-nez v11, :cond_a6

    const/4 v2, 0x2

    :cond_a6
    move v6, v2

    .line 2386
    iget v2, v14, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eqz v10, :cond_ad

    move v5, v1

    goto :goto_af

    :cond_ad
    move/from16 v5, v16

    :goto_af
    move-object/from16 v1, p0

    move-wide/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->adminSatisfiesForceSMIMECertificateRules(IJZI)Z

    move-result v1

    if-nez v1, :cond_d6

    .line 2387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setForceSMIMECertificateAlias() : either a smime certificate has already been enforced on this user by other admin or admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is trying to release a certificate which was not enforced by him"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    .line 2393
    :cond_d6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    if-eqz v10, :cond_101

    .line 2396
    :try_start_dc
    invoke-virtual {v0, v14, v9, v10}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->convertUcmUri(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_100

    .line 2401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setForceSMIMECertificateAlias() : storage name "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_fc} :catch_15b
    .catchall {:try_start_dc .. :try_end_fc} :catchall_159

    .line 2430
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v16

    :cond_100
    move-object v10, v3

    .line 2406
    :cond_101
    :try_start_101
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v3

    .line 2409
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_INTERNAL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    .line 2410
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_NAME_INTERNAL"

    .line 2411
    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_TYPE"

    .line 2412
    invoke-virtual {v5, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.CERT_RESULT_ID_INTERNAL"

    .line 2413
    invoke-virtual {v5, v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2415
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12b

    const-string v6, "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_STORAGE_INTERNAL"

    .line 2417
    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2420
    :cond_12b
    new-instance v6, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    const/4 v9, 0x0

    const/4 v11, -0x1

    invoke-direct {v6, v14, v10, v9, v11}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2421
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "S"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    move-result v3

    if-eqz v3, :cond_155

    .line 2424
    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v15}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    invoke-virtual {v0, v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_155} :catch_15b
    .catchall {:try_start_101 .. :try_end_155} :catchall_159

    .line 2430
    :cond_155
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_167

    :catchall_159
    move-exception v0

    goto :goto_182

    :catch_15b
    move-exception v0

    :try_start_15c
    const-string/jumbo v3, "setForceSMIMECertificateAlias() : failed. "

    .line 2427
    invoke-static {v13, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_162
    .catchall {:try_start_15c .. :try_end_162} :catchall_159

    .line 2430
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v3, v16

    .line 2432
    :goto_167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2430
    :goto_182
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2431
    throw v0
.end method

.method public setForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .registers 13

    const-string v6, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 2073
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setForceSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .registers 13

    const-string v6, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 2043
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setForceSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final setForceSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 16

    .line 2546
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "ExchangeAccountPolicy"

    .line 2547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setForceSMIMECertificateInternal() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2549
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2550
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2552
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v1

    const/4 v3, 0x3

    if-nez v1, :cond_4a

    const-string p0, "ExchangeAccountPolicy"

    .line 2553
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setForceSMIMECertificateInternal() : No exist accId : "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4a
    const/4 v1, 0x1

    if-eqz p4, :cond_120

    .line 2556
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_55

    goto/16 :goto_120

    :cond_55
    const/4 v4, 0x2

    if-eqz p5, :cond_117

    .line 2560
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_60

    goto/16 :goto_117

    :cond_60
    const/4 v7, 0x0

    if-eqz p6, :cond_10e

    const-string v5, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

    .line 2567
    invoke-virtual {p6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    move v6, v3

    goto :goto_78

    :cond_6d
    const-string v3, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

    .line 2569
    invoke-virtual {p6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    move v6, v4

    goto :goto_78

    :cond_77
    move v6, v1

    :goto_78
    const/4 v5, 0x1

    move-object v1, p0

    move-wide v3, p2

    .line 2577
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->adminSatisfiesForceSMIMECertificateRules(IJZI)Z

    move-result v1

    if-nez v1, :cond_8a

    const-string p0, "ExchangeAccountPolicy"

    const-string/jumbo p1, "setForceSMIMECertificateInternal() : a smime certificate has already been enforced on this user"

    .line 2578
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 2583
    :cond_8a
    monitor-enter p0

    .line 2584
    :try_start_8b
    invoke-virtual {p0, p1, p5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v1

    .line 2585
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v3

    .line 2586
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    .line 2587
    invoke-virtual {v5, v6, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.CERT_PATH_INTERNAL"

    .line 2588
    invoke-virtual {v5, v6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.extra.CERT_PASSWORD_ID_INTERNAL"

    .line 2589
    invoke-virtual {v5, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.CERT_RESULT_ID_INTERNAL"

    .line 2590
    invoke-virtual {v5, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2591
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_b0
    .catchall {:try_start_8b .. :try_end_b0} :catchall_10b

    .line 2593
    :try_start_b0
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v0, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    invoke-virtual {v6, v5, v8, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2595
    new-instance v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    invoke-static {p6}, Lcom/android/server/enterprise/email/SettingsUtils;->getSMIMEModeFromAction(Ljava/lang/String;)I

    move-result p6

    invoke-direct {v0, p1, p4, p5, p6}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2596
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "S"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    move-result p1

    const-string p4, "ExchangeAccountPolicy"

    .line 2598
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p6, "setForceSMIMECertificateInternal() : sendBroadcast success, accId = "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_f1} :catch_fb
    .catchall {:try_start_b0 .. :try_end_f1} :catchall_f9

    if-eqz p1, :cond_f5

    const/4 p1, -0x1

    move v7, p1

    .line 2604
    :cond_f5
    :goto_f5
    :try_start_f5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_10b

    goto :goto_105

    :catchall_f9
    move-exception p1

    goto :goto_107

    :catch_fb
    move-exception p1

    :try_start_fc
    const-string p2, "ExchangeAccountPolicy"

    const-string/jumbo p3, "setForceSMIMECertificateInternal() : failed. "

    .line 2601
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_104
    .catchall {:try_start_fc .. :try_end_104} :catchall_f9

    goto :goto_f5

    .line 2606
    :goto_105
    :try_start_105
    monitor-exit p0

    return v7

    .line 2604
    :goto_107
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2605
    throw p1

    :catchall_10b
    move-exception p1

    .line 2606
    monitor-exit p0
    :try_end_10d
    .catchall {:try_start_105 .. :try_end_10d} :catchall_10b

    throw p1

    :cond_10e
    const-string p0, "ExchangeAccountPolicy"

    const-string/jumbo p1, "setForceSMIMECertificateInternal() : Action is null"

    .line 2573
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_117
    :goto_117
    const-string p0, "ExchangeAccountPolicy"

    const-string/jumbo p1, "setForceSMIMECertificateInternal() : certPassword is null"

    .line 2561
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_120
    :goto_120
    const-string p0, "ExchangeAccountPolicy"

    const-string/jumbo p1, "setForceSMIMECertificateInternal() : certPath is null"

    .line 2557
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public setIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .registers 14

    .line 1809
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIncomingAttachmentsSize() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1812
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1814
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3c

    .line 1815
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setIncomingAttachmentsSize() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3c
    if-gez p2, :cond_45

    const-string/jumbo p0, "setIncomingAttachmentsSize() : Error :: invalid parameter."

    .line 1819
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_45
    const-string v8, "IncomingAttachmentSize"

    move-object v2, p0

    move-wide v5, p3

    move v7, p2

    .line 1822
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result p0

    .line 1823
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setIncomingAttachmentsSize() : = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , size  ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , accId  ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public setMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .registers 15

    .line 1883
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaxCalendarAgeFilter() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1886
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1887
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    const/4 v9, 0x0

    if-nez v0, :cond_3e

    .line 1889
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setMaxCalendarAgeFilter() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_3e
    const/4 v2, 0x4

    if-lt p2, v2, :cond_44

    const/4 v2, 0x7

    if-le p2, v2, :cond_4d

    :cond_44
    if-eqz p2, :cond_4d

    const-string/jumbo p0, "setMaxCalendarAgeFilter() : Error :: Invalid input parameters."

    .line 1893
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_4d
    const-string v8, "MaxCalendarAgeFilter"

    move-object v2, p0

    move-wide v5, p3

    move v7, p2

    .line 1896
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5f

    const-string/jumbo p0, "setMaxCalendarAgeFilter() : Error :: Fail to update policy."

    .line 1897
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 1900
    :cond_5f
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result p2

    .line 1901
    iget p3, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    if-le p3, p2, :cond_91

    if-eqz p2, :cond_91

    .line 1902
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setMaxCalendarAgeFilter() : need to change Account value : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    iput p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    .line 1904
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    return p0

    :cond_91
    const/4 p0, 0x1

    return p0
.end method

.method public setMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .registers 15

    .line 1917
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1918
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1919
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1920
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "ExchangeAccountPolicy"

    if-nez v7, :cond_29

    .line 1922
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setMaxEmailAgeFilter() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_29
    if-ltz p2, :cond_75

    const/4 v0, 0x5

    if-le p2, v0, :cond_2f

    goto :goto_75

    :cond_2f
    const-string v6, "MaxEmailAgeFilter"

    move-object v0, p0

    move-wide v3, p3

    move v5, p2

    .line 1929
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_41

    const-string/jumbo p0, "setMaxEmailAgeFilter() : Error :: Fail to update policy."

    .line 1930
    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 1933
    :cond_41
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result p2

    .line 1934
    iget p3, v7, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailAgeFilter:I

    if-le p3, p2, :cond_73

    if-eqz p2, :cond_73

    .line 1935
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setMaxEmailAgeFilter() : need to change Account value : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v7, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailAgeFilter:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v9, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    iput p2, v7, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailAgeFilter:I

    .line 1937
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v7}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    return p0

    :cond_73
    const/4 p0, 0x1

    return p0

    :cond_75
    :goto_75
    const-string/jumbo p0, "setMaxEmailAgeFilter() : Error :: Invalid input parameters."

    .line 1926
    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method public setMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .registers 15

    .line 1951
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaxEmailBodyTruncationSize() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1954
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1956
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    const/4 v9, 0x0

    if-nez v0, :cond_3e

    .line 1958
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setMaxEmailBodyTruncationSize() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_3e
    if-gez p2, :cond_47

    const-string/jumbo p0, "setMaxEmailBodyTruncationSize() : Error :: invalid parameter."

    .line 1962
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_47
    const-string v8, "MaxEmailBodyTruncationSize"

    move-object v2, p0

    move-wide v5, p3

    move v7, p2

    .line 1965
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_59

    const-string/jumbo p0, "setMaxEmailBodyTruncationSize() : Error :: Fail to update policy."

    .line 1966
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 1971
    :cond_59
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result p2

    .line 1972
    iget-object p3, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isEmailHTMLAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_a1

    if-eqz p2, :cond_a1

    .line 1975
    iget p3, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailBodyTruncationSize:I

    if-eqz p3, :cond_70

    mul-int/lit16 v2, p2, 0x400

    if-le p3, v2, :cond_94

    .line 1976
    :cond_70
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxEmailBodyTruncationSize() : need to change Account value1 : "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailBodyTruncationSize:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 p2, p2, 0x400

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    iput p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailBodyTruncationSize:I

    move v9, p4

    :cond_94
    if-eqz v9, :cond_a1

    .line 1981
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    const-string/jumbo p0, "setMaxEmailBodyTruncationSize() : updated account."

    .line 1982
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    :cond_a1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setMaxEmailBodyTruncationSize()  = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p4
.end method

.method public setMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .registers 15

    .line 1996
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaxEmailHTMLBodyTruncationSize() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1999
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2001
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    const/4 v9, 0x0

    if-nez v0, :cond_3e

    .line 2003
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setMaxEmailHTMLBodyTruncationSize() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_3e
    if-gez p2, :cond_47

    const-string/jumbo p0, "setMaxEmailHTMLBodyTruncationSize() : Error :: invalid parameter."

    .line 2007
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_47
    const-string v8, "MaxEmailHTMLBodyTruncationSize"

    move-object v2, p0

    move-wide v5, p3

    move v7, p2

    .line 2010
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_59

    const-string/jumbo p0, "setMaxEmailHTMLBodyTruncationSize() : Error :: Fail to update policy."

    .line 2011
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 2016
    :cond_59
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result p2

    .line 2017
    iget-object p3, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isEmailHTMLAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p3

    .line 2018
    iget-boolean p4, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAllowHTMLEmail:Z

    const/4 v2, 0x1

    if-eqz p4, :cond_a5

    if-eqz p3, :cond_a5

    if-eqz p2, :cond_a5

    .line 2020
    iget p3, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailHtmlBodyTruncationSize:I

    if-eqz p3, :cond_74

    mul-int/lit16 p4, p2, 0x400

    if-le p3, p4, :cond_98

    .line 2021
    :cond_74
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setMaxEmailHTMLBodyTruncationSize() : need to change Account value1 : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailHtmlBodyTruncationSize:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 p2, p2, 0x400

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    iput p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailHtmlBodyTruncationSize:I

    move v9, v2

    :cond_98
    if-eqz v9, :cond_a5

    .line 2026
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    const-string/jumbo p0, "setMaxEmailHTMLBodyTruncationSize() : updated account."

    .line 2027
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    :cond_a5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setMaxEmailHTMLBodyTruncationSize()  = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public setPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 8

    .line 594
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 595
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 596
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPassword() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_2f

    const-string/jumbo p0, "setPassword() : Invalid input parameter."

    .line 602
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 606
    :cond_2f
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    if-nez v2, :cond_4d

    .line 608
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setPassword_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 611
    :cond_4d
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    .line 612
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    return p0
.end method

.method public setPastDaysToSync(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .registers 8

    .line 708
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPastDaysToSync() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-gt v2, p2, :cond_6f

    const/4 v2, 0x6

    if-ge v2, p2, :cond_23

    goto :goto_6f

    .line 717
    :cond_23
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    if-nez v2, :cond_41

    .line 719
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setPastDaysToSync_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 722
    :cond_41
    iput p2, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncLookback:I

    .line 723
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    .line 724
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setPastDaysToSync() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , pastDaysToSync = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , accId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_6f
    :goto_6f
    const-string/jumbo p0, "setPastDaysToSync : Error :: Invalid input parameter."

    .line 713
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setProtocolVersion(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 5

    .line 623
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 p0, 0x0

    return p0
.end method

.method public setReleaseSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 5

    const/4 v0, 0x1

    .line 1507
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setReleaseSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JI)Z

    move-result p0

    return p0
.end method

.method public setReleaseSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 5

    const/4 v0, 0x2

    .line 2082
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setReleaseSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JI)Z

    move-result p0

    return p0
.end method

.method public setReleaseSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 5

    const/4 v0, 0x3

    .line 2053
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setReleaseSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JI)Z

    move-result p0

    return p0
.end method

.method public final setReleaseSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JI)Z
    .registers 20

    move-wide/from16 v7, p2

    move/from16 v9, p4

    .line 2611
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v10

    .line 2612
    iget v0, v10, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2613
    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v11

    move-object v12, p0

    .line 2616
    invoke-virtual {p0, v10, v7, v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    const-string v13, "ExchangeAccountPolicy"

    const/4 v6, 0x0

    if-nez v0, :cond_2e

    .line 2617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setReleaseSMIMECertificateInternal() : No exist accId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 2621
    :cond_2e
    iget v1, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v4, 0x0

    move-object v0, p0

    move-wide/from16 v2, p2

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->adminSatisfiesForceSMIMECertificateRules(IJZI)Z

    move-result v0

    if-nez v0, :cond_59

    .line 2622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setReleaseSMIMECertificateInternal() : admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is trying to release a certificate which was not enforced by him"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_59
    const/4 v14, 0x1

    if-eq v9, v14, :cond_5f

    const/4 v0, 0x2

    if-ne v9, v0, :cond_7f

    :cond_5f
    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v10

    move-wide/from16 v2, p2

    move v4, v11

    .line 2628
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    move-result v6

    .line 2629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setReleaseSMIMECertificateInternal() : release SMIME Encryption = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    if-eq v9, v14, :cond_84

    const/4 v0, 0x3

    if-ne v9, v0, :cond_a4

    :cond_84
    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v10

    move-wide/from16 v2, p2

    move v4, v11

    .line 2633
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    move-result v6

    .line 2634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setReleaseSMIMECertificateInternal() : release SMIME Signing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a4
    return v6
.end method

.method public setRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;JZ)Z
    .registers 14

    .line 1339
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRequireEncryptedSMIMEMessages () : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1342
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1344
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result p1

    if-nez p1, :cond_3c

    .line 1345
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setRequireEncryptedSMIMEMessages() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_3c
    const-string v8, "ReqEncryptSmime"

    move-object v2, p0

    move-wide v5, p2

    move v7, p4

    .line 1348
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4d

    const-string/jumbo p1, "setRequireEncryptedSMIMEMessages() : failed."

    .line 1351
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    return p0
.end method

.method public setRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;JZ)Z
    .registers 14

    .line 1315
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRequireSignedSMIMEMessages() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1318
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1320
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result p1

    if-nez p1, :cond_3c

    .line 1321
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setRequireSignedSMIMEMessages() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_3c
    const-string v8, "ReqSigSmime"

    move-object v2, p0

    move-wide v5, p2

    move v7, p4

    .line 1324
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4d

    const-string/jumbo p1, "setRequireSignedSMIMEMessages() : failed."

    .line 1326
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    return p0
.end method

.method public setSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 7

    .line 432
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSSL() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 436
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setSSL_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 439
    :cond_3a
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    .line 440
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    return p0
.end method

.method public setSenderName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 5

    .line 756
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 757
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setSenderName() :  deprecated , "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExchangeAccountPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setSignature(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 8

    .line 638
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSignature() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 v0, 0x0

    if-nez p2, :cond_27

    const-string/jumbo p0, "setSignature() : signature is null"

    .line 644
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 647
    :cond_27
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    if-nez v2, :cond_45

    .line 649
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setSignature_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 652
    :cond_45
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSignature:Ljava/lang/String;

    .line 653
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    return p0
.end method

.method public setSilentVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 5

    .line 492
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 493
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setSilentVibrateOnEmailNotification() : deprecated. "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExchangeAccountPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setSyncInterval(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .registers 5

    .line 739
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 740
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setSyncInterval() : deprecated , "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExchangeAccountPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setSyncPeakTimings(Lcom/samsung/android/knox/ContextInfo;IIIJ)Z
    .registers 10

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSyncPeakTimings() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-ltz p2, :cond_9e

    const/16 v2, 0x7f

    if-le p2, v2, :cond_24

    goto/16 :goto_9e

    :cond_24
    if-ltz p3, :cond_97

    const/16 v2, 0x5a0

    if-le p3, v2, :cond_2b

    goto :goto_97

    :cond_2b
    if-ltz p4, :cond_90

    if-le p4, v2, :cond_30

    goto :goto_90

    .line 846
    :cond_30
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p5, p6}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    if-nez v2, :cond_4e

    .line 848
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setSSL_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 851
    :cond_4e
    iput p2, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakDays:I

    .line 852
    iput p3, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakStartMinute:I

    .line 853
    iput p4, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakEndMinute:I

    .line 854
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    .line 857
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setSyncPeakTimings() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , peakDays ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mPeakStartMinute = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", peakEndMinute = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", accid = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_90
    :goto_90
    const-string/jumbo p0, "setSyncPeakTimings() : peakEndMinute is invalid"

    .line 842
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_97
    :goto_97
    const-string/jumbo p0, "setSyncPeakTimings() : peakStartMinute is invalid"

    .line 838
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_9e
    :goto_9e
    const-string/jumbo p0, "setSyncPeakTimings() : peakDays is invalid"

    .line 834
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setSyncSchedules(Lcom/samsung/android/knox/ContextInfo;IIIJ)Z
    .registers 9

    .line 875
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSyncSchedules() :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p5, p6}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 881
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setSyncSchedules_new() : No exist accId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 884
    :cond_3a
    iput p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakSyncSchedule:I

    .line 885
    iput p3, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mOffPeakSyncSchedule:I

    .line 886
    iput p4, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mRoamingSyncSchedule:I

    .line 887
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    .line 889
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setSyncSchedules() : = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ,  peakSyncSchedule = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", offPeakSyncSchedule = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", roamingSyncSchedule = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", accid = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
