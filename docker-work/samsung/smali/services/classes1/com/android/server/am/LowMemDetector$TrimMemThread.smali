.class public final Lcom/android/server/am/LowMemDetector$TrimMemThread;
.super Ljava/lang/Thread;
.source "LowMemDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LowMemDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TrimMemThread"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/LowMemDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/am/LowMemDetector;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/android/server/am/LowMemDetector$TrimMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/LowMemDetector;Lcom/android/server/am/LowMemDetector$TrimMemThread-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/LowMemDetector$TrimMemThread;-><init>(Lcom/android/server/am/LowMemDetector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/LowMemDetector$TrimMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v0}, Lcom/android/server/am/LowMemDetector;->-$$Nest$mwaitForTrimPressure(Lcom/android/server/am/LowMemDetector;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1b

    .line 137
    iget-object v0, p0, Lcom/android/server/am/LowMemDetector$TrimMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v0}, Lcom/android/server/am/LowMemDetector;->-$$Nest$fgetmHasTrimPressureLock(Lcom/android/server/am/LowMemDetector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 138
    :try_start_11
    iget-object p0, p0, Lcom/android/server/am/LowMemDetector$TrimMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {p0, v2}, Lcom/android/server/am/LowMemDetector;->-$$Nest$fputmHasTrimPressure(Lcom/android/server/am/LowMemDetector;Z)V

    .line 139
    monitor-exit v1

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw p0

    .line 143
    :cond_1b
    iget-object v1, p0, Lcom/android/server/am/LowMemDetector$TrimMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v1}, Lcom/android/server/am/LowMemDetector;->-$$Nest$fgetmHasTrimPressureLock(Lcom/android/server/am/LowMemDetector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 144
    :try_start_22
    iget-object v3, p0, Lcom/android/server/am/LowMemDetector$TrimMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    if-lez v0, :cond_27

    const/4 v2, 0x1

    :cond_27
    invoke-static {v3, v2}, Lcom/android/server/am/LowMemDetector;->-$$Nest$fputmHasTrimPressure(Lcom/android/server/am/LowMemDetector;Z)V

    .line 145
    monitor-exit v1

    goto :goto_0

    :catchall_2c
    move-exception p0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_2c

    throw p0
.end method
