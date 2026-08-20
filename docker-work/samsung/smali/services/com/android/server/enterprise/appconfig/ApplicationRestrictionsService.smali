.class public Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;
.super Lcom/samsung/android/knox/localservice/ApplicationRestrictionsInternal;
.source "ApplicationRestrictionsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$Injector;
    }
.end annotation


# static fields
.field public static final ATTR_KEY:Ljava/lang/String; = "key"

.field public static final ATTR_MULTIPLE:Ljava/lang/String; = "m"

.field public static final ATTR_TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field public static final ATTR_TYPE_BUNDLE:Ljava/lang/String; = "B"

.field public static final ATTR_TYPE_BUNDLE_ARRAY:Ljava/lang/String; = "BA"

.field public static final ATTR_TYPE_INTEGER:Ljava/lang/String; = "i"

.field public static final ATTR_TYPE_STRING:Ljava/lang/String; = "s"

.field public static final ATTR_TYPE_STRING_ARRAY:Ljava/lang/String; = "sa"

.field public static final ATTR_VALUE_TYPE:Ljava/lang/String; = "type"

.field public static final RESTRICTIONS_FILE_PREFIX:Ljava/lang/String; = "knox_"

.field public static final TAG:Ljava/lang/String; = "ApplicationRestrictionsService"

.field public static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field public static final TAG_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field public static final TAG_VALUE:Ljava/lang/String; = "value"

.field public static final XML_SUFFIX:Ljava/lang/String; = ".xml"


# instance fields
.field public mActivityManager:Landroid/app/ActivityManager;

.field public final mAppRestrictionsLock:Ljava/lang/Object;

.field public mContext:Landroid/content/Context;

.field public mInjector:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$Injector;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;)Landroid/os/UserManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/knox/localservice/ApplicationRestrictionsInternal;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mAppRestrictionsLock:Ljava/lang/Object;

    .line 105
    new-instance v0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$Injector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mInjector:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$Injector;

    .line 106
    iget-object p1, v0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$Injector;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {v0}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mUserManager:Landroid/os/UserManager;

    .line 108
    iget-object p1, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mInjector:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$Injector;

    invoke-virtual {p1}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$Injector;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mActivityManager:Landroid/app/ActivityManager;

    .line 110
    iget-object p1, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$1;-><init>(Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static addService(Landroid/content/Context;)V
    .registers 3

    .line 122
    const-class v0, Lcom/samsung/android/knox/localservice/ApplicationRestrictionsInternal;

    new-instance v1, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static checkSystemOrRoot(Ljava/lang/String;)V
    .registers 4

    .line 421
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    .line 422
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_26

    if-nez v0, :cond_f

    goto :goto_26

    .line 423
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only system may: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    :goto_26
    return-void
.end method

.method public static cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppRestrictionsLock"
        }
    .end annotation

    .line 236
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    .line 237
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 239
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_16
    return-void
.end method

.method public static packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "knox_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".xml"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppRestrictionsLock"
        }
    .end annotation

    const-string v0, "ApplicationRestrictionsService"

    .line 253
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 254
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 255
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_17

    return-object v1

    :cond_17
    const/4 v3, 0x0

    .line 261
    :try_start_18
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 262
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 263
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 264
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 265
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4f

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read restrictions file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_4b} :catch_60
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_4b} :catch_60
    .catchall {:try_start_18 .. :try_end_4b} :catchall_5e

    .line 276
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    .line 270
    :cond_4f
    :goto_4f
    :try_start_4f
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5a

    .line 271
    invoke-static {v1, v2, v4}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_59} :catch_60
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f .. :try_end_59} :catch_60
    .catchall {:try_start_4f .. :try_end_59} :catchall_5e

    goto :goto_4f

    .line 276
    :cond_5a
    :goto_5a
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_7a

    :catchall_5e
    move-exception p0

    goto :goto_7b

    :catch_60
    move-exception v2

    .line 274
    :try_start_61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catchall {:try_start_61 .. :try_end_79} :catchall_5e

    goto :goto_5a

    :goto_7a
    return-object v1

    .line 276
    :goto_7b
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 277
    throw p0
.end method

.method public static readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppRestrictionsLock"
        }
    .end annotation

    .line 245
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 246
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    .line 247
    invoke-static {p0}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 248
    invoke-static {v0}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 327
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 328
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 329
    :goto_9
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 330
    invoke-static {v0, p1, p0}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    :cond_13
    return-object v0
.end method

