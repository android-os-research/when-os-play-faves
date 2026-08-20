.class public Lcom/samsung/android/mcf/discovery/McfScanData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
    }
.end annotation


# static fields
.field public static final CONTENTS_FILTER_ALL:I = 0x0

.field public static final CONTENTS_FILTER_BYTE:I = 0x1

.field public static final CONTENTS_FILTER_JSON:I = 0x2

.field public static final DEFAULT_TIMEOUT:I = 0x7530

.field public static final INFINITE_TIMEOUT:I = 0x0

.field private static final KEY_CONTENTS_FILTER:Ljava/lang/String; = "contentsFilter"

.field private static final KEY_REPORT_TYPE:Ljava/lang/String; = "reportType"

.field private static final KEY_SCAN_MODE:Ljava/lang/String; = "scanMode"

.field private static final KEY_SCREEN_OFF_SCAN:Ljava/lang/String; = "screenOffScan"

.field private static final KEY_SERVICE_ID:Ljava/lang/String; = "serviceID"

.field private static final KEY_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final MAX_TIMEOUT:I = 0x36ee80

.field public static final MODE_BALANCED:I = 0x2

.field public static final MODE_LOW_LATENCY:I = 0x3

.field public static final MODE_LOW_POWER:I = 0x0

.field public static final MODE_NO_SCAN:I = -0x1

.field public static final REPORT_TYPE_ALWAYS:I = 0x1

.field public static final REPORT_TYPE_DATA_CHANGED:I


# instance fields
.field private final bleSID:I

.field private final contentsFilter:I

.field private final needScreenOffScan:Z

.field private final reportType:I

.field private scanMode:I

.field private timeout:I


# direct methods
.method private constructor <init>(IIZIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->bleSID:I

    iput p2, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->scanMode:I

    iput-boolean p3, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->needScreenOffScan:Z

    iput p4, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->reportType:I

    iput p5, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->timeout:I

    iput p6, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->contentsFilter:I

    return-void
.end method

.method public synthetic constructor <init>(IIZIIILcom/samsung/android/mcf/discovery/McfScanData$a;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/mcf/discovery/McfScanData;-><init>(IIZIII)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "serviceID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->bleSID:I

    const-string v0, "scanMode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->scanMode:I

    const-string v0, "screenOffScan"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->needScreenOffScan:Z

    const-string v0, "reportType"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->reportType:I

    const-string v0, "timeout"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->timeout:I

    const-string v0, "contentsFilter"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->contentsFilter:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "serviceID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->bleSID:I

    iput p2, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->scanMode:I

    const-string p2, "screenOffScan"

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->needScreenOffScan:Z

    iput v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->reportType:I

    iput v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->timeout:I

    iput v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->contentsFilter:I

    return-void
.end method


# virtual methods
.method public getBleSID()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->bleSID:I

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->bleSID:I

    const-string v2, "serviceID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->scanMode:I

    const-string v2, "scanMode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->needScreenOffScan:Z

    const-string v2, "screenOffScan"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->reportType:I

    const-string v2, "reportType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->timeout:I

    const-string v2, "timeout"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->contentsFilter:I

    const-string v2, "contentsFilter"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getContentsFilter()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->contentsFilter:I

    return v0
.end method

.method public getReportType()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->reportType:I

    return v0
.end method

.method public getScanMode()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->scanMode:I

    return v0
.end method

.method public getTimeout()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->timeout:I

    return v0
.end method

.method public isNeedScreenOffScan()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->needScreenOffScan:Z

    return v0
.end method

.method public setScanMode(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->scanMode:I

    return-void
.end method

.method public setTimeout(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->timeout:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->bleSID:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->scanMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->needScreenOffScan:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", report="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->reportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->contentsFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
