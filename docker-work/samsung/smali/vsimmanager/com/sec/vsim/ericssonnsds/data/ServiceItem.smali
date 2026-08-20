.class public Lcom/sec/vsim/ericssonnsds/data/ServiceItem;
.super Ljava/lang/Object;
.source "ServiceItem.java"


# instance fields
.field public endTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end-time"
    .end annotation
.end field

.field public expirationTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expiration-time"
    .end annotation
.end field

.field public serviceFingerprint:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-fingerprint"
    .end annotation
.end field

.field public serviceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-name"
    .end annotation
.end field

.field public startTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start-time"
    .end annotation
.end field

.field public targetSubscriber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "target-subscriber-name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
