.class Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;
.super Ljava/lang/Object;
.source "DataMetrics5gSa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/echolocate/DataMetrics5gSa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DlCarrierLog"
.end annotation


# instance fields
.field private greylist arfcn:I

.field private greylist bandNumber:Ljava/lang/String;

.field private greylist bandWidth:F

.field private greylist cellId:J

.field private greylist csiRsrp:F

.field private greylist csiRsrq:F

.field private greylist csiRssi:F

.field private greylist csiSinr:F

.field private greylist isEndcAnchor:I

.field private greylist isPrimary:I

.field private greylist lac:I

.field private greylist modulationType:Ljava/lang/String;

.field private greylist numberLayers:I

.field private greylist pci:I

.field private greylist rscp:F

.field private greylist rsrp:F

.field private greylist rsrq:F

.field private greylist rssi:F

.field private greylist sinr:F

.field private greylist tac:I

.field private greylist techType:Ljava/lang/String;

.field final synthetic greylist this$0:Lcom/tmobile/echolocate/DataMetrics5gSa;

.field private greylist transmissionMode:I


# direct methods
.method public constructor greylist <init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V
    .registers 6

    .line 292
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->this$0:Lcom/tmobile/echolocate/DataMetrics5gSa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "-2"

    .line 293
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->techType:Ljava/lang/String;

    .line 294
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->bandNumber:Ljava/lang/String;

    const/4 v0, -0x2

    .line 295
    iput v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->arfcn:I

    const/high16 v1, -0x40000000    # -2.0f

    .line 296
    iput v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->bandWidth:F

    .line 297
    iput v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->isPrimary:I

    .line 298
    iput v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->isEndcAnchor:I

    .line 299
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->modulationType:Ljava/lang/String;

    .line 300
    iput v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->transmissionMode:I

    .line 301
    iput v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->numberLayers:I

    const-wide/16 v2, -0x2

    .line 302
    iput-wide v2, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->cellId:J

    .line 303
    iput v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->pci:I

    .line 304
    iput v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->tac:I

    .line 305
    iput v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->lac:I

    .line 306
    iput v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->rsrp:F

    .line 307
    iput v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->rsrq:F

    .line 308
    iput v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->rssi:F

    .line 309
    iput v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->rscp:F

    .line 310
    iput v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->sinr:F

    .line 311
    iput v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->csiRsrp:F

    .line 312
    iput v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->csiRsrq:F

    .line 313
    iput v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->csiRssi:F

    .line 314
    iput v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->csiSinr:F

    return-void
.end method


# virtual methods
.method public greylist setArfcn(I)V
    .registers 2

    .line 366
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->arfcn:I

    return-void
.end method

.method public greylist setBandNumber(Ljava/lang/String;)V
    .registers 2

    .line 358
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->bandNumber:Ljava/lang/String;

    return-void
.end method

.method public greylist setBandWidth(F)V
    .registers 2

    .line 374
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->bandWidth:F

    return-void
.end method

.method public greylist setCellId(J)V
    .registers 3

    .line 422
    iput-wide p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->cellId:J

    return-void
.end method

.method public greylist setCsiRsrp(F)V
    .registers 2

    .line 494
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->csiRsrp:F

    return-void
.end method

.method public greylist setCsiRsrq(F)V
    .registers 2

    .line 502
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->csiRsrq:F

    return-void
.end method

.method public greylist setCsiRssi(F)V
    .registers 2

    .line 510
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->csiRssi:F

    return-void
.end method

.method public greylist setCsiSinr(F)V
    .registers 2

    .line 518
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->csiSinr:F

    return-void
.end method

.method public greylist setIsEndcAnchor(I)V
    .registers 2

    .line 390
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->isEndcAnchor:I

    return-void
.end method

.method public greylist setIsPrimary(I)V
    .registers 2

    .line 382
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->isPrimary:I

    return-void
.end method

.method public greylist setLac(I)V
    .registers 2

    .line 446
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->lac:I

    return-void
.end method

.method public greylist setModulationType(Ljava/lang/String;)V
    .registers 2

    .line 398
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->modulationType:Ljava/lang/String;

    return-void
.end method

.method public greylist setNumberLayers(I)V
    .registers 2

    .line 414
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->numberLayers:I

    return-void
.end method

.method public greylist setPci(I)V
    .registers 2

    .line 430
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->pci:I

    return-void
.end method

.method public greylist setRscp(F)V
    .registers 2

    .line 478
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->rscp:F

    return-void
.end method

.method public greylist setRsrp(F)V
    .registers 2

    .line 454
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->rsrp:F

    return-void
.end method

.method public greylist setRsrq(F)V
    .registers 2

    .line 462
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->rsrq:F

    return-void
.end method

.method public greylist setRssi(F)V
    .registers 2

    .line 470
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->rssi:F

    return-void
.end method

.method public greylist setSinr(F)V
    .registers 2

    .line 486
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->sinr:F

    return-void
.end method

.method public greylist setTac(I)V
    .registers 2

    .line 438
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->tac:I

    return-void
.end method

.method public greylist setTechType(Ljava/lang/String;)V
    .registers 2

    .line 350
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->techType:Ljava/lang/String;

    return-void
.end method

.method public greylist setTransmissionMode(I)V
    .registers 2

    .line 406
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->transmissionMode:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DlCarrierLog{techType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->techType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bandNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->bandNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", arfcn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->arfcn:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bandWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->bandWidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", isPrimary="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->isPrimary:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isEndcAnchor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->isEndcAnchor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", modulationType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->modulationType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", transmissionMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->transmissionMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numberLayers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->numberLayers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->cellId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pci="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->pci:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->tac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->lac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rsrp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->rsrp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rsrq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->rsrq:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->rssi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rscp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->rscp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sinr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->sinr:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", csiRsrp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->csiRsrp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", csiRsrq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->csiRsrq:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", csiRssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->csiRssi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", csiSinr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->csiSinr:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
