.class public Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$1;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;)V
    .registers 2

    .line 770
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$1;->this$1:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/State;)V
    .registers 5

    .line 774
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$1;->this$1:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v1

    .line 775
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isCoverSupportStatePartial()Z

    move-result v2

    .line 774
    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->-$$Nest$mshowOrDismissOverlay(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;ZZ)V

    .line 776
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$1;->this$1:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result p1

    const/4 v0, 0x2

    const/16 v1, 0xa

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->-$$Nest$msetDesktopModeState(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;ZII)V

    return-void
.end method
