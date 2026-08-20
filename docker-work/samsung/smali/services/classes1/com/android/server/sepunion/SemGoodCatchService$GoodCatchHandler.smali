.class public Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;
.super Landroid/os/Handler;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GoodCatchHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .registers 2

    .line 369
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 372
    iget v2, v1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_5a

    const/4 v3, 0x1

    if-eq v2, v3, :cond_50

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v2, v8, :cond_33

    if-eq v2, v7, :cond_2d

    if-eq v2, v6, :cond_23

    if-eq v2, v5, :cond_19

    goto :goto_5f

    .line 390
    :cond_19
    iget-object v0, v0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmFeatureWakeUp(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->doneTrigger()V

    goto :goto_5f

    .line 387
    :cond_23
    iget-object v0, v0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmFeatureDetectAds(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->setActiveState(Z)V

    goto :goto_5f

    .line 384
    :cond_2d
    iget-object v0, v0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$mcreateObserver(Lcom/android/server/sepunion/SemGoodCatchService;)V

    goto :goto_5f

    .line 380
    :cond_33
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 381
    iget-object v0, v0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmFeatureEvent(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    move-result-object v9

    aget-object v10, v1, v4

    aget-object v11, v1, v3

    aget-object v12, v1, v8

    aget-object v13, v1, v7

    aget-object v14, v1, v6

    aget-object v15, v1, v5

    const/4 v0, 0x6

    aget-object v16, v1, v0

    invoke-virtual/range {v9 .. v16}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    .line 377
    :cond_50
    iget-object v0, v0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmFeatureSetting(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->update()V

    goto :goto_5f

    .line 374
    :cond_5a
    iget-object v0, v0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$mcreateFeature(Lcom/android/server/sepunion/SemGoodCatchService;)V

    :goto_5f
    return-void
.end method
