.class public Lcom/android/server/enterprise/general/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# static fields
.field public static final CHMOD_COMMAND:Ljava/lang/String; = "chmod 777 "

.field public static final CHMOD_EXECUTE_COMMAND:Ljava/lang/String; = "chmod 711 "

.field public static final CHMOD_READ_COMMAND:Ljava/lang/String; = "chmod 744 "

.field public static final FONT_DIRECTORY:Ljava/lang/String; = "fonts"

.field public static final LOC_DIRECTORY:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts"

.field public static final MONOSPACE_LOC_NAME:Ljava/lang/String; = "monospace.loc"

.field public static final NEW_FONT_DIRECTORY:Ljava/lang/String; = "/data/app_fonts/"

.field public static final SANS_LOC_NAME:Ljava/lang/String; = "sans.loc"

.field public static final SERIF_LOC_NAME:Ljava/lang/String; = "serif.loc"

.field public static TAG:Ljava/lang/String; = "FontWriter"


# instance fields
.field public bos:Ljava/io/BufferedOutputStream;

.field public fOut:Ljava/io/FileOutputStream;

.field public osw:Ljava/io/OutputStreamWriter;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 71
    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 73
    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    return-void
.end method


# virtual methods
.method public changeFilePermission(Ljava/lang/String;)V
    .registers 4

    .line 307
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 744 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 311
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    .line 313
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result p0

    if-nez p0, :cond_23

    goto :goto_2b

    .line 315
    :cond_23
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot chmod"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2b} :catch_2b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_2b} :catch_2b

    :catch_2b
    :goto_2b
    return-void
.end method

.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 14

    const-string v0, "copyFontFile : bos.close() error"

    const-string v1, "copyFontFile : fOut.close() error"

    const-string v2, "copyFontFile : myInputStream.close() error"

    const-string v3, ""

    const-wide/16 v4, 0x0

    .line 363
    :try_start_a
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 367
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 371
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 373
    new-instance v6, Ljava/io/BufferedOutputStream;

    iget-object v7, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/16 v6, 0x400

    new-array v6, v6, [B

    .line 383
    :goto_2a
    invoke-virtual {p2, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_37

    .line 385
    iget-object v8, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_2a

    .line 389
    :cond_37
    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 391
    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 393
    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_46} :catch_6c
    .catchall {:try_start_a .. :try_end_46} :catchall_6a

    .line 421
    :try_start_46
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_4f

    .line 427
    :catch_4a
    sget-object p2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :goto_4f
    :try_start_4f
    iget-object p2, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz p2, :cond_5c

    .line 435
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_56} :catch_57

    goto :goto_5c

    .line 441
    :catch_57
    sget-object p2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_5c
    :goto_5c
    :try_start_5c
    iget-object p2, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz p2, :cond_9d

    .line 449
    :goto_60
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_63} :catch_64

    goto :goto_9d

    .line 455
    :catch_64
    sget-object p2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    :catchall_6a
    move-exception p1

    goto :goto_b1

    :catch_6c
    move-exception v6

    .line 401
    :try_start_6d
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v8, v8, v4

    if-nez v8, :cond_7d

    .line 407
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 411
    :cond_7d
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_6d .. :try_end_80} :catchall_6a

    if-eqz p2, :cond_8b

    .line 421
    :try_start_82
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_8b

    .line 427
    :catch_86
    sget-object p2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_8b
    :goto_8b
    :try_start_8b
    iget-object p2, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz p2, :cond_98

    .line 435
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_92} :catch_93

    goto :goto_98

    .line 441
    :catch_93
    sget-object p2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_98
    :goto_98
    :try_start_98
    iget-object p2, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9a} :catch_64

    if-eqz p2, :cond_9d

    goto :goto_60

    .line 461
    :cond_9d
    :goto_9d
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 467
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-nez p1, :cond_b0

    .line 473
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_b0
    return-void

    :goto_b1
    if-eqz p2, :cond_bc

    .line 421
    :try_start_b3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7

    goto :goto_bc

    .line 427
    :catch_b7
    sget-object p2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_bc
    :goto_bc
    :try_start_bc
    iget-object p2, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz p2, :cond_c9

    .line 435
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_c3} :catch_c4

    goto :goto_c9

    .line 441
    :catch_c4
    sget-object p2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_c9
    :goto_c9
    :try_start_c9
    iget-object p0, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz p0, :cond_d6

    .line 449
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_d0} :catch_d1

    goto :goto_d6

    .line 455
    :catch_d1
    sget-object p0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_d6
    :goto_d6
    throw p1
