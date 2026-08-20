.class public Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;
.super Ljava/lang/Object;
.source "IntelligentBatterySaverFastDrainPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionEntry"
.end annotation


# instance fields
.field public callBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;

.field public tag:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Ljava/lang/String;Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;)V
    .registers 4

    .line 1068
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1069
    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->tag:Ljava/lang/String;

    .line 1070
    iput-object p3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->callBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1074
    instance-of v0, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;

    if-eqz v0, :cond_1a

    .line 1075
    check-cast p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;

    .line 1076
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->tag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->callBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;

    iget-object p1, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->callBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;

    if-ne p0, p1, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0

    .line 1078
    :cond_1a
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
