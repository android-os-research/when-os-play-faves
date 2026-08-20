.class public Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$RAT;,
        Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$GetTRNTimeout;,
        Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$ConfigInfo;,
        Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig;
    }
.end annotation


# instance fields
.field public mConfigInfo:Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$ConfigInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "configInfo"
    .end annotation
.end field

.field public mJanskyConfig:Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "janskyConfig"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
