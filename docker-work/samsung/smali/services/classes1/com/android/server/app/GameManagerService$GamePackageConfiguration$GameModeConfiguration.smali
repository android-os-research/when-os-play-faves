.class public Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;
.super Ljava/lang/Object;
.source "GameManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameModeConfiguration"
.end annotation


# static fields
.field public static final ANGLE_KEY:Ljava/lang/String; = "useAngle"

.field public static final DEFAULT_FPS:Ljava/lang/String; = ""

.field public static final DEFAULT_SCALING:Ljava/lang/String; = "1.0"

.field public static final FPS_KEY:Ljava/lang/String; = "fps"

.field public static final LOADING_BOOST_KEY:Ljava/lang/String; = "loadingBoost"

.field public static final MODE_KEY:Ljava/lang/String; = "mode"

.field public static final SCALING_KEY:Ljava/lang/String; = "downscaleFactor"

.field public static final TAG:Ljava/lang/String; = "GameManagerService_GameModeConfiguration"


# instance fields
.field public mFps:Ljava/lang/String;

.field public final mGameMode:I

.field public final mLoadingBoostDuration:I

.field public mScaling:Ljava/lang/String;

.field public final mUseAngle:Z

.field public final synthetic this$1:Lcom/android/server/app/GameManagerService$GamePackageConfiguration;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;Landroid/util/KeyValueListParser;)V
    .registers 7

    .line 590
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->this$1:Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "mode"

    const/4 v1, 0x0

    .line 591
    invoke-virtual {p2, v0, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mGameMode:I

    .line 596
    invoke-static {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->-$$Nest$fgetmAllowDownscale(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z

    move-result v2

    const-string v3, "1.0"

    if-eqz v2, :cond_24

    invoke-virtual {p1, v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_24

    :cond_1e
    const-string v2, "downscaleFactor"

    .line 597
    invoke-virtual {p2, v2, v3}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_24
    :goto_24
    iput-object v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:Ljava/lang/String;

    .line 599
    invoke-static {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->-$$Nest$fgetmAllowFpsOverride(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_3a

    invoke-virtual {p1, v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "fps"

    .line 600
    invoke-virtual {p2, v2, v3}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3a
    iput-object v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;

    .line 605
    invoke-static {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->-$$Nest$fgetmAllowAngle(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {p1, v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v2

    if-nez v2, :cond_52

    const-string/jumbo v2, "useAngle"

    .line 606
    invoke-virtual {p2, v2, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_52

    const/4 v1, 0x1

    :cond_52
    iput-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mUseAngle:Z

    .line 608
    invoke-virtual {p1, v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_5c

    goto :goto_63

    :cond_5c
    const-string/jumbo p1, "loadingBoost"

    .line 609
    invoke-virtual {p2, p1, v0}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_63
    iput v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mLoadingBoostDuration:I

    return-void
.end method


# virtual methods
.method public getCompatChangeId()J
    .registers 3

    .line 660
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->getCompatChangeId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFps()I
    .registers 1

    .line 621
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->getFpsInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getGameMode()I
    .registers 1

    .line 613
    iget p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mGameMode:I

    return p0
.end method

.method public getLoadingBoostDuration()I
    .registers 1

    .line 629
    iget p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mLoadingBoostDuration:I

    return p0
.end method

.method public getScaling()Ljava/lang/String;
    .registers 1

    .line 617
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:Ljava/lang/String;

    return-object p0
.end method

.method public getUseAngle()Z
    .registers 1

    .line 625
    iget-boolean p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mUseAngle:Z

    return p0
.end method

.method public isValid()Z
    .registers 4

    .line 641
    iget v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mGameMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    const/4 v2, 0x3

    if-ne v0, v2, :cond_14

    :cond_b
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->this$1:Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 644
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public setFpsStr(Ljava/lang/String;)V
    .registers 2

    .line 637
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;

    return-void
.end method

.method public setScaling(Ljava/lang/String;)V
    .registers 2

    .line 633
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Game Mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mGameMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",Scaling:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Use Angle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mUseAngle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",Fps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Loading Boost Duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mLoadingBoostDuration:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
