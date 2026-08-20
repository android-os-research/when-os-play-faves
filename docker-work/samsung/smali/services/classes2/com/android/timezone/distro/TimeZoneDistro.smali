.class public final Lcom/android/timezone/distro/TimeZoneDistro;
.super Ljava/lang/Object;
.source "TimeZoneDistro.java"


# static fields
.field public static final BUFFER_SIZE:I = 0x2000

.field public static final DISTRO_VERSION_FILE_NAME:Ljava/lang/String; = "distro_version"

.field public static final FILE_NAME:Ljava/lang/String; = "distro.zip"

.field public static final ICU_DATA_FILE_NAME:Ljava/lang/String; = "icu/icu_tzdata.dat"

.field public static final MAX_GET_ENTRY_CONTENTS_SIZE:J = 0x20000L

.field public static final TELEPHONYLOOKUP_FILE_NAME:Ljava/lang/String; = "telephonylookup.xml"

.field public static final TZDATA_FILE_NAME:Ljava/lang/String; = "tzdata"

.field public static final TZLOOKUP_FILE_NAME:Ljava/lang/String; = "tzlookup.xml"


# instance fields
.field public final inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/timezone/distro/TimeZoneDistro;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 72
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/TimeZoneDistro;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public static extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-static {p1, p2}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    .line 136
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x2000

    :try_start_a
    new-array p0, p0, [B

    .line 139
    :cond_c
    :goto_c
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_60

    .line 142
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {p1, v2}, Lcom/android/timezone/distro/FileUtils;->createSubFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 147
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 148
    invoke-static {v2, p2}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    goto :goto_c

    .line 151
    :cond_24
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_35

    .line 153
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 152
    invoke-static {v1, p2}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    .line 156
    :cond_35
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3a
    .catchall {:try_start_a .. :try_end_3a} :catchall_64

    .line 158
    :goto_3a
    :try_start_3a
    invoke-virtual {v0, p0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_46

    const/4 v4, 0x0

    .line 159
    invoke-virtual {v1, p0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3a

    .line 162
    :cond_46
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4d
    .catchall {:try_start_3a .. :try_end_4d} :catchall_56

    .line 163
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    if-eqz p2, :cond_c

    .line 166
    invoke-static {v2}, Lcom/android/timezone/distro/FileUtils;->makeWorldReadable(Ljava/io/File;)V
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_64

    goto :goto_c

    :catchall_56
    move-exception p0

    .line 156
    :try_start_57
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception p1

    :try_start_5c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5f
    throw p0
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_64

    .line 170
    :cond_60
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    return-void

    :catchall_64
    move-exception p0

    .line 136
    :try_start_65
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_6d

    :catchall_69
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6d
    throw p0
.end method

.method public static getEntryContents(Ljava/io/InputStream;Ljava/lang/String;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 97
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_6e

    .line 98
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_5

    .line 104
    :cond_16
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v1

    const-wide/32 v3, 0x20000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_4b

    const/16 p0, 0x2000

    new-array p0, p0, [B

    .line 108
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_73

    .line 110
    :goto_2a
    :try_start_2a
    invoke-virtual {v0, p0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    const/4 v2, 0x0

    .line 111
    invoke-virtual {p1, p0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2a

    .line 113
    :cond_36
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_41

    .line 114
    :try_start_3a
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_73

    .line 118
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    return-object p0

    :catchall_41
    move-exception p0

    .line 108
    :try_start_42
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception p1

    :try_start_47
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4a
    throw p0

    .line 105
    :cond_4b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " too large: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6e
    .catchall {:try_start_47 .. :try_end_6e} :catchall_73

    :cond_6e
    const/4 p0, 0x0

    .line 118
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    return-object p0

    :catchall_73
    move-exception p0

    .line 95
    :try_start_74
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7c

    :catchall_78
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7c
    throw p0
.end method


# virtual methods
.method public extractTo(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object p0, p0, Lcom/android/timezone/distro/TimeZoneDistro;->inputStream:Ljava/io/InputStream;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/timezone/distro/TimeZoneDistro;->extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V

    return-void
.end method

.method public getDistroVersion()Lcom/android/timezone/distro/DistroVersion;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object p0, p0, Lcom/android/timezone/distro/TimeZoneDistro;->inputStream:Ljava/io/InputStream;

    const-string v0, "distro_version"

    invoke-static {p0, v0}, Lcom/android/timezone/distro/TimeZoneDistro;->getEntryContents(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_f

    .line 91
    invoke-static {p0}, Lcom/android/timezone/distro/DistroVersion;->fromBytes([B)Lcom/android/timezone/distro/DistroVersion;

    move-result-object p0

    return-object p0

    .line 89
    :cond_f
    new-instance p0, Lcom/android/timezone/distro/DistroException;

    const-string v0, "Distro version file entry not found"

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
