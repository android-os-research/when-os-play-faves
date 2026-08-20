.class Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;
.super Ljava/lang/Object;
.source "DataMetrics5gSa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/echolocate/DataMetrics5gSa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsLog"
.end annotation


# instance fields
.field private greylist carrierConfigVersion:Ljava/lang/String;

.field private greylist carrierSa5gBandConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist networkMode:Ljava/lang/String;

.field private greylist roaming:Ljava/lang/String;

.field private greylist rtt:Ljava/lang/String;

.field private greylist rttTranscript:Ljava/lang/String;

.field final synthetic greylist this$0:Lcom/tmobile/echolocate/DataMetrics5gSa;

.field private greylist vonrSetting:Ljava/lang/String;

.field private greylist vonrStatus:Ljava/lang/String;

.field private greylist wifi:Ljava/lang/String;

.field private greylist wifiCalling:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V
    .registers 2

    .line 667
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->this$0:Lcom/tmobile/echolocate/DataMetrics5gSa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "-2"

    .line 668
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->wifiCalling:Ljava/lang/String;

    .line 669
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->wifi:Ljava/lang/String;

    .line 670
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->roaming:Ljava/lang/String;

    .line 671
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->rtt:Ljava/lang/String;

    .line 672
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->rttTranscript:Ljava/lang/String;

    .line 673
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->networkMode:Ljava/lang/String;

    .line 674
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->vonrSetting:Ljava/lang/String;

    .line 675
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->vonrStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public greylist setCarrierConfigVersion(Ljava/lang/String;)V
    .registers 2

    .line 731
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->carrierConfigVersion:Ljava/lang/String;

    return-void
.end method

.method public greylist setCarrierSa5gBandConfig(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 739
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->carrierSa5gBandConfig:Ljava/util/Map;

    return-void
.end method

.method public greylist setNetworkMode(Ljava/lang/String;)V
    .registers 2

    .line 723
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->networkMode:Ljava/lang/String;

    return-void
.end method

.method public greylist setRoaming(Ljava/lang/String;)V
    .registers 2

    .line 699
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->roaming:Ljava/lang/String;

    return-void
.end method

.method public greylist setRtt(Ljava/lang/String;)V
    .registers 2

    .line 707
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->rtt:Ljava/lang/String;

    return-void
.end method

.method public greylist setRttTranscript(Ljava/lang/String;)V
    .registers 2

    .line 715
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->rttTranscript:Ljava/lang/String;

    return-void
.end method

.method public greylist setVonrSetting(Ljava/lang/String;)V
    .registers 2

    .line 747
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->vonrSetting:Ljava/lang/String;

    return-void
.end method

.method public greylist setVonrStatus(Ljava/lang/String;)V
    .registers 2

    .line 755
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->vonrStatus:Ljava/lang/String;

    return-void
.end method

.method public greylist setWifi(Ljava/lang/String;)V
    .registers 2

    .line 691
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->wifi:Ljava/lang/String;

    return-void
.end method

.method public greylist setWifiCalling(Ljava/lang/String;)V
    .registers 2

    .line 683
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->wifiCalling:Ljava/lang/String;

    return-void
.end method
