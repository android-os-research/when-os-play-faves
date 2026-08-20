.class public Lcom/android/server/display/color/ColorDisplayService$2;
.super Landroid/database/ContentObserver;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/color/ColorDisplayService;->setUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Handler;)V
    .registers 3

    .line 309
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    .line 312
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-nez p2, :cond_7

    const/4 p1, 0x0

    goto :goto_b

    .line 314
    :cond_7
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    :goto_b
    if-eqz p1, :cond_174

    const/4 p2, -0x1

    .line 316
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x6

    sparse-switch v0, :sswitch_data_176

    goto/16 :goto_af

    :sswitch_19
    const-string/jumbo v0, "reduce_bright_colors_activated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto/16 :goto_af

    :cond_24
    const/16 p2, 0xb

    goto/16 :goto_af

    :sswitch_28
    const-string/jumbo v0, "night_display_custom_start_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto/16 :goto_af

    :cond_33
    const/16 p2, 0xa

    goto/16 :goto_af

    :sswitch_37
    const-string v0, "display_color_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    goto/16 :goto_af

    :cond_41
    const/16 p2, 0x9

    goto/16 :goto_af

    :sswitch_45
    const-string/jumbo v0, "reduce_bright_colors_level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    goto/16 :goto_af

    :cond_50
    const/16 p2, 0x8

    goto/16 :goto_af

    :sswitch_54
    const-string v0, "display_white_balance_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5d

    goto :goto_af

    :cond_5d
    const/4 p2, 0x7

    goto :goto_af

    :sswitch_5f
    const-string/jumbo v0, "night_display_activated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_69

    goto :goto_af

    :cond_69
    move p2, v2

    goto :goto_af

    :sswitch_6b
    const-string v0, "accessibility_display_daltonizer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_74

    goto :goto_af

    :cond_74
    const/4 p2, 0x5

    goto :goto_af

    :sswitch_76
    const-string v0, "accessibility_display_inversion_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7f

    goto :goto_af

    :cond_7f
    const/4 p2, 0x4

    goto :goto_af

    :sswitch_81
    const-string v0, "accessibility_display_daltonizer_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8a

    goto :goto_af

    :cond_8a
    const/4 p2, 0x3

    goto :goto_af

    :sswitch_8c
    const-string/jumbo v0, "night_display_color_temperature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_96

    goto :goto_af

    :cond_96
    const/4 p2, 0x2

    goto :goto_af

    :sswitch_98
    const-string/jumbo v0, "night_display_custom_end_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a2

    goto :goto_af

    :cond_a2
    move p2, v1

    goto :goto_af

    :sswitch_a4
    const-string/jumbo v0, "night_display_auto_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ae

    goto :goto_af

    :cond_ae
    const/4 p2, 0x0

    :goto_af
    packed-switch p2, :pswitch_data_1a8

    goto/16 :goto_174

    .line 363
    :pswitch_b4
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1, v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monReduceBrightColorsActivationChanged(Lcom/android/server/display/color/ColorDisplayService;Z)V

    .line 364
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_174

    .line 338
    :pswitch_c2
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 339
    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayCustomStartTimeInternal(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    .line 338
    invoke-static {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monNightDisplayCustomStartTimeChanged(Lcom/android/server/display/color/ColorDisplayService;Ljava/time/LocalTime;)V

    goto/16 :goto_174

    .line 346
    :pswitch_d1
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetColorModeInternal(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monDisplayColorModeChanged(Lcom/android/server/display/color/ColorDisplayService;I)V

    goto/16 :goto_174

    .line 367
    :pswitch_dc
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monReduceBrightColorsStrengthLevelChanged(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 368
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_174

    .line 360
    :pswitch_ea
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    goto/16 :goto_174

    .line 318
    :pswitch_f1
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p1

    .line 319
    invoke-virtual {p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    move-result p1

    .line 320
    iget-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/display/color/TintController;->isActivatedStateNotSet()Z

    move-result p2

    if-nez p2, :cond_113

    iget-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p2

    .line 321
    invoke-virtual {p2}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result p2

    if-eq p2, p1, :cond_174

    .line 322
    :cond_113
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V

    goto :goto_174

    .line 357
    :pswitch_121
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monAccessibilityDaltonizerChanged(Lcom/android/server/display/color/ColorDisplayService;)V

    goto :goto_174

    .line 349
    :pswitch_127
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monAccessibilityInversionChanged(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 350
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monAccessibilityActivated(Lcom/android/server/display/color/ColorDisplayService;)V

    goto :goto_174

    .line 353
    :pswitch_132
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monAccessibilityDaltonizerChanged(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 354
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monAccessibilityActivated(Lcom/android/server/display/color/ColorDisplayService;)V

    goto :goto_174

    .line 326
    :pswitch_13d
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p1

    .line 327
    invoke-virtual {p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    move-result p1

    .line 328
    iget-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperature()I

    move-result p2

    if-eq p2, p1, :cond_174

    .line 330
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p0

    .line 331
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->onColorTemperatureChanged(I)V

    goto :goto_174

    .line 342
    :pswitch_15d
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 343
    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayCustomEndTimeInternal(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    .line 342
    invoke-static {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monNightDisplayCustomEndTimeChanged(Lcom/android/server/display/color/ColorDisplayService;Ljava/time/LocalTime;)V

    goto :goto_174

    .line 335
    :pswitch_16b
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayAutoModeInternal(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monNightDisplayAutoModeChanged(Lcom/android/server/display/color/ColorDisplayService;I)V

    :cond_174
    :goto_174
    return-void

    nop

    :sswitch_data_176
    .sparse-switch
        -0x797bb571 -> :sswitch_a4
        -0x6900ebe5 -> :sswitch_98
        -0x39c8c50c -> :sswitch_8c
        -0x28f198ce -> :sswitch_81
        -0x20db1ad9 -> :sswitch_76
        0x1ccf6530 -> :sswitch_6b
        0x2fb0ca2d -> :sswitch_5f
        0x425e310b -> :sswitch_54
        0x4d7e1cc1 -> :sswitch_45
        0x5d15789c -> :sswitch_37
        0x5e128274 -> :sswitch_28
        0x62be648e -> :sswitch_19
    .end sparse-switch

    :pswitch_data_1a8
    .packed-switch 0x0
        :pswitch_16b
        :pswitch_15d
        :pswitch_13d
        :pswitch_132
        :pswitch_127
        :pswitch_121
        :pswitch_f1
        :pswitch_ea
        :pswitch_dc
        :pswitch_d1
        :pswitch_c2
        :pswitch_b4
    .end packed-switch
.end method
