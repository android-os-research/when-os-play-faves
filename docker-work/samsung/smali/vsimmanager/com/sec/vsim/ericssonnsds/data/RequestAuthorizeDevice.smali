.class public Lcom/sec/vsim/ericssonnsds/data/RequestAuthorizeDevice;
.super Lcom/sec/vsim/ericssonnsds/data/NSDSRequest;
.source "RequestAuthorizeDevice.java"


# instance fields
.field public deviceName:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device-name"
    .end annotation
.end field

.field public deviceType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device-type"
    .end annotation
.end field

.field public osType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "os-type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/sec/vsim/ericssonnsds/data/NSDSRequest;-><init>()V

    return-void
.end method
