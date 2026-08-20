.class final Lcom/samsung/android/gesture/PocketModeEvent$PocketModeSettingObserver;
.super Landroid/database/ContentObserver;
.source "PocketModeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/PocketModeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PocketModeSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/PocketModeEvent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gesture/PocketModeEvent;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 686
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketModeEvent$PocketModeSettingObserver;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    .line 687
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 688
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 694
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent$PocketModeSettingObserver;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->checkSettingEnable()V

    .line 695
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PocketModeSetting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent$PocketModeSettingObserver;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmIsSettingEnabled(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent$PocketModeSettingObserver;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmIsSettingEnabled(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_33

    .line 698
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent$PocketModeSettingObserver;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->checkSensorType()V

    .line 700
    :cond_33
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent$PocketModeSettingObserver;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->checkRegisterProximitySensor()V

    .line 701
    return-void
.end method
