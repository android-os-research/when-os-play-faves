.class public Lcom/android/server/desktopmode/DesktopModeService$5;
.super Lcom/android/server/desktopmode/UiManager$InternalUiCallback;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeService;->showInitialConnectionDialog(ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;

.field public final synthetic val$firstConnectionKey:Ljava/lang/String;

.field public final synthetic val$startWelcomeActivity:Z


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;ZLjava/lang/String;)V
    .registers 4

    .line 1388
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iput-boolean p2, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->val$startWelcomeActivity:Z

    iput-object p3, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->val$firstConnectionKey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickButtonPositive()V
    .registers 4

    .line 1391
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetUserRequest(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 1392
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->val$startWelcomeActivity:Z

    if-nez v0, :cond_16

    .line 1393
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "welcome_completed"

    invoke-static {v0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1396
    :cond_16
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    return-void
.end method

.method public onDismiss()V
    .registers 3

    .line 1401
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->val$firstConnectionKey:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void
.end method
