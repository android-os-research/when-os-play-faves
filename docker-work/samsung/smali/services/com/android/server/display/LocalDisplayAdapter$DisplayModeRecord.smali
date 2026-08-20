.class public final Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayModeRecord"
.end annotation


# instance fields
.field public final mMode:Landroid/view/Display$Mode;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl$DisplayMode;[F)V
    .registers 5

    .line 1579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1580
    iget v0, p1, Landroid/view/SurfaceControl$DisplayMode;->width:I

    iget v1, p1, Landroid/view/SurfaceControl$DisplayMode;->height:I

    iget p1, p1, Landroid/view/SurfaceControl$DisplayMode;->refreshRate:F

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/display/DisplayAdapter;->createMode(IIF[F)Landroid/view/Display$Mode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    return-void
.end method


# virtual methods
.method public hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z
    .registers 4

    .line 1592
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    iget v1, p1, Landroid/view/SurfaceControl$DisplayMode;->width:I

    if-ne v0, v1, :cond_28

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 1593
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    iget v1, p1, Landroid/view/SurfaceControl$DisplayMode;->height:I

    if-ne v0, v1, :cond_28

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 1594
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    iget p1, p1, Landroid/view/SurfaceControl$DisplayMode;->refreshRate:F

    .line 1595
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    if-ne p0, p1, :cond_28

    const/4 p0, 0x1

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayModeRecord{mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
