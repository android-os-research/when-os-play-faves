.class Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;
.super Landroid/os/Handler;
.source "SehCodecSolutionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;


# direct methods
.method constructor <init>(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 120
    iput-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SehCodecSolutionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    move-result-object v0

    invoke-virtual {v0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    move-result-object v0

    invoke-virtual {v0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->getToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_49

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xd2

    if-eq v0, v2, :cond_49

    .line 127
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    move-result-object v0

    invoke-virtual {v0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->registerToScpm()Z

    .line 130
    :cond_49
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v2, "intent is null."

    const-string v3, "sendBroadcast "

    const-string v4, "intent"

    sparse-switch v0, :sswitch_data_25a

    goto/16 :goto_259

    .line 205
    :sswitch_56
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$misBootCompleted(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 206
    const-string v0, "ignore before boot completed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_259

    .line 208
    :cond_65
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;

    .line 209
    .local v0, "event":Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v1}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmLogging(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/Logging;

    move-result-object v1

    invoke-virtual {v0}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lvendor/samsung/frameworks/codecsolution/Logging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_259

    .line 192
    .end local v0    # "event":Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;
    :sswitch_96
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 193
    .local v0, "dataWD":Landroid/os/Bundle;
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "intentName":Ljava/lang/String;
    const-string v5, "PLAYBACK_STATE"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 195
    .local v6, "playbackState":I
    if-nez v4, :cond_ab

    .line 196
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    goto/16 :goto_259

    .line 199
    :cond_ab
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v2, "intentWD":Landroid/content/Intent;
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " playbackState : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v1}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmContext(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 203
    goto/16 :goto_259

    .line 182
    .end local v0    # "dataWD":Landroid/os/Bundle;
    .end local v2    # "intentWD":Landroid/content/Intent;
    .end local v4    # "intentName":Ljava/lang/String;
    .end local v6    # "playbackState":I
    :sswitch_de
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 183
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "intent":Ljava/lang/String;
    if-nez v4, :cond_ed

    .line 185
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    goto/16 :goto_259

    .line 188
    :cond_ed
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v1}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmContext(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 190
    goto/16 :goto_259

    .line 176
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v4    # "intent":Ljava/lang/String;
    :sswitch_113
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    move-result-object v0

    if-eqz v0, :cond_259

    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    move-result-object v0

    invoke-virtual {v0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_259

    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    move-result-object v0

    invoke-virtual {v0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->getToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_259

    .line 177
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    move-result-object v0

    invoke-virtual {v0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->registerToScpm()Z

    goto/16 :goto_259

    .line 138
    :sswitch_13e
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 139
    .local v0, "pid":I
    iget-object v2, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v2}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmActivityManager(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 140
    .local v2, "runningAppProcesses":Ljava/util/List;
    if-nez v2, :cond_152

    .line 141
    const-string v3, "runningAppProcesses is null."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void

    .line 144
    :cond_152
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 145
    .local v3, "runningAppProcess":Ljava/util/Iterator;
    :goto_156
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_240

    .line 146
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 148
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_start_162
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v0, :cond_225

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pid("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") pkg("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_191} :catch_228

    .line 151
    :try_start_191
    iget-object v5, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v5}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmPidDumpIndex(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 152
    .local v5, "prev":I
    if-gez v5, :cond_19d

    .line 153
    const/16 v5, 0xff

    .line 155
    :cond_19d
    iget-object v6, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v6}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmPidDumpList(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    iget v6, v6, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->pid:I

    iget v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-eq v6, v8, :cond_20c

    .line 156
    iget-object v6, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v6}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmPidDumpList(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v8, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v8}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmPidDumpIndex(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    iput-object v8, v6, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->date:Ljava/util/Date;

    .line 157
    iget-object v6, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v6}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmPidDumpList(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v8, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v8}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmPidDumpIndex(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    iget v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v8, v6, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->pid:I

    .line 158
    iget-object v6, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v6}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmPidDumpList(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v8, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v8}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmPidDumpIndex(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    iget-object v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v7, v8, v7

    iput-object v7, v6, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->packageName:Ljava/lang/String;

    .line 159
    iget-object v6, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v6}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmPidDumpIndex(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fputmPidDumpIndex(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;I)V

    .line 160
    iget-object v6, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v6}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmPidDumpIndex(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)I

    move-result v7

    rem-int/lit16 v7, v7, 0x100

    invoke-static {v6, v7}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fputmPidDumpIndex(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;I)V
    :try_end_20c
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_20c} :catch_20d

    .line 164
    .end local v5    # "prev":I
    :cond_20c
    goto :goto_224

    .line 162
    :catch_20d
    move-exception v5

    .line 163
    .local v5, "e":Ljava/lang/Exception;
    :try_start_20e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t write dump info : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_224
    .catch Ljava/lang/Exception; {:try_start_20e .. :try_end_224} :catch_228

    .line 165
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_224
    return-void

    .line 170
    :cond_225
    nop

    .line 171
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    goto/16 :goto_156

    .line 167
    .restart local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_228
    move-exception v5

    .line 168
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t get the pkg of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void

    .line 172
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find the pkg of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    goto :goto_259

    .line 135
    .end local v0    # "pid":I
    .end local v2    # "runningAppProcesses":Ljava/util/List;
    .end local v3    # "runningAppProcess":Ljava/util/Iterator;
    :sswitch_257
    goto :goto_259

    .line 132
    :sswitch_258
    nop

    .line 215
    :cond_259
    :goto_259
    return-void

    :sswitch_data_25a
    .sparse-switch
        0xc8 -> :sswitch_258
        0xc9 -> :sswitch_257
        0xca -> :sswitch_13e
        0xd2 -> :sswitch_113
        0x320 -> :sswitch_de
        0x321 -> :sswitch_96
        0x384 -> :sswitch_56
    .end sparse-switch
.end method
