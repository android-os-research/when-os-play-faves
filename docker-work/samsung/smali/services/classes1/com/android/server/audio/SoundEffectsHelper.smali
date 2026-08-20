.class public Lcom/android/server/audio/SoundEffectsHelper;
.super Ljava/lang/Object;
.source "SoundEffectsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;,
        Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;,
        Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;,
        Lcom/android/server/audio/SoundEffectsHelper$Resource;,
        Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;
    }
.end annotation


# static fields
.field public static final ASSET_FILE_VERSION:Ljava/lang/String; = "1.0"

.field public static final ATTR_ASSET_FILE:Ljava/lang/String; = "file"

.field public static final ATTR_ASSET_ID:Ljava/lang/String; = "id"

.field public static final ATTR_GROUP_NAME:Ljava/lang/String; = "name"

.field public static final ATTR_VERSION:Ljava/lang/String; = "version"

.field public static final DELAYED_UPDATE_SYSTEM_SOUND:I = 0x12c

.field public static final EFFECT_NOT_IN_SOUND_POOL:I = 0x0

.field public static final GROUP_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field public static final MSG_LOAD_EFFECTS:I = 0x0

.field public static final MSG_LOAD_EFFECTS_TIMEOUT:I = 0x3

.field public static final MSG_PLAY_EFFECT:I = 0x2

.field public static final MSG_UNLOAD_EFFECTS:I = 0x1

.field public static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field public static final SOUND_EFFECTS_LOAD_TIMEOUT_MS:I = 0x3a98

.field public static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field public static final TAG:Ljava/lang/String; = "AS.SfxHelper"

.field public static final TAG_ASSET:Ljava/lang/String; = "asset"

.field public static final TAG_AUDIO_ASSETS:Ljava/lang/String; = "audio_assets"

.field public static final TAG_GROUP:Ljava/lang/String; = "group"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDefaultResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/audio/SoundEffectsHelper$Resource;",
            ">;"
        }
    .end annotation
.end field

.field public final mEffects:[I

.field public mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

.field public final mResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/audio/SoundEffectsHelper$Resource;",
            ">;"
        }
    .end annotation
.end field

.field public final mSfxAttenuationDb:I

.field public mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

.field public final mSfxLogger:Lcom/android/server/audio/AudioEventLogger;

.field public mSfxWorker:Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

.field public mSoundPool:Landroid/media/SoundPool;

.field public mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

.field public mSystemSoundFromSoundTheme:Ljava/lang/String;

.field public mThemeTouchSoundPath:Ljava/lang/String;

