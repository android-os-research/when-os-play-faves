.class public Lcom/android/server/wm/DisplayWindowSettingsProvider;
.super Ljava/lang/Object;
.source "DisplayWindowSettingsProvider.java"

# interfaces
.implements Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;,
        Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;,
        Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;,
        Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;,
        Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;,
        Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;,
        Lcom/android/server/wm/DisplayWindowSettingsProvider$DisplayIdentifierType;
    }
.end annotation


# static fields
.field public static final DATA_DISPLAY_SETTINGS_FILE_PATH:Ljava/lang/String; = "system/display_settings.xml"

.field public static final IDENTIFIER_PORT:I = 0x1

.field public static final IDENTIFIER_UNIQUE_ID:I = 0x0

.field public static final TAG:Ljava/lang/String; = "WindowManager"

.field public static final VENDOR_DISPLAY_SETTINGS_FILE_PATH:Ljava/lang/String; = "etc/display_settings.xml"

.field public static final WM_DISPLAY_COMMIT_TAG:Ljava/lang/String; = "wm-displays"


# instance fields
.field public mBaseSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;

.field public final mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;


# direct methods
.method public static bridge synthetic -$$Nest$smreadSettings(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->readSettings(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smwriteSettings(Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->writeSettings(Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 98
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;

    invoke-static {}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getVendorSettingsFile()Landroid/util/AtomicFile;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;-><init>(Landroid/util/AtomicFile;)V

    new-instance v1, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;

    .line 99
    invoke-static {}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getOverrideSettingsFile()Landroid/util/AtomicFile;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;-><init>(Landroid/util/AtomicFile;)V

    .line 98
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mBaseSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;

    .line 106
    new-instance p1, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    invoke-direct {p1, p2}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    return-void
.end method

.method public static getBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 4

    const/4 v0, 0x0

    .line 386
    :try_start_1
    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    return-object p2
.end method

.method public static getIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I
    .registers 4

    const/4 v0, 0x0

    .line 369
    invoke-interface {p0, v0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getIntegerAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 4

    const/4 v0, 0x0

    .line 376
    :try_start_1
    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    return-object p2
.end method

.method public static getOverrideSettingsFile()Landroid/util/AtomicFile;
    .registers 3

    .line 297
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system/display_settings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 299
    new-instance v1, Landroid/util/AtomicFile;

    const-string/jumbo v2, "wm-displays"

    invoke-direct {v1, v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getVendorSettingsFile()Landroid/util/AtomicFile;
    .registers 3

    .line 285
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "etc/display_settings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 289
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 292
    :cond_1a
    new-instance v1, Landroid/util/AtomicFile;

    const-string/jumbo v2, "wm-displays"

    invoke-direct {v1, v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static readConfig(Landroid/util/TypedXmlPullParser;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "identifier"

    const/4 v1, 0x0

    .line 443
    invoke-static {p0, v0, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mIdentifierType:I

    .line 445
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public static readDisplay(Landroid/util/TypedXmlPullParser;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "name"

    .line 394
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a8

    .line 396
    new-instance v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    invoke-direct {v2}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;-><init>()V

    const-string/jumbo v3, "windowingMode"

    const/4 v4, 0x0

    .line 397
    invoke-static {p0, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    const-string/jumbo v3, "userRotationMode"

    .line 399
    invoke-static {p0, v3, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntegerAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    const-string/jumbo v3, "userRotation"

    .line 401
    invoke-static {p0, v3, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntegerAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    const-string v3, "forcedWidth"

    .line 403
    invoke-static {p0, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    const-string v3, "forcedHeight"

    .line 405
    invoke-static {p0, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    const-string v3, "forcedDensity"

    .line 407
    invoke-static {p0, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    const-string v3, "forcedScalingMode"

    .line 409
    invoke-static {p0, v3, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntegerAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    const-string/jumbo v3, "removeContentMode"

    .line 411
    invoke-static {p0, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    const-string/jumbo v3, "shouldShowWithInsecureKeyguard"

    .line 413
    invoke-static {p0, v3, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    const-string/jumbo v3, "shouldShowSystemDecors"

    .line 415
    invoke-static {p0, v3, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    const-string/jumbo v3, "shouldShowIme"

    .line 417
    invoke-static {p0, v3, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_7b

    .line 420
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    goto :goto_83

    :cond_7b
    const-string v3, "imePolicy"

    .line 423
    invoke-static {p0, v3, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntegerAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    :goto_83
    const-string v3, "fixedToUserRotation"

    .line 426
    invoke-static {p0, v3, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntegerAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    const-string v3, "ignoreOrientationRequest"

    .line 428
    invoke-static {p0, v3, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    const-string v3, "ignoreDisplayCutout"

    .line 430
    invoke-static {p0, v3, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    const-string v3, "dontMoveToTop"

    .line 432
    invoke-static {p0, v3, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 435
    iget-object p1, p1, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/util/Map;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :cond_a8
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public static readSettings(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;
    .registers 11

    const-string v0, "Failed parsing "

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    .line 306
    :try_start_5
    invoke-interface {p0}, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;->openRead()Ljava/io/InputStream;

    move-result-object p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_109

    .line 311
    new-instance v3, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;

    invoke-direct {v3, v2}, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData-IA;)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 314
    :try_start_10
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v5

    .line 316
    :goto_14
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1e

    if-eq v6, v4, :cond_1e

    goto :goto_14

    :cond_1e
    if-ne v6, v7, :cond_77

    .line 325
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v6

    .line 326
    :cond_24
    :goto_24
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v7

    if-eq v7, v4, :cond_71

    const/4 v8, 0x3

    if-ne v7, v8, :cond_33

    .line 327
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v6, :cond_71

    :cond_33
    if-eq v7, v8, :cond_24

    const/4 v8, 0x4

    if-ne v7, v8, :cond_39

    goto :goto_24

    .line 332
    :cond_39
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "display"

    .line 333
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_49

    .line 334
    invoke-static {v5, v3}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->readDisplay(Landroid/util/TypedXmlPullParser;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V

    goto :goto_24

    :cond_49
    const-string v8, "config"

    .line 335
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 336
    invoke-static {v5, v3}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->readConfig(Landroid/util/TypedXmlPullParser;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V

    goto :goto_24

    .line 338
    :cond_55
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <display-settings>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 338
    invoke-static {v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_70
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_70} :catch_e9
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_70} :catch_d5
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_70} :catch_c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_70} :catch_ad
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_70} :catch_99
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_70} :catch_82
    .catchall {:try_start_10 .. :try_end_70} :catchall_7f

    goto :goto_24

    .line 358
    :cond_71
    :try_start_71
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_74

    :catch_74
    move v2, v4

    goto/16 :goto_fd

    .line 322
    :cond_77
    :try_start_77
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "no start tag found"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_7f
    .catch Ljava/lang/IllegalStateException; {:try_start_77 .. :try_end_7f} :catch_e9
    .catch Ljava/lang/NullPointerException; {:try_start_77 .. :try_end_7f} :catch_d5
    .catch Ljava/lang/NumberFormatException; {:try_start_77 .. :try_end_7f} :catch_c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_77 .. :try_end_7f} :catch_ad
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7f} :catch_99
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_77 .. :try_end_7f} :catch_82
    .catchall {:try_start_77 .. :try_end_7f} :catchall_7f

    :catchall_7f
    move-exception v0

    goto/16 :goto_105

    :catch_82
    move-exception v4

    .line 355
    :try_start_83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_83 .. :try_end_95} :catchall_7f

    .line 358
    :goto_95
    :try_start_95
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_fd

    goto :goto_fd

    :catch_99
    move-exception v4

    .line 353
    :try_start_9a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    :catch_ad
    move-exception v4

    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    :catch_c1
    move-exception v4

    .line 349
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    :catch_d5
    move-exception v4

    .line 347
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    :catch_e9
    move-exception v4

    .line 345
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fc
    .catchall {:try_start_9a .. :try_end_fc} :catchall_7f

    goto :goto_95

    :catch_fd
    :goto_fd
    if-nez v2, :cond_104

    .line 363
    iget-object p0, v3, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_104
    return-object v3

    .line 358
    :goto_105
    :try_start_105
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_108

    .line 361
    :catch_108
    throw v0

    :catch_109
    const-string p0, "No existing display settings, starting empty"

    .line 308
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static writeSettings(Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V
    .registers 12

    const-string v0, "display"

    const-string v1, "config"

    const-string v2, "display-settings"

    const-string v3, "WindowManager"

    .line 451
    :try_start_8
    invoke-interface {p0}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;->startWrite()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_12f

    const/4 v5, 0x0

    .line 459
    :try_start_d
    invoke-static {v4}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v6

    .line 460
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v8, 0x0

    invoke-interface {v6, v8, v7}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 462
    invoke-interface {v6, v8, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 464
    invoke-interface {v6, v8, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "identifier"

    .line 465
    iget v9, p1, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mIdentifierType:I

    invoke-interface {v6, v8, v7, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 466
    invoke-interface {v6, v8, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 469
    iget-object p1, p1, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_114

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 470
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 471
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 472
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_50

    goto :goto_31

    .line 476
    :cond_50
    invoke-interface {v6, v8, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "name"

    .line 477
    invoke-interface {v6, v8, v9, v7}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 478
    iget v7, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    if-eqz v7, :cond_62

    const-string/jumbo v9, "windowingMode"

    .line 479
    invoke-interface {v6, v8, v9, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 481
    :cond_62
    iget-object v7, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    if-eqz v7, :cond_70

    const-string/jumbo v9, "userRotationMode"

    .line 483
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 482
    invoke-interface {v6, v8, v9, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 485
    :cond_70
    iget-object v7, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    if-eqz v7, :cond_7e

    const-string/jumbo v9, "userRotation"

    .line 487
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 486
    invoke-interface {v6, v8, v9, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 489
    :cond_7e
    iget v7, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    if-eqz v7, :cond_92

    iget v9, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    if-eqz v9, :cond_92

    const-string v9, "forcedWidth"

    .line 490
    invoke-interface {v6, v8, v9, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "forcedHeight"

    .line 491
    iget v9, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    invoke-interface {v6, v8, v7, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 493
    :cond_92
    iget v7, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    if-eqz v7, :cond_9b

    const-string v9, "forcedDensity"

    .line 494
    invoke-interface {v6, v8, v9, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 496
    :cond_9b
    iget-object v7, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    if-eqz v7, :cond_a8

    const-string v9, "forcedScalingMode"

    .line 498
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 497
    invoke-interface {v6, v8, v9, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 500
    :cond_a8
    iget v7, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    if-eqz v7, :cond_b2

    const-string/jumbo v9, "removeContentMode"

    .line 501
    invoke-interface {v6, v8, v9, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 503
    :cond_b2
    iget-object v7, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    if-eqz v7, :cond_c0

    const-string/jumbo v9, "shouldShowWithInsecureKeyguard"

    .line 505
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 504
    invoke-interface {v6, v8, v9, v7}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 507
    :cond_c0
    iget-object v7, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    if-eqz v7, :cond_ce

    const-string/jumbo v9, "shouldShowSystemDecors"

    .line 509
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 508
    invoke-interface {v6, v8, v9, v7}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 511
    :cond_ce
    iget-object v7, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    if-eqz v7, :cond_db

    const-string v9, "imePolicy"

    .line 512
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v8, v9, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 514
    :cond_db
    iget-object v7, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    if-eqz v7, :cond_e8

    const-string v9, "fixedToUserRotation"

    .line 516
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 515
    invoke-interface {v6, v8, v9, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 518
    :cond_e8
    iget-object v7, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    if-eqz v7, :cond_f5

    const-string v9, "ignoreOrientationRequest"

    .line 520
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 519
    invoke-interface {v6, v8, v9, v7}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 522
    :cond_f5
    iget-object v7, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    if-eqz v7, :cond_102

    const-string v9, "ignoreDisplayCutout"

    .line 524
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 523
    invoke-interface {v6, v8, v9, v7}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 526
    :cond_102
    iget-object v1, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    if-eqz v1, :cond_10f

    const-string v7, "dontMoveToTop"

    .line 528
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 527
    invoke-interface {v6, v8, v7, v1}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 530
    :cond_10f
    invoke-interface {v6, v8, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_31

    .line 533
    :cond_114
    invoke-interface {v6, v8, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 534
    invoke-interface {v6}, Landroid/util/TypedXmlSerializer;->endDocument()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11a} :catch_121
    .catchall {:try_start_d .. :try_end_11a} :catchall_11f

    const/4 p1, 0x1

    .line 539
    invoke-interface {p0, v4, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;->finishWrite(Ljava/io/OutputStream;Z)V

    goto :goto_12a

    :catchall_11f
    move-exception p1

    goto :goto_12b

    :catch_121
    move-exception p1

    :try_start_122
    const-string v0, "Failed to write display window settings."

    .line 537
    invoke-static {v3, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_127
    .catchall {:try_start_122 .. :try_end_127} :catchall_11f

    .line 539
    invoke-interface {p0, v4, v5}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;->finishWrite(Ljava/io/OutputStream;Z)V

    :goto_12a
    return-void

    :goto_12b
    invoke-interface {p0, v4, v5}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;->finishWrite(Ljava/io/OutputStream;Z)V

    .line 540
    throw p1

    :catch_12f
    move-exception p0

    .line 453
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to write display settings: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    .registers 3

    .line 154
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->getOrCreateSettingsEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;-><init>(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    return-object v0
.end method

.method public getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mBaseSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;->getSettingsEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v0

    .line 141
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->getOrCreateSettingsEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object p0

    if-nez v0, :cond_14

    .line 143
    new-instance p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    invoke-direct {p1, p0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;-><init>(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    return-object p1

    .line 145
    :cond_14
    new-instance p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    invoke-direct {p1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;-><init>(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 146
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->updateFrom(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)Z

    return-object p1
.end method

.method public setBaseSettingsFilePath(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_8

    .line 117
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_1a

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 119
    new-instance p1, Landroid/util/AtomicFile;

    const-string/jumbo v1, "wm-displays"

    invoke-direct {p1, v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_39

    .line 121
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display settings "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist, using vendor defaults"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getVendorSettingsFile()Landroid/util/AtomicFile;

    move-result-object p1

    .line 124
    :goto_39
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;-><init>(Landroid/util/AtomicFile;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->setBaseSettingsStorage(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)V

    return-void
.end method

.method public setBaseSettingsStorage(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 134
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mBaseSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;

    return-void
.end method

.method public updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V
    .registers 3

    .line 165
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->updateSettingsEntry(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    return-void
.end method
