.class public Lcom/android/server/chimera/ChimeraRecentAppManager$1;
.super Ljava/lang/Object;
.source "ChimeraRecentAppManager.java"

# interfaces
.implements Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/ChimeraRecentAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final RESOURCE_USAGE_CHECK_INTERVAL:I

.field public final synthetic this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/ChimeraRecentAppManager;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x3e8

    .line 48
    iput p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$1;->RESOURCE_USAGE_CHECK_INTERVAL:I

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V
    .registers 13

    if-eqz p3, :cond_7b

    if-nez p6, :cond_7b

    .line 53
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    invoke-static {p1}, Lcom/android/server/chimera/ChimeraRecentAppManager;->-$$Nest$fgetmSettingRepository(Lcom/android/server/chimera/ChimeraRecentAppManager;)Lcom/android/server/chimera/SettingRepository;

    move-result-object p1

    .line 55
    invoke-interface {p1}, Lcom/android/server/chimera/SettingRepository;->isDynamicTargetFreeEnabled()Z

    move-result p1

    if-eqz p1, :cond_7b

    iget-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    invoke-static {p1}, Lcom/android/server/chimera/ChimeraRecentAppManager;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraRecentAppManager;)Lcom/android/server/chimera/SystemRepository;

    move-result-object p1

    const/4 p3, 0x0

    aget-object p3, p5, p3

    .line 56
    invoke-interface {p1, p3, p4}, Lcom/android/server/chimera/SystemRepository;->hasPkgIcon(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 57
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    invoke-static {p1}, Lcom/android/server/chimera/ChimeraRecentAppManager;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraRecentAppManager;)Lcom/android/server/chimera/SystemRepository;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    invoke-static {p3}, Lcom/android/server/chimera/ChimeraRecentAppManager;->-$$Nest$fgetmHandler(Lcom/android/server/chimera/ChimeraRecentAppManager;)Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;

    move-result-object p3

    const/4 p4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p1, p3, p4, p5}, Lcom/android/server/chimera/SystemRepository;->sendMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 59
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    invoke-static {p1, p2}, Lcom/android/server/chimera/ChimeraRecentAppManager;->-$$Nest$misRecentAppExist(Lcom/android/server/chimera/ChimeraRecentAppManager;I)Z

    move-result p1

    if-eqz p1, :cond_65

    iget-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    invoke-static {p1}, Lcom/android/server/chimera/ChimeraRecentAppManager;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraRecentAppManager;)Lcom/android/server/chimera/SystemRepository;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    invoke-static {p3}, Lcom/android/server/chimera/ChimeraRecentAppManager;->-$$Nest$fgetmHandler(Lcom/android/server/chimera/ChimeraRecentAppManager;)Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x2

    invoke-interface {p1, p3, p5, p4}, Lcom/android/server/chimera/SystemRepository;->hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 60
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    invoke-static {p1}, Lcom/android/server/chimera/ChimeraRecentAppManager;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraRecentAppManager;)Lcom/android/server/chimera/SystemRepository;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    invoke-static {p3}, Lcom/android/server/chimera/ChimeraRecentAppManager;->-$$Nest$fgetmHandler(Lcom/android/server/chimera/ChimeraRecentAppManager;)Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p3, p5, p4}, Lcom/android/server/chimera/SystemRepository;->removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 63
    :cond_65
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    invoke-static {p1}, Lcom/android/server/chimera/ChimeraRecentAppManager;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraRecentAppManager;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    invoke-static {p0}, Lcom/android/server/chimera/ChimeraRecentAppManager;->-$$Nest$fgetmHandler(Lcom/android/server/chimera/ChimeraRecentAppManager;)Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-interface/range {v0 .. v5}, Lcom/android/server/chimera/SystemRepository;->sendMessageDelayed(Landroid/os/Handler;ILjava/lang/Object;J)V

    :cond_7b
    return-void
.end method