.field public mUpdateSystemSound:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmResources(Lcom/android/server/audio/SoundEffectsHelper;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSoundPool(Lcom/android/server/audio/SoundEffectsHelper;)Landroid/media/SoundPool;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSoundPoolLoader(Lcom/android/server/audio/SoundEffectsHelper;)Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmSfxHandler(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSoundPoolLoader(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfindResourceBySampleId(Lcom/android/server/audio/SoundEffectsHelper;I)Lcom/android/server/audio/SoundEffectsHelper$Resource;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->findResourceBySampleId(I)Lcom/android/server/audio/SoundEffectsHelper$Resource;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mlogEvent(Lcom/android/server/audio/SoundEffectsHelper;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monLoadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->onLoadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smcleanupPlayer(Landroid/media/MediaPlayer;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/audio/SoundEffectsHelper;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x21

    const-string v2, "Sound Effects Loading"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    const/16 v0, 0x17

    new-array v0, v0, [I

    .line 119
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    const/4 v0, 0x0

    .line 633
    iput-boolean v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mUpdateSystemSound:Z

    const/4 v0, 0x0

    .line 634
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    .line 635
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 636
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mDefaultResources:Ljava/util/List;

    .line 637
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxAttenuationDb:I

    .line 127
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    if-eqz v0, :cond_62

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "theme_touch_sound"

    const/4 v1, -0x2

    .line 129
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    const-string/jumbo v0, "system_sound"

    .line 130
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    const-string/jumbo v0, "prev_system_sound"

    .line 131
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/android/server/audio/SoundEffectsHelper;->loadTouchSoundAssetsDefaultList()V

    .line 134
    :cond_62
    invoke-virtual {p0}, Lcom/android/server/audio/SoundEffectsHelper;->startWorker()V

    return-void
.end method

.method public static cleanupPlayer(Landroid/media/MediaPlayer;)V
    .registers 3

    if-eqz p0, :cond_20

    .line 331
    :try_start_2
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 332
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_20

    :catch_9
    move-exception p0

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer IllegalStateException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AS.SfxHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_20
    return-void
.end method


# virtual methods
.method public final allNavigationRepeatSoundsParsed(Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/16 p0, 0xc

    .line 482
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v2, 0xd

    .line 483
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr p0, v2

    const/16 v2, 0xe

    .line 484
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr p0, v2

    const/16 v2, 0xf

    .line 485
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p0, p1

    const/4 p1, 0x4

    if-ne p0, p1, :cond_4c

    const/4 v0, 0x1

    :cond_4c
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 155
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    if-eqz v0, :cond_25

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Message handler (watch for unhandled messages):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v2, "  "

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_39

    .line 159
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Message handler is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    :goto_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Default attenuation (dB): "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxAttenuationDb:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final findOrAddResourceByFileName(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 490
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 491
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    iget-object v1, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return v0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 495
    :cond_1d
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 496
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    new-instance v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    invoke-direct {v1, p1}, Lcom/android/server/audio/SoundEffectsHelper$Resource;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method public final findResourceBySampleId(I)Lcom/android/server/audio/SoundEffectsHelper$Resource;
    .registers 4

    .line 501
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 502
    iget v1, v0, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    if-ne v1, p1, :cond_6

    return-object v0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getResourceFilePath(ILcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;
    .registers 6

    .line 748
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    const-string v1, "/media/audio/ui/"

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    const-string v2, "Open_theme"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mDefaultResources:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 750
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-nez p1, :cond_8a

    .line 751
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8a

    .line 754
    :cond_4f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 755
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-nez p1, :cond_8a

    .line 756
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_8a
    :goto_8a
    return-object p0
.end method

.method public final getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;
    .registers 5

    .line 354
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    const-string v1, "/media/audio/ui/"

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    const-string v2, "Open_theme"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 356
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_82

    .line 357
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_82

    .line 361
    :cond_47
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 362
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_82

    .line 363
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_82
    :goto_82
    return-object p0
.end method

.method public final getSoundThemeXmlParser()Landroid/content/res/XmlResourceParser;
    .registers 9

    .line 765
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    const-string v1, "Calm"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const v2, 0x1170004

    const v3, 0x1170003

    const v4, 0x1170002

    if-eqz v0, :cond_15

    :goto_13
    move v2, v4

    goto :goto_54

    .line 767
    :cond_15
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    const-string v5, "Fun"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    :goto_1f
    move v2, v3

    goto :goto_54

    .line 769
    :cond_21
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    const-string v6, "Retro"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_54

    .line 771
    :cond_2c
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    const-string v7, "Open_theme"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 772
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_13

    .line 774
    :cond_3f
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    goto :goto_1f

    .line 776
    :cond_48
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_54

    :cond_51
    const v2, 0x1170001

    .line 780
    :goto_54
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    return-object p0
.end method

.method public final loadSoundAssetDefaults()V
    .registers 5

    .line 370
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 371
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    new-instance v2, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    const-string v3, "Effect_Tick.ogg"

    invoke-direct {v2, v3}, Lcom/android/server/audio/SoundEffectsHelper$Resource;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public final loadSoundAssets()V
    .registers 14

    const-string v0, "AS.SfxHelper"

    .line 388
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    const/4 v2, 0x0

    .line 456
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v1, :cond_1f

    .line 388
    iget-boolean v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mUpdateSystemSound:Z

    if-eqz v1, :cond_1f

    .line 389
    iput-boolean v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mUpdateSystemSound:Z

    .line 390
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    .line 391
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_28

    .line 395
    :cond_1f
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    return-void

    .line 400
    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/android/server/audio/SoundEffectsHelper;->loadSoundAssetDefaults()V

    const/4 v1, 0x0

    .line 403
    :try_start_2c
    sget-boolean v4, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    if-eqz v4, :cond_3d

    iget-object v4, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 404
    invoke-virtual {p0}, Lcom/android/server/audio/SoundEffectsHelper;->getSoundThemeXmlParser()Landroid/content/res/XmlResourceParser;

    move-result-object v4

    goto :goto_4a

    .line 406
    :cond_3d
    iget-object v4, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1170001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4
    :try_end_4a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2c .. :try_end_4a} :catch_17f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_4a} :catch_176
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_4a} :catch_16d
    .catchall {:try_start_2c .. :try_end_4a} :catchall_16b

    :goto_4a
    :try_start_4a
    const-string v5, "audio_assets"

    .line 409
    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v5, "version"

    .line 410
    invoke-interface {v4, v1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 411
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "1.0"

    .line 412
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15b

    .line 414
    :cond_63
    :goto_63
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 415
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    if-nez v5, :cond_6f

    goto/16 :goto_128

    :cond_6f
    const-string/jumbo v8, "group"

    .line 419
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9d

    const-string/jumbo v5, "name"

    .line 420
    invoke-interface {v4, v1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "touch_sounds"

    .line 421
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_63

    .line 422
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported group name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    :cond_9d
    const-string v8, "asset"

    .line 424
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_128

    const-string/jumbo v5, "id"

    .line 425
    invoke-interface {v4, v1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "file"

    .line 426
    invoke-interface {v4, v1, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_b2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4a .. :try_end_b2} :catch_168
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4a .. :try_end_b2} :catch_165
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_b2} :catch_162
    .catchall {:try_start_4a .. :try_end_b2} :catchall_15f

    .line 430
    :try_start_b2
    const-class v9, Landroid/media/AudioManager;

    invoke-virtual {v9, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 432
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/media/AudioFxHelper;->getPlaySoundTypeForSEP(I)I

    move-result v9
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_c0} :catch_112
    .catchall {:try_start_b2 .. :try_end_c0} :catchall_15f

    .line 440
    :try_start_c0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v7

    .line 441
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-le v10, v7, :cond_f0

    .line 443
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Duplicate definition for sound ID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_f0
    iget-object v5, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    invoke-virtual {p0, v8}, Lcom/android/server/audio/SoundEffectsHelper;->findOrAddResourceByFileName(Ljava/lang/String;)I

    move-result v8

    aput v8, v5, v9

    .line 446
    sget-boolean v5, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_EXTENSION_SITUATION_VOLUME:Z

    if-eqz v5, :cond_63

    .line 447
    invoke-static {v9}, Lcom/samsung/android/media/AudioFxHelper;->isPreDefinedEffectKey(I)Z

    move-result v5

    if-nez v5, :cond_63

    .line 448
    iget-object v5, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    iget-object v8, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    aget v8, v8, v9

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    iput-boolean v7, v5, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mHasSituationVolume:Z

    goto/16 :goto_63

    .line 437
    :catch_112
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid sound ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_63

    .line 455
    :cond_128
    :goto_128
    invoke-virtual {p0, v6}, Lcom/android/server/audio/SoundEffectsHelper;->allNavigationRepeatSoundsParsed(Ljava/util/Map;)Z

    move-result v1

    const/16 v5, 0xb

    .line 456
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_13f

    move v2, v7

    :cond_13f
    if-nez v1, :cond_143

    if-eqz v2, :cond_15b

    .line 458
    :cond_143
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    const-class v3, Landroid/media/AudioManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_154

    if-eqz v1, :cond_154

    .line 460
    invoke-virtual {p0, v7}, Landroid/media/AudioManager;->setNavigationRepeatSoundEffectsEnabled(Z)V

    :cond_154
    if-eqz p0, :cond_15b

    if-eqz v2, :cond_15b

    .line 463
    invoke-virtual {p0, v7}, Landroid/media/AudioManager;->setHomeSoundEffectEnabled(Z)V
    :try_end_15b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c0 .. :try_end_15b} :catch_168
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c0 .. :try_end_15b} :catch_165
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_15b} :catch_162
    .catchall {:try_start_c0 .. :try_end_15b} :catchall_15f

    .line 475
    :cond_15b
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_18a

    :catchall_15f
    move-exception p0

    move-object v1, v4

    goto :goto_18b

    :catch_162
    move-exception p0

    move-object v1, v4

    goto :goto_16e

    :catch_165
    move-exception p0

    move-object v1, v4

    goto :goto_177

    :catch_168
    move-exception p0

    move-object v1, v4

    goto :goto_180

    :catchall_16b
    move-exception p0

    goto :goto_18b

    :catch_16d
    move-exception p0

    :goto_16e
    :try_start_16e
    const-string v2, "I/O exception reading sound assets"

    .line 472
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_18a

    goto :goto_187

    :catch_176
    move-exception p0

    :goto_177
    const-string v2, "XML parser exception reading sound assets"

    .line 470
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_18a

    goto :goto_187

    :catch_17f
    move-exception p0

    :goto_180
    const-string v2, "audio assets file not found"

    .line 468
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_185
    .catchall {:try_start_16e .. :try_end_185} :catchall_16b

    if-eqz v1, :cond_18a

    .line 475
    :goto_187
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_18a
    :goto_18a
    return-void

    :goto_18b
    if-eqz v1, :cond_190

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 477
    :cond_190
    throw p0
.end method

.method public loadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 138
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILjava/lang/Object;I)V

    return-void
.end method

.method public final loadTouchSoundAssetsDefaultList()V
    .registers 8

    const-string v0, "AS.SfxHelper"

    .line 691
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mDefaultResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 695
    :cond_b
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mDefaultResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 696
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mDefaultResources:Ljava/util/List;

    new-instance v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    const-string v4, "Effect_Tick.ogg"

    invoke-direct {v3, v4}, Lcom/android/server/audio/SoundEffectsHelper$Resource;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    .line 700
    :try_start_23
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1170001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_30
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_30} :catch_d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_30} :catch_ce
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_30} :catch_c5
    .catchall {:try_start_23 .. :try_end_30} :catchall_c3

    :try_start_30
    const-string v3, "audio_assets"

    .line 701
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v3, "version"

    .line 702
    invoke-interface {v2, v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1.0"

    .line 704
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 706
    :cond_44
    :goto_44
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 707
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4e

    goto :goto_b3

    :cond_4e
    const-string/jumbo v4, "group"

    .line 711
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    const-string/jumbo v3, "name"

    .line 712
    invoke-interface {v2, v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "touch_sounds"

    .line 713
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 714
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported group name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :cond_7c
    const-string v4, "asset"

    .line 716
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    const-string v3, "file"

    .line 717
    invoke-interface {v2, v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 719
    iget-object v5, p0, Lcom/android/server/audio/SoundEffectsHelper;->mDefaultResources:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_91
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 720
    iget-object v6, v6, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_91

    const/4 v4, 0x0

    :cond_a6
    if-eqz v4, :cond_44

    .line 726
    iget-object v4, p0, Lcom/android/server/audio/SoundEffectsHelper;->mDefaultResources:Ljava/util/List;

    new-instance v5, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    invoke-direct {v5, v3}, Lcom/android/server/audio/SoundEffectsHelper$Resource;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_30 .. :try_end_b2} :catch_c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_30 .. :try_end_b2} :catch_bd
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_b2} :catch_ba
    .catchall {:try_start_30 .. :try_end_b2} :catchall_b7

    goto :goto_44

    .line 741
    :cond_b3
    :goto_b3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_e2

    :catchall_b7
    move-exception p0

    move-object v1, v2

    goto :goto_e3

    :catch_ba
    move-exception p0

    move-object v1, v2

    goto :goto_c6

    :catch_bd
    move-exception p0

    move-object v1, v2

    goto :goto_cf

    :catch_c0
    move-exception p0

    move-object v1, v2

    goto :goto_d8

    :catchall_c3
    move-exception p0

    goto :goto_e3

    :catch_c5
    move-exception p0

    :goto_c6
    :try_start_c6
    const-string v2, "I/O exception reading touch sound assets"

    .line 738
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_e2

    goto :goto_df

    :catch_ce
    move-exception p0

    :goto_cf
    const-string v2, "XML parser exception reading touch sound assets"

    .line 736
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_e2

    goto :goto_df

    :catch_d7
    move-exception p0

    :goto_d8
    const-string v2, "audio assets file not found"

    .line 734
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_dd
    .catchall {:try_start_c6 .. :try_end_dd} :catchall_c3

    if-eqz v1, :cond_e2

    .line 741
    :goto_df
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_e2
    :goto_e2
    return-void

    :goto_e3
    if-eqz v1, :cond_e8

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 743
    :cond_e8
    throw p0
