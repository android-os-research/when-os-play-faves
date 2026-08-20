.class public Lcom/android/server/alarm/AlarmManagerService$1;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/alarm/Alarm;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2

    .line 1552
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$1;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/alarm/Alarm;Lcom/android/server/alarm/Alarm;)I
    .registers 11

    .line 1557
    iget p0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 p0, p0, 0x10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_a

    move p0, v1

    goto :goto_b

    :cond_a
    move p0, v0

    .line 1558
    :goto_b
    iget v2, p2, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_13

    move v2, v1

    goto :goto_14

    :cond_13
    move v2, v0

    :goto_14
    const/4 v3, -0x1

    if-eq p0, v2, :cond_1b

    if-eqz p0, :cond_1a

    move v1, v3

    :cond_1a
    return v1

    .line 1564
    :cond_1b
    iget-object p0, p1, Lcom/android/server/alarm/Alarm;->priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->priority:I

    iget-object v2, p2, Lcom/android/server/alarm/Alarm;->priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    iget v2, v2, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->priority:I

    if-ge p0, v2, :cond_26

    return v3

    :cond_26
    if-le p0, v2, :cond_29

    return v1

    .line 1571
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v6

    cmp-long p0, v4, v6

    if-gez p0, :cond_36

    return v3

    .line 1573
    :cond_36
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-lez p0, :cond_43

    return v1

    :cond_43
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1552
    check-cast p1, Lcom/android/server/alarm/Alarm;

    check-cast p2, Lcom/android/server/alarm/Alarm;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$1;->compare(Lcom/android/server/alarm/Alarm;Lcom/android/server/alarm/Alarm;)I

    move-result p0

    return p0
.end method
