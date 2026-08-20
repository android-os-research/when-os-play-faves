.class public Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BacklightAdapter"
.end annotation


# instance fields
.field public final mBacklight:Lcom/android/server/lights/LogicalLight;

.field public final mDisplayToken:Landroid/os/IBinder;

.field public mForceSurfaceControl:Z

.field public final mSupportLowPersistentModeWithoutLightHal:Z

.field public final mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

.field public final mUseSurfaceControlBrightness:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmUseSurfaceControlBrightness(Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    return p0
.end method

.method public constructor <init>(Landroid/os/IBinder;ZLcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;)V
    .registers 7

    .line 1798
    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 1787
    iput-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    .line 1799
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mDisplayToken:Landroid/os/IBinder;

    .line 1800
    iput-object p3, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 1803
    invoke-virtual {p3, p1}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getDisplayBrightnessSupport(Landroid/os/IBinder;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    if-nez v2, :cond_23

    if-eqz p2, :cond_23

    .line 1806
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/lights/LightsManager;

    .line 1807
    invoke-virtual {p1, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LogicalLight;

    goto :goto_3f

    :cond_23
    if-nez v2, :cond_3c

    .line 1810
    invoke-virtual {p3, p1}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getStaticDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$StaticDisplayInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-eqz p1, :cond_3c

    .line 1811
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/lights/LightsManager;

    const/16 p2, 0x9

    .line 1812
    invoke-virtual {p1, p2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LogicalLight;

    goto :goto_3f

    :cond_3c
    const/4 p1, 0x0

    .line 1815
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LogicalLight;

    .line 1823
    :goto_3f
    iput-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mSupportLowPersistentModeWithoutLightHal:Z

    return-void
.end method


# virtual methods
.method public setBacklight(FFFF)V
    .registers 15

    .line 1830
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    if-eqz v0, :cond_9

    goto :goto_11

    .line 1840
    :cond_9
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LogicalLight;

    if-eqz p0, :cond_6d

    .line 1841
    invoke-virtual {p0, p3}, Lcom/android/server/lights/LogicalLight;->setBrightness(F)V

    goto :goto_6d

    :cond_11
    :goto_11
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1831
    invoke-static {p1, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1833
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0, p3}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setDisplayBrightness(Landroid/os/IBinder;F)Z

    goto :goto_6d

    .line 1835
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "surface lcd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " +"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "LocalDisplayAdapter"

    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mDisplayToken:Landroid/os/IBinder;

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    .line 1838
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " -"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    :goto_6d
    return-void
.end method

.method public setForceSurfaceControl(Z)V
    .registers 2

    .line 1894
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    return-void
.end method

.method public setLowPersistentBacklight(IF)V
    .registers 3

    .line 1887
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LogicalLight;

    if-eqz p0, :cond_7

    .line 1888
    invoke-virtual {p0, p2}, Lcom/android/server/lights/LogicalLight;->setBrightness(F)V

    :cond_7
    return-void
.end method

.method public setVrMode(Z)V
    .registers 2

    .line 1846
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LogicalLight;

    if-eqz p0, :cond_7

    .line 1847
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LogicalLight;->setVrMode(Z)V

    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BacklightAdapter [useSurfaceControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " (force_anyway? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), backlight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LogicalLight;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
