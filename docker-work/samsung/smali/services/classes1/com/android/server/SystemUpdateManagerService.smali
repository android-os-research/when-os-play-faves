.class public Lcom/android/server/SystemUpdateManagerService;
.super Landroid/os/ISystemUpdateManager$Stub;
.source "SystemUpdateManagerService.java"


# static fields
.field public static final INFO_FILE:Ljava/lang/String; = "system-update-info.xml"

.field public static final INFO_FILE_VERSION:I = 0x0

.field public static final KEY_BOOT_COUNT:Ljava/lang/String; = "boot-count"

.field public static final KEY_INFO_BUNDLE:Ljava/lang/String; = "info-bundle"

.field public static final KEY_UID:Ljava/lang/String; = "uid"

.field public static final KEY_VERSION:Ljava/lang/String; = "version"

.field public static final TAG:Ljava/lang/String; = "SystemUpdateManagerService"

.field public static final TAG_INFO:Ljava/lang/String; = "info"

.field public static final UID_UNKNOWN:I = -0x1


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFile:Landroid/util/AtomicFile;

.field public mLastStatus:I

.field public mLastUid:I

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 79
    invoke-direct {p0}, Landroid/os/ISystemUpdateManager$Stub;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLock:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 76
    iput v1, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    const/4 v1, 0x0

    .line 77
    iput v1, p0, Lcom/android/server/SystemUpdateManagerService;->mLastStatus:I

    .line 80
    iput-object p1, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    .line 81
    new-instance p1, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system-update-info.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    .line 84
    monitor-enter v0

    .line 85
    :try_start_26
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->loadSystemUpdateInfoLocked()Landroid/os/Bundle;

    .line 86
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2b

    throw p0
.end method


