.class public Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoSwitchSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;->this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 200
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    :cond_14
    const/16 p1, 0xa

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 201
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 203
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onReceive bt state : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xf

    if-eq p1, p2, :cond_3b

    const/16 p2, 0xc

    if-ne p1, p2, :cond_40

    .line 205
    :cond_3b
    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;->this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    invoke-static {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->-$$Nest$mcheckAutoSwitchEnabled(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V

    :cond_40
    return-void
.end method
