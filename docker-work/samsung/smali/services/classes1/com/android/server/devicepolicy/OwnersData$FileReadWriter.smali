.class public abstract Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;
.super Ljava/lang/Object;
.source "OwnersData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/OwnersData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FileReadWriter"
.end annotation


# instance fields
.field public final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->mFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public readFromFileLocked()V
    .registers 8

    const-string v0, "DevicePolicyManagerService"

    .line 286
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 295
    :cond_b
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 298
    :try_start_13
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 299
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    const/4 v3, 0x0

    .line 303
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_68

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2d

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2a

    goto :goto_1c

    :cond_2a
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    .line 315
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    if-ne v3, v5, :cond_56

    const-string/jumbo v5, "root"

    .line 317
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 318
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid root tag: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_52} :catch_62
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_52} :catch_62
    .catchall {:try_start_13 .. :try_end_52} :catchall_60

    .line 331
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    .line 324
    :cond_56
    :try_start_56
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->readInner(Landroid/util/TypedXmlPullParser;ILjava/lang/String;)Z

    move-result v4
    :try_end_5a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_56 .. :try_end_5a} :catch_62
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5a} :catch_62
    .catchall {:try_start_56 .. :try_end_5a} :catchall_60

    if-nez v4, :cond_1c

    .line 331
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_60
    move-exception p0

    goto :goto_6c

    :catch_62
    move-exception p0

    :try_start_63
    const-string v1, "Error parsing owners information file"

    .line 329
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_60

    .line 331
    :cond_68
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_6c
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 332
    throw p0
.end method

.method public abstract readInner(Landroid/util/TypedXmlPullParser;ILjava/lang/String;)Z
.end method

.method public abstract shouldWrite()Z
.end method

.method public abstract writeInner(Landroid/util/TypedXmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeToFileLocked()Z
    .registers 9

    const-string/jumbo v0, "root"

    .line 234
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->shouldWrite()Z

    move-result v1

    const-string v2, "DevicePolicyManagerService"

    const/4 v3, 0x1

    if-nez v1, :cond_37

    .line 239
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 243
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_36

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return v3

    .line 253
    :cond_37
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v4, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->mFile:Ljava/io/File;

    invoke-direct {v1, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v4, 0x0

    .line 256
    :try_start_3f
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_43} :catch_62

    .line 257
    :try_start_43
    invoke-static {v5}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v6

    .line 260
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, v4, v7}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 261
    invoke-interface {v6, v4, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 264
    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->writeInner(Landroid/util/TypedXmlSerializer;)V

    .line 267
    invoke-interface {v6, v4, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    invoke-interface {v6}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 269
    invoke-interface {v6}, Landroid/util/TypedXmlSerializer;->flush()V

    .line 272
    invoke-virtual {v1, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_5e} :catch_5f

    return v3

    :catch_5f
    move-exception p0

    move-object v4, v5

    goto :goto_63

    :catch_62
    move-exception p0

    :goto_63
    const-string v0, "Exception when writing"

    .line 276
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v4, :cond_6d

    .line 278
    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_6d
    const/4 p0, 0x0

    return p0
.end method
