.class public final Lcom/android/server/HermesBigdataFunction;
.super Ljava/lang/Object;
.source "HermesBigdataFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HermesBigdataFunction$BigdataError;
    }
.end annotation


# static fields
.field public static final CAPTURED_SKEYMASTER_DUMP_PATH:Ljava/lang/String; = "/data/log/sepunion/hermes/parsed_skeymast.txt"

.field public static final CHECK_CHIPSET_LISTS:[Ljava/lang/String;

.field public static final LOG_BASE_PATH:Ljava/lang/String; = "/data/log/sepunion/hermes/"

.field public static final MAX_BUF_SIZE:I = 0x1000

.field public static final MAX_LOG_SIZE:I = 0x100000

.field public static final PARSING_REGEX:Ljava/lang/String; = "^\\s*\\d{2}-\\d{2}\\s\\d{2}:\\d{2}:\\d{2}\\.\\d+\\s+(\\d+|root)\\s+\\d+\\s+\\d+\\s.\\s+%s:.*"

.field public static final PARSING_TAG:[Ljava/lang/String;

.field public static final SKEYMASTER_DUMP_LOG_PATH:Ljava/lang/String; = "/data/log/"

.field public static final SKEYMASTER_DUMP_LOG_PREFIX:Ljava/lang/String; = "dumpstate_skeymaster"

.field public static final TAG:Ljava/lang/String; = "HERMES#BigDataFunction"

.field public static final TXT_FILENAME_EXT:Ljava/lang/String; = "txt"

.field public static final ZIP_FILENAME_EXT:Ljava/lang/String; = "zip"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "DrmLibFs"

    .line 40
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/HermesBigdataFunction;->PARSING_TAG:[Ljava/lang/String;

    const-string v0, "SM8550"

    .line 43
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/HermesBigdataFunction;->CHECK_CHIPSET_LISTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeFolder(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_10

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x1

    :goto_11
    return p0
.end method

.method public static makeRegexPattern([Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 7

    .line 77
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    sget-object v0, Lcom/android/server/HermesBigdataFunction;->PARSING_TAG:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    .line 83
    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    move v3, v0

    :goto_10
    if-ge v3, v1, :cond_2e

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/HermesBigdataFunction;->PARSING_TAG:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 87
    :cond_2e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_4b

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4b
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "^\\s*\\d{2}-\\d{2}\\s\\d{2}:\\d{2}:\\d{2}\\.\\d+\\s+(\\d+|root)\\s+\\d+\\s+\\d+\\s.\\s+%s:.*"

    .line 92
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final cleanBigdataLogFiles()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/BigdataException;
        }
    .end annotation

    const-string p0, "EUCKR"

    .line 299
    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/sepunion/hermes/parsed_skeymast.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_1e} :catch_dd
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_1e} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_cd

    const-string v3, "HERMES#BigDataFunction"

    if-eqz v2, :cond_38

    .line 302
    :try_start_22
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    cmp-long v2, v4, v6

    if-lez v2, :cond_38

    .line 303
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "[cleanBigdataLogFiles] exceed size of bigdata log file is deleted"

    .line 304
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_38
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_44

    const-string p0, "[cleanBigdataLogFiles] There is no collected bigdata log"

    .line 310
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_43} :catch_dd
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_43} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_43} :catch_cd

    return-void

    .line 314
    :cond_44
    :try_start_44
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v2, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_4a} :catch_c5
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4a} :catch_bd
    .catch Ljava/lang/SecurityException; {:try_start_44 .. :try_end_4a} :catch_b5
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4a} :catch_ad

    .line 315
    :try_start_4a
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_a3

    .line 316
    :try_start_54
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_99

    .line 317
    :try_start_59
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_63
    .catchall {:try_start_59 .. :try_end_63} :catchall_8f

    .line 319
    :goto_63
    :try_start_63
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_70

    .line 320
    invoke-virtual {v1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_6f
    .catchall {:try_start_63 .. :try_end_6f} :catchall_85

    goto :goto_63

    .line 323
    :cond_70
    :try_start_70
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_8f

    :try_start_73
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_99

    :try_start_76
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_a3

    :try_start_79
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_79 .. :try_end_7c} :catch_c5
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_bd
    .catch Ljava/lang/SecurityException; {:try_start_79 .. :try_end_7c} :catch_b5
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7c} :catch_ad

    .line 333
    :try_start_7c
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_7f
    .catch Ljava/lang/NullPointerException; {:try_start_7c .. :try_end_7f} :catch_dd
    .catch Ljava/lang/SecurityException; {:try_start_7c .. :try_end_7f} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_cd

    const-string p0, "[cleanBigdataLogFiles] done"

    .line 342
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_85
    move-exception p0

    .line 314
    :try_start_86
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_8e

    :catchall_8a
    move-exception v0

    :try_start_8b
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8e
    throw p0
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_8f

    :catchall_8f
    move-exception p0

    :try_start_90
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    goto :goto_98

    :catchall_94
    move-exception v0

    :try_start_95
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_98
    throw p0
    :try_end_99
    .catchall {:try_start_95 .. :try_end_99} :catchall_99

    :catchall_99
    move-exception p0

    :try_start_9a
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9e

    goto :goto_a2

    :catchall_9e
    move-exception v0

    :try_start_9f
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a2
    throw p0
    :try_end_a3
    .catchall {:try_start_9f .. :try_end_a3} :catchall_a3

    :catchall_a3
    move-exception p0

    :try_start_a4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_a8

    goto :goto_ac

    :catchall_a8
    move-exception v0

    :try_start_a9
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ac
    throw p0
    :try_end_ad
    .catch Ljava/io/FileNotFoundException; {:try_start_a9 .. :try_end_ad} :catch_c5
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ad} :catch_bd
    .catch Ljava/lang/SecurityException; {:try_start_a9 .. :try_end_ad} :catch_b5
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ad} :catch_ad

    .line 330
    :catch_ad
    :try_start_ad
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_UNKNOWN:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    .line 328
    :catch_b5
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_PERMISSION_DENIED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    .line 326
    :catch_bd
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_IO_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    .line 324
    :catch_c5
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_FILE_NOT_FOUND:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0
    :try_end_cd
    .catch Ljava/lang/NullPointerException; {:try_start_ad .. :try_end_cd} :catch_dd
    .catch Ljava/lang/SecurityException; {:try_start_ad .. :try_end_cd} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_cd} :catch_cd

    .line 340
    :catch_cd
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_UNKNOWN:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    .line 338
    :catch_d5
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_PERMISSION_DENIED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    .line 336
    :catch_dd
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_NULLPOINTER_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0
.end method

