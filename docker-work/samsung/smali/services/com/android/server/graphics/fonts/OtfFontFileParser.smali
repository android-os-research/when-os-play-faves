.class public Lcom/android/server/graphics/fonts/OtfFontFileParser;
.super Ljava/lang/Object;
.source "OtfFontFileParser.java"

# interfaces
.implements Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 120
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 121
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    .line 122
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :catchall_19
    move-exception p0

    .line 119
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_22
    throw p0
.end method

.method public static unmap(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 126
    instance-of v0, p0, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_7

    .line 127
    invoke-static {p0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public buildFontFileName(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-static {p1}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 p1, 0x0

    .line 53
    :try_start_5
    invoke-static {p0, p1}, Landroid/graphics/fonts/FontFileUtil;->getPostScriptName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {p0, p1}, Landroid/graphics/fonts/FontFileUtil;->isPostScriptType1Font(Ljava/nio/ByteBuffer;I)I

    move-result p1

    .line 55
    invoke-static {p0}, Landroid/graphics/fonts/FontFileUtil;->isCollectionFont(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    const/4 v2, -0x1

    if-eq p1, v2, :cond_42

    if-ne v1, v2, :cond_1d

    goto :goto_42

    :cond_1d
    const/4 v2, 0x1

    if-ne v1, v2, :cond_28

    if-ne p1, v2, :cond_25

    const-string p1, ".otc"

    goto :goto_2f

    :cond_25
    const-string p1, ".ttc"

    goto :goto_2f

    :cond_28
    if-ne p1, v2, :cond_2d

    const-string p1, ".otf"

    goto :goto_2f

    :cond_2d
    const-string p1, ".ttf"

    .line 67
    :goto_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_47

    .line 69
    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    return-object p1

    :cond_42
    :goto_42
    const/4 p1, 0x0

    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    return-object p1

    :catchall_47
    move-exception p1

    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    .line 70
    throw p1
.end method

.method public getPostScriptName(Ljava/io/File;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-static {p1}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 p1, 0x0

    .line 43
    :try_start_5
    invoke-static {p0, p1}, Landroid/graphics/fonts/FontFileUtil;->getPostScriptName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 45
    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    return-object p1

    :catchall_d
    move-exception p1

    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    .line 46
    throw p1
.end method

.method public getRevision(Ljava/io/File;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-static {p1}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 p1, 0x0

    .line 78
    :try_start_5
    invoke-static {p0, p1}, Landroid/graphics/fonts/FontFileUtil;->getRevision(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 80
    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    return-wide v0

    :catchall_d
    move-exception p1

    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    .line 81
    throw p1
.end method

.method public tryToCreateTypeface(Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 86
    invoke-static {p1}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 88
    :try_start_4
    new-instance p1, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {p1, p0}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object p1

    .line 89
    new-instance v0, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v0, p1}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v0}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object p1

    .line 90
    new-instance v0, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v0, p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-virtual {v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object p1

    .line 92
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    const/high16 v1, 0x41c00000    # 24.0f

    .line 93
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 94
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const-string p1, "abcXYZ@- \ud83e\uded6\ud83c\uddfa\ud83c\uddf8\ud83d\udc8f\ud83c\udffb\ud83d\udc68\ud83c\udffc\u200d\u2764\ufe0f\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udfff"

    .line 106
    invoke-static {p1, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x0

    const/16 v3, 0x22

    .line 107
    invoke-static {p1, v2, v3, v0, v1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 109
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    invoke-virtual {p1, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_59
    .catchall {:try_start_4 .. :try_end_59} :catchall_5d

    .line 114
    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    return-void

    :catchall_5d
    move-exception p1

    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    .line 115
    throw p1
.end method
