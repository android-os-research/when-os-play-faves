.class public final Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;
.super Landroid/database/ContentObserver;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingObserver"
.end annotation


# instance fields
.field public final mFontScaleUri:Landroid/net/Uri;

.field public final mFontWeightAdjustmentUri:Landroid/net/Uri;

.field public final mHideErrorDialogsUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 7

    .line 919
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 920
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "font_scale"

    .line 914
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mFontScaleUri:Landroid/net/Uri;

    const-string v1, "hide_error_dialogs"

    .line 915
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mHideErrorDialogsUri:Landroid/net/Uri;

    const-string v2, "font_weight_adjustment"

    .line 916
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mFontWeightAdjustmentUri:Landroid/net/Uri;

    .line 921
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 922
    invoke-virtual {p1, v0, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 923
    invoke-virtual {p1, v1, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 925
    invoke-virtual {p1, v2, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public onChange(ZLjava/util/Collection;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    .line 932
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    .line 933
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mFontScaleUri:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1e

    .line 934
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p2, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mupdateFontScaleIfNeeded(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    goto :goto_4

    .line 935
    :cond_1e
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mHideErrorDialogsUri:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_42

    .line 936
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p3

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 937
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mupdateShouldShowDialogsLocked(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;)V

    .line 938
    monitor-exit p3
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_4

    :catchall_3c
    move-exception p0

    :try_start_3d
    monitor-exit p3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 939
    :cond_42
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mFontWeightAdjustmentUri:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 940
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p2, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mupdateFontWeightAdjustmentIfNeeded(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    goto :goto_4

    :cond_50
    return-void
.end method
