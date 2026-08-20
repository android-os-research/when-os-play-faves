.class public final Lcom/android/server/input/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field public final mAtomicFile:Landroid/util/AtomicFile;

.field public mDirty:Z

.field public final mInputDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/input/PersistentDataStore$InputDeviceState;",
            ">;"
        }
    .end annotation
.end field

.field public mLoaded:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    .line 92
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/input-manager-state.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "input-state"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    return-void
.end method


# virtual methods
.method public addKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    .line 193
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object p1

    .line 194
    invoke-virtual {p1, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->addKeyboardLayout(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 195
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    return v0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final clearState()V
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PersistentDataStore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/PersistentDataStore;->mLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDirty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  InputDeviceStates:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_65
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "      "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->-$$Nest$mdump(Lcom/android/server/input/PersistentDataStore$InputDeviceState;Ljava/io/PrintWriter;Ljava/lang/String;)V

    move v0, v3

    goto :goto_65

    :cond_b4
    return-void
.end method

.method public getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 129
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->getCurrentKeyboardLayout()Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return-object p0
.end method

.method public final getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    .registers 4

    .line 254
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->loadIfNeeded()V

    .line 255
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    if-nez v0, :cond_1d

    if-eqz p2, :cond_1d

    .line 257
    new-instance v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    const/4 p2, 0x0

    invoke-direct {v0, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;-><init>(Lcom/android/server/input/PersistentDataStore$InputDeviceState-IA;)V

    .line 258
    iget-object p2, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    :cond_1d
    return-object v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputMethodSubtypeHandle;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object p0

    if-nez p0, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 157
    :cond_9
    invoke-virtual {p0, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->getKeyboardLayout(Lcom/android/server/input/InputMethodSubtypeHandle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object p0

    if-nez p0, :cond_10

    .line 145
    const-class p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 147
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->getKeyboardLayouts()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .registers 4

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object p0

    if-nez p0, :cond_a

    .line 106
    sget-object p0, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    return-object p0

    .line 109
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->getTouchCalibration(I)Landroid/hardware/input/TouchCalibration;

    move-result-object p0

    if-nez p0, :cond_12

    .line 111
    sget-object p0, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    :cond_12
    return-object p0
.end method

.method public final load()V
    .registers 5

    const-string v0, "Failed to load input manager persistent store data."

    const-string v1, "InputManager"

    .line 280
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->clearState()V

    .line 284
    :try_start_7
    iget-object v2, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_d} :catch_2f

    .line 291
    :try_start_d
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v3

    .line 292
    invoke-virtual {p0, v3}, Lcom/android/server/input/PersistentDataStore;->loadFromXml(Landroid/util/TypedXmlPullParser;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_22
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_14} :catch_1a
    .catchall {:try_start_d .. :try_end_14} :catchall_18

    .line 300
    :goto_14
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2a

    :catchall_18
    move-exception p0

    goto :goto_2b

    :catch_1a
    move-exception v3

    .line 297
    :try_start_1b
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->clearState()V

    goto :goto_14

    :catch_22
    move-exception v3

    .line 294
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->clearState()V
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_18

    goto :goto_14

    :goto_2a
    return-void

    .line 300
    :goto_2b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 301
    throw p0

    :catch_2f
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

    const-string/jumbo v0, "input-manager-state"

    .line 328
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 329
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 330
    :cond_a
    :goto_a
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 331
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "input-devices"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/server/input/PersistentDataStore;->loadInputDevicesFromXml(Landroid/util/TypedXmlPullParser;)V

    goto :goto_a

    :cond_21
    return-void
.end method

.method public final loadIfNeeded()V
    .registers 2

    .line 265
    iget-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mLoaded:Z

    if-nez v0, :cond_a

    .line 266
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->load()V

    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mLoaded:Z

    :cond_a
    return-void
.end method

.method public final loadInputDevicesFromXml(Landroid/util/TypedXmlPullParser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 339
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 340
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 341
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "input-device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const-string v2, "descriptor"

    .line 342
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 347
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 351
    new-instance v3, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    invoke-direct {v3, v1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;-><init>(Lcom/android/server/input/PersistentDataStore$InputDeviceState-IA;)V

    .line 352
    invoke-virtual {v3, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->loadFromXml(Landroid/util/TypedXmlPullParser;)V

    .line 353
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 348
    :cond_36
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Found duplicate input device."

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 344
    :cond_3e
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Missing descriptor attribute on input-device."

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    return-void
.end method

.method public removeKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputMethodSubtypeHandle;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    .line 181
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object p1

    .line 182
    invoke-virtual {p1, p3}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->removeKeyboardLayout(Ljava/lang/String;)Z

    .line 183
    invoke-virtual {p1, p2, p3}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->removeKeyboardLayout(Lcom/android/server/input/InputMethodSubtypeHandle;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 184
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    return v0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    .line 203
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object p1

    .line 204
    invoke-virtual {p1, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->removeKeyboardLayout(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 205
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    return v0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 241
    invoke-virtual {v3, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v2, v4

    goto :goto_c

    :cond_21
    if-eqz v2, :cond_27

    .line 246
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    return v4

    :cond_27
    return v1
.end method

.method public final save()V
    .registers 3

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_1d

    .line 310
    :try_start_6
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v1

    .line 311
    invoke-virtual {p0, v1}, Lcom/android/server/input/PersistentDataStore;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 312
    invoke-interface {v1}, Landroid/util/TypedXmlSerializer;->flush()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_16

    .line 316
    :try_start_10
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_25

    :catchall_16
    move-exception v1

    .line 318
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 320
    throw v1
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1d} :catch_1d

    :catch_1d
    move-exception p0

    const-string v0, "InputManager"

    const-string v1, "Failed to save input manager persistent store data."

    .line 322
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void
.end method

.method public saveIfNeeded()V
    .registers 2

    .line 97
    iget-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    if-eqz v0, :cond_a

    .line 98
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->save()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    :cond_a
    return-void
.end method

.method public final saveToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v2, 0x1

    .line 360
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "input-manager-state"

    .line 361
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "input-devices"

    .line 362
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 363
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 364
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 365
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    const-string/jumbo v5, "input-device"

    .line 366
    invoke-interface {p1, v1, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "descriptor"

    .line 367
    invoke-interface {p1, v1, v6, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 368
    invoke-virtual {v3, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 369
    invoke-interface {p1, v1, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_23

    .line 371
    :cond_4d
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 372
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    invoke-interface {p1}, Landroid/util/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method public setCurrentKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputMethodSubtypeHandle;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    .line 171
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object p1

    .line 172
    invoke-virtual {p1, p2, p3}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->setCurrentKeyboardLayout(Lcom/android/server/input/InputMethodSubtypeHandle;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 173
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    return v0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public setCurrentKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    .line 134
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object p1

    .line 135
    invoke-virtual {p1, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->setCurrentKeyboardLayout(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 136
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    return v0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final setDirty()V
    .registers 2

    const/4 v0, 0x1

    .line 272
    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    return-void
.end method

.method public setKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputMethodSubtypeHandle;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    .line 161
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object p1

    .line 162
    invoke-virtual {p1, p2, p3}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->setKeyboardLayout(Lcom/android/server/input/InputMethodSubtypeHandle;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 163
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    return v0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)Z
    .registers 5

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object p1

    .line 119
    invoke-virtual {p1, p2, p3}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->setTouchCalibration(ILandroid/hardware/input/TouchCalibration;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 120
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    return v0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public switchKeyboardLayout(Ljava/lang/String;I)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public switchKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputMethodSubtypeHandle;)Z
    .registers 4

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 230
    invoke-virtual {p1, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->switchKeyboardLayout(Lcom/android/server/input/InputMethodSubtypeHandle;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 231
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    const/4 p0, 0x1

    return p0

    :cond_12
    return v0
.end method
