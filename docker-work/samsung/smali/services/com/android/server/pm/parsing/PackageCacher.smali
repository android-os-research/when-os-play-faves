.class public Lcom/android/server/pm/parsing/PackageCacher;
.super Ljava/lang/Object;
.source "PackageCacher.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PackageCacher"

.field public static final sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public mCacheDir:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$EHUdax2tnuvpowUcJ_gJlWWRagM(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/parsing/PackageCacher;->lambda$cleanCachedResult$0(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    return-void
.end method

.method public static fromCacheEntryStatic([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 82
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 83
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 84
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    new-instance p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;

    invoke-direct {p0, v0}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;-><init>(Landroid/os/Parcel;)V

    .line 88
    invoke-virtual {p0}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->startAndInstall()V

    .line 90
    new-instance p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;-><init>(Landroid/os/Parcel;)V

    .line 92
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 94
    sget-object v0, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-object p0
.end method

.method public static isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z
    .registers 6

    const/4 v0, 0x0

    .line 130
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 131
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/pm/ApexManager;->getBackingApexFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_38

    const-string v1, "PackageCacher"

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find APEX file backing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_38
    move-object p0, v1

    .line 142
    :cond_39
    :goto_39
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p0

    .line 143
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p1

    .line 144
    iget-wide v1, p0, Landroid/system/StructStat;->st_mtime:J

    iget-wide p0, p1, Landroid/system/StructStat;->st_mtime:J
    :try_end_4d
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_4d} :catch_53

    cmp-long p0, v1, p0

    if-gez p0, :cond_52

    const/4 v0, 0x1

    :cond_52
    return v0

    :catch_53
    move-exception p0

    .line 156
    iget p1, p0, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->ENOENT:I

    if-eq p1, v1, :cond_5f

    const-string p1, "Error while stating package cache : "

    .line 157
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5f
    return v0
.end method

.method public static synthetic lambda$cleanCachedResult$0(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    .line 230
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static toCacheEntryStatic(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)[B
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 109
    new-instance v1, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;

    invoke-direct {v1, v0}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;-><init>(Landroid/os/Parcel;)V

    .line 112
    check-cast p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 114
    invoke-virtual {v1}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->finishAndUninstall()V

    .line 116
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method


# virtual methods
.method public cacheResult(Ljava/io/File;ILcom/android/server/pm/parsing/pkg/ParsedPackage;)V
    .registers 7

    const-string v0, "PackageCacher"

    .line 195
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/parsing/PackageCacher;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p2

    .line 196
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 199
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_2d

    .line 200
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete cache file: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_2d
    invoke-virtual {p0, p3}, Lcom/android/server/pm/parsing/PackageCacher;->toCacheEntry(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)[B

    move-result-object p0
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_57

    if-nez p0, :cond_34

    return-void

    .line 210
    :cond_34
    :try_start_34
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_39} :catch_4a
    .catchall {:try_start_34 .. :try_end_39} :catchall_57

    .line 211
    :try_start_39
    invoke-virtual {p2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_40

    .line 212
    :try_start_3c
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_4a
    .catchall {:try_start_3c .. :try_end_3f} :catchall_57

    goto :goto_53

    :catchall_40
    move-exception p0

    .line 210
    :try_start_41
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception p2

    :try_start_46
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_49
    throw p0
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4a} :catch_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_57

    :catch_4a
    move-exception p0

    :try_start_4b
    const-string p2, "Error writing cache entry."

    .line 213
    invoke-static {v0, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 217
    :goto_53
    invoke-static {v1, p1}, Lcom/samsung/android/server/pm/install/PackageCacherUtils;->changeModifiedTimeOfTheCacheIfNeeded(Ljava/io/File;Ljava/io/File;)J
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_57

    goto :goto_5d

    :catchall_57
    move-exception p0

    const-string p1, "Error saving package cache."

    .line 220
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5d
    return-void
.end method

.method public cleanCachedResult(Ljava/io/File;)V
    .registers 6

    .line 228
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 229
    iget-object p0, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    new-instance v0, Lcom/android/server/pm/parsing/PackageCacher$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/pm/parsing/PackageCacher$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    .line 231
    array-length p1, p0

    const/4 v0, 0x0

    :goto_11
    if-ge v0, p1, :cond_34

    aget-object v1, p0, v0

    .line 232
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_31

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to clean cache file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageCacher"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_34
    return-void
.end method

.method public fromCacheEntry([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 76
    invoke-static {p1}, Lcom/android/server/pm/parsing/PackageCacher;->fromCacheEntryStatic([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object p0

    return-object p0
.end method

.method public final getCacheKey(Ljava/io/File;I)Ljava/lang/String;
    .registers 3

    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x2d

    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCachedResult(Ljava/io/File;I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 5

    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/parsing/PackageCacher;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p2

    .line 170
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 174
    :try_start_c
    invoke-static {p1, v0}, Lcom/android/server/pm/parsing/PackageCacher;->isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_13

    return-object p2

    .line 178
    :cond_13
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/PackageCacher;->fromCacheEntry([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_20

    return-object p0

    :catchall_20
    move-exception p0

    const-string p1, "PackageCacher"

    const-string v1, "Error reading package cache: "

    .line 181
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object p2
.end method

.method public toCacheEntry(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)[B
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 101
    invoke-static {p1}, Lcom/android/server/pm/parsing/PackageCacher;->toCacheEntryStatic(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)[B

    move-result-object p0

    return-object p0
.end method
