.class public Lcom/sec/vsim/ericssonnsds/data/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field public battery:Ljava/lang/Integer;

.field public location:Lcom/sec/vsim/ericssonnsds/data/Location;

.field public network3gpp:Lcom/sec/vsim/ericssonnsds/data/Network3gpp;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "3gpp-network"
    .end annotation
.end field

.field public refreshCondition:Lcom/sec/vsim/ericssonnsds/data/RefreshCondition;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refresh-condition"
    .end annotation
.end field

.field public roaming:Ljava/lang/Boolean;

.field public scannedNetworks:Lcom/sec/vsim/ericssonnsds/data/ScannedNetworks;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scanned-networks"
    .end annotation
.end field

.field public wlanNetwork:Lcom/sec/vsim/ericssonnsds/data/WLANNetwork;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wlan-network"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
