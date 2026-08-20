.class public Lcom/sec/vsim/ericssonnsds/data/TimePolicy;
.super Ljava/lang/Object;
.source "TimePolicy.java"


# instance fields
.field public dayOfWeek:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "day-of-week"
    .end annotation
.end field

.field public timeEnd:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time-end"
    .end annotation
.end field

.field public timeStart:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time-start"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
