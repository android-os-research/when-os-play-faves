.class public Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
.super Ljava/lang/Object;
.source "GameManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/app/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GamePackageConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;
    }
.end annotation


# static fields
.field public static final GAME_MODE_CONFIG_NODE_NAME:Ljava/lang/String; = "game-mode-config"

.field public static final METADATA_ANGLE_ALLOW_ANGLE:Ljava/lang/String; = "com.android.graphics.intervention.angle.allowAngle"

.field public static final METADATA_BATTERY_MODE_ENABLE:Ljava/lang/String; = "com.android.app.gamemode.battery.enabled"

.field public static final METADATA_GAME_MODE_CONFIG:Ljava/lang/String; = "android.game_mode_config"

.field public static final METADATA_PERFORMANCE_MODE_ENABLE:Ljava/lang/String; = "com.android.app.gamemode.performance.enabled"

.field public static final METADATA_WM_ALLOW_DOWNSCALE:Ljava/lang/String; = "com.android.graphics.intervention.wm.allowDownscale"

.field public static final TAG:Ljava/lang/String; = "GameManagerService_GamePackageConfiguration"


# instance fields
.field public mAllowAngle:Z

.field public mAllowDownscale:Z

.field public mAllowFpsOverride:Z

.field public mBatteryModeOptedIn:Z

.field public final mModeConfigs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageName:Ljava/lang/String;

.field public mPerfModeOptedIn:Z

