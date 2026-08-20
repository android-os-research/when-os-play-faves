.class public Lcom/android/server/power/PowerManagerLog$LogEventValue;
.super Ljava/lang/Object;
.source "PowerManagerLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogEventValue"
.end annotation


# instance fields
.field public args:[Ljava/lang/Object;

.field public tag:B

.field public tid:S

.field public time:J


# direct methods
.method public constructor <init>(BSJ[Ljava/lang/Object;)V
    .registers 6

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-byte p1, p0, Lcom/android/server/power/PowerManagerLog$LogEventValue;->tag:B

    .line 358
    iput-wide p3, p0, Lcom/android/server/power/PowerManagerLog$LogEventValue;->time:J

    .line 359
    iput-short p2, p0, Lcom/android/server/power/PowerManagerLog$LogEventValue;->tid:S

    .line 360
    iput-object p5, p0, Lcom/android/server/power/PowerManagerLog$LogEventValue;->args:[Ljava/lang/Object;

    return-void
.end method
