.class public final Lcom/android/server/wm/CompatModePackages;
.super Ljava/lang/Object;
.source "CompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/CompatModePackages$CompatHandler;
    }
.end annotation


# static fields
.field public static final COMPAT_FLAG_DONT_ASK:I = 0x1

.field public static final COMPAT_FLAG_ENABLED:I = 0x2

.field public static final DOWNSCALED:J = 0xa09e1d7L

.field public static final DOWNSCALE_30:J = 0xb52b678L

.field public static final DOWNSCALE_35:J = 0xb52b555L

.field public static final DOWNSCALE_40:J = 0xb52b676L

.field public static final DOWNSCALE_45:J = 0xb52b576L

.field public static final DOWNSCALE_50:J = 0xa8bb015L

.field public static final DOWNSCALE_55:J = 0xb52b674L

.field public static final DOWNSCALE_60:J = 0xa8bb033L

.field public static final DOWNSCALE_65:J = 0xb52b550L

.field public static final DOWNSCALE_70:J = 0xa8bb06dL

.field public static final DOWNSCALE_75:J = 0xb52b573L

.field public static final DOWNSCALE_80:J = 0xa8bb021L

.field public static final DOWNSCALE_85:J = 0xb52b546L

.field public static final DOWNSCALE_90:J = 0xae57a6bL

.field public static final DO_NOT_DOWNSCALE_TO_1080P_ON_TV:J = 0x9653d2aL

.field public static final MSG_WRITE:I = 0x12c

.field public static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field public final mFile:Landroid/util/AtomicFile;

.field public final mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

.field public final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$msaveCompatModes(Lcom/android/server/wm/CompatModePackages;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/CompatModePackages;->saveCompatModes()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/io/File;Landroid/os/Handler;)V
    .registers 11

    const-string v0, "Error reading compat-packages"

    const-string v1, "ActivityTaskManager"

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    .line 262
    iput-object p1, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 263
    new-instance p1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "packages-compat.xml"

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p2, "compat-mode"

    invoke-direct {p1, v2, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    .line 264
    new-instance p2, Lcom/android/server/wm/CompatModePackages$CompatHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/android/server/wm/CompatModePackages$CompatHandler;-><init>(Lcom/android/server/wm/CompatModePackages;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    const/4 p2, 0x0

    .line 268
    :try_start_2d
    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d .. :try_end_31} :catch_ac
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_31} :catch_a0
    .catchall {:try_start_2d .. :try_end_31} :catchall_9e

    .line 269
    :try_start_31
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object p3

    .line 270
    invoke-interface {p3}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v2

    :goto_39
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_44

    if-eq v2, v3, :cond_44

    .line 273
    invoke-interface {p3}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2
    :try_end_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31 .. :try_end_43} :catch_9b
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_43} :catch_98
    .catchall {:try_start_31 .. :try_end_43} :catchall_95

    goto :goto_39

    :cond_44
    if-ne v2, v3, :cond_4c

    if-eqz p1, :cond_4b

    .line 305
    :try_start_48
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4b

    :catch_4b
    :cond_4b
    return-void

    .line 279
    :cond_4c
    :try_start_4c
    invoke-interface {p3}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "compat-packages"

    .line 280
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 281
    invoke-interface {p3}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    :cond_5c
    if-ne v2, v4, :cond_89

    .line 284
    invoke-interface {p3}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-interface {p3}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, v4, :cond_89

    const-string/jumbo v5, "pkg"

    .line 286
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    const-string v2, "name"

    .line 287
    invoke-interface {p3, p2, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_89

    const-string v5, "mode"

    const/4 v6, 0x0

    .line 289
    invoke-interface {p3, p2, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 290
    iget-object v6, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_89
    invoke-interface {p3}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2
    :try_end_8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4c .. :try_end_8d} :catch_9b
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_8d} :catch_98
    .catchall {:try_start_4c .. :try_end_8d} :catchall_95

    if-ne v2, v3, :cond_5c

    :cond_8f
    if-eqz p1, :cond_b3

    .line 305
    :try_start_91
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_b3

    goto :goto_b3

    :catchall_95
    move-exception p0

    move-object p2, p1

    goto :goto_b4

    :catch_98
    move-exception p0

    move-object p2, p1

    goto :goto_a1

    :catch_9b
    move-exception p0

    move-object p2, p1

    goto :goto_ad

    :catchall_9e
    move-exception p0

    goto :goto_b4

    :catch_a0
    move-exception p0

    :goto_a1
    if-eqz p2, :cond_a6

    .line 301
    :try_start_a3
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_9e

    :cond_a6
    if-eqz p2, :cond_b3

    .line 305
    :goto_a8
    :try_start_a8
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_b3

    goto :goto_b3

    :catch_ac
    move-exception p0

    .line 299
    :goto_ad
    :try_start_ad
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_9e

    if-eqz p2, :cond_b3

    goto :goto_a8

    :catch_b3
    :cond_b3
    :goto_b3
    return-void

    :goto_b4
    if-eqz p2, :cond_b9

    .line 305
    :try_start_b6
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_b9

    .line 309
    :catch_b9
    :cond_b9
    throw p0
