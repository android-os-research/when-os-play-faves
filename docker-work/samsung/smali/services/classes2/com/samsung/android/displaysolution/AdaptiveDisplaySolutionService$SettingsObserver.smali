.class public final Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AdaptiveDisplaySolutionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field public final BRIGHTNESS_URI:Landroid/net/Uri;

.field public resolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;Landroid/os/Handler;)V
    .registers 3

    .line 175
    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 176
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 170
    invoke-static {p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$fgetmContext(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string/jumbo p1, "screen_brightness"

    .line 172
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    const-string/jumbo p1, "screen_brightness_mode"

    .line 173
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8

    .line 180
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 181
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$mplatform_brightness_value_changed(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V

    .line 184
    :cond_d
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$fgetAUTO_CURRENT_LIMIT_VERSION(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)I

    move-result p1

    const/4 v0, -0x2

    const/4 v1, 0x0

    const-string/jumbo v2, "screen_brightness_mode"

    const/4 v3, 0x3

    if-ne p1, v3, :cond_47

    .line 185
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 186
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    invoke-static {p1, v2, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_39

    .line 187
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$fgetmLastAutoCurrentLimitValue(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)I

    move-result p1

    if-eqz p1, :cond_47

    .line 188
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-static {p1, v3}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$mupdateAdaptiveControlStateInt(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;I)V

    goto :goto_47

    .line 191
    :cond_39
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$fgetmLastAutoCurrentLimitValue(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)I

    move-result p1

    if-eqz p1, :cond_47

    .line 192
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    const/4 v4, 0x1

    invoke-static {p1, v4}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$mupdateAdaptiveControlStateInt(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;I)V

    .line 198
    :cond_47
    :goto_47
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$fgetAUTO_CURRENT_LIMIT_VERSION(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)I

    move-result p1

    const/4 v4, 0x4

    if-ne p1, v4, :cond_6d

    .line 199
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 200
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    invoke-static {p1, v2, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_6d

    .line 201
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$fgetmLastAutoCurrentLimitValue(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)I

    move-result p1

    if-eqz p1, :cond_6d

    .line 202
    iget-object p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-static {p0, v3}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$mupdateAdaptiveControlStateInt(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;I)V

    :cond_6d
    return-void
.end method
