.class public Lcom/sec/vsim/ericssonnsds/data/RequestManageSteering;
.super Lcom/sec/vsim/ericssonnsds/data/NSDSRequest;
.source "RequestManageSteering.java"


# instance fields
.field public deviceGroup:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device-group"
    .end annotation
.end field

.field public deviceInfo:Lcom/sec/vsim/ericssonnsds/data/DeviceInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device-info"
    .end annotation
.end field

.field public policiesFingerprint:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "policies-fingerprint"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/sec/vsim/ericssonnsds/data/NSDSRequest;-><init>()V

    return-void
.end method
