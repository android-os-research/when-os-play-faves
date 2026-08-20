.class public Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;
.super Landroid/os/Handler;
.source "KnoxAnalyticsContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/KnoxAnalyticsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnalyticsHandler"
.end annotation


# static fields
.field public static final HANDLER_TAG:Ljava/lang/String; = "AnalyticsContainerHandler"

.field public static final MSG_KNOX_ANALYTICS_SEND_LOCATION_LOG:I = 0x1

.field public static final MSG_KNOX_ANALYTICS_SEND_SNAPSHOT_LOG:I = 0x2


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/KnoxAnalyticsContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/KnoxAnalyticsContainer;Landroid/os/Looper;)V
    .registers 3

    .line 70
    iput-object p1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;->this$0:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 71
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnalyticsContainerHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    goto :goto_2f

    .line 83
    :cond_20
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 84
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;->this$0:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-static {p0, p1}, Lcom/android/server/knox/KnoxAnalyticsContainer;->-$$Nest$msendSnapshotLog(Lcom/android/server/knox/KnoxAnalyticsContainer;I)V

    goto :goto_2f

    .line 78
    :cond_28
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 79
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;->this$0:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-static {p0, p1}, Lcom/android/server/knox/KnoxAnalyticsContainer;->-$$Nest$mhandleSendLocationLog(Lcom/android/server/knox/KnoxAnalyticsContainer;I)V

    :goto_2f
    return-void
.end method
