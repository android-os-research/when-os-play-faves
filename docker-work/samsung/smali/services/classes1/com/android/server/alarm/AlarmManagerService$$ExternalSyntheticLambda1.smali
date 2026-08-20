.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/app/PendingIntent;

.field public final synthetic f$1:Landroid/app/IAlarmListener;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;->f$0:Landroid/app/PendingIntent;

    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;->f$1:Landroid/app/IAlarmListener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;->f$0:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;->f$1:Landroid/app/IAlarmListener;

    check-cast p1, Lcom/android/server/alarm/Alarm;

    invoke-static {v0, p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->$r8$lambda$igp2gTCS4hRNbAPVTAQ_i7dtwqQ(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method