.method public final cleanDumpstateFiles()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/BigdataException;
        }
    .end annotation

    const-string v0, "dumpstate_skeymaster"

    .line 249
    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/log/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    new-instance v2, Lcom/android/server/HermesBigdataFunction$3;

    invoke-direct {v2, p0}, Lcom/android/server/HermesBigdataFunction$3;-><init>(Lcom/android/server/HermesBigdataFunction;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 261
    array-length v2, v1
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_13} :catch_73
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_13} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_63

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    const-string v5, "HERMES#BigDataFunction"

    if-ge v4, v2, :cond_3a

    :try_start_19
    aget-object v6, v1, v4

    .line 262
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 264
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_37

    const-string v6, "[cleanDumpstateFiles] zipfile rename is success"

    .line 265
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 269
    :cond_3a
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/sepunion/hermes/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    new-instance v1, Lcom/android/server/HermesBigdataFunction$4;

    invoke-direct {v1, p0}, Lcom/android/server/HermesBigdataFunction$4;-><init>(Lcom/android/server/HermesBigdataFunction;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    .line 281
    array-length v0, p0

    :goto_4b
    if-ge v3, v0, :cond_5d

    aget-object v1, p0, v3

    .line 282
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_5a

    const-string v1, "[cleanDumpstateFiles] filtered txt file deletion failed"

    .line 283
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_5a} :catch_73
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_5a} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_5a} :catch_63

    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    :cond_5d
    const-string p0, "[CleanDumpstate] done"

    .line 294
    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 292
    :catch_63
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_UNKNOWN:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    .line 290
    :catch_6b
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_PERMISSION_DENIED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    .line 288
    :catch_73
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_NULLPOINTER_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0
.end method