.end method

.method public final logEvent(Ljava/lang/String;)V
    .registers 3

    .line 184
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    invoke-direct {v0, p1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    return-void
.end method

.method public final onLoadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V
    .registers 11

    .line 189
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    if-eqz v0, :cond_8

    .line 191
    invoke-virtual {v0, p1}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->addHandler(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    return-void

    .line 194
    :cond_8
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    if-eqz p1, :cond_12

    .line 196
    invoke-interface {p1, v1}, Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;->run(Z)V

    :cond_12
    return-void

    :cond_13
    const-string v0, "effects loading started"

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 202
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v2, 0x4

    .line 203
    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v4, 0xd

    .line 205
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 206
    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 204
    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 209
    invoke-virtual {p0}, Lcom/android/server/audio/SoundEffectsHelper;->loadSoundAssets()V

    .line 211
    new-instance v0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    invoke-direct {v0, p0}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    .line 212
    new-instance v2, Lcom/android/server/audio/SoundEffectsHelper$1;

    invoke-direct {v2, p0}, Lcom/android/server/audio/SoundEffectsHelper$1;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    invoke-virtual {v0, v2}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->addHandler(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    .line 222
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->addHandler(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    .line 225
    iget-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v2, v0

    :goto_5e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 226
    sget-boolean v4, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    if-eqz v4, :cond_73

    .line 227
    invoke-virtual {p0, v2, v3}, Lcom/android/server/audio/SoundEffectsHelper;->getResourceFilePath(ILcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    move-result-object v4

    goto :goto_77

    :cond_73
    invoke-virtual {p0, v3}, Lcom/android/server/audio/SoundEffectsHelper;->getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    move-result-object v4

    .line 228
    :goto_77
    iget-object v5, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v5, v4, v0}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_86

    .line 230
    iput v5, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 231
    iput-boolean v0, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 234
    :cond_86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "effect "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " rejected by SoundPool"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SoundPool could not load file: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.SfxHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    :cond_b6
    if-lez v2, :cond_c3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3a98

    move-object v3, p0

    .line 240
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILjava/lang/Object;I)V

    goto :goto_cd

    :cond_c3
    const-string p1, "effects loading completed, no effects to load"

    .line 242
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 243
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    invoke-virtual {p0, v1}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onComplete(Z)V

    :goto_cd
    return-void
.end method

.method public onPlaySoundEffect(II)V
    .registers 10

    const-string p2, "AS.SfxHelper"

    .line 275
    invoke-static {p1}, Lcom/samsung/android/media/AudioFxHelper;->getSoundFxVolumeByType(I)F

    move-result v3

    .line 285
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    aget v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 286
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    const/4 v2, 0x1

    if-eqz v1, :cond_43

    iget v4, v0, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    if-eqz v4, :cond_43

    iget-boolean v4, v0, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    if-eqz v4, :cond_43

    .line 288
    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->semSetStreamType(I)V

    const/16 p2, 0x65

    .line 289
    invoke-static {p2}, Lcom/samsung/android/media/AudioFxHelper;->getPlaySoundTypeForSEP(I)I

    move-result p2

    if-ne p1, p2, :cond_35

    const/4 p1, 0x2

    .line 291
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DEFAULT_STREAM_NOTIFICATION:Z

    if-eqz p2, :cond_30

    const/4 p1, 0x5

    .line 294
    :cond_30
    iget-object p2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p2, p1}, Landroid/media/SoundPool;->semSetStreamType(I)V

    .line 297
    :cond_35
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    iget v1, v0, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v2, v3

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_ad

    .line 299
    :cond_43
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    .line 301
    :try_start_48
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper;->getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 304
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 305
    invoke-virtual {p1, v3}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 306
    new-instance v0, Lcom/android/server/audio/SoundEffectsHelper$3;

    invoke-direct {v0, p0}, Lcom/android/server/audio/SoundEffectsHelper$3;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 311
    new-instance v0, Lcom/android/server/audio/SoundEffectsHelper$4;

    invoke-direct {v0, p0}, Lcom/android/server/audio/SoundEffectsHelper$4;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 317
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_6b} :catch_98
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_6b} :catch_82
    .catch Ljava/lang/IllegalStateException; {:try_start_48 .. :try_end_6b} :catch_6c

    goto :goto_ad

    :catch_6c
    move-exception p0

    .line 323
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaPlayer IllegalStateException: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    :catch_82
    move-exception p0

    .line 321
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    :catch_98
    move-exception p0

    .line 319
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaPlayer IOException: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ad
    return-void
