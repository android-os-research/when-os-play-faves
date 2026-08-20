.class public Lcom/android/server/wm/MultiTaskingController$FindTasksResult;
.super Ljava/lang/Object;
.source "MultiTaskingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiTaskingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FindTasksResult"
.end annotation


# instance fields
.field public cls:Landroid/content/ComponentName;

.field public documentData:Landroid/net/Uri;

.field public intent:Landroid/content/Intent;

.field public isDocument:Z

.field public mTarget:Lcom/android/server/wm/ActivityRecord;

.field public userId:I


# direct methods
.method public static synthetic $r8$lambda$VKp7VD2AFQFAKInhiiv4U_G1WYg(Lcom/android/server/wm/MultiTaskingController$FindTasksResult;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController$FindTasksResult;->lambda$process$0(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$process$0(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 8

    .line 2221
    check-cast p2, Lcom/android/server/wm/Task;

    .line 2222
    iget-object v0, p2, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_7

    return-void

    .line 2226
    :cond_7
    iget v0, p2, Lcom/android/server/wm/Task;->mUserId:I

    iget v1, p0, Lcom/android/server/wm/MultiTaskingController$FindTasksResult;->userId:I

    if-eq v0, v1, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x0

    .line 2232
    invoke-virtual {p2, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_a3

    .line 2234
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_a3

    iget v2, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v3, p0, Lcom/android/server/wm/MultiTaskingController$FindTasksResult;->userId:I

    if-eq v2, v3, :cond_21

    goto/16 :goto_a3

    .line 2237
    :cond_21
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$FindTasksResult;->mTarget:Lcom/android/server/wm/ActivityRecord;

    .line 2238
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v2

    .line 2237
    invoke-static {v1, v2}, Lcom/android/server/wm/ConfigurationContainer;->isCompatibleActivityType(II)Z

    move-result v1

    if-nez v1, :cond_32

    return-void

    .line 2242
    :cond_32
    iget-object v1, p2, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 2243
    iget-object v2, p2, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    if-eqz v1, :cond_44

    .line 2246
    invoke-virtual {v1}, Landroid/content/Intent;->isDocument()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 2248
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_54

    :cond_44
    if-eqz v2, :cond_51

    .line 2249
    invoke-virtual {v2}, Landroid/content/Intent;->isDocument()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 2251
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_54

    :cond_51
    const/4 v1, 0x0

    move v3, v0

    move-object v0, v1

    .line 2257
    :goto_54
    iget-object v1, p2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_6c

    iget-object v4, p0, Lcom/android/server/wm/MultiTaskingController$FindTasksResult;->cls:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v1

    if-nez v1, :cond_6c

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$FindTasksResult;->documentData:Landroid/net/Uri;

    .line 2258
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 2259
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    :cond_6c
    if-eqz v2, :cond_8c

    .line 2260
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_8c

    .line 2261
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$FindTasksResult;->cls:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v1

    if-nez v1, :cond_8c

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$FindTasksResult;->documentData:Landroid/net/Uri;

    .line 2262
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 2263
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    .line 2264
    :cond_8c
    iget-boolean v0, p0, Lcom/android/server/wm/MultiTaskingController$FindTasksResult;->isDocument:Z

    if-nez v0, :cond_a3

    if-nez v3, :cond_a3

    iget-object v0, p2, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_a3

    .line 2265
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$FindTasksResult;->mTarget:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a3

    .line 2266
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a3
    :goto_a3
    return-void
.end method


# virtual methods
.method public process(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Lcom/android/server/wm/WindowContainer;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 2213
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$FindTasksResult;->mTarget:Lcom/android/server/wm/ActivityRecord;

    .line 2214
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController$FindTasksResult;->intent:Landroid/content/Intent;

    .line 2215
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/android/server/wm/MultiTaskingController$FindTasksResult;->cls:Landroid/content/ComponentName;

    .line 2216
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iput p1, p0, Lcom/android/server/wm/MultiTaskingController$FindTasksResult;->userId:I

    const/4 p1, 0x1

    if-eqz v0, :cond_13

    move v1, p1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 2217
    :goto_14
    invoke-virtual {v0}, Landroid/content/Intent;->isDocument()Z

    move-result v0

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/MultiTaskingController$FindTasksResult;->isDocument:Z

    if-eqz v0, :cond_24

    .line 2219
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$FindTasksResult;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController$FindTasksResult;->documentData:Landroid/net/Uri;

    .line 2220
    new-instance v0, Lcom/android/server/wm/MultiTaskingController$FindTasksResult$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/android/server/wm/MultiTaskingController$FindTasksResult$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiTaskingController$FindTasksResult;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v0, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    return-void
.end method
