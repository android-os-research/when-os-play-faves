.class public Lcom/android/server/desktopmode/DualModeChanger$3;
.super Lcom/android/server/desktopmode/UiManager$InternalUiCallback;
.source "DualModeChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DualModeChanger;->handleStartLoadingScreen(Lcom/android/server/desktopmode/State;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DualModeChanger;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;)V
    .registers 2

    .line 349
    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$3;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationComplete()V
    .registers 3

    .line 352
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$3;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {v0}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$fgetmLoadingScreenAnimationComplete(Lcom/android/server/desktopmode/DualModeChanger;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 353
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAnimationComplete()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_16
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$3;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$fputmLoadingScreenAnimationComplete(Lcom/android/server/desktopmode/DualModeChanger;Z)V

    .line 355
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$3;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {p0, v1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mscheduleStopLoadingScreenIfPossible(Lcom/android/server/desktopmode/DualModeChanger;Z)V

    :cond_21
    return-void
.end method