.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAllowAngle(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowDownscale(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowFpsOverride(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowFpsOverride:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetAvailableGameModesBitfield(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModesBitfield()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/app/GameManagerService;Ljava/lang/String;I)V
    .registers 8

    const-string v0, "GameManagerService_GamePackageConfiguration"

    .line 482
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput-object p2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    .line 484
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    .line 486
    :try_start_11
    invoke-static {p1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/app/GameManagerService;)Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v2, 0x80

    invoke-virtual {p1, p2, v2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 488
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->parseInterventionFromXml(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_5d

    .line 489
    iget-object p3, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v2, 0x1

    if-eqz p3, :cond_4d

    const-string v3, "com.android.app.gamemode.performance.enabled"

    .line 490
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOptedIn:Z

    .line 491
    iget-object p3, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.app.gamemode.battery.enabled"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOptedIn:Z

    .line 492
    iget-object p3, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.graphics.intervention.wm.allowDownscale"

    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    .line 493
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string p3, "com.android.graphics.intervention.angle.allowAngle"

    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    goto :goto_5d

    .line 495
    :cond_4d
    iput-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOptedIn:Z

    .line 496
    iput-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOptedIn:Z

    .line 497
    iput-boolean v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    .line 498
    iput-boolean v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    .line 499
    iput-boolean v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowFpsOverride:Z
    :try_end_57
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_57} :catch_58

    goto :goto_5d

    :catch_58
    const-string p1, "Failed to get package metadata"

    .line 504
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    :goto_5d
    const-string p1, "game_overlay"

    .line 506
    invoke-static {p1, p2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8b

    const-string p2, ":"

    .line 509
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 510
    array-length p2, p1

    :goto_6c
    if-ge v1, p2, :cond_8b

    aget-object p3, p1, v1

    .line 512
    :try_start_70
    new-instance v2, Landroid/util/KeyValueListParser;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 513
    invoke-virtual {v2, p3}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    .line 514
    new-instance p3, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    invoke-direct {p3, p0, v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;-><init>(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;Landroid/util/KeyValueListParser;)V

    invoke-virtual {p0, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->addModeConfig(Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;)V
    :try_end_82
    .catch Ljava/lang/IllegalArgumentException; {:try_start_70 .. :try_end_82} :catch_83

    goto :goto_88

    :catch_83
    const-string p3, "Invalid config string"

    .line 516
    invoke-static {v0, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_88
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    :cond_8b
    return-void
.end method


# virtual methods
.method public addModeConfig(Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;)V
    .registers 4

    .line 732
    invoke-virtual {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->isValid()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 733
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getGameMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 735
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid game mode config for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    invoke-virtual {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameManagerService_GamePackageConfiguration"

    .line 735
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    return-void
.end method

.method public getAvailableGameModes()[I
    .registers 6

    .line 706
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModesBitfield()I

    move-result p0

    .line 707
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    new-array v0, v0, [I

    .line 710
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-gt v2, v1, :cond_24

    shr-int v4, p0, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_21

    add-int/lit8 v4, v3, 0x1

    .line 713
    aput v2, v0, v3

    move v3, v4

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_24
    return-object v0
.end method

.method public final getAvailableGameModesBitfield()I
    .registers 6

    .line 683
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 684
    iget-object v4, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v4, v3}, Lcom/android/server/app/GameManagerService;->-$$Nest$mmodeToBitmask(Lcom/android/server/app/GameManagerService;I)I

    move-result v3

    or-int/2addr v2, v3

    goto :goto_c

    .line 686
    :cond_24
    iget-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOptedIn:Z

    if-eqz v0, :cond_30

    .line 687
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->this$0:Lcom/android/server/app/GameManagerService;

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/android/server/app/GameManagerService;->-$$Nest$mmodeToBitmask(Lcom/android/server/app/GameManagerService;I)I

    move-result v0

    or-int/2addr v2, v0

    .line 689
    :cond_30
    iget-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOptedIn:Z

    if-eqz v0, :cond_3c

    .line 690
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->this$0:Lcom/android/server/app/GameManagerService;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/android/server/app/GameManagerService;->-$$Nest$mmodeToBitmask(Lcom/android/server/app/GameManagerService;I)I

    move-result v0

    or-int/2addr v2, v0

    :cond_3c
    const/4 v0, 0x1

    if-le v2, v0, :cond_46

    .line 695
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p0, v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$mmodeToBitmask(Lcom/android/server/app/GameManagerService;I)I

    move-result p0

    goto :goto_4c

    .line 697
    :cond_46
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p0, v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$mmodeToBitmask(Lcom/android/server/app/GameManagerService;I)I

    move-result p0

    :goto_4c
    or-int/2addr p0, v2

    return p0
.end method

.method public getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;
    .registers 2

    .line 725
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 665
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public isValid()Z
    .registers 2

    .line 741
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-gtz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOptedIn:Z

    if-nez v0, :cond_13

    iget-boolean p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOptedIn:Z

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public final parseInterventionFromXml(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .registers 10

    const-string v0, "GameManagerService_GamePackageConfiguration"

    const/4 v1, 0x0

    .line 524
    :try_start_3
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/app/GameManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.game_mode_config"

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_f} :catch_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_f} :catch_92
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_92

    const/4 v2, 0x1

    if-nez p1, :cond_2b

    .line 527
    :try_start_12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No android.game_mode_config meta-data found for package "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_29

    goto :goto_7f

    :catchall_29
    move-exception p0

    goto :goto_87

    .line 531
    :cond_2b
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v3}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/app/GameManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p2

    .line 533
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 535
    :goto_39
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v2, :cond_43

    if-eq v4, v5, :cond_43

    goto :goto_39

    :cond_43
    const-string v4, "game-mode-config"

    .line 541
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    const-string p0, "Meta-data does not start with game-mode-config tag"

    .line 543
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 547
    :cond_55
    sget-object v4, Lcom/android/internal/R$styleable;->GameModeConfig:[I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 549
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOptedIn:Z

    .line 551
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOptedIn:Z

    const/4 v1, 0x3

    .line 554
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    .line 556
    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    const/4 v1, 0x4

    .line 557
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowFpsOverride:Z

    .line 559
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_7e
    .catchall {:try_start_2b .. :try_end_7e} :catchall_85

    :goto_7e
    move v1, v2

    :goto_7f
    if-eqz p1, :cond_97

    .line 562
    :try_start_81
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_84
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_81 .. :try_end_84} :catch_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_81 .. :try_end_84} :catch_92
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_92

    goto :goto_97

    :catchall_85
    move-exception p0

    move v1, v2

    :goto_87
    if-eqz p1, :cond_91

    .line 524
    :try_start_89
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8d

    goto :goto_91

    :catchall_8d
    move-exception p1

    :try_start_8e
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_91
    :goto_91
    throw p0
    :try_end_92
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8e .. :try_end_92} :catch_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8e .. :try_end_92} :catch_92
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_92} :catch_92

    :catch_92
    const-string p0, "Error while parsing XML meta-data for android.game_mode_config"

    .line 563
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_97
    :goto_97
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Modes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public willGamePerformOptimizations(I)Z
    .registers 3

    .line 677
    iget-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOptedIn:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    :cond_7
    iget-boolean p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOptedIn:Z

    if-eqz p0, :cond_10

    const/4 p0, 0x2

    if-ne p1, p0, :cond_10

    :cond_e
    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method
