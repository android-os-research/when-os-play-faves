.class public Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;
.super Ljava/lang/Object;
.source "ScreenshotExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ScreenshotExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenshotInfo"
.end annotation


# instance fields
.field public mBundle:Landroid/os/Bundle;

.field public mDisplay:I

.field public mOrigin:I

.field public mSweepDirection:I

.field public mType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 451
    iput v0, p0, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->mType:I

    .line 452
    iput v0, p0, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->mSweepDirection:I

    const/4 v1, 0x0

    .line 453
    iput v1, p0, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->mDisplay:I

    .line 454
    iput v0, p0, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->mOrigin:I

    const/4 v0, 0x0

    .line 455
    iput-object v0, p0, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .registers 1

    .line 482
    iget-object p0, p0, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getDisplay()I
    .registers 1

    .line 474
    iget p0, p0, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->mDisplay:I

    return p0
.end method

.method public getOrigin()I
    .registers 1

    .line 478
    iget p0, p0, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->mOrigin:I

    return p0
.end method

.method public getSweepDirection()I
    .registers 1

    .line 470
    iget p0, p0, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->mSweepDirection:I

    return p0
.end method

.method public getType()I
    .registers 1

    .line 466
    iget p0, p0, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->mType:I

    return p0
.end method

.method public set(IIIILandroid/os/Bundle;)V
    .registers 6

    .line 458
    iput p1, p0, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->mType:I

    .line 459
    iput p2, p0, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->mSweepDirection:I

    .line 460
    iput p3, p0, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->mDisplay:I

    .line 461
    iput p4, p0, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->mOrigin:I

    .line 462
    iput-object p5, p0, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreenshotInfo{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sweepDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->mSweepDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->mDisplay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->mOrigin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
