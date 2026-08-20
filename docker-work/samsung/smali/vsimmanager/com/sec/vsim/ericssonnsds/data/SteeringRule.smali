.class public Lcom/sec/vsim/ericssonnsds/data/SteeringRule;
.super Ljava/lang/Object;
.source "SteeringRule.java"


# instance fields
.field public Networks3gpp:Ljava/util/ArrayList;
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

.field public locations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/vsim/ericssonnsds/data/Location;",
            ">;"
        }
    .end annotation
.end field

.field public pdnsInfo:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pdns-info"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/vsim/ericssonnsds/data/PDNInfo;",
            ">;"
        }
    .end annotation
.end field

.field public priority:Ljava/lang/Integer;

.field public roaming:Ljava/lang/Boolean;

.field public steeringData:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "steering-data"
    .end annotation
.end field

.field public timeApplicability:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time-applicability"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/vsim/ericssonnsds/data/TimePolicy;",
            ">;"
        }
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


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
