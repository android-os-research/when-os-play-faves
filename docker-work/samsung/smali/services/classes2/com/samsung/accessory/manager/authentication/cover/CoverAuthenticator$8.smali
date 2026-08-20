.class public Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;
.super Ljava/lang/Object;
.source "CoverAuthenticator.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 2

    .line 910
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 12

    .line 912
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-int p1, p1

    .line 913
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v5, v0, v2

    .line 915
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSensorChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fgetmCoverStateBySensor(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_53

    .line 917
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fgetmCoverStateBySensor(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v1

    if-eq v1, v0, :cond_53

    .line 918
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$monCoverAttached(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;JZIZ)V

    .line 919
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fputmCoverStateBySensor(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 920
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$maddSensorRecord(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    goto :goto_6f

    :cond_53
    if-nez p1, :cond_6f

    .line 921
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fgetmCoverStateBySensor(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v0

    if-eqz v0, :cond_6f

    .line 922
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$monCoverAttached(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;JZIZ)V

    .line 923
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fputmCoverStateBySensor(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 924
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$maddSensorRecord(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    :cond_6f
    :goto_6f
    return-void
.end method
