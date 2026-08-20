.class Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
.super Ljava/lang/Object;
.source "ShareTargetPredictor.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/prediction/ShareTargetPredictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareTarget"
.end annotation


# instance fields
.field public final mAppTarget:Landroid/app/prediction/AppTarget;

.field public final mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

.field public final mEventHistory:Lcom/android/server/people/data/EventHistory;

.field public mScore:F


# direct methods
.method public constructor <init>(Landroid/app/prediction/AppTarget;Lcom/android/server/people/data/EventHistory;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mAppTarget:Landroid/app/prediction/AppTarget;

    .line 230
    iput-object p2, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mEventHistory:Lcom/android/server/people/data/EventHistory;

    .line 231
    iput-object p3, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    const/4 p1, 0x0

    .line 232
    iput p1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mScore:F

    return-void
.end method


# virtual methods
.method public getAppTarget()Landroid/app/prediction/AppTarget;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 238
    iget-object p0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mAppTarget:Landroid/app/prediction/AppTarget;

    return-object p0
.end method

.method public getConversationInfo()Lcom/android/server/people/data/ConversationInfo;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 250
    iget-object p0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    return-object p0
.end method

.method public getEventHistory()Lcom/android/server/people/data/EventHistory;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 244
    iget-object p0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mEventHistory:Lcom/android/server/people/data/EventHistory;

    return-object p0
.end method

.method public getScore()F
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 255
    iget p0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mScore:F

    return p0
.end method

.method public setScore(F)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 260
    iput p1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mScore:F

    return-void
.end method
