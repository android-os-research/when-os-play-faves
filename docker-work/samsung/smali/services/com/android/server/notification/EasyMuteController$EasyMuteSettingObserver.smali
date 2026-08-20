.class public Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;
.super Landroid/database/ContentObserver;
.source "EasyMuteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/EasyMuteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EasyMuteSettingObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/EasyMuteController;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/EasyMuteController;Landroid/os/Handler;)V
    .registers 3

    .line 208
    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->this$0:Lcom/android/server/notification/EasyMuteController;

    .line 209
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 214
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->update()V

    return-void
.end method

.method public update()V
    .registers 7

    .line 219
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v0}, Lcom/android/server/notification/EasyMuteController;->-$$Nest$fgetmContext(Lcom/android/server/notification/EasyMuteController;)Landroid/content/Context;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "master_motion"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    if-eqz v0, :cond_2f

    .line 223
    iget-object v4, p0, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v4}, Lcom/android/server/notification/EasyMuteController;->-$$Nest$fgetmContext(Lcom/android/server/notification/EasyMuteController;)Landroid/content/Context;

    move-result-object v4

    .line 224
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "motion_overturn"

    .line 223
    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_2f

    move v2, v1

    .line 226
    :cond_2f
    iget-object p0, p0, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {p0, v0, v2}, Lcom/android/server/notification/EasyMuteController;->-$$Nest$msetEasyMuteEnabled(Lcom/android/server/notification/EasyMuteController;ZZ)V

    return-void
.end method