.end method

.method public onUnloadSoundEffects()V
    .registers 5

    .line 248
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_5

    return-void

    .line 251
    :cond_5
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    if-eqz v0, :cond_11

    .line 252
    new-instance v1, Lcom/android/server/audio/SoundEffectsHelper$2;

    invoke-direct {v1, p0}, Lcom/android/server/audio/SoundEffectsHelper$2;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->addHandler(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    :cond_11
    const-string v0, "effects unloading started"

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 262
    iget v2, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    if-eqz v2, :cond_1c

    .line 263
    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 264
    invoke-virtual {v1}, Lcom/android/server/audio/SoundEffectsHelper$Resource;->unload()V

    goto :goto_1c

    .line 267
    :cond_35
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    const-string v0, "effects unloading completed"

    .line 269
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method public playSoundEffect(II)V
    .registers 9

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    .line 151
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendMsg(IIILjava/lang/Object;I)V
    .registers 6

    .line 180
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p5

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final startWorker()V
    .registers 4

    .line 166
    new-instance v0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

    invoke-direct {v0, p0}, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxWorker:Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

    .line 167
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 168
    monitor-enter p0

    .line 169
    :goto_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_37

    if-nez v0, :cond_35

    .line 171
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_13
    .catchall {:try_start_f .. :try_end_12} :catchall_37

    goto :goto_b

    :catch_13
    :try_start_13
    const-string v0, "AS.SfxHelper"

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interrupted while waiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxWorker:Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 176
    :cond_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_13 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public unloadSoundEffects()V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 147
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILjava/lang/Object;I)V

    return-void
