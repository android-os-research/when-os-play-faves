.class public final Lcom/android/server/om/OverlayManagerServiceImpl;
.super Ljava/lang/Object;
.source "OverlayManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;,
        Lcom/android/server/om/OverlayManagerServiceImpl$FakeDisableProgressThread;,
        Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayCallback;,
        Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayChangeListener;,
        Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    }
.end annotation


# static fields
.field public static final FILE_SIZE_TO_REMOVE:J = 0x3d090L

.field public static final FLAG_GET_ENABLED_ALL_OVERLAYS:I = 0x0

.field public static final FLAG_GET_ENABLED_GOOGLE_OVERLAYS:I = 0x1

.field public static final FLAG_GET_ENABLED_GOOGLE_OVERLAYS_EXCEPT_SEMWT:I = 0x7

.field public static final FLAG_GET_ENABLED_GOOGLE_OVERLAYS_FOR_G:I = 0x6

.field public static final FLAG_GET_ENABLED_GOOGLE_OVERLAYS_FOR_S:I = 0x5

.field public static final FLAG_GET_ENABLED_SAMSUNGTHEME_OVERLAYS:I = 0x2

.field public static final FLAG_GET_ENABLED_SAMSUNGTHEME_OVERLAYS_EXCEPT_SEMWT:I = 0x4

.field public static final FLAG_GET_ENABLED_SAMSUNGTHEME_OVERLAYS_EXCEPT_THEMEPARK:I = 0x3

.field public static final FLAG_OVERLAY_IS_BEING_REPLACED:I = 0x2

.field public static final FLAG_TARGET_IS_BEING_REPLACED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOG_FILE_PATH:Ljava/lang/String; = "lom_log.txt"

.field public static final LOG_MAX_SIZE:I = 0x100000


