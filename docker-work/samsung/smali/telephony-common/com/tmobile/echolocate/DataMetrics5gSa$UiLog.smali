.class Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;
.super Ljava/lang/Object;
.source "DataMetrics5gSa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/echolocate/DataMetrics5gSa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UiLog"
.end annotation


# instance fields
.field private greylist networkType:Ljava/lang/String;

.field final synthetic greylist this$0:Lcom/tmobile/echolocate/DataMetrics5gSa;

.field private greylist timestamp:J

.field private greylist uiDataTransmission:Ljava/lang/String;

.field private greylist uiNetworkType:Ljava/lang/String;

.field private greylist uiNumberOfAntennaBars:I


# direct methods
.method constructor greylist <init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V
    .registers 2

    .line 759
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;->this$0:Lcom/tmobile/echolocate/DataMetrics5gSa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist setNetworkType(Ljava/lang/String;)V
    .registers 2

    .line 779
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;->networkType:Ljava/lang/String;

    return-void
.end method

.method public greylist setTimestamp(J)V
    .registers 3

    .line 771
    iput-wide p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;->timestamp:J

    return-void
.end method

.method public greylist setUiDataTransmission(Ljava/lang/String;)V
    .registers 2

    .line 795
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;->uiDataTransmission:Ljava/lang/String;

    return-void
.end method

.method public greylist setUiNetworkType(Ljava/lang/String;)V
    .registers 2

    .line 787
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;->uiNetworkType:Ljava/lang/String;

    return-void
.end method

.method public greylist setUiNumberOfAntennaBars(I)V
    .registers 2

    .line 803
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;->uiNumberOfAntennaBars:I

    return-void
.end method
