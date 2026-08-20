.class public Lcom/android/server/appwidget/AppWidgetServiceImpl$2;
.super Landroid/os/ContainerStateReceiver;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .registers 2

    .line 540
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerAdminLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5

    const-string p1, "AppWidgetServiceImpl"

    .line 543
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onContainerAdminLocked is triggered: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 545
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$mreloadWidgetsMaskedState(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 546
    monitor-exit p1

    return-void

    :catchall_25
    move-exception p0

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_25

    throw p0
.end method

.method public onContainerAdminUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5

    const-string p1, "AppWidgetServiceImpl"

    .line 551
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onContainerAdminUnlocked is triggered: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 553
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$mreloadWidgetsMaskedState(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 554
    monitor-exit p1

    return-void

    :catchall_25
    move-exception p0

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_25

    throw p0
.end method
