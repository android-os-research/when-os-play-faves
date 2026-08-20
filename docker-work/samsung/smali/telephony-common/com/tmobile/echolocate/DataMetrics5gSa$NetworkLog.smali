.class Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;
.super Ljava/lang/Object;
.source "DataMetrics5gSa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/echolocate/DataMetrics5gSa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkLog"
.end annotation


# instance fields
.field private greylist endcCapability:I

.field private greylist endcConnectionStatus:I

.field private greylist mcc:Ljava/lang/String;

.field private greylist mnc:Ljava/lang/String;

.field final synthetic greylist this$0:Lcom/tmobile/echolocate/DataMetrics5gSa;


# direct methods
.method public constructor greylist <init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V
    .registers 2

    .line 614
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->this$0:Lcom/tmobile/echolocate/DataMetrics5gSa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "-2"

    .line 615
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->mcc:Ljava/lang/String;

    .line 616
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->mnc:Ljava/lang/String;

    const/4 p1, -0x2

    .line 617
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->endcCapability:I

    .line 618
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->endcConnectionStatus:I

    return-void
.end method


# virtual methods
.method public greylist setEndcCapability(I)V
    .registers 2

    .line 642
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->endcCapability:I

    return-void
.end method

.method public greylist setEndcConnectionStatus(I)V
    .registers 2

    .line 650
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->endcConnectionStatus:I

    return-void
.end method

.method public greylist setMcc(Ljava/lang/String;)V
    .registers 2

    .line 626
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->mcc:Ljava/lang/String;

    return-void
.end method

.method public greylist setMnc(Ljava/lang/String;)V
    .registers 2

    .line 634
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->mnc:Ljava/lang/String;

    return-void
.end method
