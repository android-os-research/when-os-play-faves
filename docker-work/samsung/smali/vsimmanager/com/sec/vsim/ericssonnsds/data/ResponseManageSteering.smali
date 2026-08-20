.class public Lcom/sec/vsim/ericssonnsds/data/ResponseManageSteering;
.super Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;
.source "ResponseManageSteering.java"


# instance fields
.field public mqttInfo:Lcom/sec/vsim/ericssonnsds/data/MQTTInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mqtt-info"
    .end annotation
.end field

.field public policiesFingerprint:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "policies-fingerprint"
    .end annotation
.end field

.field public rawData:Ljava/lang/String;

.field public refreshCondition:Lcom/sec/vsim/ericssonnsds/data/RefreshCondition;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refresh-condition"
    .end annotation
.end field

.field public steeringMetadata:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "steering-metadata"
    .end annotation
.end field

.field public steeringRules:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "steering-rules"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/vsim/ericssonnsds/data/SteeringRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 18
    invoke-direct {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;-><init>(Landroid/os/Parcel;)V

    .line 19
    return-void
.end method
