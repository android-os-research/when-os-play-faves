.class Lcom/android/internal/app/ChooserActivity$FilePathUtil;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilePathUtil"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 15390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15391
    return-void
.end method

.method public static blacklist getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 15446
    const/4 v0, 0x0

    .line 15447
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v1, "_data"

    .line 15448
    .local v1, "column":Ljava/lang/String;
    const-string v2, "_data"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 15450
    .local v5, "projection":[Ljava/lang/String;
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v8, 0x0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    .line 15452
    if-eqz v0, :cond_2c

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 15453
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 15454
    .local v2, "column_index":I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_33

    .line 15457
    if-eqz v0, :cond_2b

    .line 15458
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 15454
    :cond_2b
    return-object v3

    .line 15457
    .end local v2    # "column_index":I
    :cond_2c
    if-eqz v0, :cond_31

    .line 15458
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 15461
    :cond_31
    const/4 v2, 0x0

    return-object v2

    .line 15457
    :catchall_33
    move-exception v2

    if-eqz v0, :cond_39

    .line 15458
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 15460
    :cond_39
    throw v2
.end method

.method public static blacklist getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 15396
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x13

    if-lt v0, v3, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 15397
    .local v0, "isKitKat":Z
    :goto_b
    const/4 v3, 0x0

    if-eqz v0, :cond_b3

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 15398
    invoke-static {p1}, Lcom/android/internal/app/ChooserActivity$FilePathUtil;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v4

    const-string v5, ":"

    if-eqz v4, :cond_4f

    .line 15399
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 15400
    .local v4, "docId":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 15401
    .local v5, "split":[Ljava/lang/String;
    aget-object v2, v5, v2

    .line 15403
    .local v2, "type":Ljava/lang/String;
    const-string/jumbo v6, "primary"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 15404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v1, v5, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 15406
    .end local v2    # "type":Ljava/lang/String;
    .end local v4    # "docId":Ljava/lang/String;
    .end local v5    # "split":[Ljava/lang/String;
    :cond_4d
    goto/16 :goto_d5

    :cond_4f
    invoke-static {p1}, Lcom/android/internal/app/ChooserActivity$FilePathUtil;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 15407
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 15408
    .local v1, "id":Ljava/lang/String;
    nop

    .line 15409
    const-string v2, "content://downloads/public_downloads"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 15408
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 15411
    .local v2, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v2, v3, v3}, Lcom/android/internal/app/ChooserActivity$FilePathUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 15414
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "contentUri":Landroid/net/Uri;
    :cond_71
    invoke-static {p1}, Lcom/android/internal/app/ChooserActivity$FilePathUtil;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_d5

    .line 15415
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 15416
    .local v3, "docId":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 15417
    .local v4, "split":[Ljava/lang/String;
    aget-object v5, v4, v2

    .line 15418
    .local v5, "type":Ljava/lang/String;
    const/4 v6, 0x0

    .line 15419
    .local v6, "contentUri":Landroid/net/Uri;
    const-string v7, "image"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 15420
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_a3

    .line 15421
    :cond_8d
    const-string/jumbo v7, "video"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_99

    .line 15422
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_a3

    .line 15423
    :cond_99
    const-string v7, "audio"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 15424
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 15426
    :cond_a3
    :goto_a3
    const-string v7, "_id=?"

    .line 15427
    .local v7, "selection":Ljava/lang/String;
    new-array v8, v1, [Ljava/lang/String;

    aget-object v1, v4, v1

    aput-object v1, v8, v2

    move-object v1, v8

    .line 15430
    .local v1, "selectionArgs":[Ljava/lang/String;
    const-string v2, "_id=?"

    invoke-static {p0, v6, v2, v1}, Lcom/android/internal/app/ChooserActivity$FilePathUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 15434
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    .end local v3    # "docId":Ljava/lang/String;
    .end local v4    # "split":[Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "contentUri":Landroid/net/Uri;
    .end local v7    # "selection":Ljava/lang/String;
    :cond_b3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 15435
    invoke-static {p0, p1, v3, v3}, Lcom/android/internal/app/ChooserActivity$FilePathUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 15438
    :cond_c4
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 15439
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 15441
    :cond_d5
    :goto_d5
    return-object v3
.end method

.method public static blacklist isDownloadsDocument(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 15469
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.providers.downloads.documents"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isExternalStorageDocument(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 15465
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.externalstorage.documents"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isMediaDocument(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 15473
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.providers.media.documents"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
