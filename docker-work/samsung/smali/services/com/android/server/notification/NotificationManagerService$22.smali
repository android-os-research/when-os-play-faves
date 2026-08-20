.class public Lcom/android/server/notification/NotificationManagerService$22;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 14040
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$22;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Ljava/lang/String;)V
    .registers 4

    .line 14043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStart(), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotificationService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14044
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$22;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fputmGoodCatchViToastOn(Lcom/android/server/notification/NotificationManagerService;Z)V

    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .registers 4

    .line 14048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStop(),"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotificationService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14049
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$22;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fputmGoodCatchViToastOn(Lcom/android/server/notification/NotificationManagerService;Z)V

    return-void
.end method
