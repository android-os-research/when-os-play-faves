.class public Lorg/junit/rules/TemporaryFolder;
.super Lorg/junit/rules/ExternalResource;
.source "TemporaryFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/rules/TemporaryFolder$Builder;
    }
.end annotation


# static fields
.field private static final TEMP_DIR_ATTEMPTS:I = 0x2710

.field private static final TMP_PREFIX:Ljava/lang/String; = "junit"


# instance fields
.field private final assureDeletion:Z

.field private folder:Ljava/io/File;

.field private final parentFolder:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 58
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/junit/rules/TemporaryFolder;-><init>(Ljava/io/File;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "parentFolder"    # Ljava/io/File;

    .line 68
    invoke-direct {p0}, Lorg/junit/rules/ExternalResource;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/junit/rules/TemporaryFolder;->parentFolder:Ljava/io/File;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/junit/rules/TemporaryFolder;->assureDeletion:Z

    .line 71
    return-void
.end method

.method protected constructor <init>(Lorg/junit/rules/TemporaryFolder$Builder;)V
    .registers 3
    .param p1, "builder"    # Lorg/junit/rules/TemporaryFolder$Builder;

    .line 77
    invoke-direct {p0}, Lorg/junit/rules/ExternalResource;-><init>()V

    .line 78
    invoke-static {p1}, Lorg/junit/rules/TemporaryFolder$Builder;->-$$Nest$fgetparentFolder(Lorg/junit/rules/TemporaryFolder$Builder;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/rules/TemporaryFolder;->parentFolder:Ljava/io/File;

    .line 79
    invoke-static {p1}, Lorg/junit/rules/TemporaryFolder$Builder;->-$$Nest$fgetassureDeletion(Lorg/junit/rules/TemporaryFolder$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/junit/rules/TemporaryFolder;->assureDeletion:Z

    .line 80
    return-void
.end method

.method public static builder()Lorg/junit/rules/TemporaryFolder$Builder;
    .registers 1

    .line 88
    new-instance v0, Lorg/junit/rules/TemporaryFolder$Builder;

    invoke-direct {v0}, Lorg/junit/rules/TemporaryFolder$Builder;-><init>()V

    return-object v0
.end method

.method private static createTemporaryFolderIn(Ljava/io/File;)Ljava/io/File;
    .registers 6
    .param p0, "parentFolder"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    const-string v0, "Failed to create temporary folder in "

    :try_start_2
    invoke-static {p0}, Lorg/junit/rules/TemporaryFolder;->createTemporaryFolderWithNioApi(Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_6} :catch_4f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_6} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_7

    return-object v0

    .line 252
    :catch_7
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 241
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 243
    .local v2, "cause":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/io/IOException;

    if-nez v3, :cond_4b

    .line 246
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_30

    .line 247
    move-object v0, v2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 249
    :cond_30
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 250
    .local v0, "exception":Ljava/io/IOException;
    invoke-virtual {v0, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 251
    throw v0

    .line 244
    .end local v0    # "exception":Ljava/io/IOException;
    :cond_4b
    move-object v0, v2

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 238
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "cause":Ljava/lang/Throwable;
    :catch_4f
    move-exception v0

    .line 240
    .local v0, "ignore":Ljava/lang/ClassNotFoundException;
    invoke-static {p0}, Lorg/junit/rules/TemporaryFolder;->createTemporaryFolderWithFileApi(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private static createTemporaryFolderWithFileApi(Ljava/io/File;)Ljava/io/File;
    .registers 9
    .param p0, "parentFolder"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "createdFolder":Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x2710

    if-ge v1, v2, :cond_36

    .line 277
    const-string v2, ".tmp"

    .line 278
    .local v2, "suffix":Ljava/lang/String;
    const-string v3, "junit"

    invoke-static {v3, v2, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 279
    .local v3, "tmpFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, "tmpName":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, "folderName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    .line 283
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 284
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 285
    return-object v0

    .line 287
    :cond_30
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 275
    .end local v2    # "suffix":Ljava/lang/String;
    .end local v3    # "tmpFile":Ljava/io/File;
    .end local v4    # "tmpName":Ljava/lang/String;
    .end local v5    # "folderName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 289
    .end local v1    # "i":I
    :cond_36
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create temporary directory in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 290
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Tried "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " times. Last attempted to create: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 291
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static createTemporaryFolderWithNioApi(Ljava/io/File;)Ljava/io/File;
    .registers 14
    .param p0, "parentFolder"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 258
    const-string v0, "java.nio.file.Files"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 259
    .local v0, "filesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "java.nio.file.attribute.FileAttribute"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 260
    .local v1, "fileAttributeArray":Ljava/lang/Object;
    const-string v3, "java.nio.file.Path"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 262
    .local v3, "pathClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "junit"

    const/4 v5, 0x0

    const-string v6, "createTempDirectory"

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz p0, :cond_50

    .line 263
    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Class;

    aput-object v3, v10, v2

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-virtual {v0, v6, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 264
    .local v6, "createTempDirectoryMethod":Ljava/lang/reflect/Method;
    const-class v10, Ljava/io/File;

    new-array v11, v2, [Ljava/lang/Class;

    const-string v12, "toPath"

    invoke-virtual {v10, v12, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v11, v2, [Ljava/lang/Object;

    invoke-virtual {v10, p0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 265
    .local v10, "parentPath":Ljava/lang/Object;
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v10, v9, v2

    aput-object v4, v9, v7

    aput-object v1, v9, v8

    invoke-virtual {v6, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 266
    .end local v6    # "createTempDirectoryMethod":Ljava/lang/reflect/Method;
    .end local v10    # "parentPath":Ljava/lang/Object;
    .local v4, "tempDir":Ljava/lang/Object;
    goto :goto_6a

    .line 267
    .end local v4    # "tempDir":Ljava/lang/Object;
    :cond_50
    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v0, v6, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 268
    .restart local v6    # "createTempDirectoryMethod":Ljava/lang/reflect/Method;
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v2

    aput-object v1, v8, v7

    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 270
    .end local v6    # "createTempDirectoryMethod":Ljava/lang/reflect/Method;
    .restart local v4    # "tempDir":Ljava/lang/Object;
    :goto_6a
    new-array v5, v2, [Ljava/lang/Class;

    const-string v6, "toFile"

    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    return-object v2
.end method

.method private recursiveDelete(Ljava/io/File;)Z
    .registers 8
    .param p1, "file"    # Ljava/io/File;

    .line 338
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 339
    const/4 v0, 0x1

    return v0

    .line 341
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 342
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1f

    .line 343
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_1f

    aget-object v4, v0, v3

    .line 344
    .local v4, "each":Ljava/io/File;
    invoke-direct {p0, v4}, Lorg/junit/rules/TemporaryFolder;->recursiveDelete(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 345
    return v2

    .line 343
    .end local v4    # "each":Ljava/io/File;
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 349
    :cond_1f
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method private tryDelete()Z
    .registers 2

    .line 328
    iget-object v0, p0, Lorg/junit/rules/TemporaryFolder;->folder:Ljava/io/File;

    if-nez v0, :cond_6

    .line 329
    const/4 v0, 0x1

    return v0

    .line 332
    :cond_6
    invoke-direct {p0, v0}, Lorg/junit/rules/TemporaryFolder;->recursiveDelete(Ljava/io/File;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected after()V
    .registers 1

    .line 141
    invoke-virtual {p0}, Lorg/junit/rules/TemporaryFolder;->delete()V

    .line 142
    return-void
.end method

.method protected before()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lorg/junit/rules/TemporaryFolder;->create()V

    .line 137
    return-void
.end method

.method public create()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/junit/rules/TemporaryFolder;->parentFolder:Ljava/io/File;

    invoke-static {v0}, Lorg/junit/rules/TemporaryFolder;->createTemporaryFolderIn(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/rules/TemporaryFolder;->folder:Ljava/io/File;

    .line 151
    return-void
.end method

.method public delete()V
    .registers 3

    .line 313
    invoke-direct {p0}, Lorg/junit/rules/TemporaryFolder;->tryDelete()Z

    move-result v0

    if-nez v0, :cond_22

    .line 314
    iget-boolean v0, p0, Lorg/junit/rules/TemporaryFolder;->assureDeletion:Z

    if-eqz v0, :cond_22

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to clean up temporary folder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/junit/rules/TemporaryFolder;->folder:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 318
    :cond_22
    return-void
.end method

.method public getRoot()Ljava/io/File;
    .registers 3

    .line 298
    iget-object v0, p0, Lorg/junit/rules/TemporaryFolder;->folder:Ljava/io/File;

    if-eqz v0, :cond_5

    .line 302
    return-object v0

    .line 299
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the temporary folder has not yet been created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newFile()Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lorg/junit/rules/TemporaryFolder;->getRoot()Ljava/io/File;

    move-result-object v0

    const-string v1, "junit"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public newFile(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/junit/rules/TemporaryFolder;->getRoot()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 162
    return-object v0

    .line 159
    :cond_10
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a file with the name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' already exists in the test folder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public newFolder()Ljava/io/File;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lorg/junit/rules/TemporaryFolder;->getRoot()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/rules/TemporaryFolder;->createTemporaryFolderIn(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public newFolder(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/junit/rules/TemporaryFolder;->newFolder([Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public varargs newFolder([Ljava/lang/String;)Ljava/io/File;
    .registers 11
    .param p1, "paths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    array-length v0, p1

    if-eqz v0, :cond_d4

    .line 196
    invoke-virtual {p0}, Lorg/junit/rules/TemporaryFolder;->getRoot()Ljava/io/File;

    move-result-object v0

    .line 197
    .local v0, "root":Ljava/io/File;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_3b

    aget-object v4, p1, v3

    .line 198
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isAbsolute()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 197
    .end local v4    # "path":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 199
    .restart local v4    # "path":Ljava/lang/String;
    :cond_1c
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder path \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not a relative path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    .end local v4    # "path":Ljava/lang/String;
    :cond_3b
    const/4 v1, 0x0

    .line 204
    .local v1, "relativePath":Ljava/io/File;
    move-object v3, v0

    .line 205
    .local v3, "file":Ljava/io/File;
    const/4 v4, 0x1

    .line 206
    .local v4, "lastMkdirsCallSuccessful":Z
    array-length v5, p1

    :goto_3f
    if-ge v2, v5, :cond_ae

    aget-object v6, p1, v2

    .line 207
    .local v6, "path":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v7

    .line 208
    new-instance v7, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v7

    .line 210
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    .line 211
    if-nez v4, :cond_ab

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_ab

    .line 212
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_88

    .line 213
    new-instance v2, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "a file with the path \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 214
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\' exists"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_88
    new-instance v2, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not create a folder with the path \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 217
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    .end local v6    # "path":Ljava/lang/String;
    :cond_ab
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 221
    :cond_ae
    if-eqz v4, :cond_b1

    .line 225
    return-object v3

    .line 222
    :cond_b1
    new-instance v2, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "a folder with the path \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 223
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' already exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    .end local v0    # "root":Ljava/io/File;
    .end local v1    # "relativePath":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "lastMkdirsCallSuccessful":Z
    :cond_d4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must pass at least one path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
