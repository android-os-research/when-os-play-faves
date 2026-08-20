.class public Lcom/sec/vsim/ericssonnsds/data/WLANNetwork;
.super Ljava/lang/Object;
.source "WLANNetwork.java"


# instance fields
.field public band:Ljava/lang/Double;

.field public bssid:Ljava/lang/Integer;

.field public carrierWifi:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "carrier-wifi"
    .end annotation
.end field

.field public hessid:Ljava/lang/String;

.field public hs2:Ljava/lang/Boolean;

.field public metaDataHs2:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "metadata-hs2"
    .end annotation
.end field

.field public metaDataWifi:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "metadata-wifi"
    .end annotation
.end field

.field public ratType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rat-type"
    .end annotation
.end field

.field public ssid:Ljava/lang/String;

.field public wmm:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
