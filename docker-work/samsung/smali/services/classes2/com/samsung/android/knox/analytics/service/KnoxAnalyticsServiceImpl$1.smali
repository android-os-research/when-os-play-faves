.class public Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;
.super Ljava/lang/Object;
.source "KnoxAnalyticsServiceImpl.java"

# interfaces
.implements Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxAnalyticsActivation(Z)V
    .registers 3

    .line 28
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onKnoxAnalyticsActivation()"

    invoke-static {p1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->-$$Nest$fputmIsKnoxAnalyticsActivated(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;Z)V

    return-void
.end method

.method public onKnoxAnalyticsDeactivation(Z)V
    .registers 3

    .line 34
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onKnoxAnalyticsDeactivation()"

    invoke-static {p1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->-$$Nest$fputmIsKnoxAnalyticsActivated(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;Z)V

    return-void
.end method

.method public onStatusChanged(IZLjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onTriggerChanged(IZLjava/lang/String;)V
    .registers 4

    return-void
.end method