.method public finishSkeymasterDumpstate()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/BigdataException;
        }
    .end annotation

    .line 365
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 366
    invoke-virtual {p0}, Lcom/android/server/HermesBigdataFunction;->cleanBigdataLogFiles()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_d
    .catch Lcom/android/server/BigdataException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 370
    throw p0

    .line 368
    :catch_d
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_INTERRUPTION_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0
.end method

.method public makeSkeymasterDumpstate()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/BigdataException;
        }
    .end annotation

    const-string/jumbo v0, "ro.soc.model"

    .line 346
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    :try_start_7
    sget-object v1, Lcom/android/server/HermesBigdataFunction;->CHECK_CHIPSET_LISTS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    if-lez v2, :cond_27

    aget-object v1, v1, v3

    .line 349
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 350
    invoke-virtual {p0}, Lcom/android/server/HermesBigdataFunction;->unZipDumpstate()V

    .line 351
    invoke-virtual {p0}, Lcom/android/server/HermesBigdataFunction;->parseDumpstate()V

    .line 352
    invoke-virtual {p0}, Lcom/android/server/HermesBigdataFunction;->cleanDumpstateFiles()V

    goto :goto_27

    .line 355
    :cond_1f
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_NOT_SUPPORTED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0
    :try_end_27
    .catch Lcom/android/server/BigdataException; {:try_start_7 .. :try_end_27} :catch_28

    :cond_27
    :goto_27
    return-void

    :catch_28
    move-exception p0

    .line 359
    throw p0
.end method

