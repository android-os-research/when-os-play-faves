.class public Lcom/sec/android/sdhmssdk/SemOverheatHistory;
.super Ljava/lang/Object;
.source "SemOverheatHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;
    }
.end annotation


# static fields
.field public static final CHARGER_TYPE_AC:I = 0x1

.field public static final CHARGER_TYPE_AFC:I = 0x8

.field public static final CHARGER_TYPE_USB:I = 0x2

.field public static final CHARGER_TYPE_WIRELESS:I = 0x4

.field public static final ENVIRONMENT_TYPE_AMBIENT:I = 0x4

.field public static final ENVIRONMENT_TYPE_BLANKET:I = 0x2

.field public static final ENVIRONMENT_TYPE_SUNLIGHT:I = 0x1

.field public static final REASON_TYPE_CHARGING:I = 0x1

.field public static final REASON_TYPE_ENVIRONMENT:I = 0x8

.field public static final REASON_TYPE_HIGH_NETWORK_USAGE:I = 0x2

.field public static final REASON_TYPE_HIGH_PROCESS_USAGE:I = 0x4

.field public static final REASON_TYPE_SCENARIO_CAMERA:I = 0x10000

.field public static final REASON_TYPE_SCENARIO_GAME:I = 0x20000

.field public static final REASON_TYPE_SCENARIO_NAVIGATION:I = 0x40000


# instance fields
.field private beginTime:J

.field private endTime:J

.field private overheatType:I

.field private semOverheatReason:Lcom/sec/android/sdhmssdk/SemOverheatReason;


