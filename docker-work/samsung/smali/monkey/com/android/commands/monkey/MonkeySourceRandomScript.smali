.class public Lcom/android/commands/monkey/MonkeySourceRandomScript;
.super Ljava/lang/Object;
.source "MonkeySourceRandomScript.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# instance fields
.field private mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

.field private mRandom:Ljava/util/Random;

.field private mRandomizeScript:Z

.field private mScriptCount:I

.field private mScriptSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/commands/monkey/MonkeySourceScript;",
            ">;"
        }
    .end annotation
.end field

.field private mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

.field private mVerbose:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V
    .registers 27
    .param p1, "setupFileName"    # Ljava/lang/String;
    .param p3, "throttle"    # J
    .param p5, "randomizeThrottle"    # Z
    .param p6, "random"    # Ljava/util/Random;
    .param p7, "profileWaitTime"    # J
    .param p9, "deviceSleepTime"    # J
    .param p11, "randomizeScript"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;JZ",
            "Ljava/util/Random;",
            "JJZ)V"
        }
    .end annotation

    .line 56
    .local p2, "scriptFileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mVerbose:I

    .line 30
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    .line 33
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    .line 36
    iput-object v2, v0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    .line 41
    iput-boolean v1, v0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mRandomizeScript:Z

    .line 43
    iput v1, v0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptCount:I

    .line 57
    if-eqz p1, :cond_2f

    .line 58
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceScript;

    move-object v4, v1

    move-object/from16 v5, p6

    move-object/from16 v6, p1

    move-wide/from16 v7, p3

    move/from16 v9, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-direct/range {v4 .. v13}, Lcom/android/commands/monkey/MonkeySourceScript;-><init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V

    iput-object v1, v0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    .line 60
    iput-object v1, v0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    .line 63
    :cond_2f
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64
    .local v2, "fileName":Ljava/lang/String;
    iget-object v13, v0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/commands/monkey/MonkeySourceScript;

    move-object v3, v14

    move-object/from16 v4, p6

    move-object v5, v2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    invoke-direct/range {v3 .. v12}, Lcom/android/commands/monkey/MonkeySourceScript;-><init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .end local v2    # "fileName":Ljava/lang/String;
    goto :goto_33

    .line 68
    :cond_56
    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mRandom:Ljava/util/Random;

    .line 69
    move/from16 v2, p11

    iput-boolean v2, v0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mRandomizeScript:Z

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V
    .registers 23
    .param p2, "throttle"    # J
    .param p4, "randomizeThrottle"    # Z
    .param p5, "random"    # Ljava/util/Random;
    .param p6, "profileWaitTime"    # J
    .param p8, "deviceSleepTime"    # J
    .param p10, "randomizeScript"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;JZ",
            "Ljava/util/Random;",
            "JJZ)V"
        }
    .end annotation

    .line 83
    .local p1, "scriptFileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/commands/monkey/MonkeySourceRandomScript;-><init>(Ljava/lang/String;Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V

    .line 85
    return-void
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .registers 5

    .line 96
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    if-nez v0, :cond_42

    .line 97
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 98
    .local v0, "numSources":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 99
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/commands/monkey/MonkeySourceScript;

    iput-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    goto :goto_42

    .line 100
    :cond_19
    if-le v0, v1, :cond_42

    .line 101
    iget-boolean v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mRandomizeScript:Z

    if-eqz v2, :cond_30

    .line 102
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mRandom:Ljava/util/Random;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/commands/monkey/MonkeySourceScript;

    iput-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    goto :goto_42

    .line 104
    :cond_30
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptCount:I

    rem-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/commands/monkey/MonkeySourceScript;

    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    .line 105
    iget v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptCount:I

    .line 110
    .end local v0    # "numSources":I
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 111
    invoke-virtual {v0}, Lcom/android/commands/monkey/MonkeySourceScript;->getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;

    move-result-object v0

    .line 112
    .local v0, "nextEvent":Lcom/android/commands/monkey/MonkeyEvent;
    if-nez v0, :cond_4f

    .line 113
    iput-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    .line 115
    :cond_4f
    return-object v0

    .line 117
    .end local v0    # "nextEvent":Lcom/android/commands/monkey/MonkeyEvent;
    :cond_50
    return-object v1
.end method

.method public setVerbose(I)V
    .registers 4
    .param p1, "verbose"    # I

    .line 126
    iput p1, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mVerbose:I

    .line 128
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    if-eqz v0, :cond_9

    .line 129
    invoke-virtual {v0, p1}, Lcom/android/commands/monkey/MonkeySourceScript;->setVerbose(I)V

    .line 132
    :cond_9
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/commands/monkey/MonkeySourceScript;

    .line 133
    .local v1, "source":Lcom/android/commands/monkey/MonkeySourceScript;
    invoke-virtual {v1, p1}, Lcom/android/commands/monkey/MonkeySourceScript;->setVerbose(I)V

    .line 134
    .end local v1    # "source":Lcom/android/commands/monkey/MonkeySourceScript;
    goto :goto_f

    .line 135
    :cond_1f
    return-void
.end method

.method public validate()Z
    .registers 5

    .line 145
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/commands/monkey/MonkeySourceScript;->validate()Z

    move-result v0

    if-nez v0, :cond_c

    .line 146
    return v1

    .line 149
    :cond_c
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/commands/monkey/MonkeySourceScript;

    .line 150
    .local v2, "source":Lcom/android/commands/monkey/MonkeySourceScript;
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeySourceScript;->validate()Z

    move-result v3

    if-nez v3, :cond_25

    .line 151
    return v1

    .line 153
    .end local v2    # "source":Lcom/android/commands/monkey/MonkeySourceScript;
    :cond_25
    goto :goto_12

    .line 155
    :cond_26
    const/4 v0, 0x1

    return v0
.end method
