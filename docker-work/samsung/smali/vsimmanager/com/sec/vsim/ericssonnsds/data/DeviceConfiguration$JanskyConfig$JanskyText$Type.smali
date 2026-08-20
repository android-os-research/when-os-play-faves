.class public Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$JanskyText$Type;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$JanskyText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Type"
.end annotation


# instance fields
.field public mDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "$"
    .end annotation
.end field

.field public mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "@name"
    .end annotation
.end field

.field final synthetic this$2:Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$JanskyText;


# direct methods
.method public constructor <init>(Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$JanskyText;)V
    .registers 2
    .param p1, "this$2"    # Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$JanskyText;

    .line 44
    iput-object p1, p0, Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$JanskyText$Type;->this$2:Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$JanskyText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
