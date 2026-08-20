.class public Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
.super Lcom/samsung/android/content/clipboard/data/SemClipData;
.source "SemHtmlClipData.java"


# static fields
.field private static final blacklist REGEX:Ljava/lang/String; = "(?i)<[^/bpd][^>]*>|<p[a-z][^>]*>|<br[a-z][^>]*>|<d[^i][^v][^>]*>|<div[a-z][^>]*>|</[^bpd]+?>|</p[a-z]+>|</br[a-z]+>|</d[^i][^v]+>|</div[a-z]+>"

.field private static final blacklist TAG:Ljava/lang/String; = "SemHtmlClipData"

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private blacklist mHtml:Ljava/lang/String;

.field private blacklist mPlainText:Ljava/lang/String;

.field private blacklist mThumbnailImagePath:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 65
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(I)V

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 70
    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(Landroid/os/Parcel;)V

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->readFromSource(Landroid/os/Parcel;)V

    .line 72
    return-void
.end method

.method private blacklist setClipData()V
    .registers 7

    .line 131
    const-string/jumbo v0, "text/html"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "mimeType":[Ljava/lang/String;
    new-instance v1, Landroid/content/ClipData$Item;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 133
    .local v1, "item":Landroid/content/ClipData$Item;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setClipData([Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 134
    return-void
.end method


# virtual methods
.method public blacklist convertForRemote()V
    .registers 3

    .line 397
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    if-eqz v0, :cond_1b

    const-string v1, "/data/semclipboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 398
    const-string v0, "/data/semclipboard/remote/previewhtmlclipboarditem_thum.jpg"

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    .line 400
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setClipData()V

    .line 401
    const-string v0, "SemHtmlClipData"

    const-string/jumbo v1, "success converting"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_1b
    return-void
.end method

.method public blacklist createThumbnailFromData(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 371
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/sec/clipboard/util/FileHelper;->createThumnailFromData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist deleteContentUri(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .line 431
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, "remoteUriFiles":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 433
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_2c

    aget-object v4, v1, v3

    .line 434
    .local v4, "remoteUriFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "remote_file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 435
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->deleteContentUriInternal(Landroid/content/Context;Ljava/lang/String;)V

    .line 433
    .end local v4    # "remoteUriFile":Ljava/io/File;
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 439
    :cond_2c
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 274
    const-string v0, "SemHtmlClipData"

    const-string v1, "html equals"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-super {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 277
    return v1

    .line 280
    :cond_f
    instance-of v0, p1, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    if-nez v0, :cond_14

    .line 281
    return v1

    .line 284
    :cond_14
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    .line 285
    .local v0, "trgData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_24

    const/4 v1, 0x1

    :cond_24
    return v1
.end method

.method public whitelist getClipData()Landroid/content/ClipData;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_7

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setClipData()V

    .line 143
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method protected blacklist getClipDataInternal()Landroid/content/ClipData;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_7

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setClipData()V

    .line 155
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public whitelist getHtml()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 5

    .line 303
    invoke-super {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 304
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_7

    .line 305
    return-object v0

    .line 308
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 309
    return-object v2

    .line 312
    :cond_11
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v1, "file":Ljava/io/File;
    const/high16 v3, 0x10000000

    :try_start_1a
    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1e} :catch_1f

    return-object v2

    .line 315
    :catch_1f
    move-exception v3

    .line 316
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 319
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    return-object v2
.end method

.method public whitelist getPlainText()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getThumbnailBitmap(II)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "result":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "SemHtmlClipData"

    const/4 v3, 0x1

    if-ge v1, v3, :cond_12

    .line 220
    const-string v1, "getThumbnailBitmap : Data is empty."

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-object v0

    .line 224
    :cond_12
    const-string v1, ""

    .line 226
    .local v1, "sFileName":Ljava/lang/String;
    :try_start_14
    iget-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    invoke-static {v4}, Landroid/sec/clipboard/util/ClipboardProcText;->getImgFileNameFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 227
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 228
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_28} :catch_2a

    move-object v1, v4

    .line 231
    goto :goto_2e

    .line 229
    :catch_2a
    move-exception v4

    .line 230
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2e
    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v3, :cond_3c

    .line 234
    const-string v3, "getThumbnailBitmap : FileName is empty."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-object v0

    .line 238
    :cond_3c
    const/4 v2, 0x0

    const/4 v3, 0x7

    if-eqz v1, :cond_53

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_53

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_53

    goto :goto_78

    .line 239
    :cond_53
    if-eqz v1, :cond_74

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_74

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "file://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_74

    .line 240
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "substring":Ljava/lang/String;
    invoke-static {v2, p1, p2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUtil;->getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 242
    .end local v2    # "substring":Ljava/lang/String;
    goto :goto_78

    .line 243
    :cond_74
    invoke-static {v1, p1, p2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUtil;->getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 245
    :goto_78
    return-object v0
.end method

.method public whitelist getThumbnailFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getThumbnailImagePath()Ljava/lang/String;
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getThumbnailPath()Ljava/lang/String;
    .registers 3

    .line 379
    const-string v0, "SemHtmlClipData"

    const-string v1, "SemHtmlClipData - getThumbnailPath"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getThumbnailImagePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist insertContentUri(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .line 410
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 412
    .local v0, "identity":J
    :try_start_4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 413
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "_data"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/content/clipboard/provider/SemImageClipDataProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 416
    .local v3, "contentUri":Landroid/net/Uri;
    const-string v4, "/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 417
    .local v4, "pos":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/semclipboard/remote_send"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 418
    .local v5, "before":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setHtml(Ljava/lang/CharSequence;)Z
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_42} :catch_46
    .catchall {:try_start_4 .. :try_end_42} :catchall_44

    .line 422
    nop

    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "contentUri":Landroid/net/Uri;
    .end local v4    # "pos":I
    .end local v5    # "before":Ljava/lang/String;
    goto :goto_64

    :catchall_44
    move-exception v2

    goto :goto_69

    .line 419
    :catch_46
    move-exception v2

    .line 420
    .local v2, "e":Ljava/lang/Exception;
    :try_start_47
    const-string v3, "SemHtmlClipData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurs because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_47 .. :try_end_63} :catchall_44

    .line 422
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_64
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 423
    nop

    .line 424
    return-void

    .line 422
    :goto_69
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 423
    throw v2
.end method

.method protected blacklist readFromSource(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 292
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 297
    goto :goto_31

    .line 295
    :catch_13
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readFromSource~Exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemHtmlClipData"

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_31
    return-void
.end method

.method public blacklist setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .registers 10
    .param p1, "type"    # I
    .param p2, "altData"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 110
    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v0

    .line 111
    .local v0, "result":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_38

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_11

    goto :goto_38

    .line 115
    :cond_11
    sparse-switch p1, :sswitch_data_3a

    .line 124
    const/4 v0, 0x0

    goto :goto_37

    .line 120
    :sswitch_16
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setHtmlWithImagePathInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 121
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2b

    move v1, v3

    :cond_2b
    move v0, v1

    .line 122
    goto :goto_37

    .line 117
    :sswitch_2d
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setText(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 118
    nop

    .line 127
    :goto_37
    return v0

    .line 112
    :cond_38
    :goto_38
    return v1

    nop

    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_2d
        0x4 -> :sswitch_16
    .end sparse-switch
.end method

.method public whitelist setHtml(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 80
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setHtmlInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public blacklist setHtmlInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "html"    # Ljava/lang/CharSequence;

    .line 160
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 161
    return v1

    .line 164
    :cond_8
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_14

    .line 165
    invoke-interface {p2, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 168
    :cond_14
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 171
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    const-string v1, "(?i)<[^/bpd][^>]*>|<p[a-z][^>]*>|<br[a-z][^>]*>|<d[^i][^v][^>]*>|<div[a-z][^>]*>|</[^bpd]+?>|</p[a-z]+>|</br[a-z]+>|</d[^i][^v]+>|</div[a-z]+>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    .line 172
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    goto :goto_3d

    .line 175
    :cond_37
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    .line 178
    :goto_3d
    const-string v0, "SemHtmlClipData"

    const-string v1, "htmlclipdata setHtmlInternal called"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setHtmlWithImagePath(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "filePath"    # Ljava/lang/CharSequence;

    .line 192
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setHtmlInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 193
    return v1

    .line 196
    :cond_a
    const-string v0, "SemHtmlClipData"

    if-eqz p2, :cond_48

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_16

    goto :goto_48

    .line 200
    :cond_16
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    .line 201
    new-instance v2, Ljava/io/File;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v2, "tempFile":Ljava/io/File;
    invoke-super {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 204
    .local v4, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_3d

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->valid()Z

    move-result v5

    if-nez v5, :cond_36

    goto :goto_3d

    .line 212
    .end local v2    # "tempFile":Ljava/io/File;
    .end local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_36
    const-string/jumbo v1, "setHtmlWithImagePath : value is GOOD file path."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return v3

    .line 205
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_3d
    :goto_3d
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_47

    .line 206
    const-string/jumbo v3, "setHtmlWithImagePath : value is no file descriptor ..check plz"

    invoke-static {v0, v3}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_47
    return v1

    .line 197
    .end local v2    # "tempFile":Ljava/io/File;
    .end local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_48
    :goto_48
    const-string v2, "filePath is null"

    invoke-static {v0, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return v1
.end method

.method public blacklist setHtmlWithImagePathInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "html"    # Ljava/lang/CharSequence;
    .param p3, "filePath"    # Ljava/lang/CharSequence;

    .line 184
    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    .line 185
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    .line 187
    :cond_12
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setHtmlWithImagePath(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public blacklist setThumbnailImagePath(Ljava/lang/String;)Z
    .registers 6
    .param p1, "filePath"    # Ljava/lang/String;

    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 251
    return v1

    .line 254
    :cond_8
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 256
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 257
    const/4 v1, 0x1

    return v1

    .line 259
    :cond_1c
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_27

    .line 260
    const-string v2, "SemHtmlClipData"

    const-string v3, "ClipboardDataHtml : value is no file descriptor ..check plz"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_27
    return v1
.end method

.method public blacklist setThumbnailPath(Ljava/lang/String;)Z
    .registers 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 388
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setThumbnailImagePath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist toLoad()V
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    if-eqz v0, :cond_17

    const-string v1, "/data/clipboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 360
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/sec/clipboard/util/CompatabilityHelper;->replacePathForCompatability(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    .line 361
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setClipData()V

    .line 363
    :cond_17
    const-string v0, "SemHtmlClipData"

    const-string v1, "htmlclipdata toLoad called"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void
.end method

.method public blacklist toSave()V
    .registers 1

    .line 351
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 342
    const-string v0, "SemHtmlClipData class."

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 327
    const-string v0, "SemHtmlClipData"

    const-string v1, "html write to parcel"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 332
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    return-void
.end method
