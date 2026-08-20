.class public Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;
.super Landroid/content/BroadcastReceiver;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V
    .registers 2

    .line 709
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 712
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    .line 713
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 714
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ACTION_SCREEN_ON"

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {p0}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmGoodCatchHandler(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x7d0

    invoke-static/range {v0 .. v5}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIILjava/lang/Object;I)V

    goto :goto_47

    :cond_27
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 716
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 717
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ACTION_SCREEN_OFF"

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    invoke-static {p1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->-$$Nest$fgetmForegroundUid(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->-$$Nest$fputmPreviousUid(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;I)V

    .line 719
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->setActiveState(Z)V

    :cond_47
    :goto_47
    return-void
.end method
