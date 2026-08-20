.class Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;
.super Ljava/lang/Object;
.source "ColorDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/ColorDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorDisplayManagerInternal"
.end annotation


# static fields
.field private static blacklist sInstance:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;


# instance fields
.field private final blacklist mCdm:Landroid/hardware/display/IColorDisplayManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/display/IColorDisplayManager;)V
    .registers 2
    .param p1, "colorDisplayManager"    # Landroid/hardware/display/IColorDisplayManager;

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    iput-object p1, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    .line 607
    return-void
.end method

.method public static blacklist getInstance()Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;
    .registers 4

    .line 610
    const-class v0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    monitor-enter v0

    .line 611
    :try_start_3
    sget-object v1, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->sInstance:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-nez v1, :cond_20

    .line 613
    :try_start_7
    const-string v1, "color_display"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 614
    .local v1, "b":Landroid/os/IBinder;
    new-instance v2, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    .line 615
    invoke-static {v1}, Landroid/hardware/display/IColorDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IColorDisplayManager;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;-><init>(Landroid/hardware/display/IColorDisplayManager;)V

    sput-object v2, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->sInstance:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;
    :try_end_18
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_7 .. :try_end_18} :catch_19
    .catchall {:try_start_7 .. :try_end_18} :catchall_24

    .line 618
    .end local v1    # "b":Landroid/os/IBinder;
    goto :goto_20

    .line 616
    :catch_19
    move-exception v1

    .line 617
    .local v1, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_1a
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 620
    .end local v1    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :cond_20
    :goto_20
    sget-object v1, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->sInstance:Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;

    monitor-exit v0

    return-object v1

    .line 621
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_24

    throw v1
.end method


# virtual methods
.method blacklist getColorMode()I
    .registers 3

    .line 802
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IColorDisplayManager;->getColorMode()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 803
    :catch_7
    move-exception v0

    .line 804
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getNightDisplayAutoMode()I
    .registers 3

    .line 658
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IColorDisplayManager;->getNightDisplayAutoMode()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 659
    :catch_7
    move-exception v0

    .line 660
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getNightDisplayAutoModeRaw()I
    .registers 3

    .line 666
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IColorDisplayManager;->getNightDisplayAutoModeRaw()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 667
    :catch_7
    move-exception v0

    .line 668
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getNightDisplayColorTemperature()I
    .registers 3

    .line 642
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IColorDisplayManager;->getNightDisplayColorTemperature()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 643
    :catch_7
    move-exception v0

    .line 644
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getNightDisplayCustomEndTime()Landroid/hardware/display/Time;
    .registers 3

    .line 698
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IColorDisplayManager;->getNightDisplayCustomEndTime()Landroid/hardware/display/Time;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 699
    :catch_7
    move-exception v0

    .line 700
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getNightDisplayCustomStartTime()Landroid/hardware/display/Time;
    .registers 3

    .line 682
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IColorDisplayManager;->getNightDisplayCustomStartTime()Landroid/hardware/display/Time;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 683
    :catch_7
    move-exception v0

    .line 684
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getReduceBrightColorsOffsetFactor()F
    .registers 3

    .line 794
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IColorDisplayManager;->getReduceBrightColorsOffsetFactor()F

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 795
    :catch_7
    move-exception v0

    .line 796
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getReduceBrightColorsStrength()I
    .registers 3

    .line 778
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IColorDisplayManager;->getReduceBrightColorsStrength()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 779
    :catch_7
    move-exception v0

    .line 780
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getTransformCapabilities()I
    .registers 3

    .line 818
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IColorDisplayManager;->getTransformCapabilities()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 819
    :catch_7
    move-exception v0

    .line 820
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist isDeviceColorManaged()Z
    .registers 3

    .line 714
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IColorDisplayManager;->isDeviceColorManaged()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 715
    :catch_7
    move-exception v0

    .line 716
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist isDisplayWhiteBalanceEnabled()Z
    .registers 3

    .line 746
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IColorDisplayManager;->isDisplayWhiteBalanceEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 747
    :catch_7
    move-exception v0

    .line 748
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist isNightDisplayActivated()Z
    .registers 3

    .line 626
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IColorDisplayManager;->isNightDisplayActivated()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 627
    :catch_7
    move-exception v0

    .line 628
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist isReduceBrightColorsActivated()Z
    .registers 3

    .line 762
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IColorDisplayManager;->isReduceBrightColorsActivated()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 763
    :catch_7
    move-exception v0

    .line 764
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist isSaturationActivated()Z
    .registers 3

    .line 730
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IColorDisplayManager;->isSaturationActivated()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 731
    :catch_7
    move-exception v0

    .line 732
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist setAppSaturationLevel(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "saturationLevel"    # I

    .line 738
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IColorDisplayManager;->setAppSaturationLevel(Ljava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 739
    :catch_7
    move-exception v0

    .line 740
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist setColorMode(I)V
    .registers 4
    .param p1, "colorMode"    # I

    .line 810
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IColorDisplayManager;->setColorMode(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 813
    nop

    .line 814
    return-void

    .line 811
    :catch_7
    move-exception v0

    .line 812
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist setDisplayWhiteBalanceEnabled(Z)Z
    .registers 4
    .param p1, "enabled"    # Z

    .line 754
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IColorDisplayManager;->setDisplayWhiteBalanceEnabled(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 755
    :catch_7
    move-exception v0

    .line 756
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist setNightDisplayActivated(Z)Z
    .registers 4
    .param p1, "activated"    # Z

    .line 634
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IColorDisplayManager;->setNightDisplayActivated(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 635
    :catch_7
    move-exception v0

    .line 636
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist setNightDisplayAutoMode(I)Z
    .registers 4
    .param p1, "autoMode"    # I

    .line 674
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IColorDisplayManager;->setNightDisplayAutoMode(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 675
    :catch_7
    move-exception v0

    .line 676
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist setNightDisplayColorTemperature(I)Z
    .registers 4
    .param p1, "temperature"    # I

    .line 650
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IColorDisplayManager;->setNightDisplayColorTemperature(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 651
    :catch_7
    move-exception v0

    .line 652
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist setNightDisplayCustomEndTime(Landroid/hardware/display/Time;)Z
    .registers 4
    .param p1, "endTime"    # Landroid/hardware/display/Time;

    .line 706
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IColorDisplayManager;->setNightDisplayCustomEndTime(Landroid/hardware/display/Time;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 707
    :catch_7
    move-exception v0

    .line 708
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist setNightDisplayCustomStartTime(Landroid/hardware/display/Time;)Z
    .registers 4
    .param p1, "startTime"    # Landroid/hardware/display/Time;

    .line 690
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IColorDisplayManager;->setNightDisplayCustomStartTime(Landroid/hardware/display/Time;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 691
    :catch_7
    move-exception v0

    .line 692
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist setReduceBrightColorsActivated(Z)Z
    .registers 4
    .param p1, "activated"    # Z

    .line 770
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IColorDisplayManager;->setReduceBrightColorsActivated(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 771
    :catch_7
    move-exception v0

    .line 772
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist setReduceBrightColorsStrength(I)Z
    .registers 4
    .param p1, "strength"    # I

    .line 786
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IColorDisplayManager;->setReduceBrightColorsStrength(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 787
    :catch_7
    move-exception v0

    .line 788
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist setSaturationLevel(I)Z
    .registers 4
    .param p1, "saturationLevel"    # I

    .line 722
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ColorDisplayManager$ColorDisplayManagerInternal;->mCdm:Landroid/hardware/display/IColorDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IColorDisplayManager;->setSaturationLevel(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 723
    :catch_7
    move-exception v0

    .line 724
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
