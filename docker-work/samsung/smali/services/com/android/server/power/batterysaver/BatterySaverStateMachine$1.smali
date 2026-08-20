.class public Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;
.super Landroid/database/ContentObserver;
.source "BatterySaverStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;Landroid/os/Handler;)V
    .registers 3

    .line 245
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 248
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->-$$Nest$fgetmLock(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 249
    :try_start_7
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->-$$Nest$mrefreshSettingsLocked(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    .line 250
    monitor-exit p1

    return-void

    :catchall_e
    move-exception p0

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0
.end method
