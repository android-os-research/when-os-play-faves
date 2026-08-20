.class public Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$GetTRNTimeout;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetTRNTimeout"
.end annotation


# instance fields
.field public rats:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RAT"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$RAT;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration;


# direct methods
.method public constructor <init>(Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration;

    .line 62
    iput-object p1, p0, Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$GetTRNTimeout;->this$0:Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