.end method


# virtual methods
.method public compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .registers 9

    .line 369
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageCompatModeEnabledLocked(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    .line 370
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/CompatModePackages;->getCompatScale(Ljava/lang/String;I)F

    move-result v5

    .line 371
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 372
    new-instance v6, Landroid/content/res/CompatibilityInfo;

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZF)V

    return-object v6
.end method

.method public computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I
    .registers 4

    .line 434
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 p0, -0x2

    return p0

    .line 438
    :cond_c
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, -0x1

    return p0

    .line 441
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageCompatModeEnabledLocked(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public getCompatScale(Ljava/lang/String;I)F
    .registers 5

    .line 377
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    const-wide/32 v0, 0xa09e1d7

    .line 378
    invoke-static {v0, v1, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_b3

    const-wide/32 v0, 0xae57a6b

    .line 379
    invoke-static {v0, v1, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const p0, 0x3f8e38e4

    return p0

    :cond_1a
    const-wide/32 v0, 0xb52b546

    .line 382
    invoke-static {v0, v1, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_27

    const p0, 0x3f969696

    return p0

    :cond_27
    const-wide/32 v0, 0xa8bb021

    .line 385
    invoke-static {v0, v1, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/high16 p0, 0x3fa00000    # 1.25f

    return p0

    :cond_33
    const-wide/32 v0, 0xb52b573

    .line 388
    invoke-static {v0, v1, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_40

    const p0, 0x3faaaaab

    return p0

    :cond_40
    const-wide/32 v0, 0xa8bb06d

    .line 391
    invoke-static {v0, v1, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const p0, 0x3fb6db6e

    return p0

    :cond_4d
    const-wide/32 v0, 0xb52b550

    .line 394
    invoke-static {v0, v1, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const p0, 0x3fc4ec4f

    return p0

    :cond_5a
    const-wide/32 v0, 0xa8bb033

    .line 397
    invoke-static {v0, v1, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_67

    const p0, 0x3fd55555

    return p0

    :cond_67
    const-wide/32 v0, 0xb52b674

    .line 400
    invoke-static {v0, v1, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_74

    const p0, 0x3fe8ba2e

    return p0

    :cond_74
    const-wide/32 v0, 0xa8bb015

    .line 403
    invoke-static {v0, v1, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_80

    const/high16 p0, 0x40000000    # 2.0f

    return p0

    :cond_80
    const-wide/32 v0, 0xb52b576

    .line 406
    invoke-static {v0, v1, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_8d

    const p0, 0x400e38e4

    return p0

    :cond_8d
    const-wide/32 v0, 0xb52b676

    .line 409
    invoke-static {v0, v1, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_99

    const/high16 p0, 0x40200000    # 2.5f

    return p0

    :cond_99
    const-wide/32 v0, 0xb52b555

    .line 412
    invoke-static {v0, v1, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_a6

    const p0, 0x4036db6e

    return p0

    :cond_a6
    const-wide/32 v0, 0xb52b678

    .line 415
    invoke-static {v0, v1, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_b3

    const p0, 0x40555555

    return p0

    .line 420
    :cond_b3
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasLeanbackFeature:Z

    if-eqz v0, :cond_dd

    .line 421
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 422
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 423
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    const/16 v0, 0x438

    if-le p0, v0, :cond_dd

    const-wide/32 v0, 0x9653d2a

    .line 424
    invoke-static {v0, v1, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_dd

    int-to-float p0, p0

    const/high16 p1, 0x44870000    # 1080.0f

    div-float/2addr p0, p1

    return p0

    :cond_dd
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getPackageAskCompatModeLocked(Ljava/lang/String;)Z
    .registers 2

    .line 446
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-nez p0, :cond_9

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public final getPackageCompatModeEnabledLocked(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    .line 454
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final getPackageFlags(Ljava/lang/String;)I
    .registers 2

    .line 317
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_f

    .line 318
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public getPackageScreenCompatModeLocked(Ljava/lang/String;)I
    .registers 6

    .line 473
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    const/4 p1, 0x0

    :goto_d
    if-nez p1, :cond_11

    const/4 p0, -0x3

    return p0

    .line 479
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result p0

    return p0
.end method

.method public getPackages()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    return-object p0
.end method

.method public handlePackageAddedLocked(Ljava/lang/String;Z)V
    .registers 7

    const/4 v0, 0x0

    .line 342
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v1, p1, v2, v3, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    const/4 v1, 0x0

    :goto_d
    if-nez v1, :cond_10

    return-void

    .line 348
    :cond_10
    invoke-virtual {p0, v1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    .line 349
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v2

    if-nez v2, :cond_21

    .line 350
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-nez v1, :cond_21

    const/4 v0, 0x1

    :cond_21
    if-eqz p2, :cond_35

    if-nez v0, :cond_35

    .line 355
    iget-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 356
    iget-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-virtual {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    :cond_35
    return-void
.end method

.method public handlePackageDataClearedLocked(Ljava/lang/String;)V
    .registers 2

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method public handlePackageUninstalledLocked(Ljava/lang/String;)V
    .registers 2

    .line 329
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method public final removePackage(Ljava/lang/String;)V
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 334
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-virtual {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    :cond_10
    return-void
.end method

.method public final saveCompatModes()V
    .registers 11

    .line 579
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 580
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 581
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_b0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    .line 586
    :try_start_14
    iget-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1a} :catch_9e

    .line 587
    :try_start_1a
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v3

    .line 588
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v0, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    .line 589
    invoke-interface {v3, v4, v5}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string v4, "compat-packages"

    .line 590
    invoke-interface {v3, v0, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 592
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 593
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 594
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 595
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 596
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 597
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_56} :catch_9c

    if-nez v5, :cond_59

    goto :goto_3a

    :cond_59
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 603
    :try_start_5c
    invoke-interface {v4, v6, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_60} :catch_61
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_60} :catch_9c

    goto :goto_62

    :catch_61
    move-object v7, v0

    :goto_62
    if-nez v7, :cond_65

    goto :goto_3a

    .line 609
    :cond_65
    :try_start_65
    invoke-virtual {p0, v7}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    .line 610
    invoke-virtual {v7}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v8

    if-eqz v8, :cond_70

    goto :goto_3a

    .line 613
    :cond_70
    invoke-virtual {v7}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v7

    if-eqz v7, :cond_77

    goto :goto_3a

    :cond_77
    const-string/jumbo v7, "pkg"

    .line 616
    invoke-interface {v3, v0, v7}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "name"

    .line 617
    invoke-interface {v3, v0, v7, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "mode"

    .line 618
    invoke-interface {v3, v0, v6, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "pkg"

    .line 619
    invoke-interface {v3, v0, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3a

    :cond_8e
    const-string v1, "compat-packages"

    .line 622
    invoke-interface {v3, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 623
    invoke-interface {v3}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 625
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_9b} :catch_9c

    goto :goto_af

    :catch_9c
    move-exception v0

    goto :goto_a1

    :catch_9e
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_a1
    const-string v1, "ActivityTaskManager"

    const-string v3, "Error writing compat packages"

    .line 627
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_af

    .line 629
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_af
    :goto_af
    return-void

    :catchall_b0
    move-exception p0

    .line 581
    :try_start_b1
    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final scheduleWrite()V
    .registers 4

    .line 363
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 364
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 365
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setPackageAskCompatModeLocked(Ljava/lang/String;Z)V
    .registers 4

    const/4 v0, 0x1

    .line 450
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageFlagLocked(Ljava/lang/String;IZ)V

    return-void
.end method

.method public final setPackageFlagLocked(Ljava/lang/String;IZ)V
    .registers 5

    .line 458
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    if-eqz p3, :cond_9

    not-int p2, p2

    and-int/2addr p2, v0

    goto :goto_a

    :cond_9
    or-int/2addr p2, v0

    :goto_a
    if-eq v0, p2, :cond_20

    if-eqz p2, :cond_18

    .line 462
    iget-object p3, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 464
    :cond_18
    iget-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :goto_1d
    invoke-virtual {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    :cond_20
    return-void
.end method

.method public setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V
    .registers 16

    .line 496
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 498
    invoke-virtual {p0, v0}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v1

    const-string v2, "ActivityTaskManager"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_31

    if-eq p2, v4, :cond_2f

    if-eq p2, v3, :cond_2b

    .line 512
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown screen compat mode req #"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; ignoring"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2b
    and-int/lit8 p2, v1, 0x2

    if-nez p2, :cond_31

    :cond_2f
    move p2, v4

    goto :goto_32

    :cond_31
    move p2, v5

    :goto_32
    if-eqz p2, :cond_37

    or-int/lit8 p2, v1, 0x2

    goto :goto_39

    :cond_37
    and-int/lit8 p2, v1, -0x3

    .line 523
    :goto_39
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v6

    .line 524
    invoke-virtual {v6}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v7

    const-string v8, "Ignoring compat mode change of "

    if-eqz v7, :cond_5d

    .line 525
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; compatibility never needed"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v5

    .line 529
    :cond_5d
    invoke-virtual {v6}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 530
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; compatibility always needed"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v5

    :cond_7b
    if-eq p2, v1, :cond_f2

    if-eqz p2, :cond_89

    .line 537
    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8e

    .line 539
    :cond_89
    iget-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    :goto_8e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object p1

    .line 545
    invoke-virtual {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    .line 547
    iget-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p2

    .line 548
    invoke-virtual {p2, v0}, Lcom/android/server/wm/Task;->restartPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 551
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessControllerMap;->getPidMap()Landroid/util/SparseArray;

    move-result-object p0

    .line 552
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v4

    :goto_ac
    if-ltz v2, :cond_ea

    .line 553
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowProcessController;

    .line 554
    iget-object v7, v6, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_bd

    goto :goto_e7

    .line 558
    :cond_bd
    :try_start_bd
    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v7

    if-eqz v7, :cond_e7

    .line 559
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v7, :cond_e0

    iget-object v7, v6, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0x4fba1a5b

    const/4 v11, 0x0

    new-array v12, v3, [Ljava/lang/Object;

    aput-object v7, v12, v5

    aput-object v8, v12, v4

    invoke-static {v9, v10, v5, v11, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 561
    :cond_e0
    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    invoke-interface {v6, v0, p1}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_e7} :catch_e7

    :catch_e7
    :cond_e7
    :goto_e7
    add-int/lit8 v2, v2, -0x1

    goto :goto_ac

    :cond_ea
    if-eqz v1, :cond_f2

    .line 568
    invoke-virtual {v1, v5, v5}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    .line 572
    invoke-virtual {p2, v1, v5, v5}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    :cond_f2
    return-void
.end method

.method public setPackageScreenCompatModeLocked(Ljava/lang/String;I)V
    .registers 7

    .line 485
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    const/4 v0, 0x0

    :goto_d
    if-nez v0, :cond_27

    .line 489
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setPackageScreenCompatMode failed: unknown package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 492
    :cond_27
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    return-void
.end method