.method public static readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d0

    .line 284
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "entry"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    const/4 v0, 0x0

    const-string/jumbo v2, "key"

    .line 285
    invoke-interface {p2, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "type"

    .line 286
    invoke-interface {p2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "m"

    .line 287
    invoke-interface {p2, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 289
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 290
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_32
    :goto_32
    if-lez v0, :cond_58

    .line 291
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_58

    if-ne v3, v1, :cond_32

    .line 293
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 294
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_32

    .line 298
    :cond_58
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 299
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 300
    invoke-virtual {p0, v2, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_d0

    :cond_65
    const-string v0, "B"

    .line 301
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 302
    invoke-static {p2, p1}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_d0

    :cond_75
    const-string v0, "BA"

    .line 303
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 304
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 305
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 306
    :goto_86
    invoke-static {p2, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 307
    invoke-static {p2, p1}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v3

    .line 308
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_86

    .line 311
    :cond_94
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    .line 310
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_d0

    .line 313
    :cond_a4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "b"

    .line 314
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_bc

    .line 315
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_d0

    :cond_bc
    const-string/jumbo p2, "i"

    .line 316
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_cd

    .line 317
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_d0

    .line 319
    :cond_cd
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d0
    :goto_d0
    return-void
.end method

.method public static writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppRestrictionsLock"
        }
    .end annotation

    const-string/jumbo v0, "restrictions"

    const/4 v1, 0x0

    .line 348
    :try_start_4
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_3a

    .line 349
    :try_start_8
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 351
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 352
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 353
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v3, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    .line 354
    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 356
    invoke-interface {v4, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 357
    invoke-static {p0, v4}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 358
    invoke-interface {v4, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 360
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 361
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_36} :catch_37

    goto :goto_45

    :catch_37
    move-exception p0

    move-object v1, v2

    goto :goto_3b

    :catch_3a
    move-exception p0

    .line 363
    :goto_3b
    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string p1, "ApplicationRestrictionsService"

    const-string v0, "Error writing application restrictions list"

    .line 364
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_45
    return-void
.end method

.method public static writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppRestrictionsLock"
        }
    .end annotation

    .line 338
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 339
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p2

    .line 340
    invoke-static {p0}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 341
    invoke-static {p1, v0}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V

    return-void
.end method

.method public static writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 371
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "entry"

    .line 372
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "key"

    .line 373
    invoke-interface {p1, v3, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 375
    instance-of v1, v2, Ljava/lang/Boolean;

    const-string/jumbo v5, "type"

    if-eqz v1, :cond_39

    const-string v1, "b"

    .line 376
    invoke-interface {p1, v3, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 377
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_cb

    .line 378
    :cond_39
    instance-of v1, v2, Ljava/lang/Integer;

    if-eqz v1, :cond_4c

    const-string/jumbo v1, "i"

    .line 379
    invoke-interface {p1, v3, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 380
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_cb

    :cond_4c
    const-string v1, ""

    if-eqz v2, :cond_bd

    .line 381
    instance-of v6, v2, Ljava/lang/String;

    if-eqz v6, :cond_55

    goto :goto_bd

    .line 384
    :cond_55
    instance-of v6, v2, Landroid/os/Bundle;

    const-string v7, "B"

    if-eqz v6, :cond_64

    .line 385
    invoke-interface {p1, v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 386
    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_cb

    .line 387
    :cond_64
    instance-of v6, v2, [Landroid/os/Parcelable;

    const/4 v8, 0x0

    if-eqz v6, :cond_92

    const-string v1, "BA"

    .line 388
    invoke-interface {p1, v3, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 389
    check-cast v2, [Landroid/os/Parcelable;

    .line 390
    array-length v1, v2

    :goto_71
    if-ge v8, v1, :cond_cb

    aget-object v6, v2, v8

    .line 391
    instance-of v9, v6, Landroid/os/Bundle;

    if-eqz v9, :cond_8a

    .line 394
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 395
    invoke-interface {p1, v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 396
    check-cast v6, Landroid/os/Bundle;

    invoke-static {v6, p1}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 397
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_71

    .line 392
    :cond_8a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bundle-array can only hold Bundles"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_92
    const-string/jumbo v6, "sa"

    .line 400
    invoke-interface {p1, v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 401
    check-cast v2, [Ljava/lang/String;

    .line 402
    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "m"

    invoke-interface {p1, v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 403
    array-length v5, v2

    :goto_a6
    if-ge v8, v5, :cond_cb

    aget-object v6, v2, v8

    const-string/jumbo v7, "value"

    .line 404
    invoke-interface {p1, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v6, :cond_b3

    goto :goto_b4

    :cond_b3
    move-object v6, v1

    .line 405
    :goto_b4
    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 406
    invoke-interface {p1, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_a6

    :cond_bd
    :goto_bd
    const-string/jumbo v6, "s"

    .line 382
    invoke-interface {p1, v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v2, :cond_c8

    .line 383
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    :cond_c8
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 409
    :cond_cb
    :goto_cb
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_8

    :cond_d0
    return-void
.end method


# virtual methods
.method public getApplicationRestrictionsInternal(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 3

    .line 205
    iget-object p0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter p0

    .line 207
    :try_start_3
    invoke-static {p1, p2}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    .line 208
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public sendBroadcastAsUserInternal(Ljava/lang/String;I)V
    .registers 10

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_d2

    goto :goto_4a

    :sswitch_14
    const-string v1, "com.android.settings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_4a

    :cond_1d
    const/4 v2, 0x4

    goto :goto_4a

    :sswitch_1f
    const-string v1, "com.sec.android.desktopmode.uiservice"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    goto :goto_4a

    :cond_28
    const/4 v2, 0x3

    goto :goto_4a

    :sswitch_2a
    const-string v1, "com.samsung.android.app.telephonyui"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_4a

    :cond_33
    const/4 v2, 0x2

    goto :goto_4a

    :sswitch_35
    const-string v1, "com.samsung.android.SettingsReceiver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    goto :goto_4a

    :cond_3e
    const/4 v2, 0x1

    goto :goto_4a

    :sswitch_40
    const-string v1, "com.sec.android.desktopcommunity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v2, 0x0

    :goto_4a
    const-string p1, "com.samsung.android.knox.intent.action.KNOX_RESTRICTIONS_CHANGED_INTERNAL"

    const/4 v1, 0x0

    const-string v3, "com.android.settings.intelligence"

    packed-switch v2, :pswitch_data_e8

    goto :goto_aa

    .line 131
    :pswitch_53
    sget-object v2, Lcom/samsung/android/knox/EdmConstants;->APP_RESTRICTIONS_PACKAGES:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5d
    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 132
    sget-object v5, Lcom/samsung/android/knox/EdmConstants;->APP_RESTRICTIONS_PACKAGES:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "basic"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 133
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 136
    :cond_7b
    iget-object v2, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2, v3, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    goto :goto_aa

    :pswitch_81
    const-string v2, "com.android.systemui"

    .line 146
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v2, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2, v3, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    goto :goto_aa

    .line 151
    :pswitch_8c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 152
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    iget-object p0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :pswitch_a0
    const-string v2, "com.sec.android.app.desktoplauncher"

    .line 141
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v2, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2, v3, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    .line 157
    :goto_aa
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ae
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 158
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    .line 160
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_ae

    :cond_d1
    return-void

    :sswitch_data_d2
    .sparse-switch
        -0x689bf6ca -> :sswitch_40
        -0x3ae4acce -> :sswitch_35
        -0x223d2f81 -> :sswitch_2a
        0x21bf5e9 -> :sswitch_1f
        0x44f4b98f -> :sswitch_14
    .end sparse-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_8c
        :pswitch_81
        :pswitch_a0
        :pswitch_53
    .end packed-switch
.end method

.method public setApplicationRestrictionsInternal(Ljava/lang/String;Landroid/os/Bundle;IZ)V
    .registers 9

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knox.permission.KNOX_DEVICE_CONFIGURATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_1e

    .line 170
    :catch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setApplicationRestrictionsInternal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->checkSystemOrRoot(Ljava/lang/String;)V

    :goto_1e
    if-eqz p2, :cond_24

    const/4 v0, 0x1

    .line 174
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 177
    :cond_24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 179
    :try_start_28
    iget-object v2, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_48

    if-eqz p2, :cond_38

    .line 180
    :try_start_2d
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_38

    .line 184
    :cond_34
    invoke-static {p1, p2, p3}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_3b

    .line 181
    :cond_38
    :goto_38
    invoke-static {p1, p3}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)V

    .line 186
    :goto_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_45

    if-eqz p4, :cond_41

    .line 188
    :try_start_3e
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->sendBroadcastAsUserInternal(Ljava/lang/String;I)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_48

    .line 191
    :cond_41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_45
    move-exception p0

    .line 186
    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    throw p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception p0

    .line 191
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 192
    throw p0
.end method

.method public setKeyedAppStatesReport(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 9

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knox.permission.KNOX_DEVICE_CONFIGURATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_1e

    .line 216
    :catch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setKeyedAppStatesReport"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->checkSystemOrRoot(Ljava/lang/String;)V

    :goto_1e
    const-string v0, ".feedback"

    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 220
    iget-object v0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_29
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->getApplicationRestrictionsInternal(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    .line 222
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 223
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_49
    const/4 p2, 0x0

    .line 225
    invoke-virtual {p0, p1, v1, p3, p2}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->setApplicationRestrictionsInternal(Ljava/lang/String;Landroid/os/Bundle;IZ)V

    .line 226
    monitor-exit v0

    goto :goto_52

    :catchall_4f
    move-exception p0

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_29 .. :try_end_51} :catchall_4f

    throw p0

    :cond_52
    :goto_52
    return-void
.end method
