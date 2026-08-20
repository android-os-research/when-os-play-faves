.class public Lcom/samsung/android/share/SemShareLogging;
.super Ljava/lang/Object;
.source "SemShareLogging.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "SemShareLogging"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIntent:Landroid/content/Intent;

.field private blacklist mIsSupportDMA:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/share/SemShareLogging;->mIsSupportDMA:Z

    .line 27
    iput-object p1, p0, Lcom/samsung/android/share/SemShareLogging;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/samsung/android/share/SemShareLogging;->mIntent:Landroid/content/Intent;

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareLogging;->checkDMASupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/share/SemShareLogging;->mIsSupportDMA:Z

    .line 31
    return-void
.end method

.method private blacklist checkDMASupport()Z
    .registers 5

    .line 57
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/share/SemShareLogging;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 58
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_16

    const v3, 0x202fbf00

    if-lt v2, v3, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0

    .line 59
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_16
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SemShareLogging"

    const-string v3, "isSupportDMALogging: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private blacklist checkSurveyCondition(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "feature"    # Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2a

    .line 43
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_2a

    .line 46
    :cond_16
    const-string v1, "RVOA"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 47
    const-string v1, "RVAP"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_29

    .line 51
    :cond_27
    const/4 v1, 0x0

    return v1

    .line 48
    :cond_29
    :goto_29
    return v2

    .line 44
    :cond_2a
    :goto_2a
    return v2
.end method


# virtual methods
.method public blacklist insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/samsung/android/share/SemShareLogging;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/share/SemShareLogging;->checkSurveyCondition(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 70
    iget-object v0, p0, Lcom/samsung/android/share/SemShareLogging;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7d

    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    .local v0, "broadcastIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareLogging;->isSupportDMA()Z

    move-result v1

    const-string v2, "extra"

    const-string v3, "feature"

    if-eqz v1, :cond_54

    .line 74
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "tracking_id"

    const-string v5, "4G7-399-565156"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    if-eqz p2, :cond_36

    .line 78
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_36
    const-string/jumbo v2, "type"

    const-string v3, "ev"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "pkg_name"

    const-string/jumbo v3, "sharevia"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 85
    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    .end local v1    # "bundle":Landroid/os/Bundle;
    goto :goto_77

    .line 87
    :cond_54
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 88
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "app_id"

    const-string v5, "com.android.internal.app.resolveractivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    if-eqz p2, :cond_68

    .line 91
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_68
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_77
    iget-object v1, p0, Lcom/samsung/android/share/SemShareLogging;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    goto :goto_84

    .line 101
    :cond_7d
    const-string v0, "SemShareLogging"

    const-string v1, "insertLog : no permission of survey"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_84
    :goto_84
    return-void
.end method

.method public blacklist insertLogWithDimension(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 7
    .param p1, "feature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p2, "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/share/SemShareLogging;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/share/SemShareLogging;->checkSurveyCondition(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 108
    iget-object v0, p0, Lcom/samsung/android/share/SemShareLogging;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_59

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, "broadcastIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareLogging;->isSupportDMA()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 112
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "tracking_id"

    const-string v3, "4G7-399-565156"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    if-eqz p2, :cond_36

    .line 116
    const-string v2, "dimension"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 118
    :cond_36
    const-string/jumbo v2, "type"

    const-string v3, "ev"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v2, "pkg_name"

    const-string/jumbo v3, "sharevia"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 123
    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_53
    iget-object v1, p0, Lcom/samsung/android/share/SemShareLogging;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 127
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    goto :goto_60

    .line 128
    :cond_59
    const-string v0, "SemShareLogging"

    const-string v1, "insertLog : no permission of survey"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_60
    :goto_60
    return-void
.end method

.method public blacklist isSupportDMA()Z
    .registers 2

    .line 37
    iget-boolean v0, p0, Lcom/samsung/android/share/SemShareLogging;->mIsSupportDMA:Z

    return v0
.end method
