.class public Lcom/sec/vsim/ericssonnsds/data/MQTTInfo;
.super Ljava/lang/Object;
.source "MQTTInfo.java"


# instance fields
.field public clientId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client-id"
    .end annotation
.end field

.field public sharedSecret:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shared-secret"
    .end annotation
.end field

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
