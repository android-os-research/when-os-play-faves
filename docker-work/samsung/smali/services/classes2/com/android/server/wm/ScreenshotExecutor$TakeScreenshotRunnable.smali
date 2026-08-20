.class public Lcom/android/server/wm/ScreenshotExecutor$TakeScreenshotRunnable;
.super Ljava/lang/Object;
.source "ScreenshotExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ScreenshotExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TakeScreenshotRunnable"
.end annotation


# instance fields
.field public final info:Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;

.field public final synthetic this$0:Lcom/android/server/wm/ScreenshotExecutor;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ScreenshotExecutor;)V
    .registers 3

    .line 441
    iput-object p1, p0, Lcom/android/server/wm/ScreenshotExecutor$TakeScreenshotRunnable;->this$0:Lcom/android/server/wm/ScreenshotExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    new-instance p1, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;-><init>(Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo-IA;)V

    iput-object p1, p0, Lcom/android/server/wm/ScreenshotExecutor$TakeScreenshotRunnable;->info:Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/ScreenshotExecutor;Lcom/android/server/wm/ScreenshotExecutor$TakeScreenshotRunnable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/ScreenshotExecutor$TakeScreenshotRunnable;-><init>(Lcom/android/server/wm/ScreenshotExecutor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 446
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotExecutor$TakeScreenshotRunnable;->this$0:Lcom/android/server/wm/ScreenshotExecutor;

    iget-object p0, p0, Lcom/android/server/wm/ScreenshotExecutor$TakeScreenshotRunnable;->info:Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;

    invoke-static {v0, p0}, Lcom/android/server/wm/ScreenshotExecutor;->-$$Nest$mtakeScreenshot(Lcom/android/server/wm/ScreenshotExecutor;Lcom/android/server/wm/ScreenshotExecutor$ScreenshotInfo;)V

    return-void
.end method
