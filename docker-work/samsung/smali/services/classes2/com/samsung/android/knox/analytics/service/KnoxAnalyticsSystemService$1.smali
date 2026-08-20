.class public Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;
.super Ljava/lang/Object;
.source "KnoxAnalyticsSystemService.java"

# interfaces
.implements Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxAnalyticsActivation(Z)V
    .registers 5

    .line 65
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onKnoxAnalyticsActivation()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$mstartSystemService(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$mbroadcastAnalyticsStatus(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;ZZ)V

    if-eqz p1, :cond_1d

    .line 70
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$mlogActivationEventAfterStart(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V

    :cond_1d
    return-void
.end method

.method public onKnoxAnalyticsDeactivation(Z)V
    .registers 4

    .line 76
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onKnoxAnalyticsDeactivation()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$mbroadcastAnalyticsStatus(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;ZZ)V

    .line 78
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$mstopSystemService(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V

    return-void
.end method

.method public onStatusChanged(IZLjava/lang/String;)V
    .registers 4

    .line 88
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$mlogStatusChangedEventAfterStart(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V

    return-void
.end method

.method public onTriggerChanged(IZLjava/lang/String;)V
    .registers 4

    .line 83
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->-$$Nest$mlogTriggerEventAfterStart(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V

    return-void
.end method
