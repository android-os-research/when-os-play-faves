.class public final Landroid/widget/RemoteViews$ColorResources;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorResources"
.end annotation


# static fields
.field private static final blacklist ARSC_ENTRY_SIZE:I = 0x10

.field private static final blacklist FIRST_RESOURCE_COLOR_ID:I = 0x106001d

.field private static final blacklist LAST_RESOURCE_COLOR_ID:I = 0x106005d


# instance fields
.field private blacklist mLoader:Landroid/content/res/loader/ResourcesLoader;


# direct methods
.method private constructor blacklist <init>(Landroid/content/res/loader/ResourcesLoader;)V
    .registers 2
    .param p1, "loader"    # Landroid/content/res/loader/ResourcesLoader;

    .line 6403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6404
    iput-object p1, p0, Landroid/widget/RemoteViews$ColorResources;->mLoader:Landroid/content/res/loader/ResourcesLoader;

    .line 6405
    return-void
.end method

.method public static blacklist create(Landroid/content/Context;Landroid/util/SparseIntArray;)Landroid/widget/RemoteViews$ColorResources;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorMapping"    # Landroid/util/SparseIntArray;

    .line 6475
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1}, Landroid/widget/RemoteViews$ColorResources;->createCompiledResourcesContent(Landroid/content/Context;Landroid/util/SparseIntArray;)[B

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_5c

    .line 6476
    .local v1, "contentBytes":[B
    if-nez v1, :cond_8

    .line 6477
    return-object v0

    .line 6479
    :cond_8
    const/4 v2, 0x0

    .line 6481
    .local v2, "arscFile":Ljava/io/FileDescriptor;
    :try_start_9
    const-string/jumbo v3, "remote_views_theme_colors.arsc"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/system/Os;->memfd_create(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v3

    move-object v2, v3

    .line 6483
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_54

    .line 6484
    .local v3, "pipeWriter":Ljava/io/OutputStream;
    :try_start_17
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 6486
    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_4a

    .line 6487
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_1e
    new-instance v5, Landroid/content/res/loader/ResourcesLoader;

    invoke-direct {v5}, Landroid/content/res/loader/ResourcesLoader;-><init>()V

    .line 6488
    .local v5, "colorsLoader":Landroid/content/res/loader/ResourcesLoader;
    nop

    .line 6489
    invoke-static {v4, v0}, Landroid/content/res/loader/ResourcesProvider;->loadFromTable(Landroid/os/ParcelFileDescriptor;Landroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;

    move-result-object v6

    .line 6488
    invoke-virtual {v5, v6}, Landroid/content/res/loader/ResourcesLoader;->addProvider(Landroid/content/res/loader/ResourcesProvider;)V

    .line 6490
    new-instance v6, Landroid/widget/RemoteViews$ColorResources;

    invoke-direct {v6, v5}, Landroid/widget/RemoteViews$ColorResources;-><init>(Landroid/content/res/loader/ResourcesLoader;)V
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_3e

    .line 6491
    if-eqz v4, :cond_35

    :try_start_32
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_4a

    .line 6492
    :cond_35
    :try_start_35
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_54

    .line 6494
    if-eqz v2, :cond_3d

    .line 6495
    :try_start_3a
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_5c

    .line 6490
    :cond_3d
    return-object v6

    .line 6486
    .end local v5    # "colorsLoader":Landroid/content/res/loader/ResourcesLoader;
    :catchall_3e
    move-exception v5

    if-eqz v4, :cond_49

    :try_start_41
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception v6

    :try_start_46
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "contentBytes":[B
    .end local v2    # "arscFile":Ljava/io/FileDescriptor;
    .end local v3    # "pipeWriter":Ljava/io/OutputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "colorMapping":Landroid/util/SparseIntArray;
    :cond_49
    :goto_49
    throw v5
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_4a

    .line 6483
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "contentBytes":[B
    .restart local v2    # "arscFile":Ljava/io/FileDescriptor;
    .restart local v3    # "pipeWriter":Ljava/io/OutputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "colorMapping":Landroid/util/SparseIntArray;
    :catchall_4a
    move-exception v4

    :try_start_4b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_53

    :catchall_4f
    move-exception v5

    :try_start_50
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "contentBytes":[B
    .end local v2    # "arscFile":Ljava/io/FileDescriptor;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "colorMapping":Landroid/util/SparseIntArray;
    :goto_53
    throw v4
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_54

    .line 6494
    .end local v3    # "pipeWriter":Ljava/io/OutputStream;
    .restart local v1    # "contentBytes":[B
    .restart local v2    # "arscFile":Ljava/io/FileDescriptor;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "colorMapping":Landroid/util/SparseIntArray;
    :catchall_54
    move-exception v3

    if-eqz v2, :cond_5a

    .line 6495
    :try_start_57
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 6497
    :cond_5a
    nop

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "colorMapping":Landroid/util/SparseIntArray;
    throw v3
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5c} :catch_5c

    .line 6498
    .end local v1    # "contentBytes":[B
    .end local v2    # "arscFile":Ljava/io/FileDescriptor;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "colorMapping":Landroid/util/SparseIntArray;
    :catch_5c
    move-exception v1

    .line 6499
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "RemoteViews"

    const-string v3, "Failed to setup the context for theme colors"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6501
    .end local v1    # "ex":Ljava/lang/Exception;
    return-object v0
.end method

.method private static blacklist createCompiledResourcesContent(Landroid/content/Context;Landroid/util/SparseIntArray;)[B
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorResources"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6438
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1100007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 6440
    .local v0, "input":Ljava/io/InputStream;
    :try_start_b
    invoke-static {v0}, Landroid/widget/RemoteViews$ColorResources;->readFileContent(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 6441
    .local v1, "rawContent":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_53

    move-object v1, v2

    .line 6442
    .local v1, "content":[B
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 6443
    .end local v0    # "input":Ljava/io/InputStream;
    :cond_19
    array-length v0, v1

    add-int/lit16 v0, v0, -0x5d0

    const/4 v2, 0x4

    sub-int/2addr v0, v2

    .line 6445
    .local v0, "valuesOffset":I
    if-gez v0, :cond_29

    .line 6446
    const-string v2, "RemoteViews"

    const-string v3, "ARSC file for theme colors is invalid."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6447
    const/4 v2, 0x0

    return-object v2

    .line 6449
    :cond_29
    const v3, 0x106001d

    .local v3, "colorRes":I
    :goto_2c
    const v4, 0x106005d

    if-gt v3, v4, :cond_52

    .line 6452
    const v4, 0xffff

    and-int/2addr v4, v3

    .line 6453
    .local v4, "index":I
    mul-int/lit8 v5, v4, 0x10

    add-int/2addr v5, v0

    .line 6454
    .local v5, "offset":I
    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {p1, v3, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 6456
    .local v6, "value":I
    const/4 v7, 0x0

    .local v7, "b":I
    :goto_41
    if-ge v7, v2, :cond_4f

    .line 6457
    add-int v8, v5, v7

    and-int/lit16 v9, v6, 0xff

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 6458
    shr-int/lit8 v6, v6, 0x8

    .line 6456
    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    .line 6450
    .end local v4    # "index":I
    .end local v5    # "offset":I
    .end local v6    # "value":I
    .end local v7    # "b":I
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 6461
    .end local v3    # "colorRes":I
    :cond_52
    return-object v1

    .line 6438
    .end local v1    # "content":[B
    .local v0, "input":Ljava/io/InputStream;
    :catchall_53
    move-exception v1

    if-eqz v0, :cond_5e

    :try_start_56
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    goto :goto_5e

    :catchall_5a
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5e
    :goto_5e
    throw v1
.end method

.method private static blacklist readFileContent(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    .registers 5
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6417
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 6418
    .local v0, "content":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 6419
    .local v1, "buffer":[B
    :goto_b
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_1a

    .line 6420
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 6421
    .local v2, "read":I
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 6422
    .end local v2    # "read":I
    goto :goto_b

    .line 6423
    :cond_1a
    return-object v0
.end method


# virtual methods
.method public blacklist apply(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 6413
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/res/loader/ResourcesLoader;

    iget-object v2, p0, Landroid/widget/RemoteViews$ColorResources;->mLoader:Landroid/content/res/loader/ResourcesLoader;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->addLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    .line 6414
    return-void
.end method
