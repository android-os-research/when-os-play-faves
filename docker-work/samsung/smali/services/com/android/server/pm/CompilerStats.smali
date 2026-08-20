.class public Lcom/android/server/pm/CompilerStats;
.super Lcom/android/server/pm/AbstractStatsBase;
.source "CompilerStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/CompilerStats$PackageStats;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/AbstractStatsBase<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMPILER_STATS_VERSION:I = 0x1

.field public static final COMPILER_STATS_VERSION_HEADER:Ljava/lang/String; = "PACKAGE_MANAGER__COMPILER_STATS__"


# instance fields
.field public final packageStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/CompilerStats$PackageStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string/jumbo v0, "package-cstats.list"

    const-string v1, "CompilerStats_DiskWriter"

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/AbstractStatsBase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public createPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    .registers 4

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v0

    .line 142
    :try_start_3
    new-instance v1, Lcom/android/server/pm/CompilerStats$PackageStats;

    invoke-direct {v1, p1}, Lcom/android/server/pm/CompilerStats$PackageStats;-><init>(Ljava/lang/String;)V

    .line 143
    iget-object p0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    monitor-exit v0

    return-object v1

    :catchall_f
    move-exception p0

    .line 145
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public deletePackageStats(Ljava/lang/String;)V
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v0

    .line 161
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public getOrCreatePackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v0

    .line 150
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/CompilerStats$PackageStats;

    if-eqz v1, :cond_f

    .line 152
    monitor-exit v0

    return-object v1

    .line 155
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CompilerStats;->createPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 156
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v0

    .line 130
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/CompilerStats$PackageStats;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 131
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public maybeWriteAsync()Z
    .registers 2

    const/4 v0, 0x0

    .line 257
    invoke-virtual {p0, v0}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public read()V
    .registers 2

    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0, v0}, Lcom/android/server/pm/AbstractStatsBase;->read(Ljava/lang/Object;)V

    return-void
.end method

.method public read(Ljava/io/Reader;)Z
    .registers 8

    .line 201
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v0

    .line 204
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b9

    .line 207
    :try_start_8
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 210
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a6

    const-string v2, "PACKAGE_MANAGER__COMPILER_STATS__"

    .line 214
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8f

    const/16 v2, 0x21

    .line 218
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_78

    .line 227
    new-instance p1, Lcom/android/server/pm/CompilerStats$PackageStats;

    const-string v3, "fake package"

    invoke-direct {p1, v3}, Lcom/android/server/pm/CompilerStats$PackageStats;-><init>(Ljava/lang/String;)V

    .line 230
    :goto_2f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_76

    const-string v4, "-"

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_71

    const/16 v4, 0x3a

    .line 232
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5a

    if-eq v4, v2, :cond_5a

    .line 236
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 238
    invoke-virtual {p1, v5, v3, v4}, Lcom/android/server/pm/CompilerStats$PackageStats;->setCompileTime(Ljava/lang/String;J)V

    goto :goto_2f

    .line 234
    :cond_5a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse data "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 240
    :cond_71
    invoke-virtual {p0, v3}, Lcom/android/server/pm/CompilerStats;->getOrCreatePackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object p1
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_75} :catch_ae
    .catchall {:try_start_8 .. :try_end_75} :catchall_b9

    goto :goto_2f

    .line 248
    :cond_76
    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_b9

    return v2

    .line 221
    :cond_78
    :try_start_78
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 215
    :cond_8f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid version line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 212
    :cond_a6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No version line found."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_ae} :catch_ae
    .catchall {:try_start_78 .. :try_end_ae} :catchall_b9

    :catch_ae
    move-exception p0

    :try_start_af
    const-string p1, "PackageManager"

    const-string v1, "Error parsing compiler stats"

    .line 244
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 245
    monitor-exit v0

    return p0

    :catchall_b9
    move-exception p0

    .line 249
    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_af .. :try_end_bb} :catchall_b9

    throw p0
.end method

.method public bridge synthetic readInternal(Ljava/lang/Object;)V
    .registers 2

    .line 46
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CompilerStats;->readInternal(Ljava/lang/Void;)V

    return-void
.end method

