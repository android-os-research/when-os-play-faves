.class Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$1;
.super Ljava/lang/Object;
.source "ScanMatcherUtil.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$1;->this$0:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanResultUpdated(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 64
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$1;->this$0:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$OnBssidListChangedListener;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 65
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$1;->this$0:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$1;->this$0:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->-$$Nest$fgetmWatchingConfigKey(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getBssidList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$1;->this$0:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->-$$Nest$fgetmLastBssidList(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 67
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_43

    .line 68
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$1;->this$0:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$OnBssidListChangedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$OnBssidListChangedListener;->onBssidListChanged()V

    .line 69
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$1;->this$0:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$1;->this$0:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->-$$Nest$fgetmWatchingConfigKey(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getBssidList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->-$$Nest$fputmLastBssidList(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;Ljava/util/Set;)V

    :cond_43
    return-void
.end method
