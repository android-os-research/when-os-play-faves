.class public Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$JanskyText;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JanskyText"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$JanskyText$Type;
    }
.end annotation


# instance fields
.field public mTypes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$JanskyText$Type;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig;


# direct methods
.method public constructor <init>(Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig;)V
    .registers 2
    .param p1, "this$1"    # Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig;

    .line 42
    iput-object p1, p0, Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$JanskyText;->this$1:Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
