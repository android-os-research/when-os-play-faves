.class public Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;
.super Ljava/lang/Object;
.source "LppeFusedLocationHelper.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    invoke-static {v0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->-$$Nest$fgetmIsFlpRequested(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 86
    :cond_9
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fused"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "LocationX"

    const-string v1, "LPPeFusedLocationListener : FUSED_PROVIDER"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    invoke-static {v0, p1}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->-$$Nest$mhandleUpdateLPPeFLPLocation(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;Landroid/location/Location;)V

    .line 89
    iget-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    invoke-static {p1}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->-$$Nest$fgetmFlpTimeout(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 90
    iget-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    invoke-static {p1}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->-$$Nest$fgetmHandler(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    invoke-static {v0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->-$$Nest$fgetmFlpTimeout(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$1;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->-$$Nest$fputmFlpTimeout(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;Ljava/lang/Runnable;)V

    :cond_3e
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