.end method

.method public copyFontFile1(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 14

    const-string v0, "copyFontFile : bos.close() error"

    const-string v1, "copyFontFile : fOut.close() error"

    const-string v2, "copyFontFile : myInputStream.close() error"

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 490
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const/4 p0, 0x0

    .line 495
    :try_start_1b
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_25} :catch_64
    .catchall {:try_start_1b .. :try_end_25} :catchall_5f

    .line 499
    :try_start_25
    new-instance p3, Ljava/io/BufferedOutputStream;

    invoke-direct {p3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_5a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_57

    const/16 p0, 0x400

    :try_start_2c
    new-array p0, p0, [B

    .line 507
    :goto_2e
    invoke-virtual {p2, p0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_39

    const/4 v7, 0x0

    .line 509
    invoke-virtual {p3, p0, v7, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_2e

    .line 513
    :cond_39
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 515
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 517
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_42} :catch_55
    .catchall {:try_start_2c .. :try_end_42} :catchall_ad

    .line 545
    :try_start_42
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_4b

    .line 551
    :catch_46
    sget-object p0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :goto_4b
    :try_start_4b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_93

    .line 565
    :catch_4f
    sget-object p0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    :catch_55
    move-exception p0

    goto :goto_68

    :catchall_57
    move-exception p1

    move-object p3, p0

    goto :goto_62

    :catch_5a
    move-exception p3

    move-object v9, p3

    move-object p3, p0

    move-object p0, v9

    goto :goto_68

    :catchall_5f
    move-exception p1

    move-object p3, p0

    move-object v5, p3

    :goto_62
    move-object p0, p1

    goto :goto_ae

    :catch_64
    move-exception p3

    move-object v5, p0

    move-object p0, p3

    move-object p3, v5

    .line 525
    :goto_68
    :try_start_68
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-nez v7, :cond_78

    .line 531
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 535
    :cond_78
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_68 .. :try_end_7b} :catchall_ad

    if-eqz p2, :cond_86

    .line 545
    :try_start_7d
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_86

    .line 551
    :catch_81
    sget-object p0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    :goto_86
    if-eqz v5, :cond_91

    .line 559
    :try_start_88
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_91

    .line 565
    :catch_8c
    sget-object p0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    :goto_91
    if-eqz p3, :cond_9c

    .line 573
    :goto_93
    :try_start_93
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_9c

    .line 579
    :catch_97
    sget-object p0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_9c
    :goto_9c
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p1

    cmp-long p1, p1, v3

    if-nez p1, :cond_ac

    .line 597
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_ac
    return-void

    :catchall_ad
    move-exception p0

    :goto_ae
    if-eqz p2, :cond_b9

    .line 545
    :try_start_b0
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_b4

    goto :goto_b9

    .line 551
    :catch_b4
    sget-object p1, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b9
    :goto_b9
    if-eqz v5, :cond_c4

    .line 559
    :try_start_bb
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_bf

    goto :goto_c4

    .line 565
    :catch_bf
    sget-object p1, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c4
    :goto_c4
    if-eqz p3, :cond_cf

    .line 573
    :try_start_c6
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_ca

    goto :goto_cf

    .line 579
    :catch_ca
    sget-object p1, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_cf
    :goto_cf
    throw p0
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .line 182
    sget-object p1, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v0, "createFontDirectory : Start"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/data/app_fonts/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 184
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    const/4 p1, 0x1

    const/4 v1, 0x0

    .line 186
    invoke-virtual {v0, p1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 187
    invoke-virtual {v0, p1, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 188
    invoke-virtual {v0, p1, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 190
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_40

    const/4 p0, 0x0

    return-object p0

    .line 200
    :cond_40
    :goto_40
    array-length v2, p2

    if-ge v1, v2, :cond_4b

    .line 204
    aget-object v2, p2, v1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/general/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 212
    :cond_4b
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-eqz p0, :cond_59

    .line 213
    sget-object p0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string p2, "Font directory  : Created"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 215
    :cond_59
    sget-object p0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string p2, "Font directory  : Not Created"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_60
    :try_start_60
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    .line 223
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "chmod 711 "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 225
    invoke-virtual {p0, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 227
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    .line 229
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result p0

    if-nez p0, :cond_87

    goto :goto_9e

    .line 231
    :cond_87
    new-instance p0, Ljava/io/IOException;

    const-string p2, "Cannot chmod"

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_8f} :catch_97
    .catch Ljava/lang/InterruptedException; {:try_start_60 .. :try_end_8f} :catch_8f

    .line 245
    :catch_8f
    sget-object p0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string p2, "InterruptedException : "

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 239
    :catch_97
    sget-object p0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string p2, "IOException : "

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9e
    return-object p1
.end method

.method public final deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .registers 5

    .line 265
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_20

    .line 273
    :goto_c
    array-length v0, p1

    if-ge p2, v0, :cond_1c

    .line 277
    new-instance v0, Ljava/io/File;

    aget-object v1, p1, p2

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    .line 283
    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p2

    :cond_20
    return p2
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string p1, ""

    const-string/jumbo v0, "writeLoc : fOut.close() error"

    const-string/jumbo v1, "writeLoc : osw.close() error"

    .line 111
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/app_fonts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 116
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2d} :catch_7a
    .catchall {:try_start_8 .. :try_end_2d} :catchall_78

    .line 118
    :try_start_2d
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 120
    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 124
    iget-object p3, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {p3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 126
    iget-object p3, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_5b} :catch_76
    .catchall {:try_start_2d .. :try_end_5b} :catchall_78

    .line 139
    :try_start_5b
    iget-object p3, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz p3, :cond_68

    .line 141
    invoke-virtual {p3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_62} :catch_63

    goto :goto_68

    .line 147
    :catch_63
    sget-object p3, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_68
    :goto_68
    :try_start_68
    iget-object p3, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz p3, :cond_91

    .line 155
    :goto_6c
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6f} :catch_70

    goto :goto_91

    .line 161
    :catch_70
    sget-object p3, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    :catch_76
    move-exception p3

    goto :goto_7c

    :catchall_78
    move-exception p1

    goto :goto_9b

    :catch_7a
    move-exception p3

    move-object p2, p1

    .line 131
    :goto_7c
    :try_start_7c
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_78

    .line 139
    :try_start_7f
    iget-object p3, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz p3, :cond_8c

    .line 141
    invoke-virtual {p3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_86} :catch_87

    goto :goto_8c

    .line 147
    :catch_87
    sget-object p3, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_8c
    :goto_8c
    :try_start_8c
    iget-object p3, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8e} :catch_70

    if-eqz p3, :cond_91

    goto :goto_6c

    :cond_91
    :goto_91
    const-string/jumbo p3, "persist.sys.flipfontpath"

    .line 167
    invoke-static {p3, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    return-void

    .line 139
    :goto_9b
    :try_start_9b
    iget-object p2, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz p2, :cond_a8

    .line 141
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_a2} :catch_a3

    goto :goto_a8

    .line 147
    :catch_a3
    sget-object p2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_a8
    :goto_a8
    :try_start_a8
    iget-object p0, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz p0, :cond_b5

    .line 155
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_af} :catch_b0

    goto :goto_b5

    .line 161
    :catch_b0
    sget-object p0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_b5
    :goto_b5
    throw p1
.end method
