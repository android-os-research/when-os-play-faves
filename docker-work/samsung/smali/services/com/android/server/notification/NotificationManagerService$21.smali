.class public Lcom/android/server/notification/NotificationManagerService$21;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


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
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 14021
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$21;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    .line 14027
    :cond_3
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$21;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v0, "enabled"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/server/notification/NotificationManagerService;->mIsRuneStoneEnabled:Z

    .line 14028
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RuneStone State change mIsRuneStoneEnabled = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$21;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService;->mIsRuneStoneEnabled:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
