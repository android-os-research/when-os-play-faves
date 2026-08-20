.class public final synthetic Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    check-cast p1, Lcom/android/server/power/PowerHistorian$WakeUpRecord;

    invoke-static {p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->$r8$lambda$oFR2SP5B_lGlFqu_xLIEClACsfE(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;Lcom/android/server/power/PowerHistorian$WakeUpRecord;)V

    return-void
.end method
