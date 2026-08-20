.class public final Lcom/android/server/pm/UserTypeFactory;
.super Ljava/lang/Object;
.source "UserTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "UserTypeFactory"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static customizeBuilders(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails$Builder;",
            ">;",
            "Landroid/content/res/XmlResourceParser;",
            ")V"
        }
    .end annotation

    const-string v0, "UserTypeFactory"

    :try_start_2
    const-string/jumbo v1, "user-types"

    .line 322
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 323
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 324
    :goto_b
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_209

    .line 327
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "profile-type"

    .line 328
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_1d} :catch_203
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1d} :catch_203

    const-string v4, " in "

    const/4 v5, 0x0

    if-eqz v3, :cond_24

    move v1, v2

    goto :goto_2d

    :cond_24
    :try_start_24
    const-string v3, "full-type"

    .line 330
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d1

    move v1, v5

    :goto_2d
    const/4 v3, 0x0

    const-string/jumbo v6, "name"

    .line 343
    invoke-interface {p1, v3, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b5

    const-string v6, ""

    .line 344
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    goto/16 :goto_1b5

    .line 350
    :cond_41
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const-string v6, "android."

    .line 353
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/16 v7, 0x1000

    if-eqz v6, :cond_c5

    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Customizing user type "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserTypeDetails$Builder;

    if-eqz v6, :cond_a9

    if-eqz v1, :cond_73

    .line 362
    invoke-virtual {v6}, Lcom/android/server/pm/UserTypeDetails$Builder;->getBaseType()I

    move-result v8

    if-eq v8, v7, :cond_7f

    :cond_73
    if-nez v1, :cond_7e

    .line 363
    invoke-virtual {v6}, Lcom/android/server/pm/UserTypeDetails$Builder;->getBaseType()I

    move-result v7

    const/16 v8, 0x400

    if-ne v7, v8, :cond_7e

    goto :goto_7f

    :cond_7e
    move v2, v5

    :cond_7f
    :goto_7f
    if-eqz v2, :cond_82

    goto :goto_e9

    .line 365
    :cond_82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong base type to customize user type ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), which is type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v6}, Lcom/android/server/pm/UserTypeDetails$Builder;->getBaseType()I

    move-result v1

    invoke-static {v1}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 358
    :cond_a9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal custom user type name "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Non-AOSP user types cannot start with \'android.\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c5
    if-eqz v1, :cond_199

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating custom user type "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    new-instance v6, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v6}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 373
    invoke-virtual {v6, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 374
    invoke-virtual {v6, v7}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 375
    invoke-virtual {p0, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e9
    if-eqz v1, :cond_115

    const-string/jumbo v2, "max-allowed-per-parent"

    .line 384
    new-instance v3, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    invoke-direct {v3, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    .line 383
    invoke-static {p1, v2, v3}, Lcom/android/server/pm/UserTypeFactory;->setIntAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    const-string/jumbo v2, "icon-badge"

    .line 385
    new-instance v3, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda1;

    invoke-direct {v3, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v2, v3}, Lcom/android/server/pm/UserTypeFactory;->setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    const-string v2, "badge-plain"

    .line 386
    new-instance v3, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda2;

    invoke-direct {v3, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v2, v3}, Lcom/android/server/pm/UserTypeFactory;->setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    const-string v2, "badge-no-background"

    .line 387
    new-instance v3, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda3;

    invoke-direct {v3, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v2, v3}, Lcom/android/server/pm/UserTypeFactory;->setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_115
    const-string v2, "enabled"

    .line 390
    new-instance v3, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda4;

    invoke-direct {v3, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v2, v3}, Lcom/android/server/pm/UserTypeFactory;->setIntAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 393
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 394
    :goto_123
    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_1fe

    .line 395
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "default-restrictions"

    .line 396
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_141

    .line 398
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/TypedXmlPullParser;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v3

    .line 399
    invoke-virtual {v6, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    goto :goto_123

    :cond_141
    if-eqz v1, :cond_154

    const-string v5, "badge-labels"

    .line 400
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_154

    .line 401
    new-instance v3, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda5;

    invoke-direct {v3, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v3}, Lcom/android/server/pm/UserTypeFactory;->setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V

    goto :goto_123

    :cond_154
    if-eqz v1, :cond_167

    const-string v5, "badge-colors"

    .line 402
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_167

    .line 403
    new-instance v3, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda6;

    invoke-direct {v3, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v3}, Lcom/android/server/pm/UserTypeFactory;->setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V

    goto :goto_123

    :cond_167
    if-eqz v1, :cond_17a

    const-string v5, "badge-colors-dark"

    .line 404
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17a

    .line 405
    new-instance v3, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda7;

    invoke-direct {v3, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v3}, Lcom/android/server/pm/UserTypeFactory;->setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V

    goto :goto_123

    .line 407
    :cond_17a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized tag "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 407
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_123

    .line 377
    :cond_199
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creation of non-profile user type ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") is not currently supported."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 345
    :cond_1b5
    :goto_1b5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping user type with no name in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1fe

    :cond_1d1
    const-string v2, "change-user-type"

    .line 332
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1dd

    .line 334
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1fe

    .line 337
    :cond_1dd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping unknown element "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 325
    :cond_1fe
    :goto_1fe
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_201
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_24 .. :try_end_201} :catch_203
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_201} :catch_203

    goto/16 :goto_b

    :catch_203
    move-exception p0

    const-string p1, "Cannot read user type configuration file."

    .line 413
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_209
    return-void
.end method

.method public static getDefaultBuilders()Landroid/util/ArrayMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails$Builder;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 97
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeProfileManaged()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const-string v2, "android.os.usertype.profile.MANAGED"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeFullSystem()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const-string v2, "android.os.usertype.full.SYSTEM"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeFullSecondary()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const-string v2, "android.os.usertype.full.SECONDARY"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeFullGuest()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const-string v2, "android.os.usertype.full.GUEST"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeFullDemo()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const-string v2, "android.os.usertype.full.DEMO"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeFullRestricted()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const-string v2, "android.os.usertype.full.RESTRICTED"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeSystemHeadless()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const-string v2, "android.os.usertype.system.HEADLESS"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeProfileClone()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const-string v2, "android.os.usertype.profile.CLONE"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_5a

    .line 106
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeProfileTest()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const-string v2, "android.os.usertype.profile.TEST"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5a
    return-object v0
.end method

.method public static getDefaultGuestUserRestrictions()Landroid/os/Bundle;
    .registers 3

    .line 282
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultSecondaryUserRestrictions()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "no_config_wifi"

    const/4 v2, 0x1

    .line 283
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "no_install_unknown_sources"

    .line 284
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "no_config_credentials"

    .line 285
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static getDefaultManagedCrossProfileIntentFilter()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/DefaultCrossProfileIntentFilter;",
            ">;"
        }
    .end annotation

    .line 307
    invoke-static {}, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->getDefaultManagedProfileFilters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultManagedProfileRestrictions()Landroid/os/Bundle;
    .registers 3

    .line 290
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "no_wallpaper"

    const/4 v2, 0x1

    .line 291
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static getDefaultManagedProfileSecureSettings()Landroid/os/Bundle;
    .registers 3

    .line 297
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "managed_profile_contact_remote_search"

    const-string v2, "1"

    .line 298
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cross_profile_calendar_enabled"

    .line 300
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDefaultSecondaryUserRestrictions()Landroid/os/Bundle;
    .registers 3

    .line 274
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "no_outgoing_calls"

    const/4 v2, 0x1

    .line 275
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "no_sms"

    .line 276
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static getDefaultTypeFullDemo()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 232
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.full.DEMO"

    .line 233
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x400

    .line 234
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x200

    .line 235
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 236
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 237
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeFullGuest()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 3

    .line 216
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110165

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x100

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    or-int/lit8 v0, v0, 0x4

    .line 220
    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v2, "android.os.usertype.full.GUEST"

    .line 221
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const/16 v2, 0x400

    .line 222
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    .line 223
    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 224
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 225
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultGuestUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeFullRestricted()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 245
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.full.RESTRICTED"

    .line 246
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x400

    .line 247
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x8

    .line 248
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 249
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 251
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeFullSecondary()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 205
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.full.SECONDARY"

    .line 206
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x400

    .line 207
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 208
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 209
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultSecondaryUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeFullSystem()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 258
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.full.SYSTEM"

    .line 259
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0xc00

    .line 260
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeProfileClone()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 5

    .line 118
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.profile.CLONE"

    .line 119
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x1000

    .line 120
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 121
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowedPerParent(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 122
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setLabel(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v3, 0x0

    .line 123
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setIsMediaSharedWithParent(Z)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setIsCredentialSharableWithParent(Z)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x10803d3

    .line 126
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setIconBadge(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgePlain(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x10800a2

    .line 128
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeNoBackground(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    new-array v3, v1, [I

    const v4, 0x104071b

    aput v4, v3, v2

    .line 129
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    new-array v3, v1, [I

    const v4, 0x1060189

    aput v4, v3, v2

    .line 131
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    new-array v1, v1, [I

    const v3, 0x106028c

    aput v3, v1, v2

    .line 133
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDarkThemeBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeProfileManaged()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 4

    .line 142
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.profile.MANAGED"

    .line 143
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x1000

    .line 144
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x20

    .line 145
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 146
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowedPerParent(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 147
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setLabel(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10803b0

    .line 148
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setIconBadge(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10803ab

    .line 149
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgePlain(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10803ad

    .line 150
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeNoBackground(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v2, 0x3

    new-array v3, v2, [I

    fill-array-data v3, :array_70

    .line 151
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    new-array v3, v2, [I

    fill-array-data v3, :array_7a

    .line 155
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    new-array v2, v2, [I

    fill-array-data v2, :array_84

    .line 159
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDarkThemeBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 163
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultManagedProfileRestrictions()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 164
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultManagedProfileSecureSettings()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultSecureSettings(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 165
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultManagedCrossProfileIntentFilter()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultCrossProfileIntentFilters(Ljava/util/List;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setIsCredentialSharableWithParent(Z)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0

    nop

    :array_70
    .array-data 4
        0x104071b
        0x104071c
        0x104071d
    .end array-data

    :array_7a
    .array-data 4
        0x106028b
        0x106028d
        0x106028f
    .end array-data

    :array_84
    .array-data 4
        0x106028c
        0x106028e
        0x1060290
    .end array-data
.end method

.method public static getDefaultTypeProfileTest()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 4

    .line 174
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "no_fun"

    const/4 v2, 0x1

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 177
    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v2, "android.os.usertype.profile.TEST"

    .line 178
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const/16 v2, 0x1000

    .line 179
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const/4 v2, 0x2

    .line 180
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowedPerParent(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 181
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setLabel(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const v2, 0x10803b0

    .line 182
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setIconBadge(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const v2, 0x10803ab

    .line 183
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgePlain(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const v2, 0x10803ad

    .line 184
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeNoBackground(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [I

    fill-array-data v3, :array_5e

    .line 185
    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    new-array v3, v2, [I

    fill-array-data v3, :array_68

    .line 189
    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    new-array v2, v2, [I

    fill-array-data v2, :array_72

    .line 193
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDarkThemeBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    .line 197
    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0

    nop

    :array_5e
    .array-data 4
        0x104071b
        0x104071c
        0x104071d
    .end array-data

    :array_68
    .array-data 4
        0x106028b
        0x106028d
        0x106028f
    .end array-data

    :array_72
    .array-data 4
        0x106028c
        0x106028e
        0x1060290
    .end array-data
.end method

.method public static getDefaultTypeSystemHeadless()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 268
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.system.HEADLESS"

    .line 269
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x800

    .line 270
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getUserTypeUpgrades()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;",
            ">;"
        }
    .end annotation

    .line 536
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1170009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 537
    :try_start_b
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultBuilders()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/pm/UserTypeFactory;->parseUserUpgrades(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)Ljava/util/List;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_19

    if-eqz v0, :cond_18

    .line 538
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_18
    return-object v1

    :catchall_19
    move-exception v1

    if-eqz v0, :cond_24

    .line 535
    :try_start_1c
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    throw v1
.end method

.method public static getUserTypeVersion()I
    .registers 2

    .line 501
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1170009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 502
    :try_start_b
    invoke-static {v0}, Lcom/android/server/pm/UserTypeFactory;->getUserTypeVersion(Landroid/content/res/XmlResourceParser;)I

    move-result v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_15

    if-eqz v0, :cond_14

    .line 503
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_14
    return v1

    :catchall_15
    move-exception v1

    if-eqz v0, :cond_20

    .line 500
    :try_start_18
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    throw v1
.end method

.method public static getUserTypeVersion(Landroid/content/res/XmlResourceParser;)I
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "UserTypeFactory"

    const/4 v1, 0x0

    :try_start_3
    const-string/jumbo v2, "user-types"

    .line 511
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string/jumbo v3, "version"

    .line 512
    invoke-interface {p0, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_11} :catch_3a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_11} :catch_3a

    if-eqz v2, :cond_40

    .line 515
    :try_start_13
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_17} :catch_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_17} :catch_3a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_3a

    goto :goto_40

    :catch_18
    move-exception v3

    .line 517
    :try_start_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse value of \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' for version in "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 517
    invoke-static {v0, p0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    throw v3
    :try_end_3a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_3a} :catch_3a
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_3a} :catch_3a

    :catch_3a
    move-exception p0

    const-string v2, "Cannot read user type configuration file."

    .line 523
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_40
    :goto_40
    return v1
.end method

.method public static getUserTypes()Landroid/util/ArrayMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultBuilders()Landroid/util/ArrayMap;

    move-result-object v0

    .line 83
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1170009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 84
    :try_start_f
    invoke-static {v0, v1}, Lcom/android/server/pm/UserTypeFactory;->customizeBuilders(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_3e

    if-eqz v1, :cond_17

    .line 85
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 87
    :cond_17
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v2, 0x0

    .line 88
    :goto_21
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_3d

    .line 89
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-virtual {v4}, Lcom/android/server/pm/UserTypeDetails$Builder;->createUserTypeDetails()Lcom/android/server/pm/UserTypeDetails;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_3d
    return-object v1

    :catchall_3e
    move-exception v0

    if-eqz v1, :cond_49

    .line 82
    :try_start_41
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_49
    :goto_49
    throw v0
.end method

.method public static parseUserUpgrades(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)Ljava/util/List;
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails$Builder;",
            ">;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;",
            ">;"
        }
    .end annotation

    const-string v0, "UserTypeFactory"

    .line 545
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_7
    const-string/jumbo v2, "user-types"

    .line 548
    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 549
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 550
    :goto_10
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_72

    .line 552
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "change-user-type"

    .line 553
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const-string v2, "from"

    const/4 v3, 0x0

    .line 554
    invoke-interface {p1, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "to"

    .line 555
    invoke-interface {p1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 558
    invoke-static {v2, p0}, Lcom/android/server/pm/UserTypeFactory;->validateUserTypeIsProfile(Ljava/lang/String;Landroid/util/ArrayMap;)V

    .line 559
    invoke-static {v4, p0}, Lcom/android/server/pm/UserTypeFactory;->validateUserTypeIsProfile(Ljava/lang/String;Landroid/util/ArrayMap;)V
    :try_end_37
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_37} :catch_6c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_37} :catch_6c

    :try_start_37
    const-string/jumbo v5, "whenVersionLeq"

    .line 564
    invoke-interface {p1, v3, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 563
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_42} :catch_4b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_37 .. :try_end_42} :catch_6c
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_42} :catch_6c

    .line 571
    :try_start_42
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;

    invoke-direct {v5, v2, v4, v3}, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 573
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :catch_4b
    move-exception p0

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse value of whenVersionLeq in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 566
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 568
    throw p0

    .line 576
    :cond_65
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 551
    :goto_68
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_6b} :catch_6c
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_6b} :catch_6c

    goto :goto_10

    :catch_6c
    move-exception p0

    const-string p1, "Cannot read user type configuration file."

    .line 581
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_72
    return-object v1
.end method

.method public static setIntAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 428
    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    return-void

    .line 433
    :cond_8
    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p2

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse value of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserTypeFactory"

    .line 435
    invoke-static {p1, p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    throw p2
.end method

.method public static setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 451
    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    const/4 v1, 0x0

    .line 455
    invoke-interface {p0, v0, p1, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    .line 456
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/function/Consumer<",
            "[I>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 472
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 473
    :goto_9
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 474
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "item"

    .line 475
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping unknown child element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserTypeFactory"

    .line 476
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    :cond_42
    const/4 v2, 0x0

    const-string/jumbo v3, "res"

    const/4 v4, -0x1

    .line 481
    invoke-interface {p0, v2, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_4e

    goto :goto_9

    .line 485
    :cond_4e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 488
    :cond_56
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    const/4 v1, 0x0

    .line 489
    :goto_5d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_72

    .line 490
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 492
    :cond_72
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static validateUserTypeIsProfile(Ljava/lang/String;Landroid/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails$Builder;",
            ">;)V"
        }
    .end annotation

    .line 589
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserTypeDetails$Builder;

    if-eqz p1, :cond_2d

    .line 590
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails$Builder;->getBaseType()I

    move-result p1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_11

    goto :goto_2d

    .line 591
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal upgrade of user type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : Can only upgrade profiles user types"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d
    :goto_2d
    return-void
.end method
