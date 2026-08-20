.class final Lcom/samsung/android/gesture/PocketModeEvent$AutoBrightnessSettingObserver;
.super Landroid/database/ContentObserver;
.source "PocketModeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/PocketModeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoBrightnessSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/PocketModeEvent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gesture/PocketModeEvent;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 731
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketModeEvent$AutoBrightnessSettingObserver;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    .line 732
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 733
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 739
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent$AutoBrightnessSettingObserver;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$mcheckAutoBrightnessSetting(Lcom/samsung/android/gesture/PocketModeEvent;)V

    .line 740
    return-void
.end method
