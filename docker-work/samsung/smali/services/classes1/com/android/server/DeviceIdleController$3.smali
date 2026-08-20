.class public Lcom/android/server/DeviceIdleController$3;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2

    .line 732
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$3;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 3

    .line 735
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$3;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 736
    :try_start_3
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$3;->this$0:Lcom/android/server/DeviceIdleController;

    const-string/jumbo v1, "s:alarm"

    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 737
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method
