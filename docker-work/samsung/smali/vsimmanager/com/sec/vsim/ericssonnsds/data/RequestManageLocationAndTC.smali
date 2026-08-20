.class public Lcom/sec/vsim/ericssonnsds/data/RequestManageLocationAndTC;
.super Lcom/sec/vsim/ericssonnsds/data/NSDSRequest;
.source "RequestManageLocationAndTC.java"


# instance fields
.field public serviceFingerprint:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-fingerprint"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/sec/vsim/ericssonnsds/data/NSDSRequest;-><init>()V

    return-void
.end method