# instance fields
.field public final mAddedOverlaysList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mDefaultOverlays:[Ljava/lang/String;

.field public final mDeletedOverlaysList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDisablePackageCount:I

.field public mDisablePackageNamesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mEnablePackageNamesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mIdmapManager:Lcom/android/server/om/IdmapManager;

.field public final mListener:Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayChangeListener;

.field public final mLock:Ljava/lang/Object;

.field public final mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

.field public final mPackageManager:Lcom/android/server/om/PackageManagerHelper;

.field public mReapplyCallback:Landroid/content/om/ISamsungOverlayCallback;

.field public mReapplyDisableObserver:Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;

.field public final mSettings:Lcom/android/server/om/OverlayManagerSettings;


# direct methods
.method public static synthetic $r8$lambda$8yos8yhpCEecfI-CziF6QMWuQgw(ILjava/util/function/Predicate;Landroid/content/om/OverlayInfo;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->lambda$removeOverlaysForUser$2(ILjava/util/function/Predicate;Landroid/content/om/OverlayInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DTymDZWSLGiNkG41XwScFnh5PO0(Ljava/lang/String;Landroid/content/om/OverlayInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->lambda$onPackageRemoved$1(Ljava/lang/String;Landroid/content/om/OverlayInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_8ENp_cbk3eooiguV6y_5dFg4XQ(Landroid/util/ArrayMap;Landroid/content/om/OverlayInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->lambda$updateOverlaysForUser$0(Landroid/util/ArrayMap;Landroid/content/om/OverlayInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pTk2x4mFVSq5-zXQDZbmNB3iaNE(Ljava/util/Set;Landroid/os/FabricatedOverlayInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->lambda$getFabricatedOverlayInfos$3(Ljava/util/Set;Landroid/os/FabricatedOverlayInfo;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisablePackageCount(Lcom/android/server/om/OverlayManagerServiceImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDisablePackageCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisablePackageNamesList(Lcom/android/server/om/OverlayManagerServiceImpl;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDisablePackageNamesList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnablePackageNamesList(Lcom/android/server/om/OverlayManagerServiceImpl;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mEnablePackageNamesList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerServiceImpl;)Lcom/android/server/om/PackageManagerHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDisablePackageCount(Lcom/android/server/om/OverlayManagerServiceImpl;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDisablePackageCount:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/om/PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/content/om/OverlayConfig;[Ljava/lang/String;)V
    .registers 7

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDisablePackageCount:I

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDeletedOverlaysList:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mAddedOverlaysList:Ljava/util/List;

    .line 215
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 216
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 217
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 218
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 219
    iput-object p5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 221
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayChangeListener;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/om/PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/content/om/OverlayConfig;[Ljava/lang/String;Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayChangeListener;)V
    .registers 8

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDisablePackageCount:I

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDeletedOverlaysList:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mAddedOverlaysList:Ljava/util/List;

    .line 232
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 233
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 234
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 235
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 236
    iput-object p5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    .line 238
    iput-object p6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayChangeListener;

    .line 239
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;-><init>(Lcom/android/server/om/OverlayManagerServiceImpl;Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver-IA;)V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mReapplyDisableObserver:Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;

    return-void
.end method

.method public static dumpLOMCriticalInfo(Ljava/io/PrintWriter;)V
    .registers 7

    const-string v0, "LocaleOverlayManager Critical Info Dump:"

    .line 1245
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "lom_log.txt"

    .line 1246
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->getDumpFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1247
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    sub-long/2addr v1, v3

    .line 1248
    :try_start_14
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1e} :catch_41

    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-lez v0, :cond_2a

    .line 1250
    :try_start_24
    invoke-virtual {v3, v1, v2}, Ljava/io/BufferedReader;->skip(J)J

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_38

    .line 1253
    :cond_2a
    :goto_2a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 1254
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_28

    goto :goto_2a

    .line 1256
    :cond_34
    :try_start_34
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_41

    goto :goto_41

    .line 1248
    :goto_38
    :try_start_38
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v0

    :try_start_3d
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw p0
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_41} :catch_41

    :catch_41
    :goto_41
    return-void
.end method

.method public static getDumpFile(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 1299
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1300
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "log"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1301
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$getFabricatedOverlayInfos$3(Ljava/util/Set;Landroid/os/FabricatedOverlayInfo;)Z
    .registers 2

    .line 805
    iget-object p1, p1, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$onPackageRemoved$1(Ljava/lang/String;Landroid/content/om/OverlayInfo;)Z
    .registers 2

    .line 413
    iget-object p1, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$removeOverlaysForUser$2(ILjava/util/function/Predicate;Landroid/content/om/OverlayInfo;)Z
    .registers 4

    .line 420
    iget v0, p2, Landroid/content/om/OverlayInfo;->userId:I

    if-ne p0, v0, :cond_c

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static synthetic lambda$updateOverlaysForUser$0(Landroid/util/ArrayMap;Landroid/content/om/OverlayInfo;)Z
    .registers 2

    .line 291
    iget-object p1, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static logCriticalInfo(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "lom_log.txt"

    .line 1263
    invoke-static {v0, p0}, Lcom/android/server/om/OverlayManagerServiceImpl;->logToFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1267
    invoke-static {p0}, Lcom/android/server/om/OverlayManagerServiceImpl;->getDumpFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_75

    .line 1268
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    cmp-long v2, v2, v4

    if-lez v2, :cond_75

    .line 1269
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1271
    invoke-static {p0}, Lcom/android/server/om/OverlayManagerServiceImpl;->getDumpFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1273
    :try_start_33
    new-instance p0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {p0, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3d} :catch_75

    .line 1274
    :try_start_3d
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_6b

    const-wide/32 v4, 0x3d090

    .line 1275
    :try_start_4a
    invoke-virtual {v3, v4, v5}, Ljava/io/BufferedReader;->skip(J)J

    .line 1277
    :goto_4d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_57

    .line 1278
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4d

    .line 1280
    :cond_57
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5a
    .catchall {:try_start_4a .. :try_end_5a} :catchall_61

    .line 1281
    :try_start_5a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_6b

    :try_start_5d
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_75

    goto :goto_75

    :catchall_61
    move-exception v2

    .line 1273
    :try_start_62
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_6a

    :catchall_66
    move-exception v3

    :try_start_67
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6a
    throw v2
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception v2

    :try_start_6c
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    goto :goto_74

    :catchall_70
    move-exception p0

    :try_start_71
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_74
    throw v2
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_75} :catch_75

    .line 1287
    :catch_75
    :cond_75
    :goto_75
    :try_start_75
    new-instance p0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {p0, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7f} :catch_c3

    .line 1288
    :try_start_7f
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1289
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1291
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1fc

    const/4 v1, -0x1

    invoke-static {p1, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_b5
    .catchall {:try_start_7f .. :try_end_b5} :catchall_b9

    .line 1293
    :try_start_b5
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_c3

    goto :goto_c3

    :catchall_b9
    move-exception p1

    .line 1287
    :try_start_ba
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_be

    goto :goto_c2

    :catchall_be
    move-exception p0

    :try_start_bf
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c2
    throw p1
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c3} :catch_c3

    :catch_c3
    :goto_c3
    return-void
.end method


# virtual methods
.method public applySamsungConfigChangeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/om/ISamsungOverlayCallback;",
            ")Z"
        }
    .end annotation

    .line 1356
    new-instance v6, Ljava/io/File;

    const-string v0, "/data/overlays/current_locale_apks/files"

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/om/OverlayManagerServiceImpl;->applySamsungThemeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;ZLjava/io/File;)Z

    move-result p0

    return p0
.end method

.method public applySamsungThemeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;Z)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/om/ISamsungOverlayCallback;",
            "Z)Z"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 1365
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/om/OverlayManagerServiceImpl;->applySamsungThemeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;ZLjava/io/File;)Z

    move-result p0

    return p0
.end method

.method public applySamsungThemeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;ZLjava/io/File;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/om/ISamsungOverlayCallback;",
            "Z",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    const-string v0, "OverlayManager"

    .line 1374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applySamsungThemeOverlays packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reapply = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OverlayManager"

    const-string v1, "Current Overlays "

    .line 1376
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p6, :cond_3f

    .line 1382
    new-instance p6, Ljava/io/File;

    const-string v0, "/data/overlays/currentstyle"

    invoke-direct {p6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_3f
    move-object v2, p6

    .line 1384
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p6

    if-eqz p6, :cond_55

    .line 1385
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p6

    if-nez p6, :cond_55

    const-string p0, "OverlayManager"

    const-string p1, "[applyOverlays] List of overlayFiles is null"

    .line 1387
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1392
    :cond_55
    iget-object p6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p6

    .line 1393
    :try_start_58
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDeletedOverlaysList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_7e

    .line 1395
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDeletedOverlaysList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v0, "OverlayManager"

    .line 1396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[applyOverlays] mDeletedOverlaysList size "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1396
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :cond_7e
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mAddedOverlaysList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_a4

    .line 1401
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mAddedOverlaysList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v0, "OverlayManager"

    .line 1402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[applyOverlays] mAddedOverlaysList size "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1402
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    :cond_a4
    monitor-exit p6
    :try_end_a5
    .catchall {:try_start_58 .. :try_end_a5} :catchall_e4

    if-eqz p5, :cond_d5

    .line 1408
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDisablePackageNamesList:Ljava/util/List;

    .line 1409
    invoke-interface {p5, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1410
    iget-object p5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDisablePackageNamesList:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    iput p5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDisablePackageCount:I

    .line 1411
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mEnablePackageNamesList:Ljava/util/List;

    .line 1412
    invoke-interface {p5, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1413
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mReapplyCallback:Landroid/content/om/ISamsungOverlayCallback;

    .line 1414
    new-instance v6, Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayCallback;

    iget-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mReapplyDisableObserver:Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;

    invoke-direct {v6, p0, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayCallback;-><init>(Lcom/android/server/om/OverlayManagerServiceImpl;Landroid/content/om/ISamsungOverlayCallback;)V

    .line 1416
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    const/4 v4, 0x0

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/server/om/PackageManagerHelper;->parseSamsungThemeOverlayPackages(Ljava/io/File;Ljava/util/List;Ljava/util/List;ILandroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;)V

    goto :goto_e2

    .line 1420
    :cond_d5
    new-instance v6, Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayCallback;

    invoke-direct {v6, p0, p4}, Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayCallback;-><init>(Lcom/android/server/om/OverlayManagerServiceImpl;Landroid/content/om/ISamsungOverlayCallback;)V

    .line 1422
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/server/om/PackageManagerHelper;->parseSamsungThemeOverlayPackages(Ljava/io/File;Ljava/util/List;Ljava/util/List;ILandroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;)V

    :goto_e2
    const/4 p0, 0x1

    return p0

    :catchall_e4
    move-exception p0

    .line 1405
    :try_start_e5
    monitor-exit p6
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e4

    throw p0
.end method

.method public final calculateNewState(Landroid/content/om/OverlayInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6

    const/4 p0, 0x4

    return p0

    :cond_6
    const/4 v0, 0x2

    and-int/2addr p4, v0

    if-eqz p4, :cond_c

    const/4 p0, 0x5

    return p0

    :cond_c
    if-nez p2, :cond_10

    const/4 p0, 0x0

    return p0

    .line 1197
    :cond_10
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {p2, p1}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/om/OverlayInfo;)Z

    move-result p2

    if-nez p2, :cond_1a

    const/4 p0, 0x1

    return p0

    .line 1201
    :cond_1a
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getEnabled(Landroid/content/om/OverlayIdentifier;I)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 v0, 0x3

    :cond_27
    return v0
.end method

.method public cleanStaleResourceCache()V
    .registers 5

    .line 787
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getAllBaseCodePaths()Ljava/util/Set;

    move-result-object v0

    .line 788
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v1}, Lcom/android/server/om/IdmapManager;->getFabricatedOverlayInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/FabricatedOverlayInfo;

    .line 789
    iget-object v3, v2, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 790
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget-object v2, v2, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/server/om/IdmapManager;->deleteFabricatedOverlay(Ljava/lang/String;)Z

    goto :goto_10

    :cond_2c
    return-void
.end method

.method public deleteSamsungThemeOverlays(Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteSamsungThemeOverlays "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_22
    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1481
    new-instance v2, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v2, v0}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 1483
    :try_start_33
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, v2, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v3

    .line 1484
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, v2, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    if-nez p2, :cond_22

    .line 1486
    invoke-virtual {p0, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    :try_end_43
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_33 .. :try_end_43} :catch_44

    goto :goto_22

    .line 1489
    :catch_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overlay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was not found in settings"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_5e
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V
    .registers 9

    .line 897
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 898
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 899
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getOverlayName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 902
    new-instance v3, Landroid/util/Pair;

    iget-object v2, v2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-direct {v3, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_25

    :cond_24
    const/4 v3, 0x0

    .line 907
    :goto_25
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 910
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getField()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_90

    if-eqz v3, :cond_37

    .line 912
    invoke-static {v3}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_3d

    :cond_37
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getAllIdentifiersAndBaseCodePaths()Ljava/util/Set;

    move-result-object v0

    .line 913
    :goto_3d
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 914
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IDMAP OF "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 915
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/om/IdmapManager;->dumpIdmap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_73

    .line 917
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_41

    .line 919
    :cond_73
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v4, v2, v1}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v2

    if-eqz v2, :cond_8a

    .line 920
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v4, v2}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/om/OverlayInfo;)Z

    move-result v2

    if-nez v2, :cond_8a

    const-string v2, "<missing idmap>"

    goto :goto_8c

    :cond_8a
    const-string v2, "<internal error>"

    :goto_8c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_41

    :cond_90
    if-nez v3, :cond_ae

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default overlays: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    const-string v2, ";"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 932
    :cond_ae
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_b9

    .line 933
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-virtual {p0, p1}, Lcom/android/internal/content/om/OverlayConfig;->dump(Ljava/io/PrintWriter;)V

    .line 935
    :cond_b9
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->dumpLOMCriticalInfo(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getDefaultOverlayPackages()[Ljava/lang/String;
    .registers 1

    .line 939
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    return-object p0
.end method

.method public getEnabledOverlayPaths(Ljava/lang/String;I)Landroid/content/pm/overlay/OverlayPaths;
    .registers 4

    const/4 v0, 0x0

    .line 955
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPaths(Ljava/lang/String;II)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledOverlayPaths(Ljava/lang/String;II)Landroid/content/pm/overlay/OverlayPaths;
    .registers 10

    .line 961
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 963
    new-instance p1, Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-direct {p1}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    .line 965
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 968
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_114

    .line 970
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayInfo;

    .line 971
    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_25

    goto/16 :goto_110

    :cond_25
    const-string v3, "com.samsung.themedesigner.OV"

    if-eqz p3, :cond_ed

    const/4 v4, 0x2

    if-ne p3, v4, :cond_46

    .line 977
    iget-boolean v4, v2, Landroid/content/om/OverlayInfo;->mIsSamsungTheme:Z

    if-eqz v4, :cond_110

    .line 979
    iget-object v4, v2, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 980
    iget-object v2, v2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_110

    .line 982
    :cond_3f
    iget-object v2, v2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto/16 :goto_110

    :cond_46
    const/4 v4, 0x1

    if-ne p3, v4, :cond_61

    .line 986
    iget-boolean v3, v2, Landroid/content/om/OverlayInfo;->mIsSamsungTheme:Z

    if-nez v3, :cond_110

    .line 987
    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->isFabricated()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 988
    iget-object v2, v2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addNonApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto/16 :goto_110

    .line 990
    :cond_5a
    iget-object v2, v2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto/16 :goto_110

    :cond_61
    const/4 v4, 0x3

    if-ne p3, v4, :cond_77

    .line 995
    iget-boolean v4, v2, Landroid/content/om/OverlayInfo;->mIsSamsungTheme:Z

    if-eqz v4, :cond_110

    iget-object v4, v2, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_110

    .line 997
    iget-object v2, v2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto/16 :goto_110

    :cond_77
    const/4 v3, 0x4

    const-string v4, "/data/resource-cache/android-SemWT"

    if-ne p3, v3, :cond_8b

    .line 1003
    iget-object v3, v2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_110

    .line 1004
    iget-object v2, v2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto/16 :goto_110

    :cond_8b
    const/4 v3, 0x5

    const/4 v5, 0x6

    if-eq p3, v3, :cond_a8

    if-ne p3, v5, :cond_92

    goto :goto_a8

    :cond_92
    const/4 v3, 0x7

    if-ne p3, v3, :cond_110

    .line 1027
    iget-boolean v3, v2, Landroid/content/om/OverlayInfo;->mIsSamsungTheme:Z

    if-nez v3, :cond_110

    iget-object v3, v2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_110

    .line 1028
    iget-object v2, v2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto/16 :goto_110

    .line 1007
    :cond_a8
    :goto_a8
    iget-boolean v4, v2, Landroid/content/om/OverlayInfo;->mIsSamsungTheme:Z

    if-nez v4, :cond_110

    .line 1008
    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->isFabricated()Z

    move-result v4

    if-eqz v4, :cond_e7

    .line 1009
    iget-object v4, v2, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    if-eqz v4, :cond_e1

    if-ne p3, v3, :cond_c1

    const-string v3, "SemWT_G_MonetPalette"

    .line 1010
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c1

    goto :goto_110

    :cond_c1
    if-ne p3, v5, :cond_ce

    .line 1012
    iget-object v3, v2, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    const-string v4, "SemWT_MonetPalette"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ce

    goto :goto_110

    :cond_ce
    if-ne p3, v5, :cond_db

    .line 1014
    iget-object v3, v2, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    const-string v4, "SemWT_android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_db

    goto :goto_110

    .line 1017
    :cond_db
    iget-object v2, v2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addNonApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_110

    .line 1020
    :cond_e1
    iget-object v2, v2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addNonApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_110

    .line 1023
    :cond_e7
    iget-object v2, v2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_110

    .line 1034
    :cond_ed
    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->isFabricated()Z

    move-result v4

    if-eqz v4, :cond_f9

    .line 1035
    iget-object v2, v2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addNonApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_110

    .line 1038
    :cond_f9
    iget-boolean v4, v2, Landroid/content/om/OverlayInfo;->mIsSamsungTheme:Z

    if-eqz v4, :cond_10b

    iget-object v4, v2, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 1040
    iget-object v2, v2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_110

    .line 1042
    :cond_10b
    iget-object v2, v2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    :cond_110
    :goto_110
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_15

    .line 1049
    :cond_114
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_118
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_128

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1050
    invoke-virtual {p1, p2}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_118

    .line 1053
    :cond_128
    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object p0

    return-object p0
.end method

.method public final getFabricatedOverlayInfos()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/FabricatedOverlayInfo;",
            ">;"
        }
    .end annotation

    .line 801
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getAllBaseCodePaths()Ljava/util/Set;

    move-result-object v0

    .line 803
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 804
    invoke-virtual {p0}, Lcom/android/server/om/IdmapManager;->getFabricatedOverlayInfos()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 805
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(Ljava/util/Set;)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    return-object v1
.end method

.method public getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;
    .registers 3

    .line 597
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object p0
    :try_end_6
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 605
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getOverlaysForUser(I)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    .line 609
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageConfiguredPriority(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)I
    .registers 2

    .line 816
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/content/om/OverlayConfig;->getPriority(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final isPackageConfiguredEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 2

    .line 821
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/content/om/OverlayConfig;->isEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isPackageConfiguredMutable(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 2

    .line 811
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/content/om/OverlayConfig;->isMutable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final mustReinitializeOverlay(Landroid/os/FabricatedOverlayInfo;Landroid/content/om/OverlayInfo;)Z
    .registers 5

    const/4 p0, 0x1

    if-nez p2, :cond_4

    return p0

    .line 201
    :cond_4
    iget-object v0, p1, Landroid/os/FabricatedOverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return p0

    .line 204
    :cond_f
    iget-object p1, p1, Landroid/os/FabricatedOverlayInfo;->targetOverlayable:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final mustReinitializeOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/om/OverlayInfo;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p2, :cond_4

    return v0

    .line 175
    :cond_4
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v0

    .line 178
    :cond_11
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v0

    .line 182
    :cond_1e
    iget-boolean v1, p2, Landroid/content/om/OverlayInfo;->isFabricated:Z

    if-eqz v1, :cond_23

    return v0

    .line 185
    :cond_23
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v1

    .line 186
    iget-boolean v2, p2, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eq v1, v2, :cond_2c

    return v0

    :cond_2c
    if-nez v1, :cond_39

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result p0

    invoke-virtual {p2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result p1

    if-eq p0, p1, :cond_39

    return v0

    :cond_39
    const/4 p0, 0x0

    return p0
.end method

.method public onPackageAdded(Ljava/lang/String;I)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 377
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 379
    new-instance v1, Lcom/android/server/om/PackageAndUser;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 380
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public onPackageChanged(Ljava/lang/String;I)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 388
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(Ljava/lang/String;IIZ)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageRemoved pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    .line 409
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForTarget(Ljava/lang/String;IIZZ)Ljava/util/Set;

    move-result-object v0

    .line 412
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0, v1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeOverlaysForUser(Ljava/util/function/Predicate;I)Ljava/util/Set;

    move-result-object p0

    .line 412
    invoke-static {v0, p0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public onPackageReplaced(Ljava/lang/String;I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 400
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public onPackageReplacing(Ljava/lang/String;I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 394
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public onSamsungOverlayPackageAdded(Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;Ljava/lang/String;)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v14, p2

    const-string v2, "OverlayManager"

    .line 1498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSamsungOverlayPackageAdded packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "zipped-overlay"

    move-object/from16 v15, p4

    .line 1500
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1502
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    const/4 v13, 0x0

    if-nez v3, :cond_3a

    if-eqz v2, :cond_38

    goto :goto_3a

    :cond_38
    move v2, v14

    goto :goto_3b

    :cond_3a
    :goto_3a
    move v2, v13

    .line 1504
    :goto_3b
    iget-object v3, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v3, v1, v2}, Lcom/android/server/om/PackageManagerHelper;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v12

    if-nez v12, :cond_60

    const-string v0, "OverlayManager"

    .line 1507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "overlay package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was added, but couldn\'t be found"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_60
    const-string v2, "OverlayManager"

    .line 1511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "overlay package = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], isSamsungThemeOverlay = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    invoke-interface {v12}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "] overlayCategory = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    invoke-interface {v12}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1511
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    new-instance v11, Landroid/content/om/OverlayIdentifier;

    invoke-interface {v12}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 1518
    iget-object v2, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-interface {v12}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v5

    .line 1519
    invoke-interface {v12}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object v6

    .line 1520
    invoke-interface {v12}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v7

    .line 1521
    invoke-virtual {v0, v12}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v8

    const/4 v9, 0x1

    .line 1523
    invoke-virtual {v0, v12}, Lcom/android/server/om/OverlayManagerServiceImpl;->getPackageConfiguredPriority(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)I

    move-result v10

    .line 1524
    invoke-interface {v12}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayCategory()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface {v12}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result v18

    move-object v3, v11

    move/from16 v4, p2

    move-object/from16 v19, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v12

    move/from16 v12, v17

    move v15, v13

    move/from16 v13, v18

    .line 1518
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/om/OverlayManagerSettings;->init(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;ZZ)Landroid/content/om/OverlayInfo;

    .line 1527
    :try_start_cf
    iget-object v2, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    move-object/from16 v3, v19

    invoke-virtual {v2, v3, v14}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v2

    .line 1528
    iget-object v3, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayChangeListener;

    if-eqz v3, :cond_141

    invoke-virtual {v0, v2, v14, v15}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    move-result v2

    if-eqz v2, :cond_141

    .line 1530
    iget-object v2, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_e4
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_cf .. :try_end_e4} :catch_142

    .line 1531
    :try_start_e4
    iget-object v3, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mAddedOverlaysList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v1, "OverlayManager"

    .line 1533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSamsungOverlayPackageAdded removed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDeletedOverlaysList:Ljava/util/List;

    .line 1534
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", added = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mAddedOverlaysList:Ljava/util/List;

    .line 1535
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1533
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDeletedOverlaysList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_127

    iget-object v1, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mAddedOverlaysList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_127

    const/4 v1, 0x1

    move v7, v1

    goto :goto_128

    :cond_127
    move v7, v15

    .line 1540
    :goto_128
    monitor-exit v2
    :try_end_129
    .catchall {:try_start_e4 .. :try_end_129} :catchall_13e

    .line 1541
    :try_start_129
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayChangeListener;

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1542
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    .line 1541
    invoke-interface/range {v0 .. v7}, Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayChangeListener;->onSamsungOverlaysChanged(Ljava/lang/String;Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;ZLjava/lang/String;Z)V
    :try_end_13d
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_129 .. :try_end_13d} :catch_142

    goto :goto_141

    :catchall_13e
    move-exception v0

    .line 1540
    :try_start_13f
    monitor-exit v2
    :try_end_140
    .catchall {:try_start_13f .. :try_end_140} :catchall_13e

    :try_start_140
    throw v0
    :try_end_141
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_140 .. :try_end_141} :catch_142

    :cond_141
    :goto_141
    return-void

    :catch_142
    move-exception v0

    .line 1546
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "failed to update settings"

    invoke-direct {v1, v2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onSamsungOverlayPackageChanged(Ljava/lang/String;IZLandroid/content/om/ISamsungOverlayCallback;Ljava/lang/String;)V
    .registers 16

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1554
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-string/jumbo v2, "onOverlayPackageChanged packageName=%s enable=%s userId=%d"

    .line 1553
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "OverlayManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "zipped-overlay"

    .line 1556
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1558
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-nez v3, :cond_31

    if-eqz v0, :cond_30

    goto :goto_31

    :cond_30
    move v1, p2

    .line 1560
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, p1, v1}, Lcom/android/server/om/PackageManagerHelper;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_3a

    return-void

    .line 1566
    :cond_3a
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 1567
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v4

    .line 1566
    invoke-interface {v3, v4, v1}, Lcom/android/server/om/PackageManagerHelper;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_61

    .line 1569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onOverlayPackageChanged "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has wrong target"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1572
    :cond_61
    new-instance v1, Landroid/content/om/OverlayIdentifier;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 1573
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    .line 1574
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, v1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Landroid/content/om/OverlayIdentifier;IZ)Z

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move v5, p2

    move v8, p3

    .line 1575
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;IIZZ)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_a4

    .line 1577
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayChangeListener;

    if-eqz v1, :cond_a4

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result v1

    if-nez v1, :cond_92

    .line 1578
    invoke-static {v0}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 1579
    :cond_92
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayChangeListener;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1580
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    move v5, p2

    move-object v6, p4

    move v7, p3

    move-object v8, p5

    .line 1579
    invoke-interface/range {v2 .. v9}, Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayChangeListener;->onSamsungOverlaysChanged(Ljava/lang/String;Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;ZLjava/lang/String;Z)V
    :try_end_a4
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_3a .. :try_end_a4} :catch_a5

    :cond_a4
    return-void

    :catch_a5
    move-exception v1

    .line 1586
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1587
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayChangeListener;

    if-eqz v1, :cond_bf

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 1588
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayChangeListener;

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    move v6, p3

    move-object v7, p5

    invoke-interface/range {v1 .. v8}, Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayChangeListener;->onSamsungOverlaysChanged(Ljava/lang/String;Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;ZLjava/lang/String;Z)V

    :cond_bf
    return-void
.end method

.method public onSamsungOverlayPackageRemoved(Ljava/lang/String;Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;)V
    .registers 14

    const-string v0, "OverlayManager"

    .line 1597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSamsungOverlayPackageRemoved packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", overlayTarget = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_32

    return-void

    .line 1605
    :cond_32
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v0, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_70

    .line 1608
    :try_start_3a
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, v0, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    .line 1609
    iget-boolean v2, v4, Landroid/content/om/OverlayInfo;->mIsSamsungTheme:Z

    .line 1611
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, v0, p3, v1}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Landroid/content/om/OverlayIdentifier;IZ)Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p3

    .line 1612
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;IIZZ)Z
    :try_end_4f
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_3a .. :try_end_4f} :catch_50

    goto :goto_71

    :catch_50
    move-exception p0

    const-string p2, "OverlayManager"

    .line 1617
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Overlay "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was not found in settings"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_70
    move v2, v1

    .line 1624
    :goto_71
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayChangeListener;

    if-eqz v0, :cond_d0

    if-nez p4, :cond_7b

    if-nez v2, :cond_7b

    if-nez p2, :cond_d0

    .line 1628
    :cond_7b
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1629
    :try_start_7e
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDeletedOverlaysList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v2, "OverlayManager"

    .line 1631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSamsungOverlayPackageRemoved removed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDeletedOverlaysList:Ljava/util/List;

    .line 1632
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", added = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mAddedOverlaysList:Ljava/util/List;

    .line 1633
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1631
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDeletedOverlaysList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_bf

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mAddedOverlaysList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_bf

    const/4 v1, 0x1

    :cond_bf
    move v8, v1

    .line 1638
    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_7e .. :try_end_c1} :catchall_cd

    .line 1639
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayChangeListener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v8}, Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayChangeListener;->onSamsungOverlaysChanged(Ljava/lang/String;Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;ZLjava/lang/String;Z)V

    goto :goto_d0

    :catchall_cd
    move-exception p0

    .line 1638
    :try_start_ce
    monitor-exit v0
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    throw p0

    :cond_d0
    :goto_d0
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 4

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserRemoved userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z

    return-void
.end method

.method public final reconcileSettingsForPackage(Ljava/lang/String;II)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 567
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(Ljava/lang/String;IIZ)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final reconcileSettingsForPackage(Ljava/lang/String;IIZ)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reconcileSettingsForPackage pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 581
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForTarget(Ljava/lang/String;IIZ)Ljava/util/Set;

    move-result-object p4

    .line 580
    invoke-static {v0, p4}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p4

    .line 584
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/PackageManagerHelper;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_38

    .line 586
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageRemoved(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 591
    :cond_38
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updatePackageOverlays(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Ljava/util/Set;

    move-result-object p0

    .line 590
    invoke-static {p4, p0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final registerFabricatedOverlay(Landroid/os/FabricatedOverlayInfo;I)Ljava/util/Set;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/FabricatedOverlayInfo;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 717
    new-instance v1, Landroid/content/om/OverlayIdentifier;

    iget-object v0, p1, Landroid/os/FabricatedOverlayInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 720
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 722
    iget-boolean v2, v0, Landroid/content/om/OverlayInfo;->isFabricated:Z

    if-eqz v2, :cond_1b

    goto :goto_44

    .line 723
    :cond_1b
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "non-fabricated overlay with name \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' already present in \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 731
    :cond_44
    :goto_44
    :try_start_44
    invoke-virtual {p0, p1, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->mustReinitializeOverlay(Landroid/os/FabricatedOverlayInfo;Landroid/content/om/OverlayInfo;)Z

    move-result v2

    const/4 v12, 0x0

    if-eqz v2, :cond_8a

    if-eqz v0, :cond_57

    .line 735
    new-instance v2, Lcom/android/server/om/PackageAndUser;

    iget-object v0, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v2, v0, p2}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 738
    :cond_57
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v1, v12}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 739
    iget-object v2, p1, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    if-eqz v2, :cond_74

    if-eqz v0, :cond_74

    const-string v3, "SemWT_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-virtual {v0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_74

    const/4 v0, 0x1

    move v7, v0

    goto :goto_75

    :cond_74
    move v7, v12

    .line 741
    :goto_75
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v3, p1, Landroid/os/FabricatedOverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/os/FabricatedOverlayInfo;->targetOverlayable:Ljava/lang/String;

    iget-object v5, p1, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    const/4 v6, 0x1

    const v8, 0x7fffffff

    const/4 v9, 0x0

    const/4 v10, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/om/OverlayManagerSettings;->init(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)Landroid/content/om/OverlayInfo;

    move-result-object v0

    move p1, v12

    goto :goto_92

    .line 747
    :cond_8a
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object p1, p1, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, v1, p2, p1}, Lcom/android/server/om/OverlayManagerSettings;->setBaseCodePath(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;)Z

    move-result p1

    .line 749
    :goto_92
    invoke-virtual {p0, v0, p2, v12}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    move-result p0

    if-nez p0, :cond_9a

    if-eqz p1, :cond_a4

    .line 750
    :cond_9a
    new-instance p0, Lcom/android/server/om/PackageAndUser;

    iget-object p1, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-interface {v11, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_a4
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_44 .. :try_end_a4} :catch_a5

    :cond_a4
    return-object v11

    :catch_a5
    move-exception p0

    .line 753
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p2, "failed to update settings"

    invoke-direct {p1, p2, p0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public registerFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/FabricatedOverlayInternal;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 695
    iget-object v0, p1, Landroid/os/FabricatedOverlayInternal;->overlayName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_35

    .line 701
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v0, p1}, Lcom/android/server/om/IdmapManager;->createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 706
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 707
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v2

    array-length v3, v2

    :goto_1e
    if-ge v1, v3, :cond_2c

    aget v4, v2, v1

    .line 708
    invoke-virtual {p0, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->registerFabricatedOverlay(Landroid/os/FabricatedOverlayInfo;I)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2c
    return-object v0

    .line 703
    :cond_2d
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p1, "failed to create fabricated overlay"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 697
    :cond_35
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string/jumbo p1, "overlay name can only consist of alphanumeric characters, \'_\', and \'.\'"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeIdmapForOverlay(Landroid/content/om/OverlayIdentifier;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 945
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object p1

    .line 946
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    :try_end_9
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 948
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p2, "failed to update settings"

    invoke-direct {p1, p2, p0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    .registers 8

    .line 1224
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v0, p1}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/om/OverlayInfo;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1227
    :cond_9
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v0

    .line 1228
    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_3a

    aget v3, v0, v2

    .line 1230
    :try_start_15
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 1231
    invoke-virtual {v3}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_37

    iget-boolean v4, v3, Landroid/content/om/OverlayInfo;->mIsSamsungTheme:Z

    if-nez v4, :cond_37

    const-string/jumbo v4, "zipped-overlay"

    iget-object v3, v3, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    .line 1232
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_34
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_15 .. :try_end_34} :catch_37

    if-nez v3, :cond_37

    return-void

    :catch_37
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1240
    :cond_3a
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget v0, p1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/om/IdmapManager;->removeIdmap(Landroid/content/om/OverlayInfo;I)Z

    return-void
.end method

.method public final removeOverlaysForUser(Ljava/util/function/Predicate;I)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/content/om/OverlayInfo;",
            ">;I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(ILjava/util/function/Predicate;)V

    invoke-virtual {v0, v1}, Lcom/android/server/om/OverlayManagerSettings;->removeIf(Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p1

    .line 421
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 422
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_2d

    .line 423
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayInfo;

    .line 424
    new-instance v4, Lcom/android/server/om/PackageAndUser;

    iget-object v5, v3, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v4, v5, p2}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v4}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 428
    invoke-virtual {p0, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2d
    return-object v0
.end method

.method public setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            "ZI)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 617
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-string/jumbo v2, "setEnabled overlay=%s enable=%s userId=%d"

    .line 616
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "OverlayManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :try_start_20
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 622
    iget-boolean v2, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v2, :cond_48

    .line 628
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, p1, p3, p2}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Landroid/content/om/OverlayIdentifier;IZ)Z

    move-result p1

    .line 629
    invoke-virtual {p0, v0, p3, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    move-result p0

    or-int/2addr p0, p1

    if-eqz p0, :cond_43

    .line 632
    new-instance p0, Lcom/android/server/om/PackageAndUser;

    iget-object p1, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, p3}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 634
    :cond_43
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 624
    :cond_48
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p1, "cannot enable immutable overlay packages in runtime"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_50
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_20 .. :try_end_50} :catch_50

    :catch_50
    move-exception p0

    .line 636
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p2, "failed to update settings"

    invoke-direct {p1, p2, p0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setEnabledExclusive(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Optional;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            "ZI)",
            "Ljava/util/Optional<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 644
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const-string/jumbo v2, "setEnabledExclusive overlay=%s withinCategory=%s userId=%d"

    .line 643
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "OverlayManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :try_start_20
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 649
    iget-boolean v2, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v2, :cond_85

    .line 655
    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {p0, v2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 657
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v4, v1

    move v5, v4

    .line 660
    :goto_35
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_66

    .line 661
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/om/OverlayInfo;

    .line 662
    invoke-virtual {v6}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v7

    .line 663
    iget-boolean v8, v6, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-nez v8, :cond_4a

    goto :goto_63

    :cond_4a
    if-eqz p2, :cond_57

    .line 667
    iget-object v8, v6, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_57

    goto :goto_63

    .line 674
    :cond_57
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v8, v7, p3, v1}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Landroid/content/om/OverlayIdentifier;IZ)Z

    move-result v7

    or-int/2addr v5, v7

    .line 675
    invoke-virtual {p0, v6, p3, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    move-result v6

    or-int/2addr v5, v6

    :goto_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 679
    :cond_66
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p2, p1, p3, v3}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Landroid/content/om/OverlayIdentifier;IZ)Z

    move-result p1

    or-int/2addr p1, v5

    .line 680
    invoke-virtual {p0, v0, p3, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    move-result p0

    or-int/2addr p0, p1

    if-eqz p0, :cond_80

    .line 683
    new-instance p0, Lcom/android/server/om/PackageAndUser;

    iget-object p1, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, p3}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 685
    :cond_80
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 650
    :cond_85
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p1, "cannot enable immutable overlay packages in runtime"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8d
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_20 .. :try_end_8d} :catch_8d

    :catch_8d
    move-exception p0

    .line 687
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p2, "failed to update settings"

    invoke-direct {p1, p2, p0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    :try_start_0
    const-string v0, "OverlayManager"

    .line 853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHighestPriority overlay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 857
    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v1, :cond_42

    .line 863
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 864
    new-instance p0, Lcom/android/server/om/PackageAndUser;

    iget-object p1, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 866
    :cond_3d
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 859
    :cond_42
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p1, "cannot change priority of an immutable overlay package at runtime"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4a
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_4a} :catch_4a

    :catch_4a
    move-exception p0

    .line 868
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p2, "failed to update settings"

    invoke-direct {p1, p2, p0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setLowestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            "I)",
            "Ljava/util/Optional<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    :try_start_0
    const-string v0, "OverlayManager"

    .line 876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLowestPriority packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 880
    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v1, :cond_42

    .line 886
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setLowestPriority(Landroid/content/om/OverlayIdentifier;I)Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 887
    new-instance p0, Lcom/android/server/om/PackageAndUser;

    iget-object p1, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 889
    :cond_3d
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 882
    :cond_42
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p1, "cannot change priority of an immutable overlay package at runtime"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4a
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_4a} :catch_4a

    :catch_4a
    move-exception p0

    .line 891
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p2, "failed to update settings"

    invoke-direct {p1, p2, p0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setPriority(Landroid/content/om/OverlayIdentifier;Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            "Landroid/content/om/OverlayIdentifier;",
            "I)",
            "Ljava/util/Optional<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    :try_start_0
    const-string v0, "OverlayManager"

    .line 829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPriority overlay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " newParentOverlay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 834
    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v1, :cond_4a

    .line 840
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Landroid/content/om/OverlayIdentifier;Landroid/content/om/OverlayIdentifier;I)Z

    move-result p0

    if-eqz p0, :cond_45

    .line 841
    new-instance p0, Lcom/android/server/om/PackageAndUser;

    iget-object p1, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, p3}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 843
    :cond_45
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 836
    :cond_4a
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p1, "cannot change priority of an immutable overlay package at runtime"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_52
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_52} :catch_52

    :catch_52
    move-exception p0

    .line 845
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p2, "failed to update settings"

    invoke-direct {p1, p2, p0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .line 761
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 762
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1b

    aget v4, v1, v3

    .line 763
    invoke-virtual {p0, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1b
    return-object v0
.end method

.method public final unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .line 771
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 773
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    .line 774
    invoke-virtual {v0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 777
    new-instance p0, Lcom/android/server/om/PackageAndUser;

    iget-object p1, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 780
    :cond_1f
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final updateOverlaysForTarget(Ljava/lang/String;II)Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 437
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForTarget(Ljava/lang/String;IIZZ)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final updateOverlaysForTarget(Ljava/lang/String;IIZ)Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 443
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForTarget(Ljava/lang/String;IIZZ)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final updateOverlaysForTarget(Ljava/lang/String;IIZZ)Ljava/util/Set;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZZ)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p4

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateOverlaysForTarget() called with: targetPackage = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], userId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], flags = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p3

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], skipUpdateState = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "OverlayManager"

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, v7, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v13

    .line 456
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_4b
    if-ge v6, v14, :cond_12c

    .line 457
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/om/OverlayInfo;

    .line 459
    iget v0, v5, Landroid/content/om/OverlayInfo;->state:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5e

    if-ne v0, v1, :cond_5c

    goto :goto_5e

    :cond_5c
    const/4 v0, 0x0

    goto :goto_5f

    :cond_5e
    :goto_5e
    move v0, v1

    :goto_5f
    if-eqz v0, :cond_7e

    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOverlaysForTarget: Force update: targetPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", OverlayInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    if-nez v0, :cond_9f

    if-eqz v10, :cond_9f

    .line 463
    iget-boolean v2, v5, Landroid/content/om/OverlayInfo;->mIsSamsungTheme:Z

    if-eqz v2, :cond_9f

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateOverlaysForTarget: Skipping updateState for Theme Overlay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v6

    goto/16 :goto_128

    :cond_9f
    const-string/jumbo v4, "zipped-overlay"

    if-nez v0, :cond_c5

    .line 469
    invoke-virtual {v5}, Landroid/content/om/OverlayInfo;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateOverlaysForTarget: Skipping updateState for Locale Overlay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_c6

    :cond_c5
    move v0, v1

    :goto_c6
    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v2, v5

    move/from16 v3, p2

    move-object v15, v4

    move/from16 v4, p3

    move-object/from16 v18, v5

    move/from16 v5, v17

    move/from16 v17, v6

    move v6, v0

    .line 475
    :try_start_d7
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;IIZZ)Z

    move-result v0
    :try_end_db
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_d7 .. :try_end_db} :catch_e0

    :goto_db
    or-int v0, v16, v0

    move/from16 v16, v0

    goto :goto_f2

    :catch_e0
    move-exception v0

    move-object v1, v0

    const-string v0, "failed to update settings"

    .line 478
    invoke-static {v12, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    iget-object v0, v7, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual/range {v18 .. v18}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    move-result v0

    goto :goto_db

    :goto_f2
    if-nez v9, :cond_128

    if-eqz p5, :cond_128

    .line 484
    invoke-virtual/range {v18 .. v18}, Landroid/content/om/OverlayInfo;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateOverlaysForTarget(): removing idmap for LocaleOverlay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {v7, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 489
    iget-object v0, v1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/om/SemSamsungThemeUtils;->deleteFile(Ljava/lang/String;)V

    .line 490
    iget-object v0, v7, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    :cond_128
    :goto_128
    add-int/lit8 v6, v17, 0x1

    goto/16 :goto_4b

    :cond_12c
    if-nez v16, :cond_133

    .line 495
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 497
    :cond_133
    new-instance v0, Lcom/android/server/om/PackageAndUser;

    invoke-direct {v0, v8, v9}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public updateOverlaysForUser(I)Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p0, p1, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(IZ)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public updateOverlaysForUser(IZ)Landroid/util/ArraySet;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateOverlaysForUser newUserId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], isInitOnBoot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "OverlayManager"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 268
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3f

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_3f

    :cond_3d
    move v0, v8

    goto :goto_40

    :cond_3f
    :goto_3f
    move v0, v1

    .line 270
    :goto_40
    iget-object v2, v7, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v2, v0}, Lcom/android/server/om/PackageManagerHelper;->initializeForUser(I)Landroid/util/ArrayMap;

    move-result-object v2

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateOverlaysForUser, overlayPkgUserId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", newUserId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", before userPackages size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "updateOverlaysForUser, userId: "

    if-ne v0, v8, :cond_bb

    if-eqz v8, :cond_bb

    .line 273
    iget-object v0, v7, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, v1}, Lcom/android/server/om/PackageManagerHelper;->initializeForUser(I)Landroid/util/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_bb

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", tempPackages "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move v5, v1

    :goto_a1
    if-ge v5, v4, :cond_bb

    .line 277
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 278
    invoke-static {v6}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v12

    if-eqz v12, :cond_b8

    .line 279
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2, v12, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b8
    add-int/lit8 v5, v5, 0x1

    goto :goto_a1

    .line 284
    :cond_bb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", after userPackages size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, v2}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v7, v0, v8}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeOverlaysForUser(Ljava/util/function/Predicate;I)Ljava/util/Set;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 295
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v4, v1

    :goto_ea
    const-string v5, ""

    const-string v12, "\' for user "

    if-ge v4, v3, :cond_130

    .line 296
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 299
    :try_start_f7
    invoke-virtual {v7, v6, v8, v1, v9}, Lcom/android/server/om/OverlayManagerServiceImpl;->updatePackageOverlays(Lcom/android/server/pm/parsing/pkg/AndroidPackage;IIZ)Ljava/util/Set;

    move-result-object v0

    .line 298
    invoke-static {v11, v0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 303
    new-instance v0, Lcom/android/server/om/PackageAndUser;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13, v8}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v11, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_10a
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_f7 .. :try_end_10a} :catch_10b

    goto :goto_12d

    :catch_10b
    move-exception v0

    .line 305
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed to initialize overlays of \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12d
    add-int/lit8 v4, v4, 0x1

    goto :goto_ea

    .line 312
    :cond_130
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerServiceImpl;->getFabricatedOverlayInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_138
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/FabricatedOverlayInfo;

    .line 314
    :try_start_145
    invoke-virtual {v7, v3, v8}, Lcom/android/server/om/OverlayManagerServiceImpl;->registerFabricatedOverlay(Landroid/os/FabricatedOverlayInfo;I)Ljava/util/Set;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;
    :try_end_14c
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_145 .. :try_end_14c} :catch_14d

    goto :goto_138

    :catch_14d
    move-exception v0

    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to initialize fabricated overlay of \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_138

    .line 323
    :cond_16e
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 324
    iget-object v0, v7, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 325
    invoke-virtual {v0, v8}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move v3, v1

    :goto_17e
    if-ge v3, v2, :cond_1a8

    .line 328
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_18d

    .line 329
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_18e

    :cond_18d
    move v5, v1

    :goto_18e
    move v6, v1

    :goto_18f
    if-ge v6, v5, :cond_1a5

    .line 331
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/om/OverlayInfo;

    .line 332
    invoke-virtual {v14}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_1a2

    .line 333
    iget-object v14, v14, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1a2
    add-int/lit8 v6, v6, 0x1

    goto :goto_18f

    :cond_1a5
    add-int/lit8 v3, v3, 0x1

    goto :goto_17e

    .line 339
    :cond_1a8
    iget-object v14, v7, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    array-length v15, v14

    move v6, v1

    :goto_1ac
    if-ge v6, v15, :cond_249

    aget-object v5, v14, v6

    .line 344
    :try_start_1b0
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v0, v5}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 346
    iget-object v1, v7, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, v0, v8}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    .line 347
    iget-object v1, v4, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v13, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_221

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabling default overlay \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' for target \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' in category \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v1, v7, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v8, v2}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Landroid/content/om/OverlayIdentifier;IZ)Z
    :try_end_1f7
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_1b0 .. :try_end_1f7} :catch_224

    const/4 v0, 0x0

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-object v2, v4

    move/from16 v3, p1

    move-object/from16 v17, v4

    move v4, v0

    move-object/from16 v18, v5

    move/from16 v5, p2

    move/from16 v19, v6

    move/from16 v6, v16

    .line 352
    :try_start_20a
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;IIZZ)Z

    move-result v0

    if-eqz v0, :cond_245

    .line 353
    new-instance v0, Lcom/android/server/om/PackageAndUser;

    move-object/from16 v1, v17

    iget-object v2, v1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget v1, v1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-direct {v0, v2, v1}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v11, v0}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    :try_end_21e
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_20a .. :try_end_21e} :catch_21f

    goto :goto_245

    :catch_21f
    move-exception v0

    goto :goto_229

    :cond_221
    move/from16 v19, v6

    goto :goto_245

    :catch_224
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v19, v6

    .line 358
    :goto_229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set default overlay \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_245
    :goto_245
    add-int/lit8 v6, v19, 0x1

    goto/16 :goto_1ac

    .line 363
    :cond_249
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerServiceImpl;->cleanStaleResourceCache()V

    return-object v11
