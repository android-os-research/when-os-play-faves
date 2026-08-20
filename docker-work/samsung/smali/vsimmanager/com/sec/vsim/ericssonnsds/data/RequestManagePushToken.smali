.class public Lcom/sec/vsim/ericssonnsds/data/RequestManagePushToken;
.super Lcom/sec/vsim/ericssonnsds/data/NSDSRequest;
.source "RequestManagePushToken.java"


# instance fields
.field public clientId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client-id"
    .end annotation
.end field

.field public msisdn:Ljava/lang/String;

.field public operation:I

.field public pushToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "push-token"
    .end annotation
.end field

.field public serviceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/sec/vsim/ericssonnsds/data/NSDSRequest;-><init>()V

    return-void
.end method
