.class public final Lcom/android/server/am/LowMemDetector$LowMemThread;
.super Ljava/lang/Thread;
.source "LowMemDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LowMemDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LowMemThread"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/LowMemDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/am/LowMemDetector;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/LowMemDetector;Lcom/android/server/am/LowMemDetector$LowMemThread-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/LowMemDetector$LowMemThread;-><init>(Lcom/android/server/am/LowMemDetector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v0}, Lcom/android/server/am/LowMemDetector;->-$$Nest$mwaitForPressure(Lcom/android/server/am/LowMemDetector;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 118
    iget-object p0, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/am/LowMemDetector;->-$$Nest$fputmAvailable(Lcom/android/server/am/LowMemDetector;Z)V

    return-void

    .line 122
    :cond_10
    iget-object v1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v1}, Lcom/android/server/am/LowMemDetector;->-$$Nest$fgetmPressureStateLock(Lcom/android/server/am/LowMemDetector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 123
    :try_start_17
    iget-object v2, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v2, v0}, Lcom/android/server/am/LowMemDetector;->-$$Nest$fputmPressureState(Lcom/android/server/am/LowMemDetector;I)V

    .line 124
    monitor-exit v1

    goto :goto_0

    :catchall_1e
    move-exception p0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_1e

    throw p0
.end method
