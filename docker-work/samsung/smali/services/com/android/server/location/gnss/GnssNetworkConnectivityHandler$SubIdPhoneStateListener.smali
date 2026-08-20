.class public final Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "GnssNetworkConnectivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SubIdPhoneStateListener"
.end annotation


# instance fields
.field public mSubId:Ljava/lang/Integer;

.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Ljava/lang/Integer;)V
    .registers 3

    .line 331
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 332
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;->mSubId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .registers 4

    .line 337
    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_e

    const/4 v0, 0x3

    .line 339
    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result p1

    if-ne v0, p1, :cond_36

    .line 340
    :cond_e
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$fputmActiveSubId(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)V

    .line 341
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mActiveSubId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$fgetmActiveSubId(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GnssNetworkConnectivityHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-void
.end method
