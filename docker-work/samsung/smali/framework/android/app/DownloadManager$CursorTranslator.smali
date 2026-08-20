.class Landroid/app/DownloadManager$CursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CursorTranslator"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final greylist-max-o mAccessFilename:Z

.field private final greylist-max-o mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2365
    const-class v0, Landroid/app/DownloadManager;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/database/Cursor;Landroid/net/Uri;Z)V
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "baseUri"    # Landroid/net/Uri;
    .param p3, "accessFilename"    # Z

    .line 2370
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 2371
    iput-object p2, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    .line 2372
    iput-boolean p3, p0, Landroid/app/DownloadManager$CursorTranslator;->mAccessFilename:Z

    .line 2373
    return-void
.end method

.method private greylist-max-o getErrorCode(I)J
    .registers 4
    .param p1, "status"    # I

    .line 2458
    const/16 v0, 0x190

    if-gt v0, p1, :cond_8

    const/16 v0, 0x1e8

    if-lt p1, v0, :cond_10

    :cond_8
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_12

    const/16 v0, 0x2bc

    if-ge p1, v0, :cond_12

    .line 2461
    :cond_10
    int-to-long v0, p1

    return-wide v0

    .line 2464
    :cond_12
    sparse-switch p1, :sswitch_data_30

    .line 2491
    const-wide/16 v0, 0x3e8

    return-wide v0

    .line 2476
    :sswitch_18
    const-wide/16 v0, 0x3ed

    return-wide v0

    .line 2473
    :sswitch_1b
    const-wide/16 v0, 0x3ec

    return-wide v0

    .line 2470
    :sswitch_1e
    const-wide/16 v0, 0x3ea

    return-wide v0

    .line 2466
    :sswitch_21
    const-wide/16 v0, 0x3e9

    return-wide v0

    .line 2485
    :sswitch_24
    const-wide/16 v0, 0x3f0

    return-wide v0

    .line 2488
    :sswitch_27
    const-wide/16 v0, 0x3f1

    return-wide v0

    .line 2482
    :sswitch_2a
    const-wide/16 v0, 0x3ef

    return-wide v0

    .line 2479
    :sswitch_2d
    const-wide/16 v0, 0x3ee

    return-wide v0

    :sswitch_data_30
    .sparse-switch
        0xc6 -> :sswitch_2d
        0xc7 -> :sswitch_2a
        0x1e8 -> :sswitch_27
        0x1e9 -> :sswitch_24
        0x1ec -> :sswitch_21
        0x1ed -> :sswitch_1e
        0x1ee -> :sswitch_1e
        0x1ef -> :sswitch_1b
        0x1f1 -> :sswitch_18
    .end sparse-switch
.end method

.method private greylist-max-o getLocalUri()Ljava/lang/String;
    .registers 6

    .line 2409
    const-string v0, "destination"

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    .line 2410
    .local v0, "destinationType":J
    const-wide/16 v2, 0x4

    cmp-long v2, v0, v2

    if-eqz v2, :cond_32

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_32

    const-wide/16 v2, 0x6

    cmp-long v2, v0, v2

    if-nez v2, :cond_1d

    goto :goto_32

    .line 2421
    :cond_1d
    const-string v2, "_id"

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v2

    .line 2422
    .local v2, "downloadId":J
    sget-object v4, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2413
    .end local v2    # "downloadId":J
    :cond_32
    :goto_32
    const-string v2, "local_filename"

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-super {p0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2414
    .local v2, "localPath":Ljava/lang/String;
    if-nez v2, :cond_40

    .line 2415
    const/4 v3, 0x0

    return-object v3

    .line 2417
    :cond_40
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private greylist-max-o getPausedReason(I)J
    .registers 4
    .param p1, "status"    # I

    .line 2439
    packed-switch p1, :pswitch_data_12

    .line 2453
    const-wide/16 v0, 0x4

    return-wide v0

    .line 2447
    :pswitch_6
    const-wide/16 v0, 0x3

    return-wide v0

    .line 2444
    :pswitch_9
    const-wide/16 v0, 0x2

    return-wide v0

    .line 2441
    :pswitch_c
    const-wide/16 v0, 0x1

    return-wide v0

    .line 2450
    :pswitch_f
    const-wide/16 v0, 0x5

    return-wide v0

    :pswitch_data_12
    .packed-switch 0xc1
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private greylist-max-o getReason(I)J
    .registers 4
    .param p1, "status"    # I

    .line 2426
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_14

    .line 2434
    const-wide/16 v0, 0x0

    return-wide v0

    .line 2428
    :sswitch_a
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getErrorCode(I)J

    move-result-wide v0

    return-wide v0

    .line 2431
    :sswitch_f
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getPausedReason(I)J

    move-result-wide v0

    return-wide v0

    :sswitch_data_14
    .sparse-switch
        0x4 -> :sswitch_f
        0x10 -> :sswitch_a
    .end sparse-switch
.end method

.method private greylist-max-o translateStatus(I)I
    .registers 3
    .param p1, "status"    # I

    .line 2496
    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_14

    .line 2526
    :pswitch_4
    goto :goto_11

    .line 2510
    :pswitch_5
    const/16 v0, 0x8

    return v0

    .line 2507
    :pswitch_8
    const/4 v0, 0x4

    return v0

    .line 2501
    :pswitch_a
    return v0

    .line 2498
    :pswitch_b
    const/4 v0, 0x1

    return v0

    .line 2513
    :pswitch_d
    const/high16 v0, 0x10000

    return v0

    .line 2522
    :pswitch_10
    return v0

    .line 2527
    :goto_11
    const/16 v0, 0x10

    return v0

    :pswitch_data_14
    .packed-switch 0xb5
        :pswitch_10
        :pswitch_d
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_4
        :pswitch_10
        :pswitch_4
        :pswitch_b
        :pswitch_4
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public whitelist getInt(I)I
    .registers 4
    .param p1, "columnIndex"    # I

    .line 2377
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist getLong(I)J
    .registers 4
    .param p1, "columnIndex"    # I

    .line 2382
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "status"

    if-eqz v0, :cond_1d

    .line 2383
    invoke-virtual {p0, v1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getReason(I)J

    move-result-wide v0

    return-wide v0

    .line 2384
    :cond_1d
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2385
    invoke-virtual {p0, v1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 2387
    :cond_35
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .registers 5
    .param p1, "columnIndex"    # I

    .line 2393
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 2394
    .local v0, "columnName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3c

    :cond_b
    goto :goto_20

    :sswitch_c
    const-string v1, "local_filename"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_21

    :sswitch_16
    const-string v1, "local_uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_21

    :goto_20
    const/4 v1, -0x1

    :goto_21
    packed-switch v1, :pswitch_data_46

    goto :goto_37

    .line 2398
    :pswitch_25
    iget-boolean v1, p0, Landroid/app/DownloadManager$CursorTranslator;->mAccessFilename:Z

    if-eqz v1, :cond_2a

    goto :goto_37

    .line 2399
    :cond_2a
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "COLUMN_LOCAL_FILENAME is deprecated; use ContentResolver.openFileDescriptor() instead"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2396
    :pswitch_32
    invoke-direct {p0}, Landroid/app/DownloadManager$CursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2404
    :goto_37
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_3c
    .sparse-switch
        -0x47d0d968 -> :sswitch_16
        0x150cc5b -> :sswitch_c
    .end sparse-switch

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_32
        :pswitch_25
    .end packed-switch
.end method
