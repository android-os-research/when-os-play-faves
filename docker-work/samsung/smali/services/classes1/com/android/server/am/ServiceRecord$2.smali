.class public Lcom/android/server/am/ServiceRecord$2;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ServiceRecord;->postNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field public final synthetic val$_foregroundNoti:Landroid/app/Notification;

.field public final synthetic val$appPid:I

.field public final synthetic val$appUid:I

.field public final synthetic val$localForegroundId:I

.field public final synthetic val$localPackageName:Ljava/lang/String;

.field public final synthetic val$record:Lcom/android/server/am/ServiceRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;ILandroid/app/Notification;IILcom/android/server/am/ServiceRecord;)V
    .registers 8

    .line 1021
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ServiceRecord$2;->val$appUid:I

    iput-object p4, p0, Lcom/android/server/am/ServiceRecord$2;->val$_foregroundNoti:Landroid/app/Notification;

    iput p5, p0, Lcom/android/server/am/ServiceRecord$2;->val$appPid:I

    iput p6, p0, Lcom/android/server/am/ServiceRecord$2;->val$localForegroundId:I

    iput-object p7, p0, Lcom/android/server/am/ServiceRecord$2;->val$record:Lcom/android/server/am/ServiceRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    move-object/from16 v1, p0

    const-string v2, "ActivityManager"

    .line 1023
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/notification/NotificationManagerInternal;

    if-nez v3, :cond_10

    return-void

    .line 1029
    :cond_10
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/am/ServiceRecord$2;->val$appUid:I

    invoke-interface {v3, v4, v5}, Lcom/android/server/notification/NotificationManagerInternal;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->mFgsHasNotificationPermission:Z

    .line 1031
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$2;->val$_foregroundNoti:Landroid/app/Notification;

    .line 1033
    :try_start_1e
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    const/4 v12, 0x0

    if-nez v4, :cond_fd

    .line 1038
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to start a foreground service ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") with a broken notification (no icon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1045
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1044
    invoke-virtual {v5, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_62

    .line 1047
    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_62} :catch_18a

    .line 1051
    :cond_62
    :try_start_62
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v7, Landroid/os/UserHandle;

    iget-object v8, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v8, v8, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v5, v12, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    .line 1054
    new-instance v6, Landroid/app/Notification$Builder;

    .line 1055
    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1058
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/16 v5, 0x40

    const/4 v7, 0x1

    .line 1061
    invoke-virtual {v6, v5, v7}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 1063
    new-instance v15, Landroid/content/Intent;

    const-string v5, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v15, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "package"

    .line 1065
    iget-object v8, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v5, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1067
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    const/high16 v16, 0xc000000

    const/16 v17, 0x0

    iget v5, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 1069
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v18

    .line 1067
    invoke-static/range {v13 .. v18}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1070
    iget-object v8, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v9, 0x106001c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1073
    iget-object v8, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v9, 0x10401d4

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v4, v10, v12

    .line 1074
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1073
    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1078
    iget-object v8, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v9, 0x10401d3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v12

    .line 1079
    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1078
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1083
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1085
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0
    :try_end_fd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_62 .. :try_end_fd} :catch_fd
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_fd} :catch_18a

    .line 1089
    :catch_fd
    :cond_fd
    :try_start_fd
    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/am/ServiceRecord$2;->val$appUid:I

    .line 1090
    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v6

    .line 1089
    invoke-interface {v3, v4, v5, v6}, Lcom/android/server/notification/NotificationManagerInternal;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v4
    :try_end_109
    .catch Ljava/lang/RuntimeException; {:try_start_fd .. :try_end_109} :catch_18a

    if-nez v4, :cond_146

    const/16 v4, 0x1b

    .line 1093
    :try_start_10d
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1094
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v5, v7, v12, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 1096
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_125
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10d .. :try_end_125} :catch_126
    .catch Ljava/lang/RuntimeException; {:try_start_10d .. :try_end_125} :catch_18a

    goto :goto_127

    :catch_126
    move v5, v4

    :goto_127
    if-ge v5, v4, :cond_12a

    goto :goto_146

    .line 1100
    :cond_12a
    :try_start_12a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid channel for service notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1105
    :cond_146
    :goto_146
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-eqz v4, :cond_16e

    .line 1113
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/am/ServiceRecord$2;->val$appUid:I

    iget v7, v1, Lcom/android/server/am/ServiceRecord$2;->val$appPid:I

    const/4 v8, 0x0

    iget v9, v1, Lcom/android/server/am/ServiceRecord$2;->val$localForegroundId:I

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v11, v4, Lcom/android/server/am/ServiceRecord;->userId:I

    move-object v4, v5

    move-object v10, v0

    invoke-interface/range {v3 .. v11}, Lcom/android/server/notification/NotificationManagerInternal;->enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V

    .line 1117
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object v0, v3, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 1119
    iget-object v0, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v5, v1, Lcom/android/server/am/ServiceRecord$2;->val$localForegroundId:I

    invoke-static {v3, v0, v4, v5, v12}, Lcom/android/server/am/ServiceRecord;->-$$Nest$msignalForegroundServiceNotification(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;IIZ)V

    goto :goto_1a3

    .line 1110
    :cond_16e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid service notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18a
    .catch Ljava/lang/RuntimeException; {:try_start_12a .. :try_end_18a} :catch_18a

    :catch_18a
    move-exception v0

    const-string v3, "Error showing notification for service"

    .line 1123
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1126
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord$2;->val$record:Lcom/android/server/am/ServiceRecord;

    iget v3, v1, Lcom/android/server/am/ServiceRecord$2;->val$appUid:I

    iget v4, v1, Lcom/android/server/am/ServiceRecord$2;->val$appPid:I

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    const/4 v6, 0x3

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->killMisbehavingService(Lcom/android/server/am/ServiceRecord;IILjava/lang/String;I)V

    :goto_1a3
    return-void
.end method
