.class public Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$RAT;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RAT"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration;

.field public timeout:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "$"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "@type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration;

    .line 66
    iput-object p1, p0, Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$RAT;->this$0:Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
