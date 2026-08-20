.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AddProviderLockedRunnable"
.end annotation


# instance fields
.field public final mIndex:I

.field public final mLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mReceiversCheckArray:[Z

.field public final mRi:Landroid/content/pm/ResolveInfo;

.field public final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/util/concurrent/CountDownLatch;Landroid/content/pm/ResolveInfo;I[Z)V
    .registers 6

    .line 5682
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5683
    iput-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 5684
    iput-object p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mRi:Landroid/content/pm/ResolveInfo;

    .line 5685
    iput p4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mIndex:I

    .line 5686
    iput-object p5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mReceiversCheckArray:[Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v0, 0x1

    .line 5692
    :try_start_1
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mRi:Landroid/content/pm/ResolveInfo;

    invoke-static {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$maddProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/pm/ResolveInfo;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_16
    .catchall {:try_start_1 .. :try_end_8} :catchall_14

    .line 5697
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mReceiversCheckArray:[Z

    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mIndex:I

    aput-boolean v0, v1, v2

    .line 5698
    :goto_e
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_39

    :catchall_14
    move-exception v1

    goto :goto_3a

    :catch_16
    move-exception v1

    :try_start_17
    const-string v2, "AppWidgetServiceImpl"

    .line 5694
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addProviderLocked failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mRi:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5695
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_17 .. :try_end_32} :catchall_14

    .line 5697
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mReceiversCheckArray:[Z

    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mIndex:I

    aput-boolean v0, v1, v2

    goto :goto_e

    :goto_39
    return-void

    :goto_3a
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mReceiversCheckArray:[Z

    iget v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mIndex:I

    aput-boolean v0, v2, v3

    .line 5698
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 5699
    throw v1
.end method
