.class public Lcom/android/server/vr/XrSettings$1;
.super Landroid/database/ContentObserver;
.source "XrSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/XrSettings;-><init>(Landroid/content/Context;Lcom/android/server/vr/XrManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/XrSettings;

.field public final synthetic val$service:Lcom/android/server/vr/XrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/XrSettings;Landroid/os/Handler;Lcom/android/server/vr/XrManagerService;)V
    .registers 4

    .line 39
    iput-object p1, p0, Lcom/android/server/vr/XrSettings$1;->this$0:Lcom/android/server/vr/XrSettings;

    iput-object p3, p0, Lcom/android/server/vr/XrSettings$1;->val$service:Lcom/android/server/vr/XrManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 42
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string p1, "XrSettings"

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vr settings changed uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p1, p0, Lcom/android/server/vr/XrSettings$1;->val$service:Lcom/android/server/vr/XrManagerService;

    iget-object p1, p1, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 45
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/vr/XrSettings$1;->this$0:Lcom/android/server/vr/XrSettings;

    invoke-virtual {p0}, Lcom/android/server/vr/XrSettings;->updateSettingsLocked()V

    .line 46
    monitor-exit p1

    return-void

    :catchall_26
    move-exception p0

    monitor-exit p1
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_26

    throw p0
.end method
