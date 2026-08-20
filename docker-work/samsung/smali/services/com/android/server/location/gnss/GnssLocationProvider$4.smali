.class public Lcom/android/server/location/gnss/GnssLocationProvider$4;
.super Landroid/location/INetInitiatedListener$Stub;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 2

    .line 1539
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$4;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-direct {p0}, Landroid/location/INetInitiatedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendNiResponse(II)Z
    .registers 19

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v15, p2

    .line 1546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendNiResponse, notifId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", response: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GnssLocationProvider"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider$4;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v1, v1, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1, v2, v15}, Lcom/android/server/location/gnss/hal/GnssNative;->sendNiResponse(II)V

    .line 1551
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider$4;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$fgetmSuplEsEnabled(Lcom/android/server/location/gnss/GnssLocationProvider;)Z

    move-result v13

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssLocationProvider$4;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 1565
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v14

    const/16 v0, 0x7c

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1551
    invoke-static/range {v0 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIZZZIILjava/lang/String;Ljava/lang/String;IIZZI)V

    const/4 v0, 0x1

    return v0
.end method
