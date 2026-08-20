.class public Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;
.super Landroid/content/BroadcastReceiver;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

.field public final synthetic val$this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;Lcom/android/server/sepunion/SemGoodCatchService;)V
    .registers 3

    .line 745
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    iput-object p2, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;->val$this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 748
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 749
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    new-instance p2, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    iget-object v0, v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "detectads"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    invoke-static {p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->-$$Nest$fgetmOnStateListener(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    move-result-object p0

    const-string v2, "FeatureDetectAds"

    invoke-direct {p2, v0, v2, v1, p0}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    invoke-static {p1, p2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->-$$Nest$fputmSemGoodCatchManager(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;Lcom/samsung/android/sepunion/SemGoodCatchManager;)V

    :cond_2c
    return-void
.end method
