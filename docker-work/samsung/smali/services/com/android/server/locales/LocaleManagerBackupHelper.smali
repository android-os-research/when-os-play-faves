.class public Lcom/android/server/locales/LocaleManagerBackupHelper;
.super Ljava/lang/Object;
.source "LocaleManagerBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;,
        Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;
    }
.end annotation


# static fields
.field public static final ATTR_CREATION_TIME_MILLIS:Ljava/lang/String; = "creationTimeMillis"

.field public static final ATTR_LOCALES:Ljava/lang/String; = "locales"

.field public static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "name"

.field public static final LOCALES_XML_TAG:Ljava/lang/String; = "locales"

.field public static final PACKAGE_XML_TAG:Ljava/lang/String; = "package"

.field public static final STAGE_DATA_RETENTION_PERIOD:Ljava/time/Duration;

.field public static final SYSTEM_BACKUP_PACKAGE_KEY:Ljava/lang/String; = "android"

.field public static final TAG:Ljava/lang/String; = "LocaleManagerBkpHelper"


# instance fields
.field public final mClock:Ljava/time/Clock;

.field public final mContext:Landroid/content/Context;

.field public final mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mStagedData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;",
            ">;"
        }
    .end annotation
.end field

.field public final mStagedDataLock:Ljava/lang/Object;

