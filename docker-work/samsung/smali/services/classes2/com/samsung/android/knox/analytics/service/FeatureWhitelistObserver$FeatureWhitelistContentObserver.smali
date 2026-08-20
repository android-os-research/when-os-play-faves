.class public Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;
.super Landroid/database/ContentObserver;
.source "FeatureWhitelistObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FeatureWhitelistContentObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;Landroid/os/Handler;)V
    .registers 3

    .line 32
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;

    .line 33
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 34
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FeatureWhitelistContentObserver()"

    invoke-static {p1, p2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;->updateFeatureWhitelistCache()V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 39
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 40
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeatureWhitelist.onChange("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;->updateFeatureWhitelistCache()V

    return-void
.end method

.method public final updateFeatureWhitelistCache()V
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->-$$Nest$fgetmContext(Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getFeaturesWhitelist(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->-$$Nest$fputmFeaturesWhitelistCache(Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;Ljava/util/List;)V

    .line 46
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->-$$Nest$fgetmFeaturesWhitelistCache(Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1e

    .line 47
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FeatureWhitelist.updateFeatureWhitelistCache(): Whitelist is null!"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method
