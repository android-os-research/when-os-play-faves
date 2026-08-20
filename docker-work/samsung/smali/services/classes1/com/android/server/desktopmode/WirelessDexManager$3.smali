.class public Lcom/android/server/desktopmode/WirelessDexManager$3;
.super Ljava/lang/Object;
.source "WirelessDexManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/WirelessDexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/WirelessDexManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/WirelessDexManager;)V
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$3;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 7

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 221
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/desktopmode/WirelessDexManager$3;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v3}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmMotionEventStartTime(Lcom/android/server/desktopmode/WirelessDexManager;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-lez v1, :cond_70

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    const/4 v1, 0x7

    if-eq v0, v1, :cond_20

    if-eqz v0, :cond_20

    const/4 v1, 0x1

    if-ne v0, v1, :cond_70

    :cond_20
    const/16 v0, 0x2002

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_30

    const/16 v0, 0x4002

    .line 228
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 229
    :cond_30
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$3;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fputmMotionEventStartTime(Lcom/android/server/desktopmode/WirelessDexManager;J)V

    .line 230
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$3;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmIsLowLatencyMode(Lcom/android/server/desktopmode/WirelessDexManager;)Z

    move-result p1

    if-nez p1, :cond_50

    .line 231
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$3;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/WirelessDexManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$3;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmRunnableEnableLowLatencyMode(Lcom/android/server/desktopmode/WirelessDexManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    :cond_50
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$3;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/WirelessDexManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$3;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmRunnableDisableLowLatencyMode(Lcom/android/server/desktopmode/WirelessDexManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$3;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/WirelessDexManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager$3;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fgetmRunnableDisableLowLatencyMode(Lcom/android/server/desktopmode/WirelessDexManager;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_70
    return-void
.end method
