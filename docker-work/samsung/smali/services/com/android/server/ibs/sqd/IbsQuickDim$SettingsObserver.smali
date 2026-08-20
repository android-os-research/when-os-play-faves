.class public final Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "IbsQuickDim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/sqd/IbsQuickDim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sqd/IbsQuickDim;Landroid/os/Handler;)V
    .registers 3

    .line 520
    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 521
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8

    .line 526
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmResolver(Lcom/android/server/ibs/sqd/IbsQuickDim;)Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "screen_off_timeout"

    const v1, 0xea60

    const/4 v2, -0x2

    invoke-static {p2, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fputmScreenOffTimeoutSetting(Lcom/android/server/ibs/sqd/IbsQuickDim;J)V

    .line 529
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmResolver(Lcom/android/server/ibs/sqd/IbsQuickDim;)Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "intelligent_sleep_mode"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_28

    move p2, v0

    goto :goto_29

    :cond_28
    move p2, v1

    :goto_29
    invoke-static {p1, p2}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fputmSmartStayEnabledSetting(Lcom/android/server/ibs/sqd/IbsQuickDim;Z)V

    .line 533
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmScreenOffTimeoutSetting(Lcom/android/server/ibs/sqd/IbsQuickDim;)J

    move-result-wide p1

    const-wide/32 v3, 0xea60

    cmp-long p1, p1, v3

    if-ltz p1, :cond_6b

    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmSmartStayEnabledSetting(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z

    move-result p1

    if-eqz p1, :cond_42

    goto :goto_6b

    .line 538
    :cond_42
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmQuickdimEnable(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z

    move-result p1

    if-nez p1, :cond_80

    .line 539
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmScreenOffTimeoutSetting(Lcom/android/server/ibs/sqd/IbsQuickDim;)J

    move-result-wide p1

    cmp-long p1, p1, v3

    if-ltz p1, :cond_80

    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmSmartStayEnabledSetting(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z

    move-result p1

    if-nez p1, :cond_80

    .line 540
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1, v0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fputmQuickdimEnable(Lcom/android/server/ibs/sqd/IbsQuickDim;Z)V

    .line 541
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmQkDimHandler(Lcom/android/server/ibs/sqd/IbsQuickDim;)Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_80

    .line 534
    :cond_6b
    :goto_6b
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fputmQuickDimMode(Lcom/android/server/ibs/sqd/IbsQuickDim;I)V

    .line 535
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmQkDimHandler(Lcom/android/server/ibs/sqd/IbsQuickDim;)Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 536
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1, v1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fputmQuickdimEnable(Lcom/android/server/ibs/sqd/IbsQuickDim;Z)V

    .line 546
    :cond_80
    :goto_80
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmQuickDimMode(Lcom/android/server/ibs/sqd/IbsQuickDim;)I

    move-result p1

    if-eq p1, v0, :cond_97

    .line 547
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmResolver(Lcom/android/server/ibs/sqd/IbsQuickDim;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "screen_brightness"

    invoke-static {p1, p2, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBrightness:I

    :cond_97
    return-void
.end method
