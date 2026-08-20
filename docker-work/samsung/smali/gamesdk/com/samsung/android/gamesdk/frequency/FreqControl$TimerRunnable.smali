.class Lcom/samsung/android/gamesdk/frequency/FreqControl$TimerRunnable;
.super Ljava/lang/Object;
.source "FreqControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/frequency/FreqControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerRunnable"
.end annotation


# instance fields
.field private isCPU:Z

.field final synthetic this$0:Lcom/samsung/android/gamesdk/frequency/FreqControl;


# direct methods
.method constructor <init>(Lcom/samsung/android/gamesdk/frequency/FreqControl;Z)V
    .registers 3
    .param p2, "cpu"    # Z

    .line 192
    iput-object p1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$TimerRunnable;->this$0:Lcom/samsung/android/gamesdk/frequency/FreqControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-boolean p2, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$TimerRunnable;->isCPU:Z

    .line 194
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 198
    iget-boolean v0, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$TimerRunnable;->isCPU:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    .line 199
    iget-object v0, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$TimerRunnable;->this$0:Lcom/samsung/android/gamesdk/frequency/FreqControl;

    invoke-virtual {v0, v2, v2, v1}, Lcom/samsung/android/gamesdk/frequency/FreqControl;->releaseMinFrequencies(ZZZ)V

    goto :goto_11

    .line 201
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$TimerRunnable;->this$0:Lcom/samsung/android/gamesdk/frequency/FreqControl;

    invoke-virtual {v0, v2, v1, v2}, Lcom/samsung/android/gamesdk/frequency/FreqControl;->releaseMinFrequencies(ZZZ)V

    .line 202
    :goto_11
    return-void
.end method
