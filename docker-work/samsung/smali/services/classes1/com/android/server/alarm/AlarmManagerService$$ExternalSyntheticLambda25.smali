.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/alarm/AlarmManagerService;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->$r8$lambda$qQoIheeyJ4NxnZpP1ymQjxNaQPY(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmStore;

    move-result-object p0

    return-object p0
.end method
