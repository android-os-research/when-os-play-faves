.class public Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$CnsMw;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CnsMw"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$CnsMw$Url;
    }
.end annotation


# instance fields
.field public mBlowfishEncText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bfEncText"
    .end annotation
.end field

.field public mUrls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$CnsMw$Url;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig;


# direct methods
.method public constructor <init>(Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig;)V
    .registers 2
    .param p1, "this$1"    # Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig;

    .line 33
    iput-object p1, p0, Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$CnsMw;->this$1:Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