# virtual methods
.method public final getBootCount()I
    .registers 3

    .line 253
    iget-object p0, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "boot_count"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final loadSystemUpdateInfoLocked()Landroid/os/Bundle;
    .registers 6

    const-string v0, "SystemUpdateManagerService"

    const/4 v1, 0x0

    .line 134
    :try_start_3
    iget-object v2, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_9} :catch_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_9} :catch_2a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_23

    .line 135
    :try_start_9
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v3

    .line 136
    invoke-virtual {p0, v3}, Lcom/android/server/SystemUpdateManagerService;->readInfoFileLocked(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_17

    if-eqz v2, :cond_4b

    .line 137
    :try_start_13
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_16} :catch_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_16} :catch_2a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_23

    goto :goto_4b

    :catchall_17
    move-exception v3

    if-eqz v2, :cond_22

    .line 134
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v2

    :try_start_1f
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_22
    :goto_22
    throw v3
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_23} :catch_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_23} :catch_2a
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_23

    :catch_23
    move-exception v2

    const-string v3, "Failed to read the info file:"

    .line 142
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    :catch_2a
    move-exception v2

    const-string v3, "Failed to parse the info file:"

    .line 140
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    .line 138
    :catch_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No existing info file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    :goto_4b
    if-nez v1, :cond_52

    .line 147
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_52
    const-string/jumbo v2, "version"

    const/4 v3, -0x1

    .line 150
    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_66

    const-string v1, "Invalid info file (invalid version). Ignored"

    .line 152
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_66
    const-string/jumbo v2, "uid"

    .line 156
    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_79

    const-string v1, "Invalid info file (invalid UID). Ignored"

    .line 158
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_79
    const-string v4, "boot-count"

    .line 162
    invoke-virtual {v1, v4, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_b9

    .line 163
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->getBootCount()I

    move-result v3

    if-eq v4, v3, :cond_88

    goto :goto_b9

    :cond_88
    const-string/jumbo v3, "info-bundle"

    .line 168
    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    if-nez v1, :cond_9b

    const-string v1, "Invalid info file (missing info). Ignored"

    .line 170
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9b
    const/4 v3, 0x0

    const-string/jumbo v4, "status"

    .line 174
    invoke-virtual {v1, v4, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_af

    const-string v1, "Invalid info file (invalid status). Ignored"

    .line 176
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 181
    :cond_af
    iput v3, p0, Lcom/android/server/SystemUpdateManagerService;->mLastStatus:I

    .line 182
    iput v2, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    .line 183
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object p0

    :cond_b9
    :goto_b9
    const-string v1, "Outdated info file. Ignored"

    .line 164
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final readInfoFileLocked(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    :cond_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 208
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "info"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 209
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public final removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "SystemUpdateManagerService"

    const-string v1, "Removing info file"

    .line 241
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    :cond_14
    const/4 v0, 0x0

    .line 245
    iput v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLastStatus:I

    const/4 v1, -0x1

    .line 246
    iput v1, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    .line 247
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "status"

    .line 248
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public retrieveSystemUpdateInfo()Landroid/os/Bundle;
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYSTEM_UPDATE_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECOVERY"

    .line 119
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_16

    goto :goto_1e

    .line 121
    :cond_16
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Can\'t read system update info. Requiring READ_SYSTEM_UPDATE_INFO or RECOVERY permission."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 125
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_21
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->loadSystemUpdateInfoLocked()Landroid/os/Bundle;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_27
    move-exception p0

    .line 127
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final saveSystemUpdateInfoLocked(Landroid/os/PersistableBundle;I)V
    .registers 6

    .line 189
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string/jumbo v1, "info-bundle"

    .line 190
    invoke-virtual {v0, v1, p1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    const-string/jumbo v1, "version"

    const/4 v2, 0x0

    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "uid"

    .line 192
    invoke-virtual {v0, v1, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 193
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->getBootCount()I

    move-result v1

    const-string v2, "boot-count"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/server/SystemUpdateManagerService;->writeInfoFileLocked(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 197
    iput p2, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    const-string/jumbo p2, "status"

    .line 198
    invoke-virtual {p1, p2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/SystemUpdateManagerService;->mLastStatus:I

    :cond_32
    return-void
.end method

.method public updateSystemUpdateInfo(Landroid/os/PersistableBundle;)V
    .registers 6

    .line 91
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECOVERY"

    const-string v2, "SystemUpdateManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1b

    const-string p0, "SystemUpdateManagerService"

    const-string p1, "Invalid status info. Ignored"

    .line 95
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 105
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 106
    iget v2, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_32

    if-eq v2, v1, :cond_32

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2a

    goto :goto_32

    :cond_2a
    const-string p0, "SystemUpdateManagerService"

    const-string p1, "Inactive updater reporting IDLE status. Ignored"

    .line 111
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 107
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_35
    invoke-virtual {p0, p1, v1}, Lcom/android/server/SystemUpdateManagerService;->saveSystemUpdateInfoLocked(Landroid/os/PersistableBundle;I)V

    .line 109
    monitor-exit v0

    :goto_39
    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public final writeInfoFileLocked(Landroid/os/PersistableBundle;)Z
    .registers 7

    const-string/jumbo v0, "info"

    const/4 v1, 0x0

    .line 218
    :try_start_4
    iget-object v2, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_29
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_a} :catch_29

    .line 220
    :try_start_a
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v3

    .line 221
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 223
    invoke-interface {v3, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 225
    invoke-interface {v3, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    invoke-interface {v3}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 228
    iget-object p1, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_24} :catch_26
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_24} :catch_26

    const/4 p0, 0x1

    return p0

    :catch_26
    move-exception p1

    move-object v1, v2

    goto :goto_2a

    :catch_29
    move-exception p1

    :goto_2a
    const-string v0, "SystemUpdateManagerService"

    const-string v2, "Failed to save the info file:"

    .line 231
    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_38

    .line 233
    iget-object p0, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_38
    const/4 p0, 0x0

    return p0
.end method
