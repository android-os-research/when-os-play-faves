.class public final Lcom/android/server/graphics/fonts/FontManagerService;
.super Lcom/android/internal/graphics/fonts/IFontManager$Stub;
.source "FontManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;,
        Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;,
        Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
    }
.end annotation


# static fields
.field public static final CONFIG_XML_FILE:Ljava/lang/String; = "/data/fonts/config/config.xml"

.field public static final FONT_FILES_DIR:Ljava/lang/String; = "/data/fonts/files"

.field public static final TAG:Ljava/lang/String; = "FontManagerService"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mSerializedFontMap:Landroid/os/SharedMemory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSerializedFontMapLock"
        }
    .end annotation
.end field

.field public final mSerializedFontMapLock:Ljava/lang/Object;

.field public final mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUpdatableFontDirLock"
        }
    .end annotation
.end field

.field public final mUpdatableFontDirLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 6

    .line 191
    invoke-direct {p0}, Lcom/android/internal/graphics/fonts/IFontManager$Stub;-><init>()V

    .line 177
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMapLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    if-eqz p2, :cond_2e

    const-string v0, "FontManagerService"

    const-string v1, "Entering safe mode. Deleting all font updates."

    .line 193
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/fonts/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/fonts/config/config.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->deleteAllFiles(Ljava/io/File;Ljava/io/File;)V

    .line 196
    :cond_2e
    iput-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mContext:Landroid/content/Context;

    .line 197
    invoke-static {p2}, Lcom/android/server/graphics/fonts/FontManagerService;->createUpdatableFontDir(Z)Lcom/android/server/graphics/fonts/UpdatableFontDir;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    .line 198
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->initialize()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ZLcom/android/server/graphics/fonts/FontManagerService-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/graphics/fonts/FontManagerService;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public static closeFileDescriptors(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontUpdateRequest;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 99
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/fonts/FontUpdateRequest;

    if-nez v0, :cond_16

    goto :goto_7

    .line 101
    :cond_16
    invoke-virtual {v0}, Landroid/graphics/fonts/FontUpdateRequest;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_1d

    goto :goto_7

    .line 104
    :cond_1d
    :try_start_1d
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_7

    :catch_21
    move-exception v0

    const-string v1, "FontManagerService"

    const-string v2, "Failed to close fd"

    .line 106
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_2a
    return-void
.end method

.method public static createUpdatableFontDir(Z)Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    return-object v0

    .line 206
    :cond_4
    invoke-static {}, Lcom/android/internal/security/VerityUtils;->isFsVeritySupported()Z

    move-result p0

    if-nez p0, :cond_b

    return-object v0

    .line 207
    :cond_b
    new-instance p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/fonts/files"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/graphics/fonts/OtfFontFileParser;

    invoke-direct {v2}, Lcom/android/server/graphics/fonts/OtfFontFileParser;-><init>()V

    new-instance v3, Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;

    invoke-direct {v3, v0}, Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;-><init>(Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl-IA;)V

    new-instance v0, Ljava/io/File;

    const-string v4, "/data/fonts/config/config.xml"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;-><init>(Ljava/io/File;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;Ljava/io/File;)V

    return-object p0
.end method

.method public static serializeFontMap(Landroid/text/FontConfig;)Landroid/os/SharedMemory;
    .registers 4

    .line 326
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 329
    :try_start_5
    invoke-static {p0, v0}, Landroid/graphics/fonts/SystemFonts;->buildSystemFallback(Landroid/text/FontConfig;Landroid/util/ArrayMap;)Ljava/util/Map;

    move-result-object v1

    .line 331
    invoke-static {p0, v1}, Landroid/graphics/fonts/SystemFonts;->buildSystemTypefaces(Landroid/text/FontConfig;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 332
    invoke-static {p0}, Landroid/graphics/Typeface;->serializeFontMap(Ljava/util/Map;)Landroid/os/SharedMemory;

    move-result-object p0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_30
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_11} :catch_30
    .catchall {:try_start_5 .. :try_end_11} :catchall_2e

    .line 340
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 341
    instance-of v2, v1, Ljava/nio/DirectByteBuffer;

    if-eqz v2, :cond_19

    .line 342
    invoke-static {v1}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_19

    :cond_2d
    return-object p0

    :catchall_2e
    move-exception p0

    goto :goto_56

    :catch_30
    move-exception p0

    :try_start_31
    const-string v1, "FontManagerService"

    const-string v2, "Failed to serialize updatable font map. Retrying with system image fonts."

    .line 334
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2e

    const/4 p0, 0x0

    .line 340
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_41
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 341
    instance-of v2, v1, Ljava/nio/DirectByteBuffer;

    if-eqz v2, :cond_41

    .line 342
    invoke-static {v1}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_41

    :cond_55
    return-object p0

    .line 340
    :goto_56
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5e
    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 341
    instance-of v2, v1, Ljava/nio/DirectByteBuffer;

    if-eqz v2, :cond_5e

    .line 342
    invoke-static {v1}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_5e

    .line 345
    :cond_72
    throw p0
.end method

.method public static serializeSystemServerFontMap()Landroid/os/SharedMemory;
    .registers 3

    .line 351
    :try_start_0
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->serializeFontMap(Ljava/util/Map;)Landroid/os/SharedMemory;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    const-string v1, "FontManagerService"

    const-string v2, "Failed to serialize SystemServer system font map"

    .line 353
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public clearUpdates()V
    .registers 4

    .line 260
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/fonts/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/fonts/config/config.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->deleteAllFiles(Ljava/io/File;Ljava/io/File;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->initialize()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 286
    iget-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mContext:Landroid/content/Context;

    const-string p3, "FontManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 287
    :cond_b
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerShellCommand;

    invoke-direct {p1, p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;-><init>(Lcom/android/server/graphics/fonts/FontManagerService;)V

    new-instance p0, Landroid/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p0, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpAll(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 224
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentFontMap()Landroid/os/SharedMemory;
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_3
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 230
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getFontConfig()Landroid/text/FontConfig;
    .registers 4
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.UPDATE_FONTS"
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.UPDATE_FONTS"

    const-string v2, "UPDATE_FONTS permission required."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object p0

    return-object p0
.end method

.method public getFontFileMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    if-nez v0, :cond_9

    .line 276
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 278
    :cond_9
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_c
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getPostScriptMap()Ljava/util/Map;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    .line 280
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw p0
.end method

.method public getSystemFontConfig()Landroid/text/FontConfig;
    .registers 2

    .line 304
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    if-nez v0, :cond_9

    .line 305
    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSystemPreinstalledFontConfig()Landroid/text/FontConfig;

    move-result-object p0

    return-object p0

    .line 307
    :cond_9
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_c
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    .line 309
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final initialize()V
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_3
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    if-nez v1, :cond_10

    .line 214
    invoke-static {}, Lcom/android/server/graphics/fonts/FontManagerService;->serializeSystemServerFontMap()Landroid/os/SharedMemory;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/graphics/fonts/FontManagerService;->setSerializedFontMap(Landroid/os/SharedMemory;)V

    .line 215
    monitor-exit v0

    return-void

    .line 217
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->loadFontFileMap()V

    .line 218
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->updateSerializedFontMap()V

    .line 219
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 297
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;-><init>(Lcom/android/server/graphics/fonts/FontManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public restart()V
    .registers 1

    .line 271
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->initialize()V

    return-void
.end method

.method public final setSerializedFontMap(Landroid/os/SharedMemory;)V
    .registers 4

    .line 360
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_3
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    .line 362
    iput-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    .line 363
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_e

    if-eqz v1, :cond_d

    .line 365
    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V

    :cond_d
    return-void

    :catchall_e
    move-exception p0

    .line 363
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p0
.end method

.method public update(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontUpdateRequest;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    if-eqz v0, :cond_29

    .line 240
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1c

    .line 243
    :try_start_a
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    invoke-virtual {v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getConfigVersion()I

    move-result v1

    if-ne v1, p1, :cond_13

    goto :goto_1c

    .line 244
    :cond_13
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 p1, -0x8

    const-string p2, "The base config version is older than current."

    invoke-direct {p0, p1, p2}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 248
    :cond_1c
    :goto_1c
    iget-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    invoke-virtual {p1, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->update(Ljava/util/List;)V

    .line 249
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->updateSerializedFontMap()V

    .line 250
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_26

    throw p0

    .line 236
    :cond_29
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 p1, -0x7

    const-string p2, "The font updater is disabled."

    invoke-direct {p0, p1, p2}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public updateFontFamily(Ljava/util/List;I)I
    .registers 6
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.UPDATE_FONTS"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontUpdateRequest;",
            ">;I)I"
        }
    .end annotation

    .line 79
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 80
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.UPDATE_FONTS"

    const-string v2, "UPDATE_FONTS permission required."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_29

    .line 84
    :try_start_11
    invoke-virtual {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService;->update(ILjava/util/List;)V
    :try_end_14
    .catch Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException; {:try_start_11 .. :try_end_14} :catch_19
    .catchall {:try_start_11 .. :try_end_14} :catchall_29

    const/4 p0, 0x0

    .line 91
    invoke-static {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->closeFileDescriptors(Ljava/util/List;)V

    return p0

    :catch_19
    move-exception p0

    :try_start_1a
    const-string p2, "FontManagerService"

    const-string v0, "Failed to update font family"

    .line 87
    invoke-static {p2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->getErrorCode()I

    move-result p0
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_29

    .line 91
    invoke-static {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->closeFileDescriptors(Ljava/util/List;)V

    return p0

    :catchall_29
    move-exception p0

    invoke-static {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->closeFileDescriptors(Ljava/util/List;)V

    .line 92
    throw p0
.end method

.method public final updateSerializedFontMap()V
    .registers 2

    .line 316
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/graphics/fonts/FontManagerService;->serializeFontMap(Landroid/text/FontConfig;)Landroid/os/SharedMemory;

    move-result-object v0

    if-nez v0, :cond_e

    .line 319
    invoke-static {}, Lcom/android/server/graphics/fonts/FontManagerService;->serializeSystemServerFontMap()Landroid/os/SharedMemory;

    move-result-object v0

    .line 321
    :cond_e
    invoke-virtual {p0, v0}, Lcom/android/server/graphics/fonts/FontManagerService;->setSerializedFontMap(Landroid/os/SharedMemory;)V

    return-void
.end method
