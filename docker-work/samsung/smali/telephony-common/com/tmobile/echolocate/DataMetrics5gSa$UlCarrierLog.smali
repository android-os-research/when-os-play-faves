.class Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;
.super Ljava/lang/Object;
.source "DataMetrics5gSa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/echolocate/DataMetrics5gSa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UlCarrierLog"
.end annotation


# instance fields
.field private greylist arfcn:I

.field private greylist bandNumber:Ljava/lang/String;

.field private greylist bandWidth:F

.field private greylist isPrimary:I

.field private greylist techType:Ljava/lang/String;

.field final synthetic greylist this$0:Lcom/tmobile/echolocate/DataMetrics5gSa;


# direct methods
.method public constructor greylist <init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V
    .registers 3

    .line 530
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->this$0:Lcom/tmobile/echolocate/DataMetrics5gSa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "-2"

    .line 531
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->techType:Ljava/lang/String;

    .line 532
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->bandNumber:Ljava/lang/String;

    const/4 p1, -0x2

    .line 533
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->arfcn:I

    const/high16 v0, -0x40000000    # -2.0f

    .line 534
    iput v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->bandWidth:F

    .line 535
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->isPrimary:I

    return-void
.end method


# virtual methods
.method public greylist setArfcn(I)V
    .registers 2

    .line 560
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->arfcn:I

    return-void
.end method

.method public greylist setBandNumber(Ljava/lang/String;)V
    .registers 2

    .line 552
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->bandNumber:Ljava/lang/String;

    return-void
.end method

.method public greylist setBandWidth(F)V
    .registers 2

    .line 568
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->bandWidth:F

    return-void
.end method

.method public greylist setIsPrimary(I)V
    .registers 2

    .line 576
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->isPrimary:I

    return-void
.end method

.method public greylist setTechType(Ljava/lang/String;)V
    .registers 2

    .line 544
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->techType:Ljava/lang/String;

    return-void
.end method
