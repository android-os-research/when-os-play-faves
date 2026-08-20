.class public Lcom/android/server/wm/PackageConfigPersister;
.super Ljava/lang/Object;
.source "PackageConfigPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;,
        Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;,
        Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    }
.end annotation


# static fields
.field public static final ATTR_LOCALES:Ljava/lang/String; = "locale_list"

.field public static final ATTR_NIGHT_MODE:Ljava/lang/String; = "night_mode"

.field public static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final DEBUG:Z = false

.field public static final PACKAGE_DIRNAME:Ljava/lang/String; = "package_configs"

.field public static final SUFFIX_FILE_NAME:Ljava/lang/String; = "_config.xml"

.field public static final TAG:Ljava/lang/String; = "PackageConfigPersister"

.field public static final TAG_CONFIG:Ljava/lang/String; = "config"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mLock:Ljava/lang/Object;

.field public final mModified:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mPendingWrite:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;


# direct methods
.method public static synthetic $r8$lambda$1FsvPeLql26H1zSx-L2nbPpqZIs(Lcom/android/server/wm/PackageConfigPersister;Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->lambda$removeUser$0(Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D1tbRKzceFBuRbZaicI1Y6BTAH0(Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/PackageConfigPersister;->lambda$removePackage$1(Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/PackageConfigPersister;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingWrite(Lcom/android/server/wm/PackageConfigPersister;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremoveRecord(Lcom/android/server/wm/PackageConfigPersister;Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->removeRecord(Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/wm/PackageConfigPersister;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smgetUserConfigsDir(I)Ljava/io/File;
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/PackageConfigPersister;->getUserConfigsDir(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    .line 78
    iput-object p1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 79
    iput-object p2, p0, Lcom/android/server/wm/PackageConfigPersister;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method public static getUserConfigsDir(I)Ljava/io/File;
    .registers 3

    .line 74
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "package_configs"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$removePackage$1(Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;)Z
    .registers 4

    .line 281
    iget-object p1, p1, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget-object v0, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    if-ne v0, v1, :cond_10

    iget p1, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    iget p0, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    if-ne p1, p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private synthetic lambda$removeUser$0(Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V
    .registers 3

    .line 254
    iget-object p1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget p2, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->removePackage(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;I)V
    .registers 6

    const-string v0, "INSTALLED PACKAGES HAVING APP-SPECIFIC CONFIGURATIONS"

    .line 317
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current user ID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_80

    .line 323
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_80

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 324
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    PackageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "        NightMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "        Locales : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2e

    .line 330
    :cond_80
    monitor-exit v0

    return-void

    :catchall_82
    move-exception p0

    monitor-exit v0
    :try_end_84
    .catchall {:try_start_1c .. :try_end_84} :catchall_82

    throw p0
.end method

.method public findPackageConfiguration(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;
    .registers 6

    .line 300
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object p0

    if-nez p0, :cond_2c

    .line 303
    sget-object p0, Lcom/android/server/wm/PackageConfigPersister;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App-specific configuration not found for packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and userId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 305
    monitor-exit v0

    return-object p0

    .line 307
    :cond_2c
    new-instance p1, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    iget-object p2, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    invoke-direct {p1, p2, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;-><init>(Ljava/lang/Integer;Landroid/os/LocaleList;)V

    monitor-exit v0

    return-object p1

    :catchall_37
    move-exception p0

    .line 309
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public final findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ">;>;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;"
        }
    .end annotation

    .line 374
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 378
    :cond_a
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    return-object p0
.end method

.method public final findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ">;>;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;"
        }
    .end annotation

    .line 358
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-nez p0, :cond_10

    .line 360
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 361
    invoke-virtual {p1, p3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 363
    :cond_10
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    if-eqz p1, :cond_19

    return-object p1

    .line 367
    :cond_19
    new-instance p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    invoke-direct {p1, p2, p3}, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;-><init>(Ljava/lang/String;I)V

    .line 368
    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public loadUserPackages(I)V
    .registers 18
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 84
    iget-object v2, v1, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 85
    :try_start_5
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/PackageConfigPersister;->getUserConfigsDir(I)Ljava/io/File;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_27

    .line 88
    sget-object v1, Lcom/android/server/wm/PackageConfigPersister;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadPackages: empty list files from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    monitor-exit v2

    return-void

    :cond_27
    const/4 v5, 0x0

    .line 92
    :goto_28
    array-length v0, v3

    if-ge v5, v0, :cond_107

    .line 93
    aget-object v0, v3, v5

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_config.xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_109

    if-nez v6, :cond_3d

    move/from16 v4, p1

    goto/16 :goto_103

    .line 102
    :cond_3d
    :try_start_3d
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_42
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_42} :catch_fd
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_42} :catch_f6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d .. :try_end_42} :catch_ef
    .catchall {:try_start_3d .. :try_end_42} :catchall_109

    .line 103
    :try_start_42
    invoke-static {v6}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    const/4 v7, 0x0

    move-object v8, v7

    move-object v9, v8

    .line 108
    :goto_49
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_c4

    const/4 v12, 0x3

    if-eq v10, v12, :cond_c4

    .line 110
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    if-ne v10, v13, :cond_c0

    const-string v10, "config"

    .line 115
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c0

    .line 116
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getAttributeCount()I

    move-result v10

    sub-int/2addr v10, v11

    :goto_67
    if-ltz v10, :cond_c0

    .line 118
    invoke-interface {v0, v10}, Landroid/util/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    .line 119
    invoke-interface {v0, v10}, Landroid/util/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    .line 120
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v15

    const v4, -0x6fe3451c

    if-eq v15, v4, :cond_99

    const v4, -0x23dea296

    if-eq v15, v4, :cond_8f

    const v4, 0x72044363

    if-eq v15, v4, :cond_85

    goto :goto_a4

    :cond_85
    const-string v4, "locale_list"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a4

    move v4, v13

    goto :goto_a5

    :cond_8f
    const-string v4, "night_mode"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a4

    move v4, v11

    goto :goto_a5

    :cond_99
    const-string/jumbo v4, "package_name"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a4

    const/4 v4, 0x0

    goto :goto_a5

    :cond_a4
    :goto_a4
    const/4 v4, -0x1

    :goto_a5
    if-eqz v4, :cond_bc

    if-eq v4, v11, :cond_b2

    if-eq v4, v13, :cond_ac

    goto :goto_bd

    .line 128
    :cond_ac
    invoke-static {v14}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v4

    move-object v9, v4

    goto :goto_bd

    .line 125
    :cond_b2
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v8, v4

    goto :goto_bd

    :cond_bc
    move-object v7, v14

    :goto_bd
    add-int/lit8 v10, v10, -0x1

    goto :goto_67

    .line 134
    :cond_c0
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_49

    :cond_c4
    if-eqz v7, :cond_d5

    .line 137
    iget-object v0, v1, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;
    :try_end_c8
    .catchall {:try_start_42 .. :try_end_c8} :catchall_db

    move/from16 v4, p1

    .line 138
    :try_start_ca
    invoke-virtual {v1, v0, v7, v4}, Lcom/android/server/wm/PackageConfigPersister;->findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v0

    .line 139
    iput-object v8, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    .line 140
    iput-object v9, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;
    :try_end_d2
    .catchall {:try_start_ca .. :try_end_d2} :catchall_d3

    goto :goto_d7

    :catchall_d3
    move-exception v0

    goto :goto_de

    :cond_d5
    move/from16 v4, p1

    .line 145
    :goto_d7
    :try_start_d7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_da
    .catch Ljava/io/FileNotFoundException; {:try_start_d7 .. :try_end_da} :catch_ed
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_eb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d7 .. :try_end_da} :catch_e9
    .catchall {:try_start_d7 .. :try_end_da} :catchall_109

    goto :goto_103

    :catchall_db
    move-exception v0

    move/from16 v4, p1

    :goto_de
    move-object v7, v0

    .line 102
    :try_start_df
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_e3

    goto :goto_e8

    :catchall_e3
    move-exception v0

    move-object v6, v0

    :try_start_e5
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e8
    throw v7
    :try_end_e9
    .catch Ljava/io/FileNotFoundException; {:try_start_e5 .. :try_end_e9} :catch_ed
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e9} :catch_eb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e5 .. :try_end_e9} :catch_e9
    .catchall {:try_start_e5 .. :try_end_e9} :catchall_109

    :catch_e9
    move-exception v0

    goto :goto_f2

    :catch_eb
    move-exception v0

    goto :goto_f9

    :catch_ed
    move-exception v0

    goto :goto_100

    :catch_ef
    move-exception v0

    move/from16 v4, p1

    .line 150
    :goto_f2
    :try_start_f2
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_103

    :catch_f6
    move-exception v0

    move/from16 v4, p1

    .line 148
    :goto_f9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_103

    :catch_fd
    move-exception v0

    move/from16 v4, p1

    .line 146
    :goto_100
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_103
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_28

    .line 153
    :cond_107
    monitor-exit v2

    return-void

    :catchall_109
    move-exception v0

    monitor-exit v2
    :try_end_10b
    .catchall {:try_start_f2 .. :try_end_10b} :catchall_109

    throw v0
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->removePackage(Ljava/lang/String;I)V

    .line 270
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public onPackageUninstall(Ljava/lang/String;I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->removePackage(Ljava/lang/String;I)V

    .line 263
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final removePackage(Ljava/lang/String;I)V
    .registers 6

    .line 277
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 279
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/PackageConfigPersister;->removeRecord(Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    .line 280
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v2, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    const-class v0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/PersisterQueue;->removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V

    .line 286
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 288
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/PackageConfigPersister;->removeRecord(Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    .line 289
    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v0, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;

    invoke-direct {v0, p2, p1}, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    :cond_31
    return-void
.end method

.method public final removeRecord(Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ">;>;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ")V"
        }
    .end annotation

    .line 383
    iget p0, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_f

    .line 385
    iget-object p1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method public removeUser(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 247
    iget-object v2, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz v1, :cond_1b

    .line 248
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_24

    :cond_1b
    if-eqz p1, :cond_33

    .line 249
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_24

    goto :goto_33

    .line 252
    :cond_24
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 253
    new-instance v1, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/PackageConfigPersister;)V

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 256
    monitor-exit v0

    return-void

    .line 250
    :cond_33
    :goto_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    .line 256
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public updateConfigIfNeeded(Lcom/android/server/wm/ConfigurationContainer;ILjava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, p3, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object p2

    if-eqz p2, :cond_20

    .line 166
    iget-object p3, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    iget-object p2, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 168
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    .line 167
    invoke-static {p2, p0}, Lcom/android/server/wm/LocaleOverlayHelper;->combineLocalesIfOverlayExists(Landroid/os/LocaleList;Landroid/os/LocaleList;)Landroid/os/LocaleList;

    move-result-object p0

    .line 166
    invoke-virtual {p1, p3, p0}, Lcom/android/server/wm/ConfigurationContainer;->applyAppSpecificConfig(Ljava/lang/Integer;Landroid/os/LocaleList;)Z

    .line 170
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public updateFromImpl(Ljava/lang/String;ILcom/android/server/wm/PackageConfigurationUpdaterImpl;)Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    move v4, v2

    goto :goto_16

    .line 187
    :cond_f
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v1

    move v4, v3

    .line 189
    :goto_16
    invoke-virtual {p3}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->getNightMode()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5, v1}, Lcom/android/server/wm/PackageConfigPersister;->updateNightMode(Ljava/lang/Integer;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z

    move-result v5

    .line 190
    invoke-virtual {p3}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->getLocales()Landroid/os/LocaleList;

    move-result-object p3

    invoke-virtual {p0, p3, v1}, Lcom/android/server/wm/PackageConfigPersister;->updateLocales(Landroid/os/LocaleList;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z

    move-result p3

    .line 192
    iget-object v6, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    if-eqz v6, :cond_30

    invoke-virtual {v1}, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->isResetNightMode()Z

    move-result v6

    if-eqz v6, :cond_3b

    :cond_30
    iget-object v6, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    if-eqz v6, :cond_75

    .line 193
    invoke-virtual {v6}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3b

    goto :goto_75

    :cond_3b
    if-nez v5, :cond_41

    if-nez p3, :cond_41

    .line 201
    monitor-exit v0

    return v3

    .line 203
    :cond_41
    iget-object p1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    iget-object p2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget p3, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    .line 204
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object p1

    if-nez p1, :cond_57

    .line 207
    iget-object p1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    iget-object p2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget p3, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/PackageConfigPersister;->findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object p1

    .line 213
    :cond_57
    iget-object p2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/PackageConfigPersister;->updateNightMode(Ljava/lang/Integer;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z

    move-result p2

    if-nez p2, :cond_69

    iget-object p2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    .line 214
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/PackageConfigPersister;->updateLocales(Landroid/os/LocaleList;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z

    move-result p2

    if-nez p2, :cond_69

    .line 215
    monitor-exit v0

    return v3

    .line 221
    :cond_69
    iget-object p2, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance p3, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;

    invoke-direct {p3, p0, p1}, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;-><init>(Lcom/android/server/wm/PackageConfigPersister;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    invoke-virtual {p2, p3, v3}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 222
    monitor-exit v0

    return v2

    .line 195
    :cond_75
    :goto_75
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->removePackage(Ljava/lang/String;I)V

    .line 199
    monitor-exit v0

    return v4

    :catchall_7a
    move-exception p0

    .line 224
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_3 .. :try_end_7c} :catchall_7a

    throw p0
.end method

.method public final updateLocales(Landroid/os/LocaleList;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z
    .registers 3

    if-eqz p1, :cond_f

    .line 236
    iget-object p0, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, p0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_f

    .line 239
    :cond_b
    iput-object p1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    const/4 p0, 0x1

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x0

    return p0
.end method

.method public final updateNightMode(Ljava/lang/Integer;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z
    .registers 3

    if-eqz p1, :cond_f

    .line 228
    iget-object p0, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_f

    .line 231
    :cond_b
    iput-object p1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    const/4 p0, 0x1

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x0

    return p0
.end method