.field public final mUserMonitor:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmStagedDataLock(Lcom/android/server/locales/LocaleManagerBackupHelper;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedDataLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdeleteStagedDataLocked(Lcom/android/server/locales/LocaleManagerBackupHelper;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->deleteStagedDataLocked(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x3

    .line 76
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/locales/LocaleManagerBackupHelper;->STAGE_DATA_RETENTION_PERIOD:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locales/LocaleManagerService;Landroid/content/pm/PackageManager;Ljava/time/Clock;Landroid/util/SparseArray;Landroid/os/HandlerThread;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/locales/LocaleManagerService;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/time/Clock;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;",
            ">;",
            "Landroid/os/HandlerThread;",
            ")V"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedDataLock:Ljava/lang/Object;

    .line 100
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    .line 102
    iput-object p3, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 103
    iput-object p4, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mClock:Ljava/time/Clock;

    .line 104
    iput-object p5, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedData:Landroid/util/SparseArray;

    .line 106
    new-instance p2, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;-><init>(Lcom/android/server/locales/LocaleManagerBackupHelper;Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor-IA;)V

    iput-object p2, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mUserMonitor:Landroid/content/BroadcastReceiver;

    .line 107
    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    const-string p0, "android.intent.action.USER_REMOVED"

    .line 108
    invoke-virtual {p3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    sget-object p4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 110
    invoke-virtual {p6}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p5

    const/4 p6, 0x0

    move-object p0, p1

    move-object p1, p2

    move-object p2, p4

    move-object p4, p6

    .line 109
    invoke-virtual/range {p0 .. p5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/locales/LocaleManagerService;Landroid/content/pm/PackageManager;Landroid/os/HandlerThread;)V
    .registers 11

    .line 92
    iget-object v1, p1, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v4

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/locales/LocaleManagerBackupHelper;-><init>(Landroid/content/Context;Lcom/android/server/locales/LocaleManagerService;Landroid/content/pm/PackageManager;Ljava/time/Clock;Landroid/util/SparseArray;Landroid/os/HandlerThread;)V

    return-void
.end method

.method public static writeToXml(Ljava/io/OutputStream;Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 379
    :cond_7
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 380
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 381
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo p0, "locales"

    .line 382
    invoke-interface {v0, v1, p0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 384
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "package"

    .line 385
    invoke-interface {v0, v1, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "name"

    .line 386
    invoke-interface {v0, v1, v5, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 387
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v1, p0, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 388
    invoke-interface {v0, v1, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_28

    .line 391
    :cond_4d
    invoke-interface {v0, v1, p0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 392
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    return-void
.end method


# virtual methods
.method public final checkExistingLocalesAndApplyRestore(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    const-string v0, "LocaleManagerBkpHelper"

    .line 322
    :try_start_2
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object v1

    .line 325
    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_f

    if-nez v1, :cond_15

    return-void

    :catch_f
    move-exception v1

    const-string v2, "Could not check for current locales before restoring"

    .line 329
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    :cond_15
    :try_start_15
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    .line 335
    invoke-static {p2}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p2

    .line 334
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/locales/LocaleManagerService;->setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_1e} :catch_1f

    goto :goto_34

    :catch_1f
    move-exception p0

    .line 340
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not restore locales for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_34
    return-void
.end method

.method public final cleanStagedDataForOldEntriesLocked()V
    .registers 9

    const/4 v0, 0x0

    .line 178
    :goto_1
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedData:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 179
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 180
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedData:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;

    .line 181
    iget-wide v2, v2, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;->mCreationTimeMillis:J

    iget-object v4, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mClock:Ljava/time/Clock;

    .line 182
    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    sget-object v6, Lcom/android/server/locales/LocaleManagerBackupHelper;->STAGE_DATA_RETENTION_PERIOD:Ljava/time/Duration;

    invoke-virtual {v6}, Ljava/time/Duration;->toMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_2d

    .line 183
    invoke-virtual {p0, v1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->deleteStagedDataLocked(I)V

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_30
    return-void
.end method

.method public final deleteStagedDataLocked(I)V
    .registers 2

    .line 345
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedData:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final doLazyRestoreLocked(Ljava/lang/String;I)V
    .registers 8

    .line 438
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->isPackageInstalledForUser(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_25

    .line 439
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not installed for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Could not restore locales from stage data"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocaleManagerBkpHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 444
    :cond_25
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedData:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;

    .line 445
    iget-object v1, v0, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;->mPackageStates:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 446
    iget-object v3, v0, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;->mPackageStates:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 448
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 450
    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->checkExistingLocalesAndApplyRestore(Ljava/lang/String;Ljava/lang/String;I)V

    .line 453
    iget-object p1, v0, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;->mPackageStates:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object p1, v0, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;->mPackageStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_66

    .line 457
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedData:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_66
    return-void
.end method

.method public getBackupPayload(I)[B
    .registers 9

    .line 126
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerBackupHelper;->cleanStagedDataForOldEntriesLocked()V

    .line 128
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_78

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 131
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v2, 0x0

    .line 132
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v2

    .line 131
    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 134
    :try_start_28
    iget-object v3, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object v3

    .line 138
    invoke-virtual {v3}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 143
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3f} :catch_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_3f} :catch_40

    goto :goto_1c

    :catch_40
    move-exception v3

    const-string v4, "LocaleManagerBkpHelper"

    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when getting locales for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 151
    :cond_5a
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_62

    return-object p1

    .line 159
    :cond_62
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 161
    :try_start_67
    invoke-static {p0, v0}, Lcom/android/server/locales/LocaleManagerBackupHelper;->writeToXml(Ljava/io/OutputStream;Ljava/util/HashMap;)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6f

    .line 174
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_6f
    move-exception p0

    const-string v0, "LocaleManagerBkpHelper"

    const-string v1, "Could not write to xml for backup "

    .line 163
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    :catchall_78
    move-exception p0

    .line 128
    :try_start_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p0
.end method

.method public getUserMonitor()Landroid/content/BroadcastReceiver;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 115
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mUserMonitor:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public final isPackageInstalledForUser(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x0

    .line 303
    :try_start_1
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    const/4 p0, 0x0

    :goto_d
    if-eqz p0, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public notifyBackupManager()V
    .registers 1

    const-string p0, "android"

    .line 250
    invoke-static {p0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 5

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedDataLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_1a

    .line 261
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerBackupHelper;->cleanStagedDataForOldEntriesLocked()V

    .line 263
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 264
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedData:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 266
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->doLazyRestoreLocked(Ljava/lang/String;I)V

    .line 268
    :cond_15
    monitor-exit v0

    goto :goto_22

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    :try_start_19
    throw p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1a} :catch_1a

    :catch_1a
    move-exception p0

    const-string p1, "LocaleManagerBkpHelper"

    const-string p2, "Exception in onPackageAdded."

    .line 270
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    return-void
.end method

.method public onPackageDataCleared()V
    .registers 3

    .line 281
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerBackupHelper;->notifyBackupManager()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception p0

    const-string v0, "LocaleManagerBkpHelper"

    const-string v1, "Exception in onPackageDataCleared."

    .line 283
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method public onPackageRemoved()V
    .registers 3

    .line 294
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerBackupHelper;->notifyBackupManager()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception p0

    const-string v0, "LocaleManagerBkpHelper"

    const-string v1, "Exception in onPackageRemoved."

    .line 296
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method public final readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 353
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 354
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 355
    :cond_9
    :goto_9
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 356
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    .line 357
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "locales"

    .line 359
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 362
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_3b
    return-object p0
.end method

.method public stageAndApplyRestoredPayload([BI)V
    .registers 9

    if-nez p1, :cond_1a

    const-string p0, "LocaleManagerBkpHelper"

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "stageAndApplyRestoredPayload: no payload to restore for user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 201
    :cond_1a
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 206
    :try_start_1f
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object p1

    .line 207
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string/jumbo v0, "locales"

    .line 209
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_36} :catch_85
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_36} :catch_85

    .line 220
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_39
    new-instance v1, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;

    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;-><init>(JLjava/util/HashMap;)V

    .line 224
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 225
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 227
    invoke-virtual {p0, v3, p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->isPackageInstalledForUser(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 229
    invoke-virtual {p0, v3, v4, p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->checkExistingLocalesAndApplyRestore(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_51

    .line 232
    :cond_6d
    iget-object v5, v1, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;->mPackageStates:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_51

    .line 240
    :cond_73
    iget-object p1, v1, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;->mPackageStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_80

    .line 241
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedData:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    :cond_80
    monitor-exit v0

    return-void

    :catchall_82
    move-exception p0

    monitor-exit v0
    :try_end_84
    .catchall {:try_start_39 .. :try_end_84} :catchall_82

    throw p0

    :catch_85
    move-exception p0

    const-string p1, "LocaleManagerBkpHelper"

    const-string p2, "Could not parse payload "

    .line 212
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
