.class public Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask;
.super Landroid/os/AsyncTask;
.source "NotificationReminder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationReminder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateEnablePackageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationReminder;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationReminder;)V
    .registers 2

    .line 406
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationReminder;Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask;-><init>(Lcom/android/server/notification/NotificationReminder;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 406
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3

    const-string p1, "NotificationReminder"

    const-string/jumbo v0, "updateEnablePackageList start"

    .line 409
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {p0}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$mupdateEnablePackageList(Lcom/android/server/notification/NotificationReminder;)V

    const-string/jumbo p0, "updateEnablePackageList finish"

    .line 411
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
