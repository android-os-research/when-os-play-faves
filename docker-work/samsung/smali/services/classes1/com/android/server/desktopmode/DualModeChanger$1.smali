.class public Lcom/android/server/desktopmode/DualModeChanger$1;
.super Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
.source "DualModeChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DualModeChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DualModeChanger;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;Ljava/lang/String;)V
    .registers 3

    .line 129
    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$1;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;I)V
    .registers 5

    .line 132
    iget-object p2, p0, Lcom/android/server/desktopmode/DualModeChanger$1;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {p2}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$fgetmTouchpadRequestedByNotification(Lcom/android/server/desktopmode/DualModeChanger;)Z

    move-result p2

    if-nez p2, :cond_26

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 133
    iget-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$1;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object p2, p1, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/4 v0, 0x0

    const/16 v1, 0x12c

    invoke-static {p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$fgetmTouchpadManager(Lcom/android/server/desktopmode/DualModeChanger;)Lcom/android/server/desktopmode/TouchpadManager;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Lcom/android/server/desktopmode/TouchpadManager;->getInternalUiCallback()Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    move-result-object p1

    .line 133
    invoke-virtual {p2, v0, v1, p1}, Lcom/android/server/desktopmode/UiManager;->startActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 135
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$1;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$fputmTouchpadRequestedByNotification(Lcom/android/server/desktopmode/DualModeChanger;Z)V

    :cond_26
    return-void
.end method
