.class public Lcom/android/server/pm/CompilerStats$PackageStats;
.super Ljava/lang/Object;
.source "CompilerStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/CompilerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageStats"
.end annotation


# instance fields
.field public final compileTimePerCodePath:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final packageName:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetcompileTimePerCodePath(Lcom/android/server/pm/CompilerStats$PackageStats;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->packageName:Ljava/lang/String;

    .line 70
    new-instance p1, Landroid/util/ArrayMap;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    return-void
.end method

.method public static getStoredPathFromCodePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 104
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6

    .line 109
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    monitor-enter v0

    .line 110
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_11

    const-string p0, "(No recorded stats)"

    .line 111
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4e

    .line 113
    :cond_11
    iget-object p0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1b

    .line 117
    :cond_4e
    :goto_4e
    monitor-exit v0

    return-void

    :catchall_50
    move-exception p0

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw p0
.end method

.method public getCompileTime(Ljava/lang/String;)J
    .registers 3

    .line 82
    invoke-static {p1}, Lcom/android/server/pm/CompilerStats$PackageStats;->getStoredPathFromCodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    monitor-enter v0

    .line 84
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_15

    const-wide/16 p0, 0x0

    .line 86
    monitor-exit v0

    return-wide p0

    .line 88
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_1b
    move-exception p0

    .line 89
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public setCompileTime(Ljava/lang/String;J)V
    .registers 7

    .line 93
    invoke-static {p1}, Lcom/android/server/pm/CompilerStats$PackageStats;->getStoredPathFromCodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 94
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    monitor-enter v0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_13

    .line 96
    :try_start_d
    iget-object p0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 98
    :cond_13
    iget-object p0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :goto_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_1e

    throw p0
.end method
