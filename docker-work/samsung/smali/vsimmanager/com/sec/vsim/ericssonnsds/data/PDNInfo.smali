.class public Lcom/sec/vsim/ericssonnsds/data/PDNInfo;
.super Ljava/lang/Object;
.source "PDNInfo.java"


# instance fields
.field public addressType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "address-type"
    .end annotation
.end field

.field public apn:Ljava/lang/String;

.field public endDstPort:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end-dst-port"
    .end annotation
.end field

.field public endSrcPort:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end-src-port"
    .end annotation
.end field

.field public fqdn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ipAddress:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ip-address"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public nswo:Ljava/lang/Boolean;

.field public protocolType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "protocol-type"
    .end annotation
.end field

.field public qosFlag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "qos-flag"
    .end annotation
.end field

.field public startDstPort:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start-dst-port"
    .end annotation
.end field

.field public startSrcPort:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start-src-port"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
