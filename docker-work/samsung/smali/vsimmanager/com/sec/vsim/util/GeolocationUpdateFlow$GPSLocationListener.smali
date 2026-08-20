.class Lcom/sec/vsim/util/GeolocationUpdateFlow$GPSLocationListener;
.super Ljava/lang/Object;
.source "GeolocationUpdateFlow.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/util/GeolocationUpdateFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GPSLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/vsim/util/GeolocationUpdateFlow;


# direct methods
.method private constructor <init>(Lcom/sec/vsim/util/GeolocationUpdateFlow;)V
    .registers 2

    .line 305
    iput-object p1, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow$GPSLocationListener;->this$0:Lcom/sec/vsim/util/GeolocationUpdateFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/vsim/util/GeolocationUpdateFlow;Lcom/sec/vsim/util/GeolocationUpdateFlow$GPSLocationListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/vsim/util/GeolocationUpdateFlow$GPSLocationListener;-><init>(Lcom/sec/vsim/util/GeolocationUpdateFlow;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .line 308
    invoke-static {}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLocationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow$GPSLocationListener;->this$0:Lcom/sec/vsim/util/GeolocationUpdateFlow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->removeMessages(I)V

    .line 310
    iget-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow$GPSLocationListener;->this$0:Lcom/sec/vsim/util/GeolocationUpdateFlow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->sendMessage(Landroid/os/Message;)Z

    .line 311
    iget-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow$GPSLocationListener;->this$0:Lcom/sec/vsim/util/GeolocationUpdateFlow;

    invoke-static {v0}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->-$$Nest$mgetLastKnownGPSLocation(Lcom/sec/vsim/util/GeolocationUpdateFlow;)V

    .line 312
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "arg0"    # Ljava/lang/String;

    .line 315
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "arg0"    # Ljava/lang/String;

    .line 318
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/os/Bundle;

    .line 321
    return-void
.end method
