.class public Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$CnsMw$Url;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$CnsMw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Url"
.end annotation


# instance fields
.field public mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "@name"
    .end annotation
.end field

.field public mUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "@uri"
    .end annotation
.end field

.field final synthetic this$2:Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$CnsMw;


# direct methods
.method public constructor <init>(Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$CnsMw;)V
    .registers 2
    .param p1, "this$2"    # Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$CnsMw;

    .line 36
    iput-object p1, p0, Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$CnsMw$Url;->this$2:Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$CnsMw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
