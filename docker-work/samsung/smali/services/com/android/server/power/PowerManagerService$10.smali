.class public Lcom/android/server/power/PowerManagerService$10;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->startSmartStayLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 10775
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 10777
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_22

    .line 10789
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "undefined message : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PowerManagerService"

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 10784
    :cond_22
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleAbuseWakelockWhenUseractivityChanged(Lcom/android/server/power/PowerManagerService;)V

    .line 10785
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleSmartStay(Lcom/android/server/power/PowerManagerService;Z)V

    goto :goto_38

    .line 10779
    :cond_2d
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleAbuseWakelockWhenUseractivityChanged(Lcom/android/server/power/PowerManagerService;)V

    .line 10780
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleSmartStay(Lcom/android/server/power/PowerManagerService;Z)V

    :goto_38
    return-void
.end method
