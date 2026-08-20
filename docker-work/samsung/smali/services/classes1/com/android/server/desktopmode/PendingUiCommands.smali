.class public Lcom/android/server/desktopmode/PendingUiCommands;
.super Ljava/lang/Object;
.source "PendingUiCommands.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mUiCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9cwVqhRSDSymVhe_DWqX779HCZI(Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/PendingUiCommands;->lambda$queue$1(Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v7YPMbIIYPgjpuJmnR3sCuWtCwA(ILcom/android/server/desktopmode/PendingUiCommands$UiCommand;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/PendingUiCommands;->lambda$queue$0(ILcom/android/server/desktopmode/PendingUiCommands$UiCommand;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/PendingUiCommands;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    return-void
.end method

.method public static synthetic lambda$queue$0(ILcom/android/server/desktopmode/PendingUiCommands$UiCommand;)Ljava/lang/Boolean;
    .registers 2

    .line 108
    iget p1, p1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->-$$Nest$smhasSameNotificationId(II)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$queue$1(Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;)Ljava/lang/Boolean;
    .registers 2

    .line 116
    invoke-virtual {p1, p0}, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->isRemovableWith(Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clear()V
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public flushCommands()V
    .registers 6

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;

    .line 138
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_31

    sget-object v2, Lcom/android/server/desktopmode/PendingUiCommands;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flushing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_31
    iget-object v1, v1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_b

    .line 141
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/desktopmode/PendingUiCommands;->clear()V

    return-void
.end method

.method public isEmpty()Z
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public queue(IIILjava/lang/Runnable;)V
    .registers 6

    .line 105
    new-instance v0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;-><init>(IIILjava/lang/Runnable;)V

    const/16 p3, 0x384

    if-ne p1, p3, :cond_2f

    .line 107
    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->isNotificationType(I)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 108
    new-instance p1, Lcom/android/server/desktopmode/PendingUiCommands$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/server/desktopmode/PendingUiCommands$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/PendingUiCommands;->removeCommandsIf(Ljava/util/function/Function;)V

    if-eqz p4, :cond_48

    .line 110
    iget-object p0, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 112
    :cond_1f
    iget-object p1, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    if-eqz p4, :cond_48

    .line 113
    iget-object p0, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_2f
    const/16 p3, 0x385

    if-ne p1, p3, :cond_48

    .line 116
    new-instance p1, Lcom/android/server/desktopmode/PendingUiCommands$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/android/server/desktopmode/PendingUiCommands$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;)V

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/PendingUiCommands;->removeCommandsIf(Ljava/util/function/Function;)V

    .line 120
    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->isNotificationType(I)Z

    move-result p1

    if-eqz p1, :cond_48

    if-eqz p4, :cond_48

    .line 121
    iget-object p0, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_48
    :goto_48
    return-void
.end method

.method public final removeCommandsIf(Ljava/util/function/Function;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 127
    iget-object p0, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 128
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;

    .line 129
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 130
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_22
    return-void
.end method
