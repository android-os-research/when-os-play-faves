.class public final Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/discovery/McfScanData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public bleSID:I

.field public contentsFilter:I

.field public needScreenOffScan:Z

.field public reportType:I

.field public scanMode:I

.field public timeout:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7530

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->timeout:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->contentsFilter:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/discovery/McfScanData;
    .registers 10

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->bleSID:I

    if-eqz v1, :cond_2b

    iget v2, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->scanMode:I

    if-lez v2, :cond_1b

    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->timeout:I

    if-eqz v0, :cond_12

    const v3, 0x36ee80

    if-gt v0, v3, :cond_12

    goto :goto_1b

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "scanMode is too strong to perform a long timeout set scan"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_1b
    new-instance v8, Lcom/samsung/android/mcf/discovery/McfScanData;

    iget-boolean v3, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->needScreenOffScan:Z

    iget v4, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->reportType:I

    iget v5, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->timeout:I

    iget v6, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->contentsFilter:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/mcf/discovery/McfScanData;-><init>(IIZIIILcom/samsung/android/mcf/discovery/McfScanData$a;)V

    return-object v8

    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "setScanData is Requirement"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setContentsFilter(I)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
    .registers 2

    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->contentsFilter:I

    return-object p0
.end method

.method public setRssiReport(I)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
    .registers 2

    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->reportType:I

    return-object p0
.end method

.method public setScanData(IZZ)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
    .registers 4

    if-eq p2, p3, :cond_9

    invoke-static {p1, p2, p3}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->bleSID:I

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "wrong scan data"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setScanMode(I)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
    .registers 2

    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->scanMode:I

    return-object p0
.end method

.method public setScreenOffScan(Z)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->needScreenOffScan:Z

    return-object p0
.end method

.method public setTimeout(I)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
    .registers 3

    if-ltz p1, :cond_a

    const v0, 0x36ee80

    if-gt p1, v0, :cond_a

    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->timeout:I

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "timeout is out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
