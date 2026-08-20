.class Landroid/app/job/JobServiceEngine$JobHandler;
.super Landroid/os/Handler;
.source "JobServiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobServiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JobHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/job/JobServiceEngine;


# direct methods
.method constructor blacklist <init>(Landroid/app/job/JobServiceEngine;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/app/job/JobServiceEngine;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 95
    iput-object p1, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    .line 96
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 97
    return-void
.end method

.method private greylist-max-o ackStartMessage(Landroid/app/job/JobParameters;Z)V
    .registers 8
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "workOngoing"    # Z

    .line 142
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    .line 143
    .local v0, "callback":Landroid/app/job/IJobCallback;
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    .line 144
    .local v1, "jobId":I
    const-string v2, "JobServiceEngine"

    if-eqz v0, :cond_17

    .line 146
    :try_start_c
    invoke-interface {v0, v1, p2}, Landroid/app/job/IJobCallback;->acknowledgeStartMessage(IZ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 149
    :goto_f
    goto :goto_23

    .line 147
    :catch_10
    move-exception v3

    .line 148
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "System unreachable for starting job."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_f

    .line 151
    :cond_17
    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 152
    const-string v3, "Attempting to ack a job that has already been processed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_23
    :goto_23
    return-void
.end method

.method private greylist-max-o ackStopMessage(Landroid/app/job/JobParameters;Z)V
    .registers 8
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "reschedule"    # Z

    .line 158
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    .line 159
    .local v0, "callback":Landroid/app/job/IJobCallback;
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    .line 160
    .local v1, "jobId":I
    const-string v2, "JobServiceEngine"

    if-eqz v0, :cond_17

    .line 162
    :try_start_c
    invoke-interface {v0, v1, p2}, Landroid/app/job/IJobCallback;->acknowledgeStopMessage(IZ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 165
    :goto_f
    goto :goto_23

    .line 163
    :catch_10
    move-exception v3

    .line 164
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "System unreachable for stopping job."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_f

    .line 167
    :cond_17
    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 168
    const-string v3, "Attempting to ack a job that has already been processed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_23
    :goto_23
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 101
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/job/JobParameters;

    .line 102
    .local v0, "params":Landroid/app/job/JobParameters;
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "JobServiceEngine"

    packed-switch v1, :pswitch_data_76

    .line 136
    const-string v1, "Unrecognised message received."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 122
    :pswitch_11
    iget v1, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_17

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    move v1, v3

    .line 123
    .local v1, "needsReschedule":Z
    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v3

    .line 124
    .local v3, "callback":Landroid/app/job/IJobCallback;
    if-eqz v3, :cond_2e

    .line 126
    :try_start_1f
    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    invoke-interface {v3, v4, v1}, Landroid/app/job/IJobCallback;->jobFinished(IZ)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_2d

    .line 127
    :catch_27
    move-exception v4

    .line 128
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Error reporting job finish to system: binder has goneaway."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_2d
    goto :goto_75

    .line 132
    :cond_2e
    const-string v4, "finishJob() called for a nonexistent job id."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    goto :goto_75

    .line 114
    .end local v1    # "needsReschedule":Z
    .end local v3    # "callback":Landroid/app/job/IJobCallback;
    :pswitch_34
    :try_start_34
    iget-object v1, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v1, v0}, Landroid/app/job/JobServiceEngine;->onStopJob(Landroid/app/job/JobParameters;)Z

    move-result v1

    .line 115
    .local v1, "ret":Z
    invoke-direct {p0, v0, v1}, Landroid/app/job/JobServiceEngine$JobHandler;->ackStopMessage(Landroid/app/job/JobParameters;Z)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_3e

    .line 119
    .end local v1    # "ret":Z
    goto :goto_75

    .line 116
    :catch_3e
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Application unable to handle onStopJob."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 105
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_4a
    :try_start_4a
    iget-object v1, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v1, v0}, Landroid/app/job/JobServiceEngine;->onStartJob(Landroid/app/job/JobParameters;)Z

    move-result v1

    .line 106
    .local v1, "workOngoing":Z
    invoke-direct {p0, v0, v1}, Landroid/app/job/JobServiceEngine$JobHandler;->ackStartMessage(Landroid/app/job/JobParameters;Z)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_53} :catch_54

    .line 110
    .end local v1    # "workOngoing":Z
    goto :goto_75

    .line 107
    :catch_54
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while executing job: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 139
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_75
    return-void

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_34
        :pswitch_11
    .end packed-switch
.end method
