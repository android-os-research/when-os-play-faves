.class public Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;
.super Ljava/lang/Object;
.source "SleepModePolicyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/sleepmode/SleepModePolicyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionEntry"
.end annotation


# instance fields
.field public callBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V
    .registers 3

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->tag:Ljava/lang/String;

    .line 574
    iput-object p2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->callBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 579
    instance-of v0, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;

    if-eqz v0, :cond_1a

    .line 580
    check-cast p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;

    .line 581
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->tag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->callBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    iget-object p1, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->callBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    if-ne p0, p1, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0

    .line 583
    :cond_1a
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 588
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->tag:Ljava/lang/String;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_a
    add-int/lit8 p0, p0, 0x1f

    return p0
.end method
