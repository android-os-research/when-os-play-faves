.class public Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;
.super Landroid/database/ContentObserver;
.source "DatabaseSizeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DatabaseSizeContentObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;Landroid/os/Handler;)V
    .registers 3

    .line 63
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    .line 64
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    .line 69
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 71
    iget-object p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    invoke-static {p1}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->-$$Nest$fgetmContext(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getDatabaseSize(Landroid/content/Context;)J

    move-result-wide p1

    .line 72
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange(): currentSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->-$$Nest$fgetmHasAlertedUploader(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->-$$Nest$fgetmDbAlertSizeInBytes(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_51

    .line 75
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onChange(): alert triggered"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->-$$Nest$fgetmContext(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;->broadcastDbSizeWarning(Landroid/content/Context;)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->-$$Nest$fputmHasAlertedUploader(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;Z)V

    .line 80
    :cond_51
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->-$$Nest$fgetmDbMaxSizeInBytes(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_70

    .line 81
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onChange(): full triggered"

    invoke-static {p1, p2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->-$$Nest$fputmHasAlertedUploader(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;Z)V

    .line 83
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->-$$Nest$mstartCompression(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)V

    :cond_70
    return-void
.end method
