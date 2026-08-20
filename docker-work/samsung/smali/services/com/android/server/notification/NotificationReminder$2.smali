.class public Lcom/android/server/notification/NotificationReminder$2;
.super Ljava/lang/Object;
.source "NotificationReminder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationReminder;->startMigrationIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationReminder;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationReminder;)V
    .registers 2

    .line 218
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$2;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 221
    new-instance v0, Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask;

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$2;->this$0:Lcom/android/server/notification/NotificationReminder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask;-><init>(Lcom/android/server/notification/NotificationReminder;Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask-IA;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 222
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
