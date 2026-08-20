.class public Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;
.super Ljava/lang/Object;
.source "MultiResolutionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/MultiResolutionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayMetrics"
.end annotation


# instance fields
.field public density:I

.field public resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V
    .registers 3

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    if-lez p2, :cond_c

    .line 497
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 498
    iput p2, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    return-void

    .line 495
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 512
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 514
    :cond_12
    check-cast p1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 516
    iget-object v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v3, p1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    iget p1, p1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    if-ne p0, p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 522
    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setDensity(I)V
    .registers 2

    .line 506
    iput p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    return-void
.end method

.method public setResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V
    .registers 2

    .line 502
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayMetrics(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