# direct methods
.method protected constructor <init>(Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    invoke-static {p1}, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;->-$$Nest$fgetbeginTime(Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory;->beginTime:J

    .line 215
    invoke-static {p1}, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;->-$$Nest$fgetendTime(Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory;->endTime:J

    .line 216
    invoke-static {p1}, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;->-$$Nest$fgetoverheatType(Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory;->overheatType:I

    .line 217
    invoke-static {p1}, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;->-$$Nest$fgetsemOverheatReason(Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;)Lcom/sec/android/sdhmssdk/SemOverheatReason;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory;->semOverheatReason:Lcom/sec/android/sdhmssdk/SemOverheatReason;

    .line 218
    return-void
.end method


# virtual methods
.method public getEndTimestamp()J
    .registers 3

    .line 62
    iget-wide v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory;->endTime:J

    return-wide v0
.end method

.method public getOverheatReason(I)Landroid/os/Bundle;
    .registers 12
    .param p1, "reasonKey"    # I

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "default"

    .line 98
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .line 100
    .local v2, "size":I
    const-string v3, "%%%"

    sparse-switch p1, :sswitch_data_1b6

    goto/16 :goto_1b5

    .line 156
    :sswitch_f
    const/high16 v4, 0x40000

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    iget-object v4, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory;->semOverheatReason:Lcom/sec/android/sdhmssdk/SemOverheatReason;

    invoke-virtual {v4}, Lcom/sec/android/sdhmssdk/SemOverheatReason;->getNavigationAppList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 158
    if-lez v2, :cond_1b5

    .line 159
    new-array v4, v2, [Ljava/lang/String;

    .line 160
    .local v4, "itemArray":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_24
    if-ge v5, v2, :cond_54

    .line 161
    iget-object v6, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory;->semOverheatReason:Lcom/sec/android/sdhmssdk/SemOverheatReason;

    invoke-virtual {v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason;->getNavigationAppList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;

    .line 162
    .local v6, "app":Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 160
    .end local v6    # "app":Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 164
    .end local v5    # "i":I
    :cond_54
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 165
    .end local v4    # "itemArray":[Ljava/lang/String;
    goto/16 :goto_1b5

    .line 144
    :sswitch_59
    const/high16 v4, 0x20000

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    iget-object v4, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory;->semOverheatReason:Lcom/sec/android/sdhmssdk/SemOverheatReason;

    invoke-virtual {v4}, Lcom/sec/android/sdhmssdk/SemOverheatReason;->getGameAppList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 146
    if-lez v2, :cond_1b5

    .line 147
    new-array v4, v2, [Ljava/lang/String;

    .line 148
    .restart local v4    # "itemArray":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6e
    if-ge v5, v2, :cond_9e

    .line 149
    iget-object v6, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory;->semOverheatReason:Lcom/sec/android/sdhmssdk/SemOverheatReason;

    invoke-virtual {v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason;->getGameAppList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;

    .line 150
    .restart local v6    # "app":Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 148
    .end local v6    # "app":Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;
    add-int/lit8 v5, v5, 0x1

    goto :goto_6e

    .line 152
    .end local v5    # "i":I
    :cond_9e
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 153
    .end local v4    # "itemArray":[Ljava/lang/String;
    goto/16 :goto_1b5

    .line 132
    :sswitch_a3
    const/high16 v4, 0x10000

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    iget-object v4, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory;->semOverheatReason:Lcom/sec/android/sdhmssdk/SemOverheatReason;

    invoke-virtual {v4}, Lcom/sec/android/sdhmssdk/SemOverheatReason;->getCameraAppList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 134
    if-lez v2, :cond_1b5

    .line 135
    new-array v4, v2, [Ljava/lang/String;

    .line 136
    .restart local v4    # "itemArray":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_b8
    if-ge v5, v2, :cond_e8

    .line 137
    iget-object v6, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory;->semOverheatReason:Lcom/sec/android/sdhmssdk/SemOverheatReason;

    invoke-virtual {v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason;->getCameraAppList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;

    .line 138
    .restart local v6    # "app":Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 136
    .end local v6    # "app":Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;
    add-int/lit8 v5, v5, 0x1

    goto :goto_b8

    .line 140
    .end local v5    # "i":I
    :cond_e8
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 141
    .end local v4    # "itemArray":[Ljava/lang/String;
    goto/16 :goto_1b5

    .line 168
    :sswitch_ed
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 169
    iget-object v3, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory;->semOverheatReason:Lcom/sec/android/sdhmssdk/SemOverheatReason;

    invoke-virtual {v3}, Lcom/sec/android/sdhmssdk/SemOverheatReason;->getEnvironmentType()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    goto/16 :goto_1b5

    .line 119
    :sswitch_fe
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    iget-object v4, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory;->semOverheatReason:Lcom/sec/android/sdhmssdk/SemOverheatReason;

    invoke-virtual {v4}, Lcom/sec/android/sdhmssdk/SemOverheatReason;->getProcessAppList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 121
    if-lez v2, :cond_1b5

    .line 122
    new-array v4, v2, [Ljava/lang/String;

    .line 123
    .restart local v4    # "itemArray":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_112
    if-ge v5, v2, :cond_14e

    .line 124
    iget-object v6, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory;->semOverheatReason:Lcom/sec/android/sdhmssdk/SemOverheatReason;

    invoke-virtual {v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason;->getProcessAppList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;

    .line 125
    .local v6, "process":Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;->getProcessName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 126
    invoke-virtual {v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;->getUsage()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 123
    .end local v6    # "process":Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;
    add-int/lit8 v5, v5, 0x1

    goto :goto_112

    .line 128
    .end local v5    # "i":I
    :cond_14e
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 129
    .end local v4    # "itemArray":[Ljava/lang/String;
    goto :goto_1b5

    .line 106
    :sswitch_152
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    iget-object v4, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory;->semOverheatReason:Lcom/sec/android/sdhmssdk/SemOverheatReason;

    invoke-virtual {v4}, Lcom/sec/android/sdhmssdk/SemOverheatReason;->getNetworkAppList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 108
    if-lez v2, :cond_1b5

    .line 109
    new-array v4, v2, [Ljava/lang/String;

    .line 110
    .restart local v4    # "itemArray":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_166
    if-ge v5, v2, :cond_1a2

    .line 111
    iget-object v6, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory;->semOverheatReason:Lcom/sec/android/sdhmssdk/SemOverheatReason;

    invoke-virtual {v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason;->getNetworkAppList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;

    .line 112
    .local v6, "network":Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 113
    invoke-virtual {v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;->getUsage()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 110
    .end local v6    # "network":Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;
    add-int/lit8 v5, v5, 0x1

    goto :goto_166

    .line 115
    .end local v5    # "i":I
    :cond_1a2
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 116
    .end local v4    # "itemArray":[Ljava/lang/String;
    goto :goto_1b5

    .line 102
    :sswitch_1a6
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    iget-object v3, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory;->semOverheatReason:Lcom/sec/android/sdhmssdk/SemOverheatReason;

    invoke-virtual {v3}, Lcom/sec/android/sdhmssdk/SemOverheatReason;->getChargerType()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    nop

    .line 175
    :cond_1b5
    :goto_1b5
    return-object v0

    :sswitch_data_1b6
    .sparse-switch
        0x1 -> :sswitch_1a6
        0x2 -> :sswitch_152
        0x4 -> :sswitch_fe
        0x8 -> :sswitch_ed
        0x10000 -> :sswitch_a3
        0x20000 -> :sswitch_59
        0x40000 -> :sswitch_f
    .end sparse-switch
.end method

.method public getOverheatReason()Lcom/sec/android/sdhmssdk/SemOverheatReason;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory;->semOverheatReason:Lcom/sec/android/sdhmssdk/SemOverheatReason;

    return-object v0
.end method

.method public getOverheatType()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory;->overheatType:I

    return v0
.end method

.method public getStartTimestamp()J
    .registers 3

    .line 53
    iget-wide v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory;->beginTime:J

    return-wide v0
.end method
