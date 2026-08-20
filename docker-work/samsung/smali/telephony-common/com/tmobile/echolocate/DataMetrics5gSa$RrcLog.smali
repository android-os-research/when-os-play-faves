.class Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;
.super Ljava/lang/Object;
.source "DataMetrics5gSa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/echolocate/DataMetrics5gSa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RrcLog"
.end annotation


# instance fields
.field private greylist lteRrcState:Ljava/lang/String;

.field private greylist nrRrcState:Ljava/lang/String;

.field final synthetic greylist this$0:Lcom/tmobile/echolocate/DataMetrics5gSa;


# direct methods
.method public constructor greylist <init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V
    .registers 2

    .line 585
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->this$0:Lcom/tmobile/echolocate/DataMetrics5gSa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "-2"

    .line 586
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->lteRrcState:Ljava/lang/String;

    .line 587
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->nrRrcState:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public greylist getLteRrcState()Ljava/lang/String;
    .registers 1

    .line 591
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->lteRrcState:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getNrRrcState()Ljava/lang/String;
    .registers 1

    .line 599
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->nrRrcState:Ljava/lang/String;

    return-object p0
.end method

.method public greylist setLteRrcState(Ljava/lang/String;)V
    .registers 2

    .line 595
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->lteRrcState:Ljava/lang/String;

    return-void
.end method

.method public greylist setNrRrcState(Ljava/lang/String;)V
    .registers 2

    .line 603
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->nrRrcState:Ljava/lang/String;

    return-void
.end method
