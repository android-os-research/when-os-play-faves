.class public Lcom/android/server/media/projection/MediaProjectionManagerService$3;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;->showSmartViewExceptionToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V
    .registers 2

    .line 288
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 291
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 292
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    if-eqz v1, :cond_90

    .line 293
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_90

    .line 294
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_90

    const-string/jumbo v1, "ro.build.characteristics"

    const-string/jumbo v2, "phone"

    .line 296
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tablet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0x103012b

    const/4 v4, 0x1

    if-eqz v1, :cond_69

    .line 297
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v5}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object p0

    const v3, 0x1040f14

    new-array v5, v4, [Ljava/lang/Object;

    .line 298
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 297
    invoke-static {v1, p0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 298
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_90

    .line 300
    :cond_69
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v5}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object p0

    const v3, 0x1040f13

    new-array v5, v4, [Ljava/lang/Object;

    .line 301
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 300
    invoke-static {v1, p0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 301
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_90
    :goto_90
    return-void
.end method
