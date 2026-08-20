.class public final Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SemMdnieManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/SemMdnieManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final AOD_SHOW_STATE_URI:Landroid/net/Uri;

.field public final NIGHT_DIM_URI:Landroid/net/Uri;

.field public resolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V
    .registers 3

    .line 388
    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 389
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 383
    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string p1, "blue_light_filter_night_dim"

    .line 385
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->NIGHT_DIM_URI:Landroid/net/Uri;

    const-string p1, "aod_show_state"

    .line 386
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->AOD_SHOW_STATE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 7

    .line 394
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "aod_show_state"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    move v2, v1

    :cond_10
    invoke-static {p1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fputmAlwaysOnDisplayEnabled(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)V

    .line 395
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->AOD_SHOW_STATE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "SemMdnieManagerService"

    if-eqz p1, :cond_93

    .line 396
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AOD_SHOW_STATE_SETTINGS onChange. mAlwaysOnDisplayEnabled : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmAlwaysOnDisplayEnabled(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , mDisplayOn : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmDisplayOn(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , mDisplayState : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmDisplayState(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmAlwaysOnDisplayEnabled(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 398
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmNightMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result p2

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmNightModeIndex(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result p0

    invoke-static {p1, p2, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$msetNightDimOffMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;ZI)Z

    goto :goto_b5

    .line 400
    :cond_6b
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmDisplayOn(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result p1

    if-eqz p1, :cond_83

    .line 401
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmNightMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result p2

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmNightModeIndex(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightMode(ZI)Z

    goto :goto_b5

    .line 403
    :cond_83
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmNightMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result p2

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmNightModeIndex(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result p0

    invoke-static {p1, p2, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$msetNightDimOffMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;ZI)Z

    goto :goto_b5

    .line 406
    :cond_93
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->NIGHT_DIM_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b0

    const-string p1, "BLUE_LIGHT_FILTER_NIGHT_DIM onChange"

    .line 407
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmNightMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result p2

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmNightModeIndex(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightMode(ZI)Z

    goto :goto_b5

    .line 410
    :cond_b0
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$msetting_is_changed(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V

    :goto_b5
    return-void
.end method
