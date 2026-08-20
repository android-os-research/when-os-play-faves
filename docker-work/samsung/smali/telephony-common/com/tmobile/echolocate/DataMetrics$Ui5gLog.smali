.class Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;
.super Ljava/lang/Object;
.source "DataMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/echolocate/DataMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Ui5gLog"
.end annotation


# instance fields
.field private greylist networkType:I

.field final synthetic greylist this$0:Lcom/tmobile/echolocate/DataMetrics;

.field private greylist timestamp:J

.field private greylist ui5gConfigurationStatus:I

.field private greylist uiDataTransmission:Ljava/lang/String;

.field private greylist uiNetworkType:Ljava/lang/String;

.field private greylist uiNumberOfAntennaBars:I


# direct methods
.method public constructor greylist <init>(Lcom/tmobile/echolocate/DataMetrics;)V
    .registers 4

    .line 596
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->this$0:Lcom/tmobile/echolocate/DataMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 597
    iput-wide v0, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->timestamp:J

    const/4 p1, -0x2

    .line 598
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->networkType:I

    const-string v0, "NA"

    .line 599
    iput-object v0, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->uiNetworkType:Ljava/lang/String;

    .line 600
    iput-object v0, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->uiDataTransmission:Ljava/lang/String;

    const/16 v0, -0x3e7

    .line 601
    iput v0, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->uiNumberOfAntennaBars:I

    .line 602
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->ui5gConfigurationStatus:I

    return-void
.end method


# virtual methods
.method public greylist setNetworkType(I)V
    .registers 2

    .line 614
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->networkType:I

    return-void
.end method

.method public greylist setTimeStamp(J)V
    .registers 3

    .line 606
    iput-wide p1, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->timestamp:J

    return-void
.end method

.method public greylist setUiDataTransmission(Ljava/lang/String;)V
    .registers 2

    .line 630
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->uiDataTransmission:Ljava/lang/String;

    return-void
.end method

.method public greylist setUiNetworkType(Ljava/lang/String;)V
    .registers 2

    .line 622
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->uiNetworkType:Ljava/lang/String;

    return-void
.end method

.method public greylist setUiNumberOfAntennaBars(I)V
    .registers 2

    .line 638
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->uiNumberOfAntennaBars:I

    return-void
.end method
