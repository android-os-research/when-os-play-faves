.class public Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "LegibilityColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/LegibilityColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/LegibilityColor;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/LegibilityColor;)V
    .registers 2

    .line 574
    iput-object p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 575
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public init()V
    .registers 4

    .line 579
    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-static {v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->-$$Nest$fgetmContentResolver(Lcom/samsung/server/wallpaper/LegibilityColor;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .registers 3

    .line 590
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 592
    iget-object p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->-$$Nest$mallowScreenRotate(Lcom/samsung/server/wallpaper/LegibilityColor;I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->setAllowScreenRotateSystem(Z)V

    .line 593
    iget-object p0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/LegibilityColor;->-$$Nest$mallowScreenRotate(Lcom/samsung/server/wallpaper/LegibilityColor;I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/LegibilityColor;->setAllowScreenRotateLock(Z)V

    return-void
.end method
