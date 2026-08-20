.class public Lcom/android/server/wm/ScreenshotExecutor$1;
.super Ljava/lang/Object;
.source "ScreenshotExecutor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ScreenshotExecutor;->takeScreenshot(Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ScreenshotExecutor;

.field public final synthetic val$info:Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ScreenshotExecutor;Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;)V
    .registers 3

    .line 248
    iput-object p1, p0, Lcom/android/server/wm/ScreenshotExecutor$1;->this$0:Lcom/android/server/wm/ScreenshotExecutor;

    iput-object p2, p0, Lcom/android/server/wm/ScreenshotExecutor$1;->val$info:Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 251
    iget-object p1, p0, Lcom/android/server/wm/ScreenshotExecutor$1;->this$0:Lcom/android/server/wm/ScreenshotExecutor;

    iget-object v0, p0, Lcom/android/server/wm/ScreenshotExecutor$1;->val$info:Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;

    invoke-static {p1, p2, p0, v0}, Lcom/android/server/wm/ScreenshotExecutor;->-$$Nest$msendScreenshotMessage(Lcom/android/server/wm/ScreenshotExecutor;Landroid/os/IBinder;Landroid/content/ServiceConnection;Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
