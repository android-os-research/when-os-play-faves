.class public Lcom/android/server/RuntimeService;
.super Landroid/os/Binder;
.source "RuntimeService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RuntimeService"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/RuntimeService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static addDistroVersionDebugInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/timezone/DebugInfo;)V
    .registers 9

    .line 142
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "status"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 144
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 146
    :try_start_1d
    sget v1, Lcom/android/timezone/distro/DistroVersion;->DISTRO_VERSION_FILE_LENGTH:I

    .line 147
    invoke-static {v0, v1}, Lcom/android/timezone/distro/FileUtils;->readBytes(Ljava/io/File;I)[B

    move-result-object v1

    .line 148
    invoke-static {v1}, Lcom/android/timezone/distro/DistroVersion;->fromBytes([B)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v1

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OK"

    .line 151
    invoke-virtual {p2, p0, v3}, Lcom/android/i18n/timezone/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/DebugInfo;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "formatVersion"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-virtual {v3, v4, v2}, Lcom/android/i18n/timezone/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/DebugInfo;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rulesVersion"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    .line 153
    invoke-virtual {v2, v3, v4}, Lcom/android/i18n/timezone/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/DebugInfo;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "revision"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v1, v1, Lcom/android/timezone/distro/DistroVersion;->revision:I

    .line 155
    invoke-virtual {v2, v3, v1}, Lcom/android/i18n/timezone/DebugInfo;->addStringEntry(Ljava/lang/String;I)Lcom/android/i18n/timezone/DebugInfo;
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_89} :catch_8a
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_1d .. :try_end_89} :catch_8a

    goto :goto_de

    :catch_8a
    move-exception v1

    const-string v2, "ERROR"

    .line 158
    invoke-virtual {p2, p0, v2}, Lcom/android/i18n/timezone/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/DebugInfo;

    .line 159
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "exception_class"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 160
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {p2, p0, v2}, Lcom/android/i18n/timezone/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/DebugInfo;

    .line 161
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "exception_msg"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/android/i18n/timezone/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/DebugInfo;

    .line 162
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error reading "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/server/RuntimeService;->logMessage(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_de

    :cond_d9
    const-string p1, "NOT_FOUND"

    .line 165
    invoke-virtual {p2, p0, p1}, Lcom/android/i18n/timezone/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/DebugInfo;

    :goto_de
    return-void
.end method

.method public static addTimeZoneApkDebugInfo(Lcom/android/i18n/timezone/DebugInfo;)V
    .registers 3

    const-string v0, "distro_version"

    .line 97
    invoke-static {v0}, Lcom/android/i18n/timezone/TimeZoneDataFiles;->getDataTimeZoneFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "core_library.timezone.source.data_"

    .line 99
    invoke-static {v0, v1, p0}, Lcom/android/server/RuntimeService;->addDistroVersionDebugInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/timezone/DebugInfo;)V

    return-void
.end method

.method public static hasOption([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 80
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    .line 81
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method public static logMessage(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "RuntimeService"

    .line 170
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static reportTimeZoneInfo(Lcom/android/i18n/timezone/DebugInfo;Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "Core Library Debug Info: "

    .line 110
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/i18n/timezone/DebugInfo;->getDebugEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;

    .line 112
    invoke-virtual {v0}, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ": \""

    .line 113
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "\""

    .line 115
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    :cond_32
    return-void
.end method

.method public static reportTimeZoneInfoProto(Lcom/android/i18n/timezone/DebugInfo;Landroid/util/proto/ProtoOutputStream;)V
    .registers 8

    .line 127
    invoke-virtual {p0}, Lcom/android/i18n/timezone/DebugInfo;->getDebugEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;

    const-wide v1, 0x20b00000001L

    .line 128
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10900000001L

    .line 129
    invoke-virtual {v0}, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v3, 0x10900000002L

    .line 130
    invoke-virtual {v0}, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 131
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_8

    :cond_39
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 56
    iget-object p0, p0, Lcom/android/server/RuntimeService;->mContext:Landroid/content/Context;

    const-string v0, "RuntimeService"

    invoke-static {p0, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    if-nez p0, :cond_b

    return-void

    :cond_b
    const-string p0, "--proto"

    .line 60
    invoke-static {p3, p0}, Lcom/android/server/RuntimeService;->hasOption([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    const/4 p3, 0x0

    .line 63
    invoke-static {}, Lcom/android/i18n/timezone/I18nModuleDebug;->getDebugInfo()Lcom/android/i18n/timezone/DebugInfo;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/android/server/RuntimeService;->addTimeZoneApkDebugInfo(Lcom/android/i18n/timezone/DebugInfo;)V

    if-eqz p0, :cond_24

    .line 67
    new-instance p3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p3, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 68
    invoke-static {v0, p3}, Lcom/android/server/RuntimeService;->reportTimeZoneInfoProto(Lcom/android/i18n/timezone/DebugInfo;Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_27

    .line 70
    :cond_24
    invoke-static {v0, p2}, Lcom/android/server/RuntimeService;->reportTimeZoneInfo(Lcom/android/i18n/timezone/DebugInfo;Ljava/io/PrintWriter;)V

    :goto_27
    if-eqz p0, :cond_2c

    .line 74
    invoke-virtual {p3}, Landroid/util/proto/ProtoOutputStream;->flush()V

    :cond_2c
    return-void
.end method
