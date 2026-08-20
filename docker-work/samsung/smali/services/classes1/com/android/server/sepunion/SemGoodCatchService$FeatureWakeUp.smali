.class public Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;
.super Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FeatureWakeUp"
.end annotation


# static fields
.field public static final FUNCTION:Ljava/lang/String; = "wakeup"

.field public static final FUNCTION_WAKEUP_DONE:Ljava/lang/String; = "wakeup_done"

.field public static final MODULE:Ljava/lang/String; = "FeatureWakeUp"


# instance fields
.field public mOnStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

.field public mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

.field public final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method public static synthetic $r8$lambda$oFR2SP5B_lGlFqu_xLIEClACsfE(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;Lcom/android/server/power/PowerHistorian$WakeUpRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->lambda$update$0(Lcom/android/server/power/PowerHistorian$WakeUpRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmOnStateListener(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;)Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->mOnStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmSemGoodCatchManager(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;Lcom/samsung/android/sepunion/SemGoodCatchManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .registers 5

    .line 849
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    const-string v0, "FeatureWakeUp"

    .line 850
    invoke-direct {p0, p1, v0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;Ljava/lang/String;)V

    .line 834
    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$1;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->mOnStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    .line 852
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    .line 853
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 854
    invoke-static {p1}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$2;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;Lcom/android/server/sepunion/SemGoodCatchService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private synthetic lambda$update$0(Lcom/android/server/power/PowerHistorian$WakeUpRecord;)V
    .registers 14

    .line 873
    invoke-virtual {p1}, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->isOn()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 874
    invoke-virtual {p1}, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->getRecordedTimeMillis()J

    move-result-wide v0

    .line 875
    invoke-virtual {p1}, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 876
    invoke-virtual {p1}, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->getReasonInt()I

    move-result v3

    .line 877
    invoke-virtual {p1}, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->getReasonStr()Ljava/lang/String;

    move-result-object v4

    .line 878
    invoke-virtual {p1}, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->getForegroundPackageName()Ljava/lang/String;

    move-result-object p1

    .line 880
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MODULE : FeatureWakeUp, FUNCTION : wakeup, opPackageName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", reasonInt : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", reasonStr : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", foregroundPackageName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x7

    new-array v10, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "FeatureWakeUp"

    aput-object v6, v10, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "wakeup"

    aput-object v6, v10, v5

    const/4 v5, 0x2

    aput-object v2, v10, v5

    const/4 v2, 0x3

    .line 884
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v2

    const/4 v0, 0x4

    .line 885
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    const/4 v0, 0x5

    aput-object v4, v10, v0

    const/4 v0, 0x6

    aput-object p1, v10, v0

    .line 886
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {p0}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmGoodCatchHandler(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIILjava/lang/Object;I)V

    :cond_7c
    return-void
.end method


# virtual methods
.method public doneTrigger()V
    .registers 7

    const-string v0, "function LIKE ?"

    const-string/jumbo v1, "wakeup_done"

    .line 899
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 900
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "module"

    const-string v5, "FeatureWakeUp"

    .line 901
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "function"

    .line 902
    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "value"

    const-string/jumbo v4, "on"

    .line 903
    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    :try_start_24
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {v1}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmContentResolver(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {p0}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmFeatureSetting(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v1, p0, v3, v0, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 907
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "doneTrigger()"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_40} :catch_41

    goto :goto_5a

    :catch_41
    move-exception p0

    .line 909
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doneTrigger error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5a
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 2

    .line 919
    invoke-super {p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public reset()V
    .registers 1

    .line 914
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->off()V

    return-void
.end method

.method public update()V
    .registers 7

    .line 871
    invoke-static {}, Lcom/android/server/power/PowerHistorian;->getInstance()Lcom/android/server/power/PowerHistorian;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/PowerHistorian;->getWakeUpRecords()Ljava/util/List;

    move-result-object v0

    .line 872
    new-instance v1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 889
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {p0}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmGoodCatchHandler(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method
