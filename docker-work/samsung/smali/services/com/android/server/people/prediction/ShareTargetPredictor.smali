.class public Lcom/android/server/people/prediction/ShareTargetPredictor;
.super Lcom/android/server/people/prediction/AppTargetPredictor;
.source "ShareTargetPredictor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final REMOTE_APP_PREDICTOR_KEY:Ljava/lang/String; = "remote_app_predictor"

.field public static final TAG:Ljava/lang/String; = "ShareTargetPredictor"


# instance fields
.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public final mRemoteAppPredictor:Landroid/app/prediction/AppPredictor;


# direct methods
.method public static synthetic $r8$lambda$XF4nIDP0fnmSvuwZq5GkC1yfvfU(Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->lambda$predictTargets$0(Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ewGrTUEllLOZ4_Iuac1rViJBtSE(Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/people/prediction/ShareTargetPredictor;->lambda$sortTargets$1(Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "ShareTargetPredictor"

    const/4 v1, 0x3

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;Lcom/android/server/people/data/DataManager;ILandroid/content/Context;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/prediction/AppPredictionContext;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;",
            "Lcom/android/server/people/data/DataManager;",
            "I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/people/prediction/AppTargetPredictor;-><init>(Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;Lcom/android/server/people/data/DataManager;I)V

    .line 72
    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo p3, "intent_filter"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/IntentFilter;

    iput-object p2, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo p2, "systemui"

    const-string p3, "dark_launch_remote_prediction_service_enabled"

    const/4 v0, 0x0

    .line 74
    invoke-static {p2, p3, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_40

    .line 77
    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const/4 p3, 0x1

    const-string/jumbo v1, "remote_app_predictor"

    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p5, p2, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p2

    const-class p3, Landroid/app/prediction/AppPredictionManager;

    .line 79
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/prediction/AppPredictionManager;

    .line 80
    invoke-virtual {p2, p1}, Landroid/app/prediction/AppPredictionManager;->createAppPredictionSession(Landroid/app/prediction/AppPredictionContext;)Landroid/app/prediction/AppPredictor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mRemoteAppPredictor:Landroid/app/prediction/AppPredictor;

    goto :goto_43

    :cond_40
    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mRemoteAppPredictor:Landroid/app/prediction/AppPredictor;

    :goto_43
    return-void
.end method

.method public static synthetic lambda$predictTargets$0(Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;)Ljava/lang/Integer;
    .registers 1

    .line 117
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getAppTarget()Landroid/app/prediction/AppTarget;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/prediction/AppTarget;->getRank()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$sortTargets$1(Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;)I
    .registers 2

    .line 142
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    neg-int p0, p0

    return p0
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mRemoteAppPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz p0, :cond_7

    .line 161
    invoke-virtual {p0}, Landroid/app/prediction/AppPredictor;->destroy()V

    :cond_7
    return-void
.end method

.method public final getAppShareTargets(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/prediction/AppTarget;

    .line 200
    invoke-virtual {p0}, Lcom/android/server/people/prediction/AppTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 200
    invoke-virtual {v2, v3, v4}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v2

    .line 202
    new-instance v3, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    const/4 v4, 0x0

    if-nez v2, :cond_30

    move-object v2, v4

    goto :goto_38

    .line 204
    :cond_30
    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/people/data/PackageData;->getClassLevelEventHistory(Ljava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v2

    :goto_38
    invoke-direct {v3, v1, v2, v4}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;-><init>(Landroid/app/prediction/AppTarget;Lcom/android/server/people/data/EventHistory;Lcom/android/server/people/data/ConversationInfo;)V

    .line 202
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_3f
    return-object v0
.end method

.method public final getDirectShareTargets()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-virtual {p0}, Lcom/android/server/people/prediction/AppTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    iget v3, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallingUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/people/data/DataManager;->getShareShortcuts(Landroid/content/IntentFilter;I)Ljava/util/List;

    move-result-object v1

    .line 170
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    .line 171
    invoke-virtual {v2}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    .line 172
    new-instance v4, Landroid/app/prediction/AppTarget$Builder;

    new-instance v5, Landroid/app/prediction/AppTargetId;

    .line 173
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v3}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Landroid/content/pm/ShortcutInfo;)V

    .line 175
    invoke-virtual {v2}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v2

    .line 176
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/prediction/AppTarget$Builder;->setRank(I)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v2

    .line 177
    invoke-virtual {v2}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v2

    .line 178
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v5

    .line 180
    invoke-virtual {p0}, Lcom/android/server/people/prediction/AppTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6d

    .line 185
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-virtual {v4, v3}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v6

    if-eqz v6, :cond_6e

    .line 188
    invoke-virtual {v4, v3}, Lcom/android/server/people/data/PackageData;->getEventHistory(Ljava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v5

    goto :goto_6e

    :cond_6d
    move-object v6, v5

    .line 191
    :cond_6e
    :goto_6e
    new-instance v3, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    invoke-direct {v3, v2, v5, v6}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;-><init>(Landroid/app/prediction/AppTarget;Lcom/android/server/people/data/EventHistory;Lcom/android/server/people/data/ConversationInfo;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_77
    return-object v0
.end method

.method public final getShareEventType(Landroid/content/IntentFilter;)I
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    .line 211
    :goto_9
    invoke-virtual {p0}, Lcom/android/server/people/prediction/AppTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->mimeTypeToShareEventType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public predictTargets()V
    .registers 6

    .line 105
    sget-boolean v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ShareTargetPredictor"

    const-string/jumbo v1, "predictTargets"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_c
    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_18

    .line 109
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/people/prediction/AppTargetPredictor;->updatePredictions(Ljava/util/List;)V

    return-void

    .line 112
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getDirectShareTargets()Ljava/util/List;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getShareEventType(Landroid/content/IntentFilter;)I

    move-result v1

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 113
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/people/prediction/SharesheetModelScorer;->computeScore(Ljava/util/List;IJ)V

    .line 115
    new-instance v1, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda0;-><init>()V

    .line 116
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    new-instance v2, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda1;-><init>()V

    .line 117
    invoke-interface {v1, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    .line 115
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 119
    :goto_48
    invoke-virtual {p0}, Lcom/android/server/people/prediction/AppTargetPredictor;->getPredictionContext()Landroid/app/prediction/AppPredictionContext;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/prediction/AppPredictionContext;->getPredictedTargetCount()I

    move-result v3

    .line 120
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 119
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_6a

    .line 121
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    invoke-virtual {v3}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getAppTarget()Landroid/app/prediction/AppTarget;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 123
    :cond_6a
    invoke-virtual {p0, v1}, Lcom/android/server/people/prediction/AppTargetPredictor;->updatePredictions(Ljava/util/List;)V

    return-void
.end method

.method public reportAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V
    .registers 4

    .line 90
    sget-boolean v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ShareTargetPredictor"

    const-string/jumbo v1, "reportAppTargetEvent"

    .line 91
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_c
    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_19

    .line 94
    invoke-virtual {p0}, Lcom/android/server/people/prediction/AppTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/people/data/DataManager;->reportShareTargetEvent(Landroid/app/prediction/AppTargetEvent;Landroid/content/IntentFilter;)V

    .line 96
    :cond_19
    iget-object p0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mRemoteAppPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz p0, :cond_20

    .line 97
    invoke-virtual {p0, p1}, Landroid/app/prediction/AppPredictor;->notifyAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    :cond_20
    return-void
.end method

.method public sortTargets(Ljava/util/List;Ljava/util/function/Consumer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;)V"
        }
    .end annotation

    .line 130
    sget-boolean v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ShareTargetPredictor"

    const-string/jumbo v1, "sortTargets"

    .line 131
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_c
    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_14

    .line 134
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 137
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getAppShareTargets(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 138
    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getShareEventType(Landroid/content/IntentFilter;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/people/prediction/AppTargetPredictor;->getPredictionContext()Landroid/app/prediction/AppPredictionContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/prediction/AppPredictionContext;->getPredictedTargetCount()I

    move-result v3

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/people/prediction/AppTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v6

    iget v7, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallingUserId:I

    move-object v1, p1

    .line 138
    invoke-static/range {v1 .. v7}, Lcom/android/server/people/prediction/SharesheetModelScorer;->computeScoreForAppShare(Ljava/util/List;IIJLcom/android/server/people/data/DataManager;I)V

    .line 142
    new-instance p0, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 143
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 145
    invoke-virtual {v0}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getAppTarget()Landroid/app/prediction/AppTarget;

    move-result-object v1

    .line 146
    new-instance v2, Landroid/app/prediction/AppTarget$Builder;

    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getId()Landroid/app/prediction/AppTargetId;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 148
    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v1

    .line 149
    invoke-virtual {v0}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_80

    invoke-virtual {v0}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v0

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_81

    :cond_80
    const/4 v0, 0x0

    :goto_81
    invoke-virtual {v1, v0}, Landroid/app/prediction/AppTarget$Builder;->setRank(I)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v0

    .line 146
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 153
    :cond_8d
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
