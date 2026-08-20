.class public Lcom/android/server/wm/ScreenshotExecutor$2;
.super Landroid/os/Handler;
.source "ScreenshotExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ScreenshotExecutor;->sendScreenshotMessage(Landroid/os/IBinder;Landroid/content/ServiceConnection;Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ScreenshotExecutor;

.field public final synthetic val$conn:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ScreenshotExecutor;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .registers 4

    .line 277
    iput-object p1, p0, Lcom/android/server/wm/ScreenshotExecutor$2;->this$0:Lcom/android/server/wm/ScreenshotExecutor;

    iput-object p3, p0, Lcom/android/server/wm/ScreenshotExecutor$2;->val$conn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 280
    iget-object p1, p0, Lcom/android/server/wm/ScreenshotExecutor$2;->this$0:Lcom/android/server/wm/ScreenshotExecutor;

    iget-object p0, p0, Lcom/android/server/wm/ScreenshotExecutor$2;->val$conn:Landroid/content/ServiceConnection;

    invoke-static {p1, p0}, Lcom/android/server/wm/ScreenshotExecutor;->-$$Nest$mresetScreenshotConnection(Lcom/android/server/wm/ScreenshotExecutor;Landroid/content/ServiceConnection;)V

    return-void
.end method
