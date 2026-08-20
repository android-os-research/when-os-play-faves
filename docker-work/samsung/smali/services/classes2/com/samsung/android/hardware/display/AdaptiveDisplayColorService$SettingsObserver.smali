.class public final Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Landroid/os/Handler;)V
    .registers 3

    .line 410
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 411
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4

    .line 416
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetDEBUG(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 417
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SettingsObserver: onChange: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdaptiveDisplayColorService"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_1e
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$msetting_is_changed(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    return-void
.end method
