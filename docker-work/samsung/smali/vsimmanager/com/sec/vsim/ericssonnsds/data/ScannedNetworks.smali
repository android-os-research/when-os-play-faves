.class public Lcom/sec/vsim/ericssonnsds/data/ScannedNetworks;
.super Ljava/lang/Object;
.source "ScannedNetworks.java"


# instance fields
.field public networks3gpp:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "3gpp-networks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/vsim/ericssonnsds/data/Network3gpp;",
            ">;"
        }
    .end annotation
.end field

.field public timestamp3gpp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "3gpp-timestamp"
    .end annotation
.end field

.field public wlanNetworks:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wlan-networks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/vsim/ericssonnsds/data/WLANNetwork;",
            ">;"
        }
    .end annotation
.end field

.field public wlanTimestamp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wlan-timestamp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