.method public final parseDumpstate()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/BigdataException;
        }
    .end annotation

    const-string v0, "EUCKR"

    const-string v1, "HERMES#BigDataFunction"

    const-string v2, "[parseDumpstate] started"

    .line 180
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :try_start_9
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/log/sepunion/hermes/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    new-instance v3, Lcom/android/server/HermesBigdataFunction$2;

    invoke-direct {v3, p0}, Lcom/android/server/HermesBigdataFunction$2;-><init>(Lcom/android/server/HermesBigdataFunction;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    .line 195
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/log/sepunion/hermes/parsed_skeymast.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 197
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x100000

    cmp-long v3, v3, v5

    if-lez v3, :cond_3c

    .line 198
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_3c

    const-string v3, "[parseDumpstate] saved log is cleared"

    .line 199
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_3c} :catch_fd
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3c} :catch_f5

    .line 209
    :cond_3c
    array-length v3, p0

    const/4 v4, 0x0

    :goto_3e
    if-ge v4, v3, :cond_ef

    aget-object v5, p0, v4

    .line 210
    :try_start_42
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v6, v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_48} :catch_e7
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_48} :catch_df
    .catch Ljava/lang/SecurityException; {:try_start_42 .. :try_end_48} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_48} :catch_cf

    .line 211
    :try_start_48
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    invoke-direct {v8, v6, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_c5

    .line 212
    :try_start_52
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_bb

    .line 213
    :try_start_57
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v8, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_b1

    .line 214
    :try_start_61
    sget-object v9, Lcom/android/server/HermesBigdataFunction;->PARSING_TAG:[Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/HermesBigdataFunction;->makeRegexPattern([Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 215
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 217
    :cond_6b
    :goto_6b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_82

    .line 218
    invoke-virtual {v9, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 219
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_6b

    .line 221
    invoke-virtual {v7, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_6b

    .line 225
    :cond_82
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V

    .line 226
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v12

    sub-long/2addr v12, v10

    const-wide/16 v9, 0x0

    cmp-long v9, v12, v9

    if-eqz v9, :cond_98

    const-string v9, "-----------------------------"

    .line 227
    invoke-virtual {v7, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_98
    .catchall {:try_start_61 .. :try_end_98} :catchall_a7

    .line 230
    :cond_98
    :try_start_98
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_b1

    :try_start_9b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_bb

    :try_start_9e
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_c5

    :try_start_a1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a4
    .catch Ljava/io/FileNotFoundException; {:try_start_a1 .. :try_end_a4} :catch_e7
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_df
    .catch Ljava/lang/SecurityException; {:try_start_a1 .. :try_end_a4} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a4} :catch_cf

    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :catchall_a7
    move-exception p0

    .line 210
    :try_start_a8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_ac

    goto :goto_b0

    :catchall_ac
    move-exception v0

    :try_start_ad
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b0
    throw p0
    :try_end_b1
    .catchall {:try_start_ad .. :try_end_b1} :catchall_b1

    :catchall_b1
    move-exception p0

    :try_start_b2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_b6

    goto :goto_ba

    :catchall_b6
    move-exception v0

    :try_start_b7
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ba
    throw p0
    :try_end_bb
    .catchall {:try_start_b7 .. :try_end_bb} :catchall_bb

    :catchall_bb
    move-exception p0

    :try_start_bc
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_c0

    goto :goto_c4

    :catchall_c0
    move-exception v0

    :try_start_c1
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c4
    throw p0
    :try_end_c5
    .catchall {:try_start_c1 .. :try_end_c5} :catchall_c5

    :catchall_c5
    move-exception p0

    :try_start_c6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_ca

    goto :goto_ce

    :catchall_ca
    move-exception v0

    :try_start_cb
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ce
    throw p0
    :try_end_cf
    .catch Ljava/io/FileNotFoundException; {:try_start_cb .. :try_end_cf} :catch_e7
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_cf} :catch_df
    .catch Ljava/lang/SecurityException; {:try_start_cb .. :try_end_cf} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_cf} :catch_cf

    .line 237
    :catch_cf
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_UNKNOWN:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    .line 235
    :catch_d7
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_PERMISSION_DENIED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    .line 233
    :catch_df
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_IO_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    .line 231
    :catch_e7
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_FILE_NOT_FOUND:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    :cond_ef
    const-string p0, "[unZipDumpstate] done"

    .line 240
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 206
    :catch_f5
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_UNKNOWN:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    .line 204
    :catch_fd
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_PERMISSION_DENIED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0
.end method

.method public final unZipDumpstate()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/BigdataException;
        }
    .end annotation

    const-string v0, "/data/log/sepunion/hermes/"

    const-string v1, "HERMES#BigDataFunction"

    const-string v2, "[unZipDumpstate] started"

    .line 108
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :try_start_9
    invoke-static {v0}, Lcom/android/server/HermesBigdataFunction;->makeFolder(Ljava/lang/String;)Z

    move-result v2
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_d} :catch_fe
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_f6

    if-eqz v2, :cond_ee

    .line 121
    :try_start_f
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/log/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    new-instance v3, Lcom/android/server/HermesBigdataFunction$1;

    invoke-direct {v3, p0}, Lcom/android/server/HermesBigdataFunction$1;-><init>(Lcom/android/server/HermesBigdataFunction;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_1f} :catch_e6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_de

    .line 139
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_22
    if-ge v4, v2, :cond_d8

    aget-object v5, p0, v4

    .line 140
    :try_start_26
    new-instance v6, Ljava/util/zip/ZipInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_30} :catch_d0
    .catch Ljava/util/zip/ZipException; {:try_start_26 .. :try_end_30} :catch_c8
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_30} :catch_c0
    .catch Ljava/lang/SecurityException; {:try_start_26 .. :try_end_30} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_30} :catch_b0

    .line 142
    :try_start_30
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    :goto_34
    if-eqz v5, :cond_9f

    .line 144
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "dumpstate_skeymaster"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 145
    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_30 .. :try_end_4b} :catchall_a6

    .line 146
    :try_start_4b
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_55} :catch_92
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_55} :catch_8a
    .catchall {:try_start_4b .. :try_end_55} :catchall_a6

    .line 147
    :try_start_55
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[unZipDumpstate] extract files : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x1000

    new-array v7, v7, [B

    .line 150
    :goto_71
    invoke-virtual {v6, v7}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_7c

    .line 151
    invoke-virtual {v5, v7, v3, v8}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_7b
    .catchall {:try_start_55 .. :try_end_7b} :catchall_80

    goto :goto_71

    .line 155
    :cond_7c
    :try_start_7c
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7f
    .catch Ljava/io/FileNotFoundException; {:try_start_7c .. :try_end_7f} :catch_92
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_8a
    .catchall {:try_start_7c .. :try_end_7f} :catchall_a6

    goto :goto_9f

    :catchall_80
    move-exception p0

    .line 146
    :try_start_81
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_85

    goto :goto_89

    :catchall_85
    move-exception v0

    :try_start_86
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_89
    throw p0
    :try_end_8a
    .catch Ljava/io/FileNotFoundException; {:try_start_86 .. :try_end_8a} :catch_92
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8a} :catch_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_a6

    .line 158
    :catch_8a
    :try_start_8a
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_IO_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    .line 156
    :catch_92
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_FILE_NOT_FOUND:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    .line 161
    :cond_9a
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5
    :try_end_9e
    .catchall {:try_start_8a .. :try_end_9e} :catchall_a6

    goto :goto_34

    .line 164
    :cond_9f
    :goto_9f
    :try_start_9f
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_a2
    .catch Ljava/io/FileNotFoundException; {:try_start_9f .. :try_end_a2} :catch_d0
    .catch Ljava/util/zip/ZipException; {:try_start_9f .. :try_end_a2} :catch_c8
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_c0
    .catch Ljava/lang/SecurityException; {:try_start_9f .. :try_end_a2} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a2} :catch_b0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_22

    :catchall_a6
    move-exception p0

    .line 140
    :try_start_a7
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_ab

    goto :goto_af

    :catchall_ab
    move-exception v0

    :try_start_ac
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_af
    throw p0
    :try_end_b0
    .catch Ljava/io/FileNotFoundException; {:try_start_ac .. :try_end_b0} :catch_d0
    .catch Ljava/util/zip/ZipException; {:try_start_ac .. :try_end_b0} :catch_c8
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b0} :catch_c0
    .catch Ljava/lang/SecurityException; {:try_start_ac .. :try_end_b0} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b0} :catch_b0

    .line 173
    :catch_b0
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_UNKNOWN:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    .line 171
    :catch_b8
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_PERMISSION_DENIED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    .line 169
    :catch_c0
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_IO_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    .line 167
    :catch_c8
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_ZIP_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    .line 165
    :catch_d0
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_FILE_NOT_FOUND:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    :cond_d8
    const-string p0, "[unZipDumpstate] done"

    .line 176
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 135
    :catch_de
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_UNKNOWN:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    .line 133
    :catch_e6
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_PERMISSION_DENIED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    .line 111
    :cond_ee
    :try_start_ee
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_FILE_CREATED_FAILED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0
    :try_end_f6
    .catch Ljava/lang/SecurityException; {:try_start_ee .. :try_end_f6} :catch_fe
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f6} :catch_f6

    .line 116
    :catch_f6
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_UNKNOWN:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    .line 114
    :catch_fe
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_PERMISSION_DENIED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0
.end method
