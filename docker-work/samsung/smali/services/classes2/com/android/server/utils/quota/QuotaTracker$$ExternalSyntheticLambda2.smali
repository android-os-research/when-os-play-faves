.class public final synthetic Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/utils/quota/QuotaTracker;

.field public final synthetic f$1:Landroid/app/AlarmManager$OnAlarmListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/quota/QuotaTracker;Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/utils/quota/QuotaTracker;

    iput-object p2, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda2;->f$1:Landroid/app/AlarmManager$OnAlarmListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/utils/quota/QuotaTracker;

    iget-object p0, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda2;->f$1:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-static {v0, p0}, Lcom/android/server/utils/quota/QuotaTracker;->$r8$lambda$7Z85R_m5RK8X459PANvHm_aViG4(Lcom/android/server/utils/quota/QuotaTracker;Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method
