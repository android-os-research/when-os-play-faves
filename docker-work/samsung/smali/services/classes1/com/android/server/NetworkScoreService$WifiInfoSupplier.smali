.class public Lcom/android/server/NetworkScoreService$WifiInfoSupplier;
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
    name = "WifiInfoSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Landroid/net/wifi/WifiInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$WifiInfoSupplier;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public get()Landroid/net/wifi/WifiInfo;
    .registers 2

    .line 586
    iget-object p0, p0, Lcom/android/server/NetworkScoreService$WifiInfoSupplier;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_11

    .line 588
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0

    :cond_11
    const-string p0, "NetworkScoreService"

    const-string v0, "WifiManager is null, failed to return the WifiInfo."

    .line 590
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 577
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService$WifiInfoSupplier;->get()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method
