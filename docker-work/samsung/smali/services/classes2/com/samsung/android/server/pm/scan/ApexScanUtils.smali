.class public Lcom/samsung/android/server/pm/scan/ApexScanUtils;
.super Ljava/lang/Object;
.source "ApexScanUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertApexInfosAreValid(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ApexManager$ActiveApexInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_9

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_9

    return-void

    :cond_9
    const-string p0, "Apex packages were not scanned."

    .line 11
    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfo(Ljava/lang/String;)V

    .line 12
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
