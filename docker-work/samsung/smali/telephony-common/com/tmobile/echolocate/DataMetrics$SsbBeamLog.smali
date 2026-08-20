.class Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;
.super Ljava/lang/Object;
.source "DataMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/echolocate/DataMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SsbBeamLog"
.end annotation


# instance fields
.field private greylist pci:I

.field private greylist ssbBeamIndex:I

.field private greylist ssbBrsrp:F

.field private greylist ssbBrsrq:F

.field private greylist ssbSnr:F

.field final synthetic greylist this$0:Lcom/tmobile/echolocate/DataMetrics;

.field private greylist timestamp:J


# direct methods
.method public constructor greylist <init>(Lcom/tmobile/echolocate/DataMetrics;)V
    .registers 4

    .line 309
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->this$0:Lcom/tmobile/echolocate/DataMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 310
    iput-wide v0, p0, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->timestamp:J

    const/4 p1, -0x2

    .line 311
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->pci:I

    .line 312
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->ssbBeamIndex:I

    const/high16 p1, -0x3cea0000    # -150.0f

    .line 313
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->ssbBrsrp:F

    const/high16 p1, -0x3db80000    # -50.0f

    .line 314
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->ssbBrsrq:F

    .line 315
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->ssbSnr:F

    return-void
.end method


# virtual methods
.method public greylist getPci()I
    .registers 1

    .line 335
    iget p0, p0, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->pci:I

    return p0
.end method

.method public greylist setPci(I)V
    .registers 2

    .line 327
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->pci:I

    return-void
.end method

.method public greylist setSsbBrsrp(F)V
    .registers 2

    .line 351
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->ssbBrsrp:F

    return-void
.end method

.method public greylist setTimeStamp(J)V
    .registers 3

    .line 319
    iput-wide p1, p0, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->timestamp:J

    return-void
.end method
