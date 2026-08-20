.class public Landroid/test/RenamingDelegatingContext;
.super Landroid/content/ContextWrapper;
.source "RenamingDelegatingContext.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mCacheDir:Ljava/io/File;

.field private mDatabaseNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileContext:Landroid/content/Context;

.field private mFileNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilePrefix:Ljava/lang/String;

.field private final mSync:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileContext"    # Landroid/content/Context;
    .param p3, "filePrefix"    # Ljava/lang/String;

    .line 136
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mSync:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    .line 137
    iput-object p2, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    .line 138
    iput-object p3, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePrefix"    # Ljava/lang/String;

    .line 124
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mSync:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    .line 125
    iput-object p1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public static providerWithRenamedContext(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Landroid/content/ContentProvider;
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "filePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/ContentProvider;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 62
    .local p0, "contentProvider":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/test/RenamingDelegatingContext;->providerWithRenamedContext(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/ContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public static providerWithRenamedContext(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/ContentProvider;
    .registers 8
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "filePrefix"    # Ljava/lang/String;
    .param p3, "allowAccessToExistingFilesAndDbs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/ContentProvider;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 69
    .local p0, "contentProvider":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v0, p0

    .line 70
    .local v0, "mProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProvider;

    .line 71
    .local v1, "mProvider":Landroid/content/ContentProvider;, "TT;"
    new-instance v2, Landroid/test/RenamingDelegatingContext;

    invoke-direct {v2, p1, p2}, Landroid/test/RenamingDelegatingContext;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    .local v2, "mContext":Landroid/test/RenamingDelegatingContext;
    if-eqz p3, :cond_11

    .line 73
    invoke-virtual {v2}, Landroid/test/RenamingDelegatingContext;->makeExistingFilesAndDbsAccessible()V

    .line 75
    :cond_11
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/test/mock/MockContentProvider;->attachInfoForTesting(Landroid/content/ContentProvider;Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 76
    return-object v1
.end method

.method private renamedFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public databaseList()[Ljava/lang/String;
    .registers 3

    .line 188
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public deleteDatabase(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 174
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 177
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 216
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 217
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 220
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public fileList()[Ljava/lang/String;
    .registers 3

    .line 226
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .registers 5

    .line 236
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_3
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mCacheDir:Ljava/io/File;

    if-nez v1, :cond_1a

    .line 238
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "cache"

    invoke-direct {p0, v3}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/test/RenamingDelegatingContext;->mCacheDir:Ljava/io/File;

    .line 240
    :cond_1a
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 241
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_34

    .line 242
    const-string v1, "RenamingDelegatingContext"

    const-string v2, "Unable to create cache directory"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_50

    return-object v1

    .line 247
    :cond_34
    :try_start_34
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const-class v2, Ljava/nio/file/attribute/PosixFilePermission;

    .line 248
    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    .line 247
    invoke-static {v1, v2}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_43} :catch_44
    .catchall {:try_start_34 .. :try_end_43} :catchall_50

    .line 252
    goto :goto_4c

    .line 249
    :catch_44
    move-exception v1

    .line 250
    .local v1, "e":Ljava/io/IOException;
    :try_start_45
    const-string v2, "RenamingDelegatingContext"

    const-string v3, "Could not set permissions of test cacheDir"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4c
    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_50

    .line 255
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mCacheDir:Ljava/io/File;

    return-object v0

    .line 254
    :catchall_50
    move-exception v1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v1
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 183
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDatabasePrefix()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 211
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public makeExistingFilesAndDbsAccessible()V
    .registers 8

    .line 85
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "databaseList":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_1f

    aget-object v4, v0, v3

    .line 87
    .local v4, "diskName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/test/RenamingDelegatingContext;->shouldDiskNameBeVisible(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 88
    iget-object v5, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    invoke-virtual {p0, v4}, Landroid/test/RenamingDelegatingContext;->publicNameFromDiskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v4    # "diskName":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 91
    :cond_1f
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "fileList":[Ljava/lang/String;
    array-length v3, v1

    :goto_26
    if-ge v2, v3, :cond_3c

    aget-object v4, v1, v2

    .line 93
    .restart local v4    # "diskName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/test/RenamingDelegatingContext;->shouldDiskNameBeVisible(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 94
    iget-object v5, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    invoke-virtual {p0, v4}, Landroid/test/RenamingDelegatingContext;->publicNameFromDiskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v4    # "diskName":Ljava/lang/String;
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 97
    :cond_3c
    return-void
.end method

.method public openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "internalName":Ljava/lang/String;
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 196
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    return-object v1

    .line 198
    :cond_13
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 152
    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "internalName":Ljava/lang/String;
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 154
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 157
    :cond_16
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p2, p3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    return-object v1
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .line 163
    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "internalName":Ljava/lang/String;
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 165
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 168
    :cond_16
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    return-object v1
.end method

.method publicNameFromDiskName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "diskName"    # Ljava/lang/String;

    .line 112
    invoke-virtual {p0, p1}, Landroid/test/RenamingDelegatingContext;->shouldDiskNameBeVisible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 115
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disk file should not be visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method shouldDiskNameBeVisible(Ljava/lang/String;)Z
    .registers 3
    .param p1, "diskName"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
