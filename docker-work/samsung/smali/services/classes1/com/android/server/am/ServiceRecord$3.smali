.class public Lcom/android/server/am/ServiceRecord$3;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ServiceRecord;->cancelNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field public final synthetic val$appPid:I

.field public final synthetic val$appUid:I

.field public final synthetic val$localForegroundId:I

.field public final synthetic val$localPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;III)V
    .registers 6

    .line 1142
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$3;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$3;->val$localPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ServiceRecord$3;->val$appUid:I

    iput p4, p0, Lcom/android/server/am/ServiceRecord$3;->val$appPid:I

    iput p5, p0, Lcom/android/server/am/ServiceRecord$3;->val$localForegroundId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1144
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/notification/NotificationManagerInternal;

    if-nez v1, :cond_c

    return-void

    .line 1150
    :cond_c
    :try_start_c
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord$3;->val$localPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/am/ServiceRecord$3;->val$appUid:I

    iget v5, p0, Lcom/android/server/am/ServiceRecord$3;->val$appPid:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/am/ServiceRecord$3;->val$localForegroundId:I

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$3;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v8, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    move-object v2, v3

    invoke-interface/range {v1 .. v8}, Lcom/android/server/notification/NotificationManagerInternal;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_1d} :catch_1e

    goto :goto_26

    :catch_1e
    move-exception v0

    const-string v1, "ActivityManager"

    const-string v2, "Error canceling notification for service"

    .line 1153
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1155
    :goto_26
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$3;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget p0, p0, Lcom/android/server/am/ServiceRecord$3;->val$localForegroundId:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, p0, v3}, Lcom/android/server/am/ServiceRecord;->-$$Nest$msignalForegroundServiceNotification(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;IIZ)V

    return-void
.end method
