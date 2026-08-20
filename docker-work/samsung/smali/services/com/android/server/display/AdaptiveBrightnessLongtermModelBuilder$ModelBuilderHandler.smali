.class public final Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;
.super Landroid/os/Handler;
.source "AdaptiveBrightnessLongtermModelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ModelBuilderHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Landroid/os/Looper;)V
    .registers 4

    .line 1368
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1369
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15

    .line 1372
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_a6

    :pswitch_7
    goto/16 :goto_a4

    .line 1412
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-static {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$mhandleBrightnessBnrPackageCleared(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    goto/16 :goto_a4

    .line 1409
    :pswitch_10
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-static {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$mhandleShortTermModelValid(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    goto/16 :goto_a4

    .line 1405
    :pswitch_17
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 1406
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-static {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$mhandleAmbientLuxChanged(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;F)V

    goto/16 :goto_a4

    .line 1394
    :pswitch_24
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/display/BrightnessConfiguration;

    invoke-static {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$fputmBrightnessConfiguration(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Landroid/hardware/display/BrightnessConfiguration;)V

    .line 1395
    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-static {p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$fgetmBrightnessConfiguration(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-static {p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$fgetmBrightnessConfiguration(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p1

    .line 1397
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->shouldCollectColorSamples()Z

    move-result p1

    if-eqz p1, :cond_42

    move v1, v2

    :cond_42
    if-eqz v1, :cond_52

    .line 1398
    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-static {p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$fgetmColorSamplingEnabled(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Z

    move-result p1

    if-nez p1, :cond_52

    .line 1399
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-static {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$menableColorSampling(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    goto :goto_a4

    :cond_52
    if-nez v1, :cond_a4

    .line 1400
    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-static {p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$fgetmColorSamplingEnabled(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 1401
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-static {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$mdisableColorSampling(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    goto :goto_a4

    .line 1386
    :pswitch_62
    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-static {p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$mstartAdaptiveBrightnessStatsTracker(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    .line 1387
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-static {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$menableColorSampling(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    goto :goto_a4

    .line 1390
    :pswitch_6d
    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-static {p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$mstopAdaptiveBrightnessStatsTracker(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    .line 1391
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-static {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$mdisableColorSampling(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    goto :goto_a4

    .line 1377
    :pswitch_78
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;

    .line 1378
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_82

    move v5, v2

    goto :goto_83

    :cond_82
    move v5, v1

    .line 1379
    :goto_83
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget v4, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->brightness:F

    iget v6, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->powerBrightnessFactor:F

    iget-boolean v7, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->isUserSetBrightness:Z

    iget-boolean v8, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->isDefaultBrightnessConfig:Z

    iget-wide v9, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->timestamp:J

    iget-object v11, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->uniqueDisplayId:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->brightnessSpline:Landroid/util/Spline;

    invoke-static/range {v3 .. v12}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$mhandleBrightnessChanged(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;FZFZZJLjava/lang/String;Landroid/util/Spline;)V

    goto :goto_a4

    .line 1374
    :pswitch_97
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$mbackgroundStart(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;F)V

    :cond_a4
    :goto_a4
    return-void

    nop

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_97
        :pswitch_78
        :pswitch_6d
        :pswitch_62
        :pswitch_24
        :pswitch_17
        :pswitch_7
        :pswitch_10
        :pswitch_9
    .end packed-switch
.end method
