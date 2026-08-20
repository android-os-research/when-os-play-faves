.class public Lcom/sec/vsim/ericssonnsds/data/RequestManageConnectivity;
.super Lcom/sec/vsim/ericssonnsds/data/NSDSRequest;
.source "RequestManageConnectivity.java"


# instance fields
.field public csr:Ljava/lang/String;

.field public deviceGroup:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device-group"
    .end annotation
.end field

.field public operation:I

.field public remoteDeviceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "remote-device-id"
    .end annotation
.end field

.field public vimsi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/sec/vsim/ericssonnsds/data/NSDSRequest;-><init>()V

    return-void
.end method