.end method

.method public updateThemeSound(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13

    .line 643
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "AS.SfxHelper"

    const/4 v4, 0x1

    if-nez v0, :cond_1c

    .line 644
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string/jumbo v0, "updateThemeSound( theme is changed )"

    .line 645
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    goto :goto_2c

    .line 650
    :cond_1c
    iget-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2e

    const-string/jumbo p1, "updateThemeSound( theme is released )"

    .line 651
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iput-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    :goto_2c
    move p1, v4

    goto :goto_2f

    :cond_2e
    move p1, v2

    .line 657
    :goto_2f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 658
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateThemeSound( Change to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iput-object p2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    const-string v0, "Open_theme"

    .line 661
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 662
    iput-object p2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    goto :goto_76

    .line 667
    :cond_64
    iget-object p2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_78

    const-string/jumbo p2, "updateThemeSound( Change to default )"

    .line 668
    invoke-static {v3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iput-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 670
    iput-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    :cond_76
    :goto_76
    move p2, v4

    goto :goto_79

    :cond_78
    move p2, v2

    :goto_79
    if-nez p3, :cond_7f

    if-nez p1, :cond_7f

    if-eqz p2, :cond_a5

    .line 676
    :cond_7f
    iput-boolean v4, p0, Lcom/android/server/audio/SoundEffectsHelper;->mUpdateSystemSound:Z

    .line 677
    iget-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_93

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x12c

    move-object v3, p0

    .line 678
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILjava/lang/Object;I)V

    .line 680
    :cond_93
    iget-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_a5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x12c

    move-object v0, p0

    .line 681
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILjava/lang/Object;I)V

    :cond_a5
    return-void
.end method
