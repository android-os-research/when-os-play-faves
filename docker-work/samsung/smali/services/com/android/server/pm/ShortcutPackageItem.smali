.class public abstract Lcom/android/server/pm/ShortcutPackageItem;
.super Ljava/lang/Object;
.source "ShortcutPackageItem.java"


# static fields
.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final TAG:Ljava/lang/String; = "ShortcutService"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

.field public final mPackageName:Ljava/lang/String;

.field public final mPackageUserId:I

.field public final mSaveShortcutPackageRunner:Ljava/lang/Runnable;

.field public mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mShortcutUser:Lcom/android/server/pm/ShortcutUser;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V
    .registers 6

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    .line 211
    new-instance v0, Lcom/android/server/pm/ShortcutPackageItem$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutPackageItem$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutPackageItem;)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mSaveShortcutPackageRunner:Ljava/lang/Runnable;

    .line 63
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 64
    iput p2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 65
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 66
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 67
    new-instance p2, Lcom/android/server/pm/ShortcutBitmapSaver;

    iget-object p1, p1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p2, p1}, Lcom/android/server/pm/ShortcutBitmapSaver;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    return-void
.end method


# virtual methods
.method public attemptToRestoreIfNeededAndSave()V
    .registers 5

    .line 114
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 117
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 118
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_18

    return-void

    .line 128
    :cond_18
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageInfo;->hasSignatures()Z

    move-result v1

    if-nez v1, :cond_48

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to restore package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but signatures not found in the restore data."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    const/16 v0, 0x66

    goto :goto_5d

    .line 133
    :cond_48
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 135
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->canRestoreAnyVersion()Z

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/pm/ShortcutPackageInfo;->canRestoreTo(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/PackageInfo;Z)I

    move-result v0

    .line 145
    :goto_5d
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackageItem;->onRestored(I)V

    .line 148
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutPackageInfo;->setShadow(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    return-void
.end method

.method public abstract canRestoreAnyVersion()Z
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 195
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 196
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p1
.end method

.method public getBitmapPathMayWait(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutBitmapSaver;->getBitmapPathMayWaitLocked(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 250
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public abstract getOwnerUserId()I
.end method

.method public getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageUserId()I
    .registers 1

    .line 87
    iget p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    return p0
.end method

.method public abstract getShortcutPackageItemFile()Ljava/io/File;
.end method

.method public getUser()Lcom/android/server/pm/ShortcutUser;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    return-object p0
.end method

.method public abstract onRestored(I)V
.end method

.method public refreshPackageSignatureAndSave()V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 108
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 109
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/pm/ShortcutPackageInfo;->refreshSignature(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutPackageItem;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    return-void
.end method

.method public removeIcon(Landroid/content/pm/ShortcutInfo;)V
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 256
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public removeShortcutPackageItem()V
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getShortcutPackageItemFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 262
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public replaceUser(Lcom/android/server/pm/ShortcutUser;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    return-void
.end method

.method public saveBitmap(Landroid/content/pm/ShortcutInfo;ILandroid/graphics/Bitmap$CompressFormat;I)V
    .registers 6

    .line 238
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ShortcutBitmapSaver;->saveBitmapLocked(Landroid/content/pm/ShortcutInfo;ILandroid/graphics/Bitmap$CompressFormat;I)V

    .line 240
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public saveShortcutPackageItem()V
    .registers 4

    .line 215
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->waitForBitmapSaves()Z

    .line 217
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getShortcutPackageItemFile()Ljava/io/File;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_a
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    const/4 v2, 0x0

    .line 225
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/ShortcutPackageItem;->saveToFileLocked(Ljava/io/File;Z)V

    .line 226
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSaveToAppSearchLocked()V

    .line 227
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public saveToFileLocked(Ljava/io/File;Z)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 162
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    .line 165
    :try_start_6
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_a} :catch_33
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_a} :catch_33

    if-eqz p2, :cond_1a

    .line 170
    :try_start_c
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 171
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_1e

    .line 173
    :cond_1a
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 175
    :goto_1e
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, p1, v3}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 177
    invoke-virtual {p0, v2, p2}, Lcom/android/server/pm/ShortcutPackageItem;->saveToXml(Landroid/util/TypedXmlSerializer;Z)V

    .line 179
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 181
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 182
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_2f} :catch_30
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_2f} :catch_30

    goto :goto_51

    :catch_30
    move-exception p0

    move-object p1, v1

    goto :goto_34

    :catch_33
    move-exception p0

    .line 184
    :goto_34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to write to file "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ShortcutService"

    invoke-static {v1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    invoke-virtual {v0, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_51
    return-void
.end method

.method public abstract saveToXml(Landroid/util/TypedXmlSerializer;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public scheduleSave()V
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mSaveShortcutPackageRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p0}, Lcom/android/server/pm/ShortcutService;->injectPostToHandlerDebounced(Ljava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public scheduleSaveToAppSearchLocked()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    return-void
.end method

.method public verifyStates()V
    .registers 1

    return-void
.end method

.method public waitForBitmapSaves()Z
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 233
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method
