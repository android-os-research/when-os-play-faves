.class public final Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SemDisplaySolutionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final HIGH_BRIGHTNESS_MODE_PMS_ENTER_URI:Landroid/net/Uri;

.field public final SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field public final SCREEN_EXTRA_BRIGHTNESS_URI:Landroid/net/Uri;

.field public final SCREEN_MODE_AUTOMATIC_SETTING_URI:Landroid/net/Uri;

.field public resolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 302
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    .line 303
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 295
    invoke-static {p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string p1, "high_brightness_mode_pms_enter"

    .line 297
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->HIGH_BRIGHTNESS_MODE_PMS_ENTER_URI:Landroid/net/Uri;

    const-string/jumbo p1, "screen_mode_automatic_setting"

    .line 298
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_MODE_AUTOMATIC_SETTING_URI:Landroid/net/Uri;

    const-string/jumbo p1, "screen_extra_brightness"

    .line 299
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_EXTRA_BRIGHTNESS_URI:Landroid/net/Uri;

    const-string/jumbo p1, "screen_brightness_mode"

    .line 300
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    .line 307
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$msetting_is_changed(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)V

    .line 309
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_EXTRA_BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "SemDisplaySolutionManagerService"

    if-nez p1, :cond_18

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 310
    :cond_18
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string v2, "SEC_FLOATING_FEATURE_LCD_SUPPORT_EXTRA_BRIGHTNESS"

    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 311
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoBrightnessModeEnabled : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetmAutoBrightnessModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mExtraBrightnessModeEnabled : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetmExtraBrightnessModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetmAutoBrightnessModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z

    move-result p1

    if-nez p1, :cond_64

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetmExtraBrightnessModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z

    move-result p1

    if-eqz p1, :cond_64

    .line 313
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    const-string v2, "extra_brightness_on"

    invoke-virtual {p1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    goto :goto_6b

    .line 315
    :cond_64
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    const-string v2, "extra_brightness_off"

    invoke-virtual {p1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 320
    :cond_6b
    :goto_6b
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_MODE_AUTOMATIC_SETTING_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7b

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->HIGH_BRIGHTNESS_MODE_PMS_ENTER_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_105

    .line 321
    :cond_7b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mHighBrightnessModeEnabled : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetmHighBrightnessModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , mAdaptiveScreenModeEnabled : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetmAdaptiveScreenModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetmHighBrightnessModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z

    move-result p1

    if-nez p1, :cond_dd

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetmAdaptiveScreenModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z

    move-result p1

    if-nez p1, :cond_dd

    .line 323
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetIRC_MODE_NODE(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$smsysfsWrite(Ljava/lang/String;I)Z

    .line 324
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetIRC_MODE_SUB_NODE(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_d7

    .line 325
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetIRC_MODE_SUB_NODE(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$smsysfsWrite(Ljava/lang/String;I)Z

    :cond_d7
    const-string p0, "IRC Mode : flat_gamma_mode"

    .line 326
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_105

    .line 328
    :cond_dd
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetIRC_MODE_NODE(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$smsysfsWrite(Ljava/lang/String;I)Z

    .line 329
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetIRC_MODE_SUB_NODE(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_100

    .line 330
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetIRC_MODE_SUB_NODE(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$smsysfsWrite(Ljava/lang/String;I)Z

    :cond_100
    const-string p0, "IRC Mode : moderato_mode"

    .line 331
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_105
    :goto_105
    return-void
.end method