.end method

.method public final updatePackageOverlays(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "II)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 503
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updatePackageOverlays(Lcom/android/server/pm/parsing/pkg/AndroidPackage;IIZ)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final updatePackageOverlays(Lcom/android/server/pm/parsing/pkg/AndroidPackage;IIZ)Ljava/util/Set;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "IIZ)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v13, p2

    .line 509
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    .line 511
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 514
    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 515
    new-instance v2, Landroid/content/om/OverlayIdentifier;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getPackageConfiguredPriority(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)I

    move-result v3

    .line 518
    :try_start_20
    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, v2, v13}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    move-object/from16 v5, p1

    .line 519
    invoke-virtual {v0, v5, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->mustReinitializeOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/om/OverlayInfo;)Z

    move-result v6

    if-eqz v6, :cond_7e

    if-eqz v4, :cond_3b

    .line 523
    new-instance v3, Lcom/android/server/om/PackageAndUser;

    iget-object v4, v4, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v3, v4, v13}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v3}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    :cond_3b
    move-object v14, v1

    .line 529
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v4

    .line 530
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v7

    .line 531
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v8

    .line 532
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result v3

    if-nez v3, :cond_60

    invoke-static/range {p1 .. p1}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v3

    if-eqz v3, :cond_5b

    goto :goto_60

    :cond_5b
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v3

    goto :goto_61

    :cond_60
    :goto_60
    const/4 v3, 0x1

    :goto_61
    move v9, v3

    .line 533
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getPackageConfiguredPriority(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)I

    move-result v10

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayCategory()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 534
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result v15

    move/from16 v3, p2

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v11

    move v11, v12

    move v12, v15

    .line 529
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/om/OverlayManagerSettings;->init(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;ZZ)Landroid/content/om/OverlayInfo;

    move-result-object v4

    goto :goto_93

    .line 544
    :cond_7e
    iget v5, v4, Landroid/content/om/OverlayInfo;->priority:I

    if-eq v3, v5, :cond_92

    .line 547
    iget-object v5, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v5, v2, v13, v3}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Landroid/content/om/OverlayIdentifier;II)V

    .line 548
    new-instance v2, Lcom/android/server/om/PackageAndUser;

    iget-object v3, v4, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v2, v3, v13}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v2}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    :cond_92
    move-object v14, v1

    :goto_93
    move-object v7, v4

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object v2, v7

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 553
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;IIZZ)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 554
    new-instance v0, Lcom/android/server/om/PackageAndUser;

    iget-object v1, v7, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v13}, Lcom/android/server/om/PackageAndUser;-><init>(Ljava/lang/String;I)V

    invoke-static {v14, v0}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v14
    :try_end_af
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_20 .. :try_end_af} :catch_b0

    :cond_af
    return-object v14

    :catch_b0
    move-exception v0

    .line 558
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string v2, "failed to update settings"

    invoke-direct {v1, v2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final updateState(Landroid/content/om/CriticalOverlayInfo;II)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1061
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;IIZZ)Z

    move-result p0

    return p0
