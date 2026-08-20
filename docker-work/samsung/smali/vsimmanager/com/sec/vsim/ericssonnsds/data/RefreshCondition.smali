.class public Lcom/sec/vsim/ericssonnsds/data/RefreshCondition;
.super Ljava/lang/Object;
.source "RefreshCondition.java"


# instance fields
.field public countryChange:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country-change"
    .end annotation
.end field

.field public droppedCall:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dropped-call"
    .end annotation
.end field

.field public enableDataRoaming:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device-restart"
    .end annotation
.end field

.field public includeNetScan:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "include-net-scan"
    .end annotation
.end field

.field public plmnChange:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "plmn-change"
    .end annotation
.end field

.field public refreshPeriod:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refresh-period"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
