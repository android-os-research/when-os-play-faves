.class public Lcom/android/server/desktopmode/PackageStateManager$StateListener;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "PackageStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/PackageStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/PackageStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/PackageStateManager;)V
    .registers 2

    .line 244
    iput-object p1, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/PackageStateManager;Lcom/android/server/desktopmode/PackageStateManager$StateListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/PackageStateManager$StateListener;-><init>(Lcom/android/server/desktopmode/PackageStateManager;)V

    return-void
.end method


# virtual methods
.method public onDualModeSetDesktopModeInternal(Z)V
    .registers 4

    .line 267
    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/PackageStateManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/PackageStateManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/PackageStateManager;->-$$Nest$msetSettingsComponent(Lcom/android/server/desktopmode/PackageStateManager;Lcom/android/server/desktopmode/State;)V

    .line 268
    iget-object p0, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    const-string v0, "com.sec.android.desktopmode.uiservice.activity.touchpad.TouchpadActivity"

    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/PackageStateManager;->-$$Nest$msetComponent(Lcom/android/server/desktopmode/PackageStateManager;Ljava/lang/String;Z)V

    return-void
.end method

.method public onEmergencyModeChanged(Lcom/android/server/desktopmode/State;)V
    .registers 2

    .line 248
    iget-object p0, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/PackageStateManager;->-$$Nest$mupdatePackageState(Lcom/android/server/desktopmode/PackageStateManager;)V

    return-void
.end method

.method public onSetDesktopModeInternal(Z)V
    .registers 2

    .line 262
    iget-object p0, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/PackageStateManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/PackageStateManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/PackageStateManager;->-$$Nest$msetSettingsComponent(Lcom/android/server/desktopmode/PackageStateManager;Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public onUserChanged(Lcom/android/server/desktopmode/State;)V
    .registers 5

    .line 253
    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/PackageStateManager;->-$$Nest$mupdatePackageState(Lcom/android/server/desktopmode/PackageStateManager;)V

    .line 254
    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    const-string v1, "com.sec.android.desktopmode.uiservice.DesktopModeTile"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/PackageStateManager;->-$$Nest$msetComponent(Lcom/android/server/desktopmode/PackageStateManager;Ljava/lang/String;Z)V

    .line 255
    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    const-string v1, "com.sec.android.desktopmode.uiservice.DesktopDisplayDesktopModeTile"

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/PackageStateManager;->-$$Nest$msetComponent(Lcom/android/server/desktopmode/PackageStateManager;Ljava/lang/String;Z)V

    .line 256
    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    const-string v1, "com.sec.android.desktopmode.uiservice.activity.touchpad.TouchpadActivity"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/PackageStateManager;->-$$Nest$msetComponent(Lcom/android/server/desktopmode/PackageStateManager;Ljava/lang/String;Z)V

    .line 257
    iget-object p0, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/PackageStateManager;->-$$Nest$msetSettingsComponent(Lcom/android/server/desktopmode/PackageStateManager;Lcom/android/server/desktopmode/State;)V

    return-void
.end method
