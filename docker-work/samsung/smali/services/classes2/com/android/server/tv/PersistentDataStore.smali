.class public final Lcom/android/server/tv/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# static fields
.field public static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field public static final ATTR_STRING:Ljava/lang/String; = "string"

.field public static final TAG:Ljava/lang/String; = "TvInputManagerService"

.field public static final TAG_BLOCKED_RATINGS:Ljava/lang/String; = "blocked-ratings"

.field public static final TAG_PARENTAL_CONTROLS:Ljava/lang/String; = "parental-controls"

.field public static final TAG_RATING:Ljava/lang/String; = "rating"

.field public static final TAG_TV_INPUT_MANAGER_STATE:Ljava/lang/String; = "tv-input-manager-state"


# instance fields
.field public final mAtomicFile:Landroid/util/AtomicFile;

.field public final mBlockedRatings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/TvContentRating;",
            ">;"
        }
    .end annotation
.end field

.field public mBlockedRatingsChanged:Z

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mLoaded:Z

.field public mParentalControlsEnabled:Z

.field public mParentalControlsEnabledChanged:Z

.field public final mSaveRunnable:Ljava/lang/Runnable;


# direct methods
.method public static bridge synthetic -$$Nest$msave(Lcom/android/server/tv/PersistentDataStore;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->save()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    .line 185
    new-instance v0, Lcom/android/server/tv/PersistentDataStore$1;

    invoke-direct {v0, p0}, Lcom/android/server/tv/PersistentDataStore$1;-><init>(Lcom/android/server/tv/PersistentDataStore;)V

    iput-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mSaveRunnable:Ljava/lang/Runnable;

    .line 83
    iput-object p1, p0, Lcom/android/server/tv/PersistentDataStore;->mContext:Landroid/content/Context;

    .line 84
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_46

    .line 86
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-eqz p2, :cond_2f

    goto :goto_46

    .line 87
    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User dir cannot be created: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_46
    :goto_46
    new-instance p2, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "tv-input-manager-state.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo p1, "tv-input-state"

    invoke-direct {p2, v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    return-void
.end method


# virtual methods
.method public addBlockedRating(Landroid/media/tv/TvContentRating;)V
    .registers 3

    .line 125
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    if-eqz p1, :cond_18

    .line 126
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 127
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    .line 129
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->postSave()V

    :cond_18
    return-void
.end method

.method public final broadcastChangesIfNeeded()V
    .registers 5

    .line 216
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabledChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 217
    iput-boolean v1, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabledChanged:Z

    .line 218
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.tv.action.PARENTAL_CONTROLS_ENABLED_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 221
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    if-eqz v0, :cond_29

    .line 222
    iput-boolean v1, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    .line 223
    iget-object p0, p0, Lcom/android/server/tv/PersistentDataStore;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.tv.action.BLOCKED_RATINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_29
    return-void
.end method

.method public final clearState()V
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    return-void
.end method

.method public getBlockedRatings()[Landroid/media/tv/TvContentRating;
    .registers 2

    .line 120
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 121
    iget-object p0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/media/tv/TvContentRating;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/media/tv/TvContentRating;

    return-object p0
.end method

.method public isParentalControlsEnabled()Z
    .registers 1

    .line 94
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 95
    iget-boolean p0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    return p0
.end method

.method public isRatingBlocked(Landroid/media/tv/TvContentRating;)Z
    .registers 4

    .line 108
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 109
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    monitor-enter v0

    .line 110
    :try_start_6
    iget-object p0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvContentRating;

    .line 111
    invoke-virtual {p1, v1}, Landroid/media/tv/TvContentRating;->contains(Landroid/media/tv/TvContentRating;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 p0, 0x1

    .line 112
    monitor-exit v0

    return p0

    .line 115
    :cond_21
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final load()V
    .registers 5

    .line 155
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->clearState()V

    .line 159
    :try_start_3
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_9} :catch_27

    .line 166
    :try_start_9
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 167
    invoke-virtual {p0, v1}, Lcom/android/server/tv/PersistentDataStore;->loadFromXml(Landroid/util/TypedXmlPullParser;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_10} :catch_16
    .catchall {:try_start_9 .. :try_end_10} :catchall_14

    .line 172
    :goto_10
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_22

    :catchall_14
    move-exception p0

    goto :goto_23

    :catch_16
    move-exception v1

    :try_start_17
    const-string v2, "TvInputManagerService"

    const-string v3, "Failed to load tv input manager persistent store data."

    .line 169
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->clearState()V
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_14

    goto :goto_10

    :goto_22
    return-void

    .line 172
    :goto_23
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 173
    throw p0

    :catch_27
    return-void
.end method

.method public final loadBlockedRatingsFromXml(Landroid/util/TypedXmlPullParser;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 250
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 251
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 252
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rating"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const-string/jumbo v2, "string"

    .line 253
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 258
    iget-object v2, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-static {v1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 255
    :cond_2f
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Missing string attribute on rating"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    return-void
.end method

.method public final loadFromXml(Landroid/util/TypedXmlPullParser;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string/jumbo v0, "tv-input-manager-state"

    .line 237
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 238
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 239
    :cond_a
    :goto_a
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 240
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "blocked-ratings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/server/tv/PersistentDataStore;->loadBlockedRatingsFromXml(Landroid/util/TypedXmlPullParser;)V

    goto :goto_a

    .line 242
    :cond_20
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "parental-controls"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    const-string v2, "enabled"

    .line 243
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    goto :goto_a

    :cond_37
    return-void
.end method

.method public final loadIfNeeded()V
    .registers 2

    .line 143
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mLoaded:Z

    if-nez v0, :cond_a

    .line 144
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->load()V

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mLoaded:Z

    :cond_a
    return-void
.end method

.method public final postSave()V
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 178
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/tv/PersistentDataStore;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeBlockedRating(Landroid/media/tv/TvContentRating;)V
    .registers 3

    .line 134
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    if-eqz p1, :cond_18

    .line 135
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 136
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    .line 138
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->postSave()V

    :cond_18
    return-void
.end method

.method public final save()V
    .registers 3

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_20

    .line 198
    :try_start_6
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v1

    .line 199
    invoke-virtual {p0, v1}, Lcom/android/server/tv/PersistentDataStore;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 200
    invoke-interface {v1}, Landroid/util/TypedXmlSerializer;->flush()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_19

    .line 204
    :try_start_10
    iget-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->broadcastChangesIfNeeded()V

    goto :goto_28

    :catchall_19
    move-exception v1

    .line 207
    iget-object p0, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 209
    throw v1
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_20} :catch_20

    :catch_20
    move-exception p0

    const-string v0, "TvInputManagerService"

    const-string v1, "Failed to save tv input manager persistent store data."

    .line 211
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    return-void
.end method

.method public final saveToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v2, 0x1

    .line 265
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "tv-input-manager-state"

    .line 266
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "blocked-ratings"

    .line 267
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    monitor-enter v0

    .line 269
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/TvContentRating;

    const-string/jumbo v4, "rating"

    .line 270
    invoke-interface {p1, v1, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "string"

    .line 271
    invoke-virtual {v3}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v4, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "rating"

    .line 272
    invoke-interface {p1, v1, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_20

    .line 274
    :cond_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_1a .. :try_end_44} :catchall_66

    const-string v0, "blocked-ratings"

    .line 275
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "parental-controls"

    .line 276
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "enabled"

    .line 277
    iget-boolean p0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    invoke-interface {p1, v1, v0, p0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p0, "parental-controls"

    .line 278
    invoke-interface {p1, v1, p0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p0, "tv-input-manager-state"

    .line 279
    invoke-interface {p1, v1, p0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 280
    invoke-interface {p1}, Landroid/util/TypedXmlSerializer;->endDocument()V

    return-void

    :catchall_66
    move-exception p0

    .line 274
    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw p0
.end method

.method public setParentalControlsEnabled(Z)V
    .registers 3

    .line 99
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 100
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    if-eq v0, p1, :cond_f

    .line 101
    iput-boolean p1, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabledChanged:Z

    .line 103
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->postSave()V

    :cond_f
    return-void
.end method
