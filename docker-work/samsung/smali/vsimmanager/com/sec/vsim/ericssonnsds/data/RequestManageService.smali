.class public Lcom/sec/vsim/ericssonnsds/data/RequestManageService;
.super Lcom/sec/vsim/ericssonnsds/data/NSDSRequest;
.source "RequestManageService.java"


# instance fields
.field public operation:I

.field public serviceInstance:Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-instance"
    .end annotation
.end field

.field public serviceItem:Lcom/sec/vsim/ericssonnsds/data/ServiceItem;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-item"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/sec/vsim/ericssonnsds/data/NSDSRequest;-><init>()V

    return-void
.end method
