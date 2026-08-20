.class public Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
.super Ljava/lang/Object;
.source "MultiResolutionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/MultiResolutionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resolution"
.end annotation


# instance fields
.field public height:I

.field public name:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_e

    if-lez p3, :cond_e

    .line 457
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    .line 458
    iput p2, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    .line 459
    iput p3, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    return-void

    .line 455
    :cond_e
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

    if-eqz p1, :cond_23

    .line 469
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_23

    .line 471
    :cond_12
    check-cast p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 473
    iget v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iget v3, p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    if-ne v2, v3, :cond_21

    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iget p1, p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    if-ne p0, p1, :cond_21

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 479
    iget v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isSupportedOn(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Z
    .registers 4

    .line 463
    iget v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iget v1, p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    if-gt v0, v1, :cond_e

    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iget p1, p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    if-gt p0, p1, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resolution(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
