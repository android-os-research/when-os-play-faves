.class final Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Listener"
.end annotation


# instance fields
.field final mMotionEvents:I

.field final mMotionSensors:I

.field final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionService;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionService;Landroid/os/IBinder;II)V
    .registers 5
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "motion_sensors"    # I
    .param p4, "motion_events"    # I

    .line 1136
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1137
    iput-object p2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    .line 1138
    iput p3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mMotionSensors:I

    .line 1139
    iput p4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mMotionEvents:I

    .line 1140
    return-void
.end method

.method private checkConditionPackageName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "listenerPackageName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1254
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetINCALLUI_PACKAGE_NAME(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1255
    :cond_e
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetINCALLUI_PACKAGE_NAME(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/lang/String;

    move-result-object v0

    .line 1256
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    .line 1254
    :goto_24
    return v0
.end method

.method private getTopActivityPackageName()Ljava/lang/String;
    .registers 6

    .line 1261
    const/4 v0, 0x0

    .line 1262
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 1264
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :try_start_5
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1265
    .local v2, "activityManager":Landroid/app/ActivityManager;
    if-eqz v2, :cond_1c

    .line 1266
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_1b} :catch_1d

    move-object v1, v3

    .line 1270
    .end local v2    # "activityManager":Landroid/app/ActivityManager;
    :cond_1c
    goto :goto_25

    .line 1268
    :catch_1d
    move-exception v2

    .line 1269
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, "MotionRecognitionService"

    const-string v4, "Activity Running Task Info Error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    .end local v2    # "e":Ljava/lang/SecurityException;
    :goto_25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1273
    .local v3, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1274
    const-string v4, "com.android.phone"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 1275
    goto :goto_45

    .line 1277
    .end local v3    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_44
    goto :goto_29

    .line 1279
    :cond_45
    :goto_45
    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 8

    .line 1143
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmListeners(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 1144
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    const/16 v2, 0x19

    if-ge v1, v2, :cond_3a

    .line 1145
    const/4 v2, 0x1

    shl-int v3, v2, v1

    .line 1146
    .local v3, "motion_event":I
    :try_start_f
    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mMotionEvents:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_37

    .line 1147
    const-string v4, "MotionRecognitionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .binderDied event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmRefCntEvents(Lcom/samsung/android/gesture/MotionRecognitionService;)[I

    move-result-object v4

    aget v5, v4, v1

    sub-int/2addr v5, v2

    aput v5, v4, v1

    .line 1144
    .end local v3    # "motion_event":I
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1151
    .end local v1    # "i":I
    :cond_3a
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$mupdateRegisteredMotions(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    .line 1153
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmListeners(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1154
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmListeners(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_64

    .line 1155
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$mfinalizeMotionEngine(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    .line 1156
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    move-result-object v1

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 1158
    :cond_64
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .binderDied : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmListeners(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1160
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmListeners(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1162
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$mdisableUnusedSensors(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    .line 1163
    monitor-exit v0

    .line 1164
    return-void

    .line 1163
    :catchall_9c
    move-exception v1

    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_f .. :try_end_9e} :catchall_9c

    throw v1
.end method

.method public callback(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    .registers 11
    .param p1, "motionEvent"    # Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    .line 1167
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    move-result v0

    .line 1168
    .local v0, "motion":I
    const/4 v1, 0x1

    .line 1169
    .local v1, "shouldCallback":Z
    const-string v2, " [TOP & BX] skip "

    const-string v3, " [Bloom] skip "

    const-string v4, " state : "

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "MotionRecognitionService"

    sparse-switch v0, :sswitch_data_18e

    goto/16 :goto_11d

    .line 1189
    :sswitch_14
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingSensorSupported(Lcom/samsung/android/gesture/MotionRecognitionService;)Z

    move-result v8

    if-eqz v8, :cond_4f

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingSensorVersion(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v8

    if-ne v8, v6, :cond_4f

    .line 1190
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v8

    if-ne v8, v6, :cond_4f

    .line 1191
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const/4 v1, 0x0

    .line 1195
    :cond_4f
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingSensorSupported(Lcom/samsung/android/gesture/MotionRecognitionService;)Z

    move-result v3

    if-eqz v3, :cond_11d

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingSensorVersion(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v3

    if-ne v3, v5, :cond_11d

    .line 1196
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v3

    if-eq v3, v6, :cond_6f

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v3

    if-ne v3, v5, :cond_11d

    .line 1197
    :cond_6f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const/4 v1, 0x0

    goto/16 :goto_11d

    .line 1171
    :sswitch_94
    iget v8, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mMotionSensors:I

    and-int/2addr v8, v6

    if-nez v8, :cond_9f

    .line 1172
    const-string v8, "mMotionSensors & MOTION_USE_ACC == 0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    const/4 v1, 0x0

    .line 1175
    :cond_9f
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingSensorSupported(Lcom/samsung/android/gesture/MotionRecognitionService;)Z

    move-result v8

    if-eqz v8, :cond_da

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingSensorVersion(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v8

    if-ne v8, v6, :cond_da

    .line 1176
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v8

    if-ne v8, v6, :cond_da

    .line 1177
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v8}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    const/4 v1, 0x0

    .line 1181
    :cond_da
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingSensorSupported(Lcom/samsung/android/gesture/MotionRecognitionService;)Z

    move-result v3

    if-eqz v3, :cond_11d

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingSensorVersion(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v3

    if-ne v3, v5, :cond_11d

    .line 1182
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v3

    if-eq v3, v6, :cond_fa

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v3

    if-ne v3, v5, :cond_11d

    .line 1183
    :cond_fa
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    const/4 v1, 0x0

    .line 1211
    :cond_11d
    :goto_11d
    if-nez v1, :cond_120

    .line 1212
    return-void

    .line 1215
    :cond_120
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    if-eqz v2, :cond_188

    .line 1217
    :try_start_124
    invoke-static {v2}, Lcom/samsung/android/gesture/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gesture/IMotionRecognitionCallback;

    move-result-object v2

    .line 1218
    .local v2, "cb":Lcom/samsung/android/gesture/IMotionRecognitionCallback;
    if-nez v2, :cond_130

    .line 1219
    const-string v3, "IMotionRecognitionCallback is null!"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    return-void

    .line 1223
    :cond_130
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    move-result v3

    const/16 v4, 0x65

    if-eq v3, v4, :cond_140

    .line 1224
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    move-result v3

    const/16 v4, 0x66

    if-ne v3, v4, :cond_17b

    .line 1226
    :cond_140
    const-string v3, "check current task for multi-window"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-interface {v2}, Lcom/samsung/android/gesture/IMotionRecognitionCallback;->getListenerPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1229
    .local v3, "listenerPackageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->getTopActivityPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1230
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v4, :cond_150

    goto :goto_151

    :cond_150
    const/4 v6, 0x0

    :goto_151
    move v5, v6

    .line 1232
    .local v5, "foundTopPackage":Z
    if-eqz v5, :cond_17b

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->checkConditionPackageName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_17b

    .line 1233
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip event(direct-call) due to working in the background pkg : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", listener : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const/4 v1, 0x0

    .line 1240
    .end local v3    # "listenerPackageName":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "foundTopPackage":Z
    :cond_17b
    if-eqz v1, :cond_187

    .line 1241
    invoke-interface {v2, p1}, Lcom/samsung/android/gesture/IMotionRecognitionCallback;->motionCallback(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    :try_end_180
    .catch Landroid/os/RemoteException; {:try_start_124 .. :try_end_180} :catch_181

    goto :goto_187

    .line 1244
    .end local v2    # "cb":Lcom/samsung/android/gesture/IMotionRecognitionCallback;
    :catch_181
    move-exception v2

    .line 1245
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Failed motionCallback"

    invoke-static {v7, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1246
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_187
    :goto_187
    goto :goto_18d

    .line 1249
    :cond_188
    const-string v2, "null listener received motion event!"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :goto_18d
    return-void

    :sswitch_data_18e
    .sparse-switch
        0xa -> :sswitch_94
        0x56 -> :sswitch_14
    .end sparse-switch
.end method
