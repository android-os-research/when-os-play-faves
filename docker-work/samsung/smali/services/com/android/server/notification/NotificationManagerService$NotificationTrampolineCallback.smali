.class public Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/wm/BackgroundActivityStartCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationTrampolineCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 14060
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public final blockTrampoline(I)Z
    .registers 4

    .line 14083
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmRoleObserver(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmRoleObserver(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->isUidExemptFromTrampolineRestrictions(I)Z

    move-result p0

    if-eqz p0, :cond_1c

    const-wide/32 v0, 0xd933952

    .line 14084
    invoke-static {v0, v1, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    return p0

    :cond_1c
    const-wide/32 v0, 0x9fe8a20

    .line 14087
    invoke-static {v0, v1, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    return p0
.end method

.method public canCloseSystemDialogs(Ljava/util/Collection;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/os/IBinder;",
            ">;I)Z"
        }
    .end annotation

    .line 14095
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetALLOWLIST_TOKEN()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    const-wide/32 p0, 0x9fe8a20

    .line 14096
    invoke-static {p0, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public isActivityStartAllowed(Ljava/util/Collection;ILjava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/os/IBinder;",
            ">;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 14064
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 14065
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 14066
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetALLOWLIST_TOKEN()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_d

    return v1

    .line 14071
    :cond_20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Indirect notification activity start (trampoline) from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14073
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback;->blockTrampoline(I)Z

    move-result p0

    const-string p2, "NotificationService"

    if-eqz p0, :cond_4f

    .line 14074
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " blocked"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 14077
    :cond_4f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", this should be avoided for performance reasons"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
