.class public Lvendor/samsung/frameworks/codecsolution/Logging;
.super Ljava/lang/Object;
.source "Logging.java"


# static fields
.field private static final ACTION_DMA_LOGGING:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field private static final ACTION_GENERAL_MULTI_LOGGING:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

.field private static final ACTION_GENERAL_SINGLE_LOGGING:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field private static final ACTION_STATUS_MULTI_LOGGING:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.REPORT_MULTI_APP_STATUS_SURVEY"

.field private static final ACTION_STATUS_SINGLE_LOGGING:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

.field private static final APP_ID:Ljava/lang/String; = "com.samsung.android.codecsolution"

.field private static final CONTEXT_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static final DMA_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field private static final DMA_SUPPORT_VERSION:I = 0x202fbf00

.field private static final PERMISSION_SURVEY:Ljava/lang/String; = "com.samsung.android.providrs.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

.field private static final SA_TRACKING_ID:Ljava/lang/String; = "4I1-399-549798"

.field private static final TAG:Ljava/lang/String; = "CodecSolution_Logging"

.field static final sEnableSurveyFeature:Ljava/lang/Boolean;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsSupportDMA:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lvendor/samsung/frameworks/codecsolution/Logging;->sEnableSurveyFeature:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/Logging;->mIsSupportDMA:Ljava/lang/Boolean;

    .line 41
    iput-object p1, p0, Lvendor/samsung/frameworks/codecsolution/Logging;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Lvendor/samsung/frameworks/codecsolution/Logging;->checkVersionOfDMA(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/Logging;->mIsSupportDMA:Ljava/lang/Boolean;

    .line 43
    return-void
.end method

.method public static checkVersionOfDMA(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 111
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 112
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v2, "CodecSolution_Logging"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dma pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_2e

    const v3, 0x202fbf00

    if-lt v2, v3, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    return v0

    .line 114
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_2e
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method


# virtual methods
.method public insertContextLog(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v0, "broadcastIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 91
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.samsung.android.codecsolution"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    if-eqz p2, :cond_1d

    .line 94
    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_1d
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-lez v2, :cond_2c

    .line 96
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    :cond_2c
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    :try_start_3b
    iget-object v2, p0, Lvendor/samsung/frameworks/codecsolution/Logging;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_42
    .catch Ljava/lang/IllegalStateException; {:try_start_3b .. :try_end_42} :catch_43

    .line 105
    goto :goto_47

    .line 102
    :catch_43
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 106
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_47
    return-void
.end method

.method public insertDiagmonLog(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 63
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/Logging;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.providrs.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const-string v1, "CodecSolution_Logging"

    if-nez v0, :cond_58

    .line 64
    const-string v0, "permission granted"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 66
    .local v0, "broadcastIntent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "tracking_id"

    const-string v3, "4I1-399-549798"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    if-eqz p2, :cond_2e

    .line 70
    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_2e
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-lez v2, :cond_39

    .line 72
    const-string v2, "value"

    invoke-virtual {v1, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 73
    :cond_39
    const-string v2, "type"

    const-string v3, "ev"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 76
    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    :try_start_4d
    iget-object v2, p0, Lvendor/samsung/frameworks/codecsolution/Logging;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_52
    .catch Ljava/lang/IllegalStateException; {:try_start_4d .. :try_end_52} :catch_53

    .line 82
    goto :goto_57

    .line 79
    :catch_53
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 83
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_57
    goto :goto_5d

    .line 84
    :cond_58
    const-string v0, "no permission"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_5d
    return-void
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .line 46
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lvendor/samsung/frameworks/codecsolution/Logging;->insertLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 47
    return-void
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dma : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/Logging;->mIsSupportDMA:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodecSolution_Logging"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/Logging;->sEnableSurveyFeature:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 52
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/Logging;->mIsSupportDMA:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 53
    const-string v0, "insert diagmon log"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0, p1, p2, p3, p4}, Lvendor/samsung/frameworks/codecsolution/Logging;->insertDiagmonLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_59

    .line 56
    :cond_51
    const-string v0, "insert context log"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0, p1, p2, p3, p4}, Lvendor/samsung/frameworks/codecsolution/Logging;->insertContextLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 60
    :cond_59
    :goto_59
    return-void
.end method
