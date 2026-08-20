.class public Lcom/android/server/NetworkScoreService$ScanResultsSupplier;
.super Ljava/lang/Object;
.source "NetworkScoreService.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanResultsSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Ljava/util/List<",
        "Landroid/net/wifi/ScanResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$ScanResultsSupplier;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 598
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService$ScanResultsSupplier;->get()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 607
    iget-object p0, p0, Lcom/android/server/NetworkScoreService$ScanResultsSupplier;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/wifi/WifiScanner;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiScanner;

    if-eqz p0, :cond_11

    .line 609
    invoke-virtual {p0}, Landroid/net/wifi/WifiScanner;->getSingleScanResults()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_11
    const-string p0, "NetworkScoreService"

    const-string v0, "WifiScanner is null, failed to return scan results."

    .line 611
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