.method public readInternal(Ljava/lang/Void;)V
    .registers 5

    .line 285
    invoke-virtual {p0}, Lcom/android/server/pm/AbstractStatsBase;->getFile()Landroid/util/AtomicFile;

    move-result-object p1

    const/4 v0, 0x0

    .line 288
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_13} :catch_24
    .catchall {:try_start_5 .. :try_end_13} :catchall_1f

    .line 289
    :try_start_13
    invoke-virtual {p0, v1}, Lcom/android/server/pm/CompilerStats;->read(Ljava/io/Reader;)Z
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_16} :catch_1d
    .catchall {:try_start_13 .. :try_end_16} :catchall_1a

    .line 292
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_27

    :catchall_1a
    move-exception p0

    move-object v0, v1

    goto :goto_20

    :catch_1d
    move-object v0, v1

    goto :goto_24

    :catchall_1f
    move-exception p0

    :goto_20
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 293
    throw p0

    .line 292
    :catch_24
    :goto_24
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_27
    return-void
.end method

.method public setPackageStats(Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;)V
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v0

    .line 136
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public write(Ljava/io/Writer;)V
    .registers 8

    .line 178
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v0, p1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    const-string p1, "PACKAGE_MANAGER__COMPILER_STATS__"

    .line 180
    invoke-virtual {v0, p1}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 181
    invoke-virtual {v0, p1}, Lcom/android/internal/util/FastPrintWriter;->println(I)V

    .line 183
    iget-object p1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter p1

    .line 184
    :try_start_11
    iget-object p0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_81

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/CompilerStats$PackageStats;

    .line 185
    invoke-static {v1}, Lcom/android/server/pm/CompilerStats$PackageStats;->-$$Nest$fgetcompileTimePerCodePath(Lcom/android/server/pm/CompilerStats$PackageStats;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_86

    .line 186
    :try_start_2c
    invoke-static {v1}, Lcom/android/server/pm/CompilerStats$PackageStats;->-$$Nest$fgetcompileTimePerCodePath(Lcom/android/server/pm/CompilerStats$PackageStats;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7c

    .line 187
    invoke-virtual {v1}, Lcom/android/server/pm/CompilerStats$PackageStats;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 189
    invoke-static {v1}, Lcom/android/server/pm/CompilerStats$PackageStats;->-$$Nest$fgetcompileTimePerCodePath(Lcom/android/server/pm/CompilerStats$PackageStats;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_49

    .line 193
    :cond_7c
    monitor-exit v2

    goto :goto_1b

    :catchall_7e
    move-exception p0

    monitor-exit v2
    :try_end_80
    .catchall {:try_start_2c .. :try_end_80} :catchall_7e

    :try_start_80
    throw p0

    .line 195
    :cond_81
    monitor-exit p1
    :try_end_82
    .catchall {:try_start_80 .. :try_end_82} :catchall_86

    .line 197
    invoke-virtual {v0}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    return-void

    :catchall_86
    move-exception p0

    .line 195
    :try_start_87
    monitor-exit p1
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw p0
.end method

.method public bridge synthetic writeInternal(Ljava/lang/Object;)V
    .registers 2

    .line 46
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CompilerStats;->writeInternal(Ljava/lang/Void;)V

    return-void
.end method

.method public writeInternal(Ljava/lang/Void;)V
    .registers 4

    .line 262
    invoke-virtual {p0}, Lcom/android/server/pm/AbstractStatsBase;->getFile()Landroid/util/AtomicFile;

    move-result-object p1

    .line 266
    :try_start_4
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_19

    .line 267
    :try_start_8
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 268
    invoke-virtual {p0, v1}, Lcom/android/server/pm/CompilerStats;->write(Ljava/io/Writer;)V

    .line 269
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 270
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_16} :catch_17

    goto :goto_27

    :catch_17
    move-exception p0

    goto :goto_1b

    :catch_19
    move-exception p0

    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_20

    .line 273
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_20
    const-string p1, "PackageManager"

    const-string v0, "Failed to write compiler stats"

    .line 275
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    return-void
.end method

.method public writeNow()V
    .registers 2

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p0, v0}, Lcom/android/server/pm/AbstractStatsBase;->writeNow(Ljava/lang/Object;)V

    return-void
.end method
