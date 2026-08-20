.class public Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;
.super Landroid/os/Handler;
.source "EmergencyModePackageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/EmergencyModePackageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EMPackageHandler"
.end annotation


# static fields
.field public static final EM_PKG_HADNLER_ID:Ljava/lang/String; = "EM_PKG_HADNLER_ID"

.field public static final ID_INVALID:I = -0x1


# instance fields
.field public final TIMEOUT:J

.field public emComponents:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public emCurrentPosition:I

.field public emDontKillFlags:[Z

.field public emID:I

.field public emNewState:[I

.field public emPackages:[Ljava/lang/String;

.field public emPreviousID:I

.field public emProgression:I

.field public emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

.field public emSize:I

.field public emTotSize:I

.field public emUids:[I

.field public emUserId:I

.field public final synthetic this$0:Lcom/android/server/pm/EmergencyModePackageHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/EmergencyModePackageHandler;Landroid/os/Looper;)V
    .registers 3

    .line 112
    iput-object p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    .line 113
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    const/4 p1, -0x1

    .line 81
    iput p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    const-wide/32 p1, 0xea60

    .line 93
    iput-wide p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->TIMEOUT:J

    .line 95
    new-instance p1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler$1;

    invoke-direct {p1, p0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler$1;-><init>(Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;)V

    iput-object p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

    return-void
.end method


# virtual methods
.method public doHandleMessage(Landroid/os/Message;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 171
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_209

    const/4 v1, 0x3

    if-eq v2, v5, :cond_9d

    if-eq v2, v1, :cond_8d

    if-eq v2, v4, :cond_6e

    const/4 v3, 0x5

    if-eq v2, v3, :cond_18

    goto/16 :goto_28d

    .line 289
    :cond_18
    iget-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v2, v2, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v0, "EMPkgHandler"

    const-string v1, "cancelEMHandlerSendPendingBroadcast : Nothing to do"

    .line 291
    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28d

    .line 295
    :cond_2b
    iget-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v2, v2, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 296
    iget-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v2, v2, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    :cond_3c
    iget-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v2, v2, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 299
    iget-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v2, v2, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 301
    :cond_4d
    iget-object v1, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v1, v1, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 302
    iget-object v1, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v1, v1, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5e
    const-string v1, "EMPkgHandler"

    const-string v2, "EM_CANCEL_SENDING_BROADCAST"

    .line 306
    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_28d

    :cond_6e
    const-string v1, "EMPkgHandler"

    const-string v2, "EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED"

    .line 280
    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 282
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 283
    iget-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v2, v2, Lcom/android/server/pm/EmergencyModePackageHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->resetTask()V

    goto/16 :goto_28d

    :cond_8d
    const-string v1, "EMPkgHandler"

    const-string v2, "EM_CHECK_TIMEOUT_OF_BROADCAST"

    .line 274
    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_28d

    :cond_9d
    const-string v2, "EMPkgHandler"

    const-string v7, "EM_SEND_PENDING_BROADCAST Start"

    .line 211
    invoke-static {v2, v7}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v2, v2, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 213
    iget-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v2, v2, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    :cond_b5
    iget v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    iget v7, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    if-lt v2, v7, :cond_f5

    .line 218
    iput v3, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    .line 219
    iget v1, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    iget v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    if-ne v1, v2, :cond_cc

    .line 220
    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_28d

    :cond_cc
    const-string v1, "EMPkgHandler"

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SKIP EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED emPrevioudID["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] emID["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28d

    :cond_f5
    move v2, v3

    :goto_f6
    const/16 v4, 0xa

    if-ge v2, v4, :cond_200

    .line 231
    iget v4, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    iget v7, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    if-ge v4, v7, :cond_200

    const/4 v4, -0x1

    .line 234
    iget-object v7, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v7, v7, Lcom/android/server/pm/EmergencyModePackageHandler;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v7

    .line 235
    :try_start_106
    iget-object v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v8, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v9, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget v10, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    if-eqz v8, :cond_120

    .line 237
    iget v4, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUserId:I

    invoke-virtual {v8, v4}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v4

    .line 239
    :cond_120
    monitor-exit v7
    :try_end_121
    .catchall {:try_start_106 .. :try_end_121} :catchall_1fd

    const/16 v7, 0x9

    if-eq v2, v7, :cond_12f

    .line 240
    iget v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    iget v9, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    sub-int/2addr v9, v6

    if-ne v8, v9, :cond_12d

    goto :goto_12f

    :cond_12d
    move v8, v3

    goto :goto_130

    :cond_12f
    :goto_12f
    move v8, v6

    .line 244
    :goto_130
    iget-object v9, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    iget v10, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget v9, v9, v10

    if-ne v4, v9, :cond_18e

    int-to-float v4, v10

    .line 246
    iget v7, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    if-eqz v8, :cond_16b

    .line 248
    iget-object v4, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v4, v4, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    const-wide/32 v7, 0xea60

    invoke-virtual {v4, v1, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 249
    iget-object v9, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v4, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget v7, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget-object v10, v4, v7

    iget-object v4, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    aget-boolean v11, v4, v7

    iget-object v4, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    aget-object v12, v4, v7

    iget-object v4, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    aget v13, v4, v7

    iget-object v14, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

    iget v15, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    invoke-static/range {v9 .. v15}, Lcom/android/server/pm/EmergencyModePackageHandler;->-$$Nest$msendPackageChangedBroadcastWithReceiver(Lcom/android/server/pm/EmergencyModePackageHandler;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V

    goto :goto_188

    .line 251
    :cond_16b
    iget-object v4, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v7, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    aget-object v17, v7, v10

    iget-object v7, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    aget-boolean v18, v7, v10

    iget-object v7, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    aget-object v19, v7, v10

    iget-object v7, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    aget v20, v7, v10

    const/16 v21, 0x0

    iget v7, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    move-object/from16 v16, v4

    move/from16 v22, v7

    invoke-static/range {v16 .. v22}, Lcom/android/server/pm/EmergencyModePackageHandler;->-$$Nest$msendPackageChangedBroadcastWithReceiver(Lcom/android/server/pm/EmergencyModePackageHandler;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V

    .line 253
    :goto_188
    iget v4, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    goto :goto_1f9

    :cond_18e
    const-string v8, "EMPkgHandler"

    .line 258
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SKIP EM_SEND_PENDING_BROADCAST ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] / ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    sub-int/2addr v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] name["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget v11, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] curr["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]  now["

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    iget v10, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    aget v4, v4, v10

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]  emUserId["

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUserId:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v2, v7, :cond_1ed

    .line 261
    iget v4, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    iget v7, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    sub-int/2addr v7, v6

    if-ne v4, v7, :cond_1f4

    .line 262
    :cond_1ed
    iget-object v4, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v4, v4, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 264
    :cond_1f4
    iget v4, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    :goto_1f9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f6

    :catchall_1fd
    move-exception v0

    .line 239
    :try_start_1fe
    monitor-exit v7
    :try_end_1ff
    .catchall {:try_start_1fe .. :try_end_1ff} :catchall_1fd

    throw v0

    :cond_200
    const-string v0, "EMPkgHandler"

    const-string v1, "EM_SEND_PENDING_BROADCAST End"

    .line 269
    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28d

    :cond_209
    const-string v2, "EMPkgHandler"

    const-string v6, "EM_MAKE_PENDING_BROADCAST Start"

    .line 173
    invoke-static {v2, v6}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->initForPendingBroadcast(I)V

    .line 185
    iget-object v1, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v1, v1, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    if-eqz v1, :cond_286

    .line 186
    invoke-virtual {v1}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->size()I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    if-gtz v1, :cond_24b

    const-string v1, "EMPkgHandler"

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pending size ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] EM_MAKE_PENDING_BROADCAST Cancel"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iput v3, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    .line 191
    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 194
    :cond_24b
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    .line 195
    new-array v2, v1, [Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    .line 196
    new-array v2, v1, [I

    iput-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    .line 197
    new-array v2, v1, [Z

    iput-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    .line 198
    new-array v1, v1, [I

    iput-object v1, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    .line 199
    iget-object v1, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v1, v1, Lcom/android/server/pm/EmergencyModePackageHandler;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 200
    :try_start_264
    iget-object v6, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v7, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    iget-object v10, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    iget-object v11, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    iget v12, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    invoke-static/range {v6 .. v12}, Lcom/android/server/pm/EmergencyModePackageHandler;->-$$Nest$mhandlePendingBroadcastsForBurst(Lcom/android/server/pm/EmergencyModePackageHandler;[Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I

    move-result v2

    iput v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    .line 201
    monitor-exit v1
    :try_end_279
    .catchall {:try_start_264 .. :try_end_279} :catchall_283

    if-lez v2, :cond_286

    .line 203
    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_286

    :catchall_283
    move-exception v0

    .line 201
    :try_start_284
    monitor-exit v1
    :try_end_285
    .catchall {:try_start_284 .. :try_end_285} :catchall_283

    throw v0

    :cond_286
    :goto_286
    const-string v0, "EMPkgHandler"

    const-string v1, "EM_MAKE_PENDING_BROADCAST End"

    .line 206
    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_28d
    return-void
.end method

.method public getProgressionOfPackageChanged()I
    .registers 1

    .line 159
    iget p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    const/4 v0, 0x0

    .line 164
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    .line 166
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :catchall_8
    move-exception p0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 167
    throw p0
.end method

.method public initForPendingBroadcast(I)V
    .registers 3

    .line 117
    invoke-virtual {p0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->makeNewID()V

    .line 118
    iget v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    .line 121
    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    .line 122
    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    .line 123
    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    .line 125
    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    .line 126
    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    .line 127
    iput p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUserId:I

    .line 128
    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    return-void
.end method

.method public isCanceled()Z
    .registers 2

    .line 152
    iget v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    iget p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    if-ne v0, p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public makeNewID()V
    .registers 3

    .line 147
    iget v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "makeNewID ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EMPkgHandler"

    invoke-static {v0, p0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetTask()V
    .registers 2

    .line 132
    invoke-virtual {p0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->makeNewID()V

    .line 133
    iget v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPreviousID:I

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emPackages:[Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    .line 136
    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emUids:[I

    .line 137
    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emDontKillFlags:[Z

    .line 138
    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emNewState:[I

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emSize:I

    .line 140
    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emTotSize:I

    .line 141
    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emCurrentPosition:I

    .line 142
    iput v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emProgression:I

    const-string p0, "EMPkgHandler"

    const-string v0, "EMPackageHandler memory references are released"

    .line 143
    invoke-static {p0, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
