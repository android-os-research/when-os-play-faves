.class public Lcom/android/server/MasterClearReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MasterClearReceiver$WipeDataTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MasterClear"


# instance fields
.field public extraCmd:Ljava/lang/String;

.field public mWipeEsims:Z

.field public mWipeExternalStorage:Z

.field public requestedTimeArg:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$IyRXnBO1wCkHURmiT3KqI2gVh9Q(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Boolean;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MasterClearReceiver;->lambda$onReceive$0(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pKGttKR4aFJfGsJkKyAUXXdaYpw(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/MasterClearReceiver;->lambda$getWorkProfileDeletedTitle$1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetextraCmd(Lcom/android/server/MasterClearReceiver;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWipeExternalStorage(Lcom/android/server/MasterClearReceiver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveVZWResetDate(Lcom/android/server/MasterClearReceiver;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/MasterClearReceiver;->removeVZWResetDate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smdeleteDir(Ljava/io/File;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/MasterClearReceiver;->deleteDir(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/android/server/MasterClearReceiver;->requestedTimeArg:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    return-void
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@[MasterClearReceiver] Remove File : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MasterClear"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 392
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v1, :cond_32

    aget-object v3, v0, v2

    .line 393
    invoke-static {v3}, Lcom/android/server/MasterClearReceiver;->deleteDir(Ljava/io/File;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 396
    :cond_32
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$getWorkProfileDeletedTitle$1(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const v0, 0x1040f86

    .line 317
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Boolean;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/MasterClearReceiver;->wipeUser(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCurrentForegroundUserId()I
    .registers 3

    .line 322
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    const-string v0, "MasterClear"

    const-string v1, "Can\'t get current user"

    .line 324
    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, -0x2710

    return p0
.end method

.method public final getWorkProfileDeletedTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 315
    const-class p0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 316
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p0

    new-instance v0, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-string p1, "Core.WORK_PROFILE_DELETED_TITLE"

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@[MasterClearReceiver] onReceive: intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MasterClear"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "from"

    .line 70
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "google.com"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string p0, "Ignoring master clear request -- not from trusted server."

    .line 71
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 75
    :cond_37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "The request uses the deprecated Intent#ACTION_MASTER_CLEAR, Intent#ACTION_FACTORY_RESET should be used instead."

    .line 76
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    const-string v0, "android.intent.extra.FORCE_MASTER_CLEAR"

    .line 79
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string v2, "The request uses the deprecated Intent#EXTRA_FORCE_MASTER_CLEAR, Intent#EXTRA_FORCE_FACTORY_RESET should be used instead."

    .line 80
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    const v2, 0x104034b

    .line 85
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.FACTORY_RESET"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 87
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_90

    .line 88
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Re-directing intent to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 90
    sget-object p0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_90
    const-string/jumbo v2, "shutdown"

    const/4 v3, 0x0

    .line 94
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    const-string v2, "android.intent.extra.REASON"

    .line 95
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    .line 96
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    const-string v2, "com.android.internal.intent.extra.WIPE_ESIMS"

    .line 97
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    if-nez v8, :cond_b6

    const-string p0, "!@[MasterClearReceiver] onReceive: Ignoring FACTORY_RESET request -- reason cannot be null."

    .line 101
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_b6
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_c8

    const-string v0, "android.intent.extra.FORCE_FACTORY_RESET"

    .line 107
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c6

    goto :goto_c8

    :cond_c6
    move v11, v3

    goto :goto_c9

    :cond_c8
    :goto_c8
    move v11, v2

    .line 110
    :goto_c9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@[MasterClearReceiver] onReceive: shutdown: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@[MasterClearReceiver] onReceive: reason: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@[MasterClearReceiver] onReceive: mWipeExternalStorage: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@[MasterClearReceiver] onReceive: mWipeEsims: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@[MasterClearReceiver] onReceive: forceWipe: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EXTRA_COMMAND"

    .line 118
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@[MasterClearReceiver] onReceive: extraCmd is ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    if-nez v0, :cond_15d

    const-string v0, "!@[MasterClearReceiver] onReceive: extraCmd is null"

    .line 121
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15d
    const-string v0, "com.android.internal.intent.extra.FDR_REQUEST_TIME"

    .line 126
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MasterClearReceiver;->requestedTimeArg:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@[MasterClearReceiver] onReceive: requestedTimeArg is ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/MasterClearReceiver;->requestedTimeArg:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver;->requestedTimeArg:Ljava/lang/String;

    if-nez v0, :cond_1ab

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 130
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy/MM/dd HH:mm:ss.SSS"

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 131
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requested_time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MasterClearReceiver;->requestedTimeArg:Ljava/lang/String;

    .line 134
    :cond_1ab
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver;->requestedTimeArg:Ljava/lang/String;

    if-eqz v0, :cond_1e9

    .line 135
    iget-object v5, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    if-eqz v5, :cond_1ce

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n--"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/MasterClearReceiver;->requestedTimeArg:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    goto :goto_1d0

    .line 138
    :cond_1ce
    iput-object v0, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    .line 140
    :goto_1d0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@[MasterClearReceiver] onReceive: requested time is added to extraCmd, extraCmd is ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1e9
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    if-eqz v0, :cond_221

    .line 146
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v4

    if-nez v4, :cond_221

    new-array p2, v2, [Ljava/lang/Object;

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p2, v3

    const-string v4, "ACTION_FACTORY_RESET received on a non-system user %d, WIPING THE USER!!"

    .line 147
    invoke-static {v1, v4, p2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    new-instance p2, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1, v0, v8}, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_220

    new-array p0, v2, [Ljava/lang/Object;

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    const-string p1, "Failed to wipe user %d"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_220
    return-void

    :cond_221
    const-string v0, "!@[MasterClearReceiver] onReceive: !!! FACTORY RESET !!!"

    .line 180
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Lcom/android/server/MasterClearReceiver$1;

    const-string v6, "Reboot"

    move-object v4, v0

    move-object v5, p0

    move-object v7, p2

    move-object v9, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/MasterClearReceiver$1;-><init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;ZZ)V

    .line 264
    iget-boolean p2, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    if-eqz p2, :cond_245

    const-string p2, "Wiping external storage on async task"

    .line 266
    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance p2, Lcom/android/server/MasterClearReceiver$WipeDataTask;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/MasterClearReceiver$WipeDataTask;-><init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Ljava/lang/Thread;)V

    new-array p0, v3, [Ljava/lang/Void;

    invoke-virtual {p2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_260

    .line 269
    :cond_245
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "NOT wiping external storage; starting thread "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_260
    return-void
.end method

.method public final removeVZWResetDate()V
    .registers 3

    const-string p0, "/efs/sec_efs/LastResetDate.txt"

    .line 377
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1c

    const-string p0, "MasterClear"

    const-string v1, "!@[MasterClearReceiver] removeVZWResetDate: Try to delete VZW Reset Date file"

    .line 379
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception p0

    .line 383
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public final sendWipeProfileNotification(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 302
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x108008a

    .line 304
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/server/MasterClearReceiver;->getWorkProfileDeletedTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 306
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    const v0, 0x106001c

    .line 307
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 308
    invoke-virtual {v0, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 309
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 310
    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const/16 p2, 0x3e9

    invoke-virtual {p1, p2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public setSalesCodeChanged()V
    .registers 3

    const-string p0, "MasterClear"

    .line 401
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v1, "/efs/imei/salesCodeChanged"

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const-string v0, "!@[MasterClearReceiver] salesCodeChanged flag file created"

    .line 404
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11} :catch_12

    goto :goto_1b

    :catch_12
    move-exception v0

    const-string v1, "!@[MasterClearReceiver] can not create salesCodeChanged"

    .line 406
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1b
    return-void
.end method

.method public final wipeUser(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 11

    const-string v0, "Can\'t switch from current user %d, user will get removed when it is stopped."

    .line 275
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 277
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    .line 276
    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->removeUserWhenPossible(Landroid/os/UserHandle;Z)I

    move-result v2

    .line 278
    invoke-static {v2}, Landroid/os/UserManager;->isRemoveResultSuccessful(I)Z

    move-result v2

    const-string v4, "MasterClear"

    const/4 v5, 0x1

    if-nez v2, :cond_2a

    new-array p0, v5, [Ljava/lang/Object;

    .line 279
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    const-string p1, "Can\'t remove user %d"

    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 282
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/MasterClearReceiver;->getCurrentForegroundUserId()I

    move-result v2

    if-ne v2, p2, :cond_51

    .line 284
    :try_start_30
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->switchUser(I)Z

    move-result v2

    if-nez v2, :cond_51

    new-array v2, v5, [Ljava/lang/Object;

    .line 286
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    .line 285
    invoke-static {v4, v0, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_45} :catch_46

    goto :goto_51

    :catch_46
    new-array v2, v5, [Ljava/lang/Object;

    .line 291
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    .line 290
    invoke-static {v4, v0, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    :cond_51
    :goto_51
    invoke-virtual {v1, p2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p2

    if-eqz p2, :cond_5a

    .line 295
    invoke-virtual {p0, p1, p3}, Lcom/android/server/MasterClearReceiver;->sendWipeProfileNotification(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5a
    return v5
.end method
