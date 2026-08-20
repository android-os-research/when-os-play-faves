.class public Lcom/android/server/desktopmode/ToastManager;
.super Ljava/lang/Object;
.source "ToastManager.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static volatile sCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public static final sToasts:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sToasts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$KP5eUFrMBk3S6zYlZEN6Q_4AgaE(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/desktopmode/ToastManager;->lambda$showToast$0(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/ToastManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsToasts()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/ToastManager;->sToasts:Ljava/util/List;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/ToastManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/ToastManager;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/desktopmode/ToastManager;->sToasts:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustGravityForCoverUi(Landroid/content/Context;Landroid/widget/Toast;)V
    .registers 5

    .line 65
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-eqz v0, :cond_5

    return-void

    .line 68
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 69
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 72
    :cond_12
    sget-object v0, Lcom/android/server/desktopmode/ToastManager;->sCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-nez v0, :cond_1d

    .line 73
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/desktopmode/ToastManager;->sCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 75
    :cond_1d
    sget-object v0, Lcom/android/server/desktopmode/ToastManager;->sCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 76
    iget-boolean v1, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_47

    iget-boolean v1, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v1, :cond_47

    .line 78
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_47

    const/16 v0, 0x50

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x105010a

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    .line 79
    invoke-virtual {p1, v0, v1, p0}, Landroid/widget/Toast;->setGravity(III)V

    :cond_47
    return-void
.end method

.method public static cancelToasts()V
    .registers 3

    .line 85
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/desktopmode/ToastManager;->TAG:Ljava/lang/String;

    const-string v1, "cancelToasts()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_b
    sget-object v0, Lcom/android/server/desktopmode/ToastManager;->sToasts:Ljava/util/List;

    monitor-enter v0

    .line 87
    :try_start_e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Toast;

    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 90
    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    goto :goto_12

    .line 92
    :cond_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_27

    throw v1
.end method

.method public static dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/ToastManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 98
    sget-object v0, Lcom/android/server/desktopmode/ToastManager;->sToasts:Ljava/util/List;

    monitor-enter v0

    .line 99
    :try_start_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sToasts ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Toast;

    .line 102
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_4a

    .line 104
    :cond_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_25 .. :try_end_5b} :catchall_62

    .line 105
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 106
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_62
    move-exception p0

    .line 104
    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw p0
.end method

.method public static synthetic lambda$showToast$0(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7

    .line 43
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    .line 44
    new-instance v0, Lcom/android/server/desktopmode/ToastManager$1;

    invoke-direct {v0, p2, p1}, Lcom/android/server/desktopmode/ToastManager$1;-><init>(Landroid/widget/Toast;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/Toast;->addCallback(Landroid/widget/Toast$Callback;)V

    .line 54
    sget-object v0, Lcom/android/server/desktopmode/ToastManager;->sToasts:Ljava/util/List;

    monitor-enter v0

    .line 55
    :try_start_f
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_2d

    sget-object v1, Lcom/android/server/desktopmode/ToastManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sToasts added, sToasts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_54

    .line 58
    invoke-static {p0, p2}, Lcom/android/server/desktopmode/ToastManager;->adjustGravityForCoverUi(Landroid/content/Context;Landroid/widget/Toast;)V

    .line 59
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 60
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_53

    sget-object p0, Lcom/android/server/desktopmode/ToastManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Toast.show("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    return-void

    :catchall_54
    move-exception p0

    .line 57
    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public static showToast(Landroid/content/Context;I)V
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 35
    invoke-static {p0, p1, v0}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    if-eqz p1, :cond_15

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_15

    .line 42
    :cond_9
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/desktopmode/ToastManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/desktopmode/ToastManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    :goto_15
    return-void
.end method
