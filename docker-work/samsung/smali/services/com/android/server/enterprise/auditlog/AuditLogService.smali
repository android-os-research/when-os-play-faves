.class public Lcom/android/server/enterprise/auditlog/AuditLogService;
.super Lcom/samsung/android/knox/log/IAuditLog$Stub;
.source "AuditLogService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;
    }
.end annotation


# static fields
.field public static final AUDIT_LOG_SERVICE:Ljava/lang/String; = "AuditLogService"

.field public static final REMOVABLE_MEDIA_MOUNTED:Ljava/lang/String; = "Mounted"

.field public static final REMOVABLE_MEDIA_UNMOUNTED:Ljava/lang/String; = "Unmounted"

.field public static final STORAGE_VOLUME_EXTRA:Ljava/lang/String; = "android.os.storage.extra.STORAGE_VOLUME"

.field public static final TAG:Ljava/lang/String; = "AuditLogService"

.field public static final UID_AUDITD:I = 0x7cf

.field public static final swComponentWhitelist:[Ljava/lang/String;


# instance fields
.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mContainerOwnerCache:Landroid/content/ContentValues;

.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mInjector:Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;

.field public volatile mIsBootCompleted:Z

.field public mLinkedHashMap:Ljava/util/Map;

.field public final mMessagePackage:Ljava/lang/String;

.field public final mPattern:Ljava/util/regex/Pattern;

.field public mRemovableMediaBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLinkedHashMap(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsBootCompleted(Lcom/android/server/enterprise/auditlog/AuditLogService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 16

    const-string v0, "KeyStore"

    const-string/jumbo v1, "keystore"

    const-string v2, "AndroidKeyStoreKeyPairGeneratorSpi"

    const-string v3, "AndroidKeyStoreSpi"

    const-string v4, "OkHostnameVerifier"

    const-string v5, "OpenSSLRandom"

    const-string v6, "PKIXRevocationChecker"

    const-string v7, "ConscryptFileDescriptorSocket"

    const-string v8, "Connection"

    const-string v9, "CertPathValidator"

    const-string v10, "ecryptfs"

    const-string v11, "conscrypt"

    const-string v12, "fscrypt"

    const-string v13, "AndroidKeyStoreMaintenance"

    const-string v14, "KeyStoreSecurityLevel"

    const-string v15, "KeyStore2"

    .line 105
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->swComponentWhitelist:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 160
    new-instance v0, Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;-><init>(Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/knox/log/IAuditLog$Stub;-><init>()V

    .line 192
    new-instance v0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/auditlog/AuditLogService$1;-><init>(Lcom/android/server/enterprise/auditlog/AuditLogService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mRemovableMediaBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    new-instance v0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/auditlog/AuditLogService$2;-><init>(Lcom/android/server/enterprise/auditlog/AuditLogService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mInjector:Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;

    .line 166
    iget-object p1, p1, Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 167
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 170
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    .line 171
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->createAdmins()V

    const-string v0, "(^Admin) ([0-9]+) (.*$)"

    .line 172
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mPattern:Ljava/util/regex/Pattern;

    .line 173
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/InformFailure;->setContext(Landroid/content/Context;)V

    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.REBOOT"

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    .line 184
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    .line 185
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "file"

    .line 186
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mRemovableMediaBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 189
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mMessagePackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 17

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 800
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->RedactedAuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V
    .registers 19

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    .line 827
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->RedactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final AuditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, p5

    const/4 v11, -0x1

    if-nez p10, :cond_2b

    if-eqz v1, :cond_e

    .line 990
    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    goto :goto_12

    :cond_e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 991
    :goto_12
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 996
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-eq v2, v3, :cond_29

    .line 997
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v10, v2, :cond_27

    goto :goto_29

    :cond_27
    move v12, v1

    goto :goto_2d

    :cond_29
    :goto_29
    move v12, v11

    goto :goto_2d

    :cond_2b
    move/from16 v12, p9

    .line 1005
    :goto_2d
    iget-object v1, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_114

    .line 1006
    iget-object v1, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1009
    iget-object v13, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v13

    .line 1010
    :try_start_3e
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 1011
    :goto_42
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 1012
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/server/enterprise/auditlog/Admin;

    move-object/from16 v9, p7

    move-object/from16 v8, p8

    .line 1014
    invoke-virtual {v0, v15, v9, v8, v12}, Lcom/android/server/enterprise/auditlog/AuditLogService;->evaluateLogMessageForWpcod(Lcom/android/server/enterprise/auditlog/Admin;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 1015
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5e

    goto :goto_42

    .line 1020
    :cond_5e
    invoke-virtual {v15}, Lcom/android/server/enterprise/auditlog/Admin;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v12, v11, :cond_82

    if-nez v1, :cond_74

    .line 1026
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v2

    invoke-interface {v2, v12}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_82

    :cond_74
    if-ne v1, v12, :cond_78

    if-nez v1, :cond_82

    .line 1030
    :cond_78
    invoke-virtual {v15}, Lcom/android/server/enterprise/auditlog/Admin;->getUid()I

    move-result v1

    invoke-virtual {v0, v12, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkOwnContainerOrSelf(II)Z

    move-result v1

    if-eqz v1, :cond_105

    .line 1032
    :cond_82
    invoke-virtual {v15}, Lcom/android/server/enterprise/auditlog/Admin;->getAuditLogRulesInfo()Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v2

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p3

    move-object/from16 v6, p6

    move-object/from16 p1, v7

    move v7, v12

    move-object/from16 v8, p1

    move-object v9, v15

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterLoggingMessage(Lcom/samsung/android/knox/log/AuditLogRulesInfo;IZILjava/lang/String;ILjava/lang/String;Lcom/android/server/enterprise/auditlog/Admin;)Z

    move-result v1

    if-eqz v1, :cond_105

    .line 1034
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1035
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 1036
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p2

    .line 1037
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    .line 1038
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p3

    .line 1039
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    .line 1040
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    move/from16 v5, p4

    if-ne v5, v4, :cond_ce

    const-string v4, "1"

    goto :goto_d0

    :cond_ce
    const-string v4, "0"

    .line 1041
    :goto_d0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    .line 1042
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    .line 1044
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    .line 1046
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p6

    .line 1047
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    .line 1048
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p1

    .line 1049
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    .line 1050
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/android/server/enterprise/auditlog/Admin;->write(Ljava/lang/String;)V

    goto/16 :goto_42

    :cond_105
    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move-object/from16 v4, p6

    goto/16 :goto_42

    .line 1055
    :cond_10f
    monitor-exit v13

    goto :goto_114

    :catchall_111
    move-exception v0

    monitor-exit v13
    :try_end_113
    .catchall {:try_start_3e .. :try_end_113} :catchall_111

    throw v0

    :cond_114
    :goto_114
    return-void
.end method

.method public AuditLoggerPrivileged(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 17

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 866
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->RedactedAuditLoggerPrivileged(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public AuditLoggerPrivilegedAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V
    .registers 19

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    .line 896
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->RedactedAuditLoggerPrivilegedAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public RedactedAuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20

    move-object v0, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 807
    invoke-virtual {p0, v6, v7}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditLogEnforce(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 810
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_1d
    return-void
.end method

.method public RedactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 21

    move-object v0, p0

    move-object/from16 v1, p7

    move-object/from16 v6, p6

    .line 834
    invoke-virtual {p0, v6, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditLogEnforce(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 840
    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 841
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_48

    const/4 v1, 0x2

    .line 842
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 843
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 844
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " $3"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 843
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_48
    move-object v7, v1

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    .line 847
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_5a
    return-void
.end method

.method public RedactedAuditLoggerPrivileged(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20

    move-object v0, p0

    move-object/from16 v1, p7

    move-object/from16 v6, p6

    .line 873
    invoke-virtual {p0, v6, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditPrivilegedAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 874
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    .line 876
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_1f
    return-void
.end method

.method public RedactedAuditLoggerPrivilegedAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 21

    move-object v0, p0

    move-object/from16 v1, p7

    move-object/from16 v6, p6

    .line 903
    invoke-virtual {p0, v6, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditPrivilegedAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 904
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    .line 906
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_20
    return-void
.end method

.method public final appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 936
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 937
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 938
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 939
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getProcessName(I)Ljava/lang/String;

    move-result-object p0

    .line 941
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n[logged by: "

    .line 942
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    .line 944
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", pid: "

    .line 946
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    .line 948
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3b} :catch_3c

    goto :goto_57

    :catch_3c
    move-exception p0

    .line 950
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AuditLogService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :goto_57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final checkAuditLogEnforce(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 750
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_66

    .line 752
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "AuditLogService"

    if-nez p1, :cond_61

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_61

    .line 757
    :cond_16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 758
    iget-object p2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p2

    .line 761
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mMessagePackage:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_33

    const/16 v2, 0x7cf

    if-ne p1, v2, :cond_32

    goto :goto_33

    :cond_32
    move v1, v3

    :cond_33
    :goto_33
    if-eqz v1, :cond_60

    .line 768
    :try_start_35
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceLoggerPermission()V
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_60

    :catch_39
    const-string p1, "com.android.chrome"

    .line 772
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_55

    .line 773
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuditLogger: Module does not have AuditLog permission. Package = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_55
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    move-result-object p0

    const-string p1, "AuditLogger"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    :goto_60
    return v3

    :cond_61
    :goto_61
    const-string p0, "Error: Invalid auditlog parameters!"

    .line 753
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    return v1
.end method

.method public final checkAuditPrivilegedAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 912
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2f

    .line 914
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_28

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_28

    .line 920
    :cond_14
    sget-object p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->swComponentWhitelist:[Ljava/lang/String;

    array-length p2, p0

    move v1, v0

    :goto_18
    if-ge v1, p2, :cond_27

    aget-object v2, p0, v1

    .line 921
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v0, 0x1

    goto :goto_27

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_27
    :goto_27
    return v0

    :cond_28
    :goto_28
    const-string p0, "AuditLogService"

    const-string p1, "Error: Invalid auditlog parameters!"

    .line 915
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return v0
.end method

.method public final checkOwnContainerOrSelf(II)Z
    .registers 7

    .line 1081
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1082
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3f

    .line 1083
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 1087
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_2a

    return v1

    .line 1091
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1092
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1093
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v0, v2, :cond_3f

    if-ne p1, v3, :cond_3f

    return v1

    .line 1101
    :cond_3f
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 1102
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-ne v0, p2, :cond_55

    return v1

    .line 1108
    :cond_55
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    .line 1109
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1110
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    if-ne p0, v0, :cond_66

    if-ne p1, p2, :cond_66

    return v1

    :cond_66
    const/4 p0, 0x0

    return p0
.end method

.method public final createAdmins()V
    .registers 7

    .line 312
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mInjector:Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;->isNeedToRunCreateAdmins()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 313
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "AUDITLOG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 317
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 318
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 319
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v2, "adminUid"

    .line 320
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "auditLogEnabled"

    .line 321
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 322
    new-instance v3, Lcom/android/server/enterprise/auditlog/Admin;

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getAdminPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lcom/android/server/enterprise/auditlog/Admin;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    const-string v4, "auditCriticalSize"

    .line 323
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_58

    .line 325
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/auditlog/Admin;->setCriticalLogSize(I)V

    :cond_58
    const-string v4, "auditMaximumSize"

    .line 327
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_67

    .line 329
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/auditlog/Admin;->setMaximumLogSize(I)V

    :cond_67
    const-string v4, "auditLogMDM"

    .line 331
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/auditlog/Admin;->setMDMLogging(Z)V

    const-string v4, "auditLogBufferSize"

    .line 332
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_86

    .line 334
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/auditlog/Admin;->setBufferSize(J)V

    .line 337
    :cond_86
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->extractRulesFromCv(Landroid/content/ContentValues;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/auditlog/Admin;->setAuditLogRulesInfo(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)V

    .line 338
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v1

    .line 339
    :try_start_90
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_90 .. :try_end_9a} :catchall_a3

    .line 341
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getDeviceInfo()Ljava/util/List;

    move-result-object v1

    .line 342
    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/auditlog/Admin;->setDeviceInfo(Ljava/util/List;)V

    goto/16 :goto_15

    :catchall_a3
    move-exception p0

    .line 340
    :try_start_a4
    monitor-exit v1
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    throw p0

    :cond_a6
    return-void
.end method

.method public disableAuditLog(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 12

    .line 712
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    .line 713
    iget p1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 715
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5d

    .line 718
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "auditLogEnabled"

    .line 719
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "adminUid"

    .line 721
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 722
    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "AUDITLOG"

    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v4

    if-lez v4, :cond_5b

    .line 724
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    .line 725
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v0

    .line 726
    :try_start_42
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_58

    .line 729
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string v2, "AuditLog/isAuditLogEnabled"

    .line 732
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 730
    invoke-static {v0, v2, v4}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_5d

    :catchall_58
    move-exception p0

    .line 727
    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw p0

    :cond_5b
    move v9, v2

    goto :goto_5e

    :cond_5d
    :goto_5d
    move v9, v3

    :goto_5e
    if-eqz v9, :cond_73

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 741
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "AuditLogService"

    const-string v7, "AuditLog status has changed to  disable"

    .line 742
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object v0, p0

    .line 740
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_73
    return v9
.end method

.method public declared-synchronized dumpLogFile(Lcom/samsung/android/knox/ContextInfo;JJLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .registers 15

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p7, :cond_72

    .line 1248
    :try_start_4
    invoke-virtual {p7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 1249
    invoke-virtual {p7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_72

    .line 1253
    :cond_15
    invoke-virtual {p7}, Landroid/os/ParcelFileDescriptor;->canDetectErrors()Z

    move-result v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_7c

    if-eqz v1, :cond_2f

    :try_start_1b
    const-string v1, "AuditLogService"

    const-string v2, "check error"

    .line 1255
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    invoke-virtual {p7}, Landroid/os/ParcelFileDescriptor;->checkError()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_25} :catch_26
    .catchall {:try_start_1b .. :try_end_25} :catchall_7c

    goto :goto_2f

    :catch_26
    :try_start_26
    const-string p1, "AuditLogService"

    const-string p2, "error checking file descriptor"

    .line 1258
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_7c

    .line 1259
    monitor-exit p0

    return v0

    .line 1264
    :cond_2f
    :goto_2f
    :try_start_2f
    new-instance v1, Ljava/lang/SecurityManager;

    invoke-direct {v1}, Ljava/lang/SecurityManager;-><init>()V

    .line 1265
    invoke-virtual {p7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V
    :try_end_3b
    .catch Ljava/lang/SecurityException; {:try_start_2f .. :try_end_3b} :catch_69
    .catchall {:try_start_2f .. :try_end_3b} :catchall_7c

    .line 1270
    :try_start_3b
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1271
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1272
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/server/enterprise/auditlog/Admin;

    if-eqz v1, :cond_67

    .line 1274
    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/Admin;->getDumpState()Z

    move-result p1

    if-nez p1, :cond_67

    .line 1275
    invoke-virtual {v1, p6}, Lcom/android/server/enterprise/auditlog/Admin;->setFilter(Ljava/lang/String;)Z

    move-result p1
    :try_end_5a
    .catchall {:try_start_3b .. :try_end_5a} :catchall_7c

    if-nez p1, :cond_5e

    .line 1276
    monitor-exit p0

    return v0

    :cond_5e
    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p7

    .line 1278
    :try_start_61
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/auditlog/Admin;->dump(JJLandroid/os/ParcelFileDescriptor;)Z

    move-result p1
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_7c

    monitor-exit p0

    return p1

    .line 1281
    :cond_67
    monitor-exit p0

    return v0

    :catch_69
    :try_start_69
    const-string p1, "AuditLogService"

    const-string p2, "can\'t write to file descriptor"

    .line 1267
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_7c

    .line 1268
    monitor-exit p0

    return v0

    :cond_72
    :goto_72
    :try_start_72
    const-string p1, "AuditLogService"

    const-string/jumbo p2, "invalid output file"

    .line 1250
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_7c

    .line 1251
    monitor-exit p0

    return v0

    :catchall_7c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public enableAuditLog(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 13

    .line 619
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    .line 620
    iget p1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v0, 0x0

    .line 623
    :try_start_7
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_15

    return v3

    .line 626
    :cond_15
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "auditLogEnabled"

    .line 627
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "AUDITLOG"

    invoke-virtual {v4, p1, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2b} :catch_91

    .line 630
    :try_start_2b
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->setAvailableSize(I)J

    move-result-wide v4
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2f} :catch_8c

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_36

    goto :goto_37

    :cond_36
    move v0, v2

    :goto_37
    if-eqz v0, :cond_a0

    .line 635
    :try_start_39
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "adminUid"

    .line 636
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 638
    iput-boolean v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    .line 639
    new-instance v2, Lcom/android/server/enterprise/auditlog/Admin;

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getAdminPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, p1, v3, v6}, Lcom/android/server/enterprise/auditlog/Admin;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    .line 640
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getDeviceInfo()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/auditlog/Admin;->setDeviceInfo(Ljava/util/List;)V

    .line 642
    iget-boolean v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/auditlog/Admin;->setBootCompleted(Z)V

    .line 644
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getRulesInfoFromDB(I)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/auditlog/Admin;->setAuditLogRulesInfo(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)V

    .line 646
    invoke-virtual {v2, v4, v5}, Lcom/android/server/enterprise/auditlog/Admin;->setBufferSize(J)V

    .line 648
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/Admin;->createBubbleDirectory()V

    .line 649
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/Admin;->createBubbleFile()V

    .line 650
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v3
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_73} :catch_91

    .line 651
    :try_start_73
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    monitor-exit v3
    :try_end_7d
    .catchall {:try_start_73 .. :try_end_7d} :catchall_89

    .line 654
    :try_start_7d
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string v3, "AuditLog/isAuditLogEnabled"

    .line 656
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 654
    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_88} :catch_91

    goto :goto_a0

    :catchall_89
    move-exception v2

    .line 652
    :try_start_8a
    monitor-exit v3
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    :try_start_8b
    throw v2
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8c} :catch_91

    :catch_8c
    move-exception v0

    move v10, v2

    move-object v2, v0

    move v0, v10

    goto :goto_92

    :catch_91
    move-exception v2

    .line 659
    :goto_92
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 660
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getAdminPackageNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_a0
    :goto_a0
    move v9, v0

    if-eqz v9, :cond_b6

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 665
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "AuditLogService"

    const-string v7, "AuditLog status has changed to  enable"

    .line 666
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object v0, p0

    .line 664
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_b6
    return v9
.end method

.method public final enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 596
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 598
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 596
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceLoggerPermission()V
    .registers 2

    .line 584
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_b

    return-void

    .line 586
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Admin does not have com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final evaluateLogMessageForWpcod(Lcom/android/server/enterprise/auditlog/Admin;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 1061
    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/Admin;->isPseudoAdminOfOrganizationOwnedDevice()Z

    move-result p0

    if-eqz p0, :cond_9

    if-eqz p3, :cond_15

    goto :goto_14

    .line 1068
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/Admin;->isProfileOwnerOfOrganizationOwnedDevice()Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, -0x1

    if-ne p4, p0, :cond_15

    if-eqz p3, :cond_15

    :goto_14
    move-object p2, p3

    :cond_15
    return-object p2
.end method

.method public final extractRulesFromCv(Landroid/content/ContentValues;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .registers 12

    .line 349
    new-instance p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    invoke-direct {p0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;-><init>()V

    if-eqz p1, :cond_79

    const-string v0, "auditLogRuleSeverity"

    .line 351
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "auditLogRuleOutcome"

    .line 352
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "auditLogRuleGroups"

    .line 353
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 355
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, ","

    const/4 v6, 0x0

    if-nez v3, :cond_3c

    .line 356
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 357
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v7, v2

    move v8, v4

    :goto_2e
    if-ge v8, v7, :cond_3d

    aget-object v9, v2, v8

    .line 358
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    :cond_3c
    move-object v3, v6

    :cond_3d
    const-string v2, "auditLogRuleUsers"

    .line 362
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 365
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 366
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    :goto_53
    if-ge v4, v2, :cond_61

    aget-object v5, p1, v4

    .line 367
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    :cond_61
    if-eqz v0, :cond_6a

    .line 372
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setSeverityRule(I)V

    :cond_6a
    if-eqz v1, :cond_73

    .line 375
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setOutcomeRule(I)V

    .line 377
    :cond_73
    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setGroupsRule(Ljava/util/List;)V

    .line 378
    invoke-virtual {p0, v6}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setUsersRule(Ljava/util/List;)V

    :cond_79
    return-object p0
.end method

.method public final filterByGroup(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .registers 3

    .line 1393
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 1394
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_21

    .line 1395
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method public final filterByOutcome(ZLcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .registers 5

    .line 1381
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1b

    if-ne p1, v0, :cond_10

    .line 1383
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result p0

    if-eq p0, v0, :cond_1b

    :cond_10
    if-nez p1, :cond_19

    .line 1385
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result p0

    if-nez p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    return v0
.end method

.method public final filterBySeverity(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .registers 3

    .line 1374
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getSeverityRule()I

    move-result p0

    if-gt p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final filterByUser(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .registers 3

    .line 1402
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 1403
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_24

    .line 1404
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    const/4 p0, -0x1

    if-ne p1, p0, :cond_22

    goto :goto_24

    :cond_22
    const/4 p0, 0x0

    return p0

    :cond_24
    :goto_24
    const/4 p0, 0x1

    return p0
.end method

.method public final filterLoggingMessage(Lcom/samsung/android/knox/log/AuditLogRulesInfo;IZILjava/lang/String;ILjava/lang/String;Lcom/android/server/enterprise/auditlog/Admin;)Z
    .registers 9

    .line 1361
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterBySeverity(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 1362
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterByOutcome(ZLcom/samsung/android/knox/log/AuditLogRulesInfo;)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 1363
    invoke-virtual {p0, p4, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterByGroup(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 1364
    invoke-virtual {p0, p6, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterByUser(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final getAdminPackageNameForUid(I)Ljava/lang/String;
    .registers 4

    .line 1346
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_13

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_10

    const/16 v1, 0x4e1f

    if-le v0, v1, :cond_13

    :cond_10
    const-string p0, "com.sec.enterprise.knox.cloudmdm.smdms"

    return-object p0

    .line 1351
    :cond_13
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    .line 1353
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    :cond_25
    return-object v0
.end method

.method public getAuditLogRules(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .registers 4

    .line 437
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 438
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 439
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    if-eqz v0, :cond_19

    .line 441
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getAuditLogRulesInfo()Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object p0

    return-object p0

    .line 443
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getRulesInfoFromDB(I)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCriticalLogSize(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 2

    .line 1176
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1177
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/auditlog/Admin;

    if-eqz p0, :cond_19

    .line 1180
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/Admin;->getCriticalLogSize()I

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentLogFileSize(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 2

    .line 1124
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1125
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/auditlog/Admin;

    if-eqz p0, :cond_19

    .line 1128
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/Admin;->getCurrentLogFileSize()I

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public final getDeviceInfo()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getDeviceInventory()Lcom/samsung/android/knox/deviceinfo/DeviceInventory;

    move-result-object v0

    .line 284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, " -----------------------------------------\n"

    .line 287
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OEM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEVICE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLATFORM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getDeviceOS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OS VERSION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getDeviceOSVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9e

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BASEBAND: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_9e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEVICE ID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getSerialNumberInternal()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 605
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 606
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 608
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public getMaximumLogSize(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 2

    .line 1226
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1227
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/auditlog/Admin;

    if-eqz p0, :cond_19

    .line 1230
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/Admin;->getMaximumLogSize()I

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public final getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .registers 1

    .line 417
    const-class p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-static {p0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    return-object p0
.end method

.method public final getProcessName(I)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 956
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 961
    :try_start_6
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/cmdline"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_21} :catch_53
    .catchall {:try_start_6 .. :try_end_21} :catchall_4f

    .line 962
    :try_start_21
    new-instance p1, Ljava/io/InputStreamReader;

    const-string/jumbo v2, "iso-8859-1"

    invoke-direct {p1, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_29} :catch_4c
    .catchall {:try_start_21 .. :try_end_29} :catchall_49

    .line 963
    :try_start_29
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_44
    .catchall {:try_start_29 .. :try_end_2e} :catchall_42

    .line 965
    :goto_2e
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v0

    if-lez v0, :cond_39

    int-to-char v0, v0

    .line 966
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_38} :catch_40
    .catchall {:try_start_2e .. :try_end_38} :catchall_86

    goto :goto_2e

    .line 972
    :cond_39
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 975
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V

    goto :goto_7e

    :catch_40
    move-exception v0

    goto :goto_58

    :catchall_42
    move-exception p0

    goto :goto_88

    :catch_44
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_58

    :catchall_49
    move-exception p0

    move-object p1, v0

    goto :goto_88

    :catch_4c
    move-exception p1

    move-object v2, v0

    goto :goto_56

    :catchall_4f
    move-exception p0

    move-object p1, v0

    move-object v1, p1

    goto :goto_88

    :catch_53
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    :goto_56
    move-object v0, p1

    move-object p1, v2

    :goto_58
    :try_start_58
    const-string v3, "AuditLogService"

    .line 969
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_58 .. :try_end_72} :catchall_86

    if-eqz v2, :cond_77

    .line 972
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_77
    if-eqz p1, :cond_7c

    .line 975
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V

    :cond_7c
    if-eqz v1, :cond_81

    .line 978
    :goto_7e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 981
    :cond_81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_86
    move-exception p0

    move-object v0, v2

    :goto_88
    if-eqz v0, :cond_8d

    .line 972
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_8d
    if-eqz p1, :cond_92

    .line 975
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V

    :cond_92
    if-eqz v1, :cond_97

    .line 978
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 980
    :cond_97
    throw p0
.end method

.method public final getRulesInfoFromDB(I)Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .registers 6

    .line 498
    new-instance v0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;-><init>()V

    .line 499
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 500
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "adminUid"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "AUDITLOG"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p1

    .line 503
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    const/4 v0, 0x0

    .line 504
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 505
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->extractRulesFromCv(Landroid/content/ContentValues;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v0

    :cond_2d
    return-object v0
.end method

.method public final getSerialNumberInternal()Ljava/lang/String;
    .registers 6

    const-string p0, ""

    .line 1435
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_7
    const-string/jumbo v3, "ril.serialnumber"

    .line 1437
    invoke-static {v3, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1438
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "00000000000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_1f

    :cond_1d
    move-object v2, v3

    goto :goto_38

    :cond_1f
    :goto_1f
    const-string/jumbo v3, "ro.boot.serialno"

    .line 1439
    invoke-static {v3, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1440
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2a} :catch_31
    .catchall {:try_start_7 .. :try_end_2a} :catchall_2f

    if-eqz v3, :cond_2d

    goto :goto_38

    :cond_2d
    move-object v2, p0

    goto :goto_38

    :catchall_2f
    move-exception p0

    goto :goto_3c

    :catch_31
    :try_start_31
    const-string p0, "AuditLogService"

    const-string v3, "could not get property"

    .line 1445
    invoke-static {p0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2f

    .line 1447
    :goto_38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :goto_3c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1448
    throw p0
.end method

.method public isAuditLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 386
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 387
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledInternal(I)Z

    move-result p0

    return p0
.end method

.method public isAuditLogEnabledAsUser(I)Z
    .registers 7

    .line 394
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 395
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 396
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 397
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne p1, v3, :cond_23

    return v4

    .line 401
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v3

    if-nez v3, :cond_32

    if-eqz v2, :cond_31

    if-ne v2, p1, :cond_a

    :cond_31
    return v4

    .line 407
    :cond_32
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkOwnContainerOrSelf(II)Z

    move-result v1

    if-eqz v1, :cond_a

    return v4

    :cond_39
    const/4 p0, 0x0

    return p0
.end method

.method public final isAuditLogEnabledInternal(I)Z
    .registers 2

    .line 421
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isAuditServiceRunning()Z
    .registers 1

    .line 431
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

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
    .registers 4

    .line 1332
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    if-eqz v0, :cond_25

    .line 1334
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v1

    .line 1335
    :try_start_11
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_22

    .line 1337
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    .line 1338
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    goto :goto_25

    :catchall_22
    move-exception p0

    .line 1336
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0

    :cond_25
    :goto_25
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 4

    .line 1314
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    if-eqz v0, :cond_25

    .line 1316
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v1

    .line 1317
    :try_start_11
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_22

    .line 1319
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    .line 1320
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    goto :goto_25

    :catchall_22
    move-exception p0

    .line 1318
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0

    :cond_25
    :goto_25
    return-void
.end method

.method public setAuditLogRules(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .registers 13

    .line 447
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    .line 448
    iget p1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 449
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/auditlog/AuditLogService;->validateRulesParameters(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 452
    :cond_e
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 454
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    if-eqz v0, :cond_2b

    const/4 v3, 0x1

    .line 456
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "auditLogEnabled"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v4

    const-string v5, ","

    if-eqz v4, :cond_6d

    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6d

    .line 460
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 461
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 464
    :cond_6d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_ad

    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_ad

    .line 466
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ad

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 467
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    .line 470
    :cond_ad
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "auditLogRuleOutcome"

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 471
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getSeverityRule()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "auditLogRuleSeverity"

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 472
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "auditLogRuleGroups"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "auditLogRuleUsers"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 476
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "adminUid"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 477
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "AUDITLOG"

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v9

    if-nez v9, :cond_103

    .line 479
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v2

    if-eqz v0, :cond_fc

    .line 480
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_fe

    :cond_fc
    const-string v3, ""

    :goto_fe
    const-string v4, "Cannot set filter on Database"

    .line 479
    invoke-virtual {v2, v4, v3}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_103
    if-eqz v0, :cond_108

    .line 484
    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/auditlog/Admin;->setAuditLogRulesInfo(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)V

    :cond_108
    if-eqz v9, :cond_11d

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 489
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 490
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const-string v6, "AuditLogService"

    const-string v7, "AuditLog filter rules has changed."

    move-object v0, p0

    .line 488
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_11d
    return v9
.end method

.method public final setAvailableSize(I)J
    .registers 13

    .line 682
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 683
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 685
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 686
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x5

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    .line 689
    div-long/2addr v0, v2

    const-wide/32 v2, 0xa00000

    cmp-long v2, v0, v2

    const-wide/32 v3, 0x3200000

    if-ltz v2, :cond_3b

    cmp-long v2, v0, v3

    if-gtz v2, :cond_3b

    .line 692
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "AUDITLOG"

    const-string v7, "auditLogBufferSize"

    move v5, p1

    move-wide v8, v0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result p0

    if-eqz p0, :cond_51

    goto :goto_53

    :cond_3b
    cmp-long v0, v0, v3

    if-ltz v0, :cond_51

    .line 698
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-wide/32 v9, 0x3200000

    const-string v7, "AUDITLOG"

    const-string v8, "auditLogBufferSize"

    move v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result p0

    if-eqz p0, :cond_51

    move-wide v0, v3

    goto :goto_53

    :cond_51
    const-wide/16 v0, -0x1

    :goto_53
    return-wide v0
.end method

.method public setCriticalLogSize(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_5d

    const/16 v1, 0x63

    if-le p2, v1, :cond_9

    goto :goto_5d

    .line 1147
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    .line 1148
    iget p1, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1149
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/auditlog/Admin;

    if-eqz v1, :cond_39

    .line 1152
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "AUDITLOG"

    const-string v4, "auditCriticalSize"

    invoke-virtual {v0, p1, v2, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1155
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v2

    .line 1156
    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Cannot set critcal log size on Databank"

    .line 1155
    invoke-virtual {v2, v5, v4}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    :cond_36
    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/auditlog/Admin;->setCriticalLogSize(I)V

    :cond_39
    if-eqz v0, :cond_5d

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 1163
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuditLog critical size has changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1164
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const-string v8, "AuditLogService"

    move-object v2, p0

    .line 1162
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_5d
    :goto_5d
    return v0
.end method

.method public setMaximumLogSize(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_5d

    const/16 v1, 0x63

    if-le p2, v1, :cond_9

    goto :goto_5d

    .line 1197
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    .line 1198
    iget p1, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1199
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/auditlog/Admin;

    if-eqz v1, :cond_39

    .line 1202
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "AUDITLOG"

    const-string v4, "auditMaximumSize"

    invoke-virtual {v0, p1, v2, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1205
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v2

    .line 1206
    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Cannot set maximum log size on databank"

    .line 1205
    invoke-virtual {v2, v5, v4}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    :cond_36
    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/auditlog/Admin;->setMaximumLogSize(I)V

    :cond_39
    if-eqz v0, :cond_5d

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 1213
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuditLog maximum size has changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1214
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const-string v8, "AuditLogService"

    move-object v2, p0

    .line 1212
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_5d
    :goto_5d
    return v0
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public final validateRulesParameters(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .registers 4

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 1416
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getSeverityRule()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_22

    .line 1417
    invoke-virtual {p1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getSeverityRule()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_13

    goto :goto_22

    .line 1420
    :cond_13
    invoke-virtual {p1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v0

    if-ltz v0, :cond_22

    .line 1421
    invoke-virtual {p1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_21

    goto :goto_22

    :cond_21
    return v1

    :cond_22
    :goto_22
    return p0
.end method