.end method

.method public final updateState(Landroid/content/om/CriticalOverlayInfo;IIZZ)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 1069
    invoke-interface/range {p1 .. p1}, Landroid/content/om/CriticalOverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v9

    .line 1070
    iget-object v2, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 1071
    invoke-interface/range {p1 .. p1}, Landroid/content/om/CriticalOverlayInfo;->getTargetPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1070
    invoke-interface {v2, v3, v7}, Lcom/android/server/om/PackageManagerHelper;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v10

    .line 1073
    instance-of v2, v1, Landroid/content/om/OverlayInfo;

    if-eqz v2, :cond_22

    move-object v2, v1

    check-cast v2, Landroid/content/om/OverlayInfo;

    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->getCategory()Ljava/lang/String;

    move-result-object v2

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    const/4 v11, 0x0

    if-eqz v2, :cond_2e

    const-string/jumbo v3, "zipped-overlay"

    .line 1076
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2f

    :cond_2e
    move v2, v11

    .line 1080
    :goto_2f
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-nez v3, :cond_3a

    if-eqz v2, :cond_38

    goto :goto_3a

    :cond_38
    move v3, v7

    goto :goto_3b

    :cond_3a
    :goto_3a
    move v3, v11

    .line 1081
    :goto_3b
    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface/range {p1 .. p1}, Landroid/content/om/CriticalOverlayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lcom/android/server/om/PackageManagerHelper;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    const/4 v12, 0x1

    const-string v13, "OverlayManager"

    if-eqz v3, :cond_70

    .line 1082
    invoke-interface {v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result v4

    if-eqz v4, :cond_70

    if-ne v8, v12, :cond_70

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateState] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is samsung theme, skip now (upgrading state), then idmap will be updated soon (upgraded state)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_70
    if-eqz v3, :cond_e9

    .line 1094
    invoke-interface {v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result v4

    if-eqz v4, :cond_e9

    .line 1095
    invoke-interface/range {p1 .. p1}, Landroid/content/om/CriticalOverlayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.themedesigner.OV"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e9

    .line 1096
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-nez v4, :cond_93

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4

    if-eqz v4, :cond_91

    goto :goto_93

    :cond_91
    move v4, v7

    goto :goto_94

    :cond_93
    :goto_93
    move v4, v11

    .line 1097
    :goto_94
    iget-object v5, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface/range {p1 .. p1}, Landroid/content/om/CriticalOverlayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1098
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "/data/overlays/themepark/"

    .line 1099
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    invoke-interface/range {p1 .. p1}, Landroid/content/om/CriticalOverlayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    .line 1101
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_c1

    .line 1103
    iget-wide v14, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    :cond_c1
    new-instance v4, Ljava/io/File;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_e9

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verifying overlay package is failed for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Landroid/content/om/CriticalOverlayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_e9
    if-nez v3, :cond_114

    .line 1115
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_104

    .line 1116
    iget-object v2, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 1117
    invoke-interface/range {p1 .. p1}, Landroid/content/om/CriticalOverlayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1116
    invoke-interface {v2, v1, v11}, Lcom/android/server/om/PackageManagerHelper;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_104

    .line 1121
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result v1

    if-eqz v1, :cond_104

    return v11

    .line 1126
    :cond_104
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, v9, v7}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 1127
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v9, v7}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    move-result v0

    return v0

    .line 1130
    :cond_114
    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v9, v7, v5}, Lcom/android/server/om/OverlayManagerSettings;->setCategory(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;)Z

    move-result v4

    or-int/2addr v4, v11

    .line 1131
    invoke-interface/range {p1 .. p1}, Landroid/content/om/CriticalOverlayInfo;->isFabricated()Z

    move-result v5

    if-nez v5, :cond_130

    .line 1132
    iget-object v5, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v7, v6}, Lcom/android/server/om/OverlayManagerSettings;->setBaseCodePath(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;)Z

    move-result v5

    or-int/2addr v4, v5

    :cond_130
    move v14, v4

    .line 1137
    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, v9, v7}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v15

    if-eqz p4, :cond_141

    .line 1139
    invoke-static {v3}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v4

    if-eqz v4, :cond_141

    move v4, v12

    goto :goto_142

    :cond_141
    move v4, v11

    :goto_142
    if-eqz v10, :cond_1b0

    .line 1140
    invoke-interface/range {p1 .. p1}, Landroid/content/om/CriticalOverlayInfo;->getTargetPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "android"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_156

    .line 1141
    invoke-virtual {v0, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    :cond_156
    if-nez v4, :cond_1b0

    if-nez p5, :cond_164

    if-nez v2, :cond_162

    .line 1143
    invoke-interface {v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result v1

    if-eqz v1, :cond_164

    :cond_162
    move v14, v12

    goto :goto_1cd

    .line 1148
    :cond_164
    iget-object v1, v15, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    if-eqz v1, :cond_173

    const-string v2, "com.samsung.android.themedesigner"

    .line 1149
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_173

    .line 1151
    invoke-static {v10}, Lcom/android/server/om/SemSamsungThemeUtils;->deleteResourceMapFile(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    :cond_173
    if-eqz v7, :cond_19f

    .line 1153
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 1155
    invoke-virtual {v1, v15}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/om/OverlayInfo;)Z

    move-result v1

    if-eqz v1, :cond_19f

    .line 1156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip idmap creation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " of user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cd

    .line 1158
    :cond_19f
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget-object v4, v15, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 1159
    invoke-virtual {v9}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v5

    move-object v2, v10

    move/from16 v6, p2

    .line 1158
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/om/IdmapManager;->createIdmap(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    or-int/2addr v14, v1

    goto :goto_1cd

    .line 1163
    :cond_1b0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateState:  Skipped IdMap creation for overlayPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isLocaleOverlayOnInit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :goto_1cd
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, v9, v7}, Lcom/android/server/om/OverlayManagerSettings;->getState(Landroid/content/om/OverlayIdentifier;I)I

    move-result v1

    .line 1167
    invoke-virtual {v0, v15, v10, v7, v8}, Lcom/android/server/om/OverlayManagerServiceImpl;->calculateNewState(Landroid/content/om/OverlayInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)I

    move-result v2

    if-eq v1, v2, :cond_202

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v9, v3, v11

    .line 1172
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    const/4 v4, 0x2

    .line 1173
    invoke-static {v1}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x3

    .line 1174
    invoke-static {v2}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "%s:%d: %s -> %s"

    .line 1171
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v9, v7, v2}, Lcom/android/server/om/OverlayManagerSettings;->setState(Landroid/content/om/OverlayIdentifier;II)Z

    move-result v0

    or-int/2addr v14, v0

    :cond_202
    return v14
.end method
