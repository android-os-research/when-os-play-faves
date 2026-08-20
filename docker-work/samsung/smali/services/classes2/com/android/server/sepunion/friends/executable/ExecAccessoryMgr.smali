.class public Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;
.super Ljava/lang/Object;
.source "ExecAccessoryMgr.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;
.implements Lcom/android/server/sepunion/friends/common/Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ExecAccessoryMgr"

.field public static final USE_ACCESSORY_KEY_WITH_EXTRA_DATA:Z = false


# instance fields
.field public final mAccessories:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;",
            ">;"
        }
    .end annotation
.end field

.field public final mHasMappedAccessory:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public mLastVerificationId:Ljava/lang/String;

.field public final mLogger:Lcom/android/server/sepunion/friends/common/Logger;

.field public final mSvcOperation:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;


# direct methods
.method public static synthetic $r8$lambda$UB0PngBvrqV5YGEZ5ChsZZ16Abs(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;
    .registers 1

    invoke-static {p0}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->lambda$handleGetAccessoryList$0(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/sepunion/friends/common/Logger;Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;Ljava/util/function/Function;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/sepunion/friends/common/Logger;",
            "Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;",
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    .line 36
    iput-object p2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mSvcOperation:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    .line 37
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    .line 38
    iput-object p3, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mHasMappedAccessory:Ljava/util/function/Function;

    return-void
.end method

.method public static getAccessoryKey([B[B)Ljava/lang/String;
    .registers 2

    .line 73
    invoke-static {p0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHexString([BII)Ljava/lang/String;
    .registers 9

    add-int v0, p1, p2

    const/4 v1, 0x0

    if-eqz p0, :cond_3e

    .line 43
    array-length v2, p0

    if-ge v2, v0, :cond_9

    goto :goto_3e

    .line 47
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_e
    if-ge p1, v0, :cond_2a

    .line 49
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_24

    const/16 v4, 0x30

    .line 51
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    :cond_24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    .line 56
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    mul-int/lit8 p2, p2, 0x2

    if-eq p0, p2, :cond_33

    return-object v1

    .line 60
    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3e
    :goto_3e
    return-object v1
.end method

.method public static getLength([B)I
    .registers 1

    if-eqz p0, :cond_4

    .line 64
    array-length p0, p0

    goto :goto_5

    :cond_4
    const/4 p0, -0x1

    :goto_5
    return p0
.end method

.method public static synthetic lambda$handleGetAccessoryList$0(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;
    .registers 1

    .line 162
    invoke-static {p0}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->-$$Nest$fgetmBundle(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 7

    const/4 p2, 0x0

    const-string v0, "ExecAccessoryMgr"

    sparse-switch p3, :sswitch_data_4c

    goto :goto_4a

    :sswitch_7
    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "ActionHasAccessory"

    .line 252
    invoke-static {v0, p3, p2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->handleHasAccessory(Landroid/os/Bundle;)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :sswitch_17
    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "ActionVerifyFakeAccessory"

    .line 244
    invoke-static {v0, p3, p2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->handleVerifyFakeAccessory(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :sswitch_23
    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "ActionGetAccessory"

    .line 248
    invoke-static {v0, p2, p1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 249
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->handleGetAccessoryList()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :sswitch_2f
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 258
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p2

    const-string p2, "ActionAccessoryStateChanged 0x%x"

    invoke-static {v0, p2, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz p1, :cond_4a

    .line 259
    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->isAccessibleAction(I)Z

    move-result p2

    if-eqz p2, :cond_4a

    .line 260
    invoke-virtual {p0, p3, p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->handleAccessoryStateChanged(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_4a
    :goto_4a
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_4c
    .sparse-switch
        0x110001 -> :sswitch_2f
        0x120001 -> :sswitch_23
        0x12000a -> :sswitch_2f
        0x120012 -> :sswitch_17
        0x140001 -> :sswitch_2f
        0x140002 -> :sswitch_7
    .end sparse-switch
.end method

.method public executeOnSameThread(I)Z
    .registers 2

    const p0, 0x140001

    if-eq p1, p0, :cond_11

    const p0, 0x110001

    if-eq p1, p0, :cond_11

    const p0, 0x12000a

    if-eq p1, p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public getAccessoryCount()I
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 176
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 177
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getDump(Ljava/lang/StringBuilder;)V
    .registers 11

    const-string v0, "\n---- active accessory info.\n"

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 82
    :try_start_8
    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_df

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_21

    goto :goto_12

    .line 87
    :cond_21
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;

    if-eqz v2, :cond_2e

    .line 88
    invoke-static {v2}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->-$$Nest$fgetmBundle(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x0

    .line 90
    :goto_2f
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v2, :cond_12

    if-nez v1, :cond_3a

    goto :goto_12

    :cond_3a
    const-string/jumbo v4, "timeStamp"

    const-wide/16 v5, -0x1

    .line 95
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-eqz v4, :cond_4c

    .line 96
    invoke-static {v7, v8}, Lcom/android/server/sepunion/friends/util/LogFrs;->getDateString(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_52

    :cond_4c
    const/16 v4, 0x2d

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    :goto_52
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-static {v2}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->-$$Nest$fgetmActionNo(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)I

    move-result v1

    const v4, 0x110001

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v4, :cond_81

    const-string v1, " [0x%x]"

    new-array v4, v5, [Ljava/lang/Object;

    .line 100
    invoke-static {v2}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->-$$Nest$fgetmActionNo(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v1, v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_81
    invoke-static {v2}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->-$$Nest$fgetmVerifyRequired(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 103
    invoke-static {v2}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->-$$Nest$fgetmOriginalAccessoryId(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_97

    const-string v1, " M"

    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9c

    :cond_97
    const-string v1, " *"

    .line 106
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9c
    :goto_9c
    const/4 v1, 0x2

    new-array v2, v1, [[B

    const-string v4, "data"

    .line 110
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v2, v6

    const-string v4, "extraData"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "\n\tdata: "

    const-string v4, "\n\textra: "

    .line 111
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    move v4, v6

    move v5, v4

    :goto_b9
    if-ge v4, v1, :cond_d8

    .line 114
    aget-object v7, v2, v4

    if-eqz v7, :cond_d3

    .line 115
    array-length v8, v7

    if-lez v8, :cond_d3

    .line 116
    aget-object v8, v3, v5

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v7

    .line 117
    invoke-static {v7, v6, v8}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->getHexString([BII)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d3
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_b9

    :cond_d8
    const/16 v1, 0xa

    .line 122
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 124
    :cond_df
    monitor-exit v0

    return-void

    :catchall_e1
    move-exception p0

    monitor-exit v0
    :try_end_e3
    .catchall {:try_start_8 .. :try_end_e3} :catchall_e1

    throw p0
.end method

.method public final getMappedAccessoryId(Ljava/lang/String;[[B)Ljava/lang/String;
    .registers 7

    .line 214
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 215
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_22

    .line 216
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;

    :cond_22
    if-eqz v2, :cond_d

    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {v2}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->-$$Nest$fgetmOriginalAccessoryId(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 219
    invoke-static {v2}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->-$$Nest$fgetmBundle(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_52

    if-eqz p2, :cond_52

    .line 220
    array-length p1, p2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_52

    const/4 p1, 0x0

    const-string v2, "data"

    .line 221
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, p2, p1

    const/4 p1, 0x1

    const-string v2, "extraData"

    .line 222
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    aput-object p0, p2, p1

    .line 224
    :cond_52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 227
    :cond_5a
    monitor-exit v0

    return-object v2

    :catchall_5c
    move-exception p0

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public final handleAccessoryStateChanged(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 20

    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v1, "attached"

    const/4 v9, 0x0

    .line 280
    invoke-virtual {v8, v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v1, "data"

    .line 281
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "extraData"

    .line 282
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    const-string v13, "ExecAccessoryMgr"

    const/4 v14, 0x1

    if-eqz v2, :cond_160

    .line 284
    array-length v5, v2

    if-nez v5, :cond_23

    goto/16 :goto_160

    .line 290
    :cond_23
    invoke-static {v2, v4}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->getAccessoryKey([B[B)Ljava/lang/String;

    move-result-object v5

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const v6, 0x110001

    if-eq v7, v6, :cond_40

    const v1, 0x12000a

    if-eq v7, v1, :cond_3c

    const v1, 0x140001

    if-eq v7, v1, :cond_3c

    goto/16 :goto_d5

    :cond_3c
    move-object v9, v5

    :goto_3d
    move v3, v14

    goto/16 :goto_d7

    .line 302
    :cond_40
    iget-object v6, v0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mHasMappedAccessory:Ljava/util/function/Function;

    if-eqz v6, :cond_d5

    if-eqz v10, :cond_a4

    .line 304
    invoke-interface {v6, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    if-eqz v6, :cond_9c

    .line 306
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    if-eqz v15, :cond_63

    .line 307
    array-length v9, v15

    if-lez v9, :cond_63

    invoke-static {v2, v15}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_63

    .line 309
    invoke-virtual {v8, v1, v15}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    move v1, v14

    move-object v2, v15

    goto :goto_64

    :cond_63
    const/4 v1, 0x0

    .line 313
    :goto_64
    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    if-eqz v6, :cond_78

    .line 314
    array-length v9, v6

    if-lez v9, :cond_78

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_78

    .line 316
    invoke-virtual {v8, v3, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    move-object v4, v6

    move v1, v14

    :cond_78
    if-eqz v1, :cond_97

    .line 322
    invoke-static {v2, v4}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->getAccessoryKey([B[B)Ljava/lang/String;

    move-result-object v2

    .line 323
    iget-object v3, v0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    new-array v4, v14, [Ljava/lang/Object;

    .line 324
    invoke-static {v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v4, v9

    const-string v6, "mapped accessory %s true"

    invoke-static {v13, v6, v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v9, [Ljava/lang/Object;

    .line 323
    invoke-interface {v3, v11, v12, v4, v6}, Lcom/android/server/sepunion/friends/common/Logger;->append(JLjava/lang/String;[Ljava/lang/Object;)V

    move/from16 v16, v1

    goto :goto_a0

    :cond_97
    const/4 v9, 0x0

    move/from16 v16, v1

    move-object v2, v5

    goto :goto_9f

    :cond_9c
    move-object v2, v5

    move/from16 v16, v9

    :goto_9f
    const/4 v5, 0x0

    :goto_a0
    move-object v9, v2

    move/from16 v3, v16

    goto :goto_d8

    :cond_a4
    const/4 v2, 0x2

    new-array v4, v2, [[B

    .line 329
    invoke-virtual {v0, v5, v4}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->getMappedAccessoryId(Ljava/lang/String;[[B)Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d5

    aget-object v6, v4, v9

    if-eqz v6, :cond_d5

    .line 332
    invoke-virtual {v8, v1, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    aget-object v1, v4, v14

    .line 333
    invoke-virtual {v8, v3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 335
    iget-object v1, v0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    new-array v3, v14, [Ljava/lang/Object;

    .line 336
    invoke-static {v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const-string v4, "mapped accessory %s false"

    invoke-static {v13, v4, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    .line 335
    invoke-interface {v1, v11, v12, v3, v4}, Lcom/android/server/sepunion/friends/common/Logger;->append(JLjava/lang/String;[Ljava/lang/Object;)V

    move-object v9, v2

    goto/16 :goto_3d

    :cond_d5
    :goto_d5
    move-object v9, v5

    const/4 v3, 0x0

    :goto_d7
    const/4 v5, 0x0

    :goto_d8
    if-eqz v3, :cond_ec

    .line 343
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->setLastVerificationId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "paramStr0"

    invoke-virtual {v8, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ec
    const-string/jumbo v1, "timeStamp"

    .line 346
    invoke-virtual {v8, v1, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "paramInt0"

    .line 347
    invoke-virtual {v8, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v10, :cond_106

    .line 350
    new-instance v15, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;

    const/4 v6, 0x0

    move-object v1, v15

    move/from16 v2, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;-><init>(IZLandroid/os/Bundle;Ljava/lang/String;Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData-IA;)V

    goto :goto_107

    :cond_106
    const/4 v15, 0x0

    .line 349
    :goto_107
    invoke-virtual {v0, v9, v15}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->update(Ljava/lang/String;Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_133

    .line 351
    iget-object v0, v0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    new-array v1, v2, [Ljava/lang/Object;

    .line 352
    invoke-static {v9}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v14

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "ignored due to failure of updating accessory state: %s %s 0x%x"

    .line 351
    invoke-static {v13, v2, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v11, v12, v1, v2}, Lcom/android/server/sepunion/friends/common/Logger;->append(JLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    :cond_133
    const/4 v3, 0x0

    .line 356
    iget-object v1, v0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    .line 357
    invoke-static {v9}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v14

    .line 358
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const-string v4, "accessory state changed: %s %s 0x%x"

    .line 357
    invoke-static {v13, v4, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 356
    invoke-interface {v1, v11, v12, v2, v3}, Lcom/android/server/sepunion/friends/common/Logger;->append(JLjava/lang/String;[Ljava/lang/Object;)V

    .line 361
    iget-object v0, v0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mSvcOperation:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    const v1, 0x210001

    invoke-interface {v0, v1, v8}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;->perform(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_160
    :goto_160
    move v3, v9

    const/4 v5, 0x2

    .line 285
    iget-object v0, v0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v4}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->getLength([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v14

    const-string/jumbo v2, "wrong parameter %s %d"

    invoke-static {v13, v2, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/android/server/sepunion/friends/common/Logger;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final handleGetAccessoryList()Landroid/os/Bundle;
    .registers 4

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 162
    :try_start_8
    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 163
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 162
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 164
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p0

    const-string v2, "accessoryList"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_41
    move-exception p0

    .line 165
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public final handleHasAccessory(Landroid/os/Bundle;)Z
    .registers 4

    const-string v0, "data"

    .line 275
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string v1, "extraData"

    .line 276
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->getAccessoryKey([B[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->hasAccessory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public final handleVerifyFakeAccessory(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mLastVerificationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-eqz p1, :cond_1b

    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mLastVerificationId:Ljava/lang/String;

    const-string/jumbo v0, "paramStr0"

    .line 154
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    .line 153
    :goto_1c
    invoke-static {p0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public hasAccessory(Ljava/lang/String;)Z
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 170
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 171
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isAccessibleAction(I)Z
    .registers 5

    .line 197
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 198
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;

    if-eqz v1, :cond_d

    .line 199
    invoke-static {v1}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->-$$Nest$fgetmActionNo(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)I

    move-result v1

    if-eq v1, p1, :cond_d

    move p0, v2

    goto :goto_25

    :cond_24
    const/4 p0, 0x1

    .line 204
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_32

    if-nez p0, :cond_31

    const-string p1, "ExecAccessoryMgr"

    const-string v0, "action[0x%x] is denied !!!"

    new-array v1, v2, [Ljava/lang/Object;

    .line 207
    invoke-static {p1, v0, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_31
    return p0

    :catchall_32
    move-exception p0

    .line 204
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public preExecute(Landroid/os/Bundle;II)Z
    .registers 4

    const p1, 0x110001

    if-eq p3, p1, :cond_11

    const p1, 0x12000a

    if-eq p3, p1, :cond_11

    const p1, 0x140001

    if-eq p3, p1, :cond_11

    const/4 p0, 0x1

    goto :goto_15

    .line 187
    :cond_11
    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->isAccessibleAction(I)Z

    move-result p0

    :goto_15
    return p0
.end method

.method public final setLastVerificationId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 270
    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mLastVerificationId:Ljava/lang/String;

    return-object p1
.end method

.method public final update(Ljava/lang/String;Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 134
    :cond_4
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 135
    :try_start_7
    iget-object v2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz p2, :cond_18

    if-nez v2, :cond_20

    .line 138
    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_18
    if-eqz v2, :cond_20

    .line 143
    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1f
    move v0, v3

    .line 147
    :cond_20
    monitor-exit v1

    return v0

    :catchall_22
    move-exception p0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw p0
.end method
