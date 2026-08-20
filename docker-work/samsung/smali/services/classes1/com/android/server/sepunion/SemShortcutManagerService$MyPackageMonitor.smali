.class public Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SemShortcutManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemShortcutManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemShortcutManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemShortcutManagerService;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageModified(Ljava/lang/String;)V
    .registers 5

    const-string p1, "SemExecuteManagerService"

    const-string/jumbo v0, "onPackageModified"

    .line 175
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    invoke-static {p1}, Lcom/android/server/sepunion/SemShortcutManagerService;->-$$Nest$fgetmScanHandler(Lcom/android/server/sepunion/SemShortcutManagerService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3e6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 177
    iget-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    invoke-static {p1}, Lcom/android/server/sepunion/SemShortcutManagerService;->-$$Nest$fgetmScanHandler(Lcom/android/server/sepunion/SemShortcutManagerService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    :cond_1f
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    invoke-static {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->-$$Nest$fgetmScanHandler(Lcom/android/server/sepunion/SemShortcutManagerService;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onSomePackagesChanged()V
    .registers 5

    const-string v0, "SemExecuteManagerService"

    const-string/jumbo v1, "onSomePackagesChanged"

    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->-$$Nest$fgetmScanHandler(Lcom/android/server/sepunion/SemShortcutManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 167
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->-$$Nest$fgetmScanHandler(Lcom/android/server/sepunion/SemShortcutManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    :cond_1f
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    invoke-static {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->-$$Nest$fgetmScanHandler(Lcom/android/server/sepunion/SemShortcutManagerService;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
