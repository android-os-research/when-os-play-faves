.class public Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;
.super Ljava/lang/Object;
.source "MultiResolutionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/MultiResolutionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StandaloneModeDisplayMetrics"
.end annotation


# instance fields
.field public final mDisplayProperties:[I

.field public mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

.field public final mTabletDefaultDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

.field public final synthetic this$0:Lcom/android/server/desktopmode/MultiResolutionManager;


# direct methods
.method public static bridge synthetic -$$Nest$mgetOriginalDisplaySizeDensity(Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;I)Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->getOriginalDisplaySizeDensity(I)Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetForcedDisplayMertics(Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->setForcedDisplayMertics(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSelectedDensity(Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->setSelectedDensity(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDesktopModeDensity(Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->updateDesktopModeDensity()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/desktopmode/MultiResolutionManager;)V
    .registers 6

    .line 540
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerInternal;->getInitialDisplayProperties(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mDisplayProperties:[I

    .line 543
    new-instance v1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    new-instance v2, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    aget v0, p1, v0

    const/4 v3, 0x1

    aget p1, p1, v3

    const-string v3, "Tablet"

    invoke-direct {v2, v3, v0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;II)V

    .line 545
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->getDesktopModeDefaultDensity()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    iput-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mTabletDefaultDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 546
    iput-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    return-void
.end method


# virtual methods
.method public final getDesktopModeDefaultDensity()I
    .registers 3

    .line 552
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mDisplayProperties:[I

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0xa00

    if-ge p0, v0, :cond_13

    const/16 p0, 0xd5

    goto :goto_15

    :cond_13
    const/16 p0, 0x118

    :goto_15
    return p0
.end method

.method public final getDesktopModeDensity()I
    .registers 3

    .line 557
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/MultiResolutionManager;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 558
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->getDesktopModeDefaultDensity()I

    move-result p0

    const-string/jumbo v1, "standalone_mode_screen_zoom"

    .line 557
    invoke-static {v0, v1, p0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getOriginalDisplaySizeDensity(I)Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;
    .registers 7

    .line 570
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getInitialDisplayProperties(I)[I

    move-result-object p1

    .line 573
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/MultiResolutionManager;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_size_forced"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_53

    .line 575
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_53

    const/16 v3, 0x2c

    .line 576
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_60

    .line 577
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ne v3, v4, :cond_60

    .line 579
    :try_start_2e
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v4, v1

    .line 580
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v3, :cond_60

    if-lez v0, :cond_60

    .line 582
    aput v3, p1, v2

    .line 583
    aput v0, p1, v1
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_47} :catch_48

    goto :goto_60

    :catch_48
    move-exception v0

    .line 586
    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to parse previous forced display size"

    invoke-static {v3, v4, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_60

    .line 590
    :cond_53
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_60

    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "No previous forced display size. Use default size instead."

    invoke-static {v0, v3}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    :goto_60
    const/4 v0, 0x2

    .line 595
    :try_start_61
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/MultiResolutionManager;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "display_density_forced"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_7f

    .line 598
    aput p0, p1, v0
    :try_end_71
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_61 .. :try_end_71} :catch_72

    goto :goto_7f

    .line 601
    :catch_72
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_7f

    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v3, "No previous forced display density. Use default density instead."

    invoke-static {p0, v3}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_7f
    :goto_7f
    new-instance p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    new-instance v3, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    aget v2, p1, v2

    aget v1, p1, v1

    const-string v4, "Original"

    invoke-direct {v3, v4, v2, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;II)V

    aget p1, p1, v0

    invoke-direct {p0, v3, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    return-object p0
.end method

.method public getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;
    .registers 2

    .line 566
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmCustomDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmCustomDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object p0

    goto :goto_11

    :cond_f
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    :goto_11
    return-object p0
.end method

.method public final restoreOriginalSizeDensity(I)V
    .registers 6

    .line 616
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->getOriginalDisplaySizeDensity(I)Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object v0

    .line 617
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_20

    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_20
    iget-object v1, v0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v2, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iget v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iget v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->setSamsungWindowManagerForcedDisplaySizeDensity(IIII)V

    return-void
.end method

.method public final setForcedDisplayMertics(Z)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 626
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object p1

    .line 627
    iget-object v1, p1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v2, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iget v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iget p1, p1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    invoke-virtual {p0, v0, v2, v1, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->setSamsungWindowManagerForcedDisplaySizeDensity(IIII)V

    goto :goto_16

    .line 632
    :cond_13
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->restoreOriginalSizeDensity(I)V

    :goto_16
    return-void
.end method

.method public final setSamsungWindowManagerForcedDisplaySizeDensity(IIII)V
    .registers 5

    .line 612
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerInternal;->setDisplaySizeAndDensityInDex(IIII)V

    return-void
.end method

.method public final setSelectedDensity(I)V
    .registers 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_7

    .line 637
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->getDesktopModeDefaultDensity()I

    move-result p1

    .line 638
    :cond_7
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    iget v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    if-eq v0, p1, :cond_31

    .line 639
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_29
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    iput p1, v0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    const/4 p1, 0x1

    .line 641
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->setForcedDisplayMertics(Z)V

    :cond_31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(mTabletDefaultDisplayMetrics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mTabletDefaultDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSelectedDisplayMetrics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateDesktopModeDensity()V
    .registers 2

    .line 562
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->getDesktopModeDensity()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->setDensity(I)V

    return-void
.end method
