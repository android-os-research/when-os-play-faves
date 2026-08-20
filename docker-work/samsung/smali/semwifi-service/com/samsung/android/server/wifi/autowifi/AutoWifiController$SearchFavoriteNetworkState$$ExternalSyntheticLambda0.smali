.class public final synthetic Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->$r8$lambda$GNL7fR9cue7C7-EmrrJ8FM_IcVU(Ljava/util/List;Landroid/net/wifi/ScanResult;)V

    return-void
.end method
