.class public Lcom/android/server/desktopmode/DesktopModeService$2;
.super Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;)V
    .registers 3

    .line 309
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$2;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;I)V
    .registers 3

    .line 312
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 314
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$2;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetUserRequest(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 315
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$2;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0, p2}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    :cond_11
    return-void
.end method
