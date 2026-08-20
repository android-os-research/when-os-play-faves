.class public Lcom/android/server/power/PowerManagerLog$PowerManagerLogHandler;
.super Landroid/os/Handler;
.source "PowerManagerLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PowerManagerLogHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerLog;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerLog;Landroid/os/Looper;)V
    .registers 3

    .line 332
    iput-object p1, p0, Lcom/android/server/power/PowerManagerLog$PowerManagerLogHandler;->this$0:Lcom/android/server/power/PowerManagerLog;

    .line 333
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 338
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_17

    .line 340
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/power/PowerManagerLog$LogEventValue;

    .line 341
    iget-object v0, p0, Lcom/android/server/power/PowerManagerLog$PowerManagerLogHandler;->this$0:Lcom/android/server/power/PowerManagerLog;

    iget-byte v1, p1, Lcom/android/server/power/PowerManagerLog$LogEventValue;->tag:B

    iget-short v2, p1, Lcom/android/server/power/PowerManagerLog$LogEventValue;->tid:S

    iget-wide v3, p1, Lcom/android/server/power/PowerManagerLog$LogEventValue;->time:J

    iget-object v5, p1, Lcom/android/server/power/PowerManagerLog$LogEventValue;->args:[Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/PowerManagerLog;->addEntry(BSJ[Ljava/lang/Object;)V

    :goto_17
    return-void
.end method
