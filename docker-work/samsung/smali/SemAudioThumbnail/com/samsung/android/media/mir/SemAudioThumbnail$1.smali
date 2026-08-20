.class Lcom/samsung/android/media/mir/SemAudioThumbnail$1;
.super Ljava/lang/Thread;
.source "SemAudioThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/mir/SemAudioThumbnail;->extract(Ljava/lang/String;ILcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;


# direct methods
.method constructor <init>(Lcom/samsung/android/media/mir/SemAudioThumbnail;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/media/mir/SemAudioThumbnail;
    .param p2, "arg0"    # Ljava/lang/String;

    .line 139
    iput-object p1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$1;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 142
    const/4 v0, -0x1

    .local v0, "oldState":I
    const/4 v1, -0x1

    .line 143
    .local v1, "newState":I
    const/4 v2, 0x0

    .line 144
    .local v2, "isDone":Z
    :goto_3
    if-nez v2, :cond_8a

    .line 146
    const-wide/16 v3, 0x64

    :try_start_7
    invoke-static {v3, v4}, Lcom/samsung/android/media/mir/SemAudioThumbnail$1;->sleep(J)V

    .line 147
    iget-object v3, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$1;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v3}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmHandle(Lcom/samsung/android/media/mir/SemAudioThumbnail;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$mgetStat(Lcom/samsung/android/media/mir/SemAudioThumbnail;I)I

    move-result v3
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_14} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_7b

    move v1, v3

    .line 154
    nop

    .line 157
    if-eq v0, v1, :cond_7a

    .line 158
    move v0, v1

    .line 159
    sparse-switch v1, :sswitch_data_8c

    goto :goto_7a

    .line 169
    :sswitch_1d
    :try_start_1d
    iget-object v3, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$1;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v3}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmHandle(Lcom/samsung/android/media/mir/SemAudioThumbnail;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$mdeinit(Lcom/samsung/android/media/mir/SemAudioThumbnail;I)I

    .line 170
    iget-object v3, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$1;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v3}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmListener(Lcom/samsung/android/media/mir/SemAudioThumbnail;)Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 171
    iget-object v3, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$1;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v3}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmListener(Lcom/samsung/android/media/mir/SemAudioThumbnail;)Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;->onDone(J)V

    .line 173
    :cond_39
    const/4 v2, 0x1

    .line 174
    goto :goto_7a

    .line 161
    :sswitch_3b
    iget-object v3, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$1;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v3}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmHandle(Lcom/samsung/android/media/mir/SemAudioThumbnail;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$mgetInfo(Lcom/samsung/android/media/mir/SemAudioThumbnail;I)J

    move-result-wide v3

    .line 162
    .local v3, "resultms":J
    iget-object v5, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$1;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v5}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmHandle(Lcom/samsung/android/media/mir/SemAudioThumbnail;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$mdeinit(Lcom/samsung/android/media/mir/SemAudioThumbnail;I)I

    .line 163
    iget-object v5, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$1;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v5}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmListener(Lcom/samsung/android/media/mir/SemAudioThumbnail;)Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    move-result-object v5

    if-eqz v5, :cond_5f

    .line 164
    iget-object v5, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$1;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v5}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmListener(Lcom/samsung/android/media/mir/SemAudioThumbnail;)Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;->onDone(J)V

    .line 166
    :cond_5f
    const/4 v2, 0x1

    .line 167
    goto :goto_7a

    .line 177
    .end local v3    # "resultms":J
    :sswitch_61
    const/4 v2, 0x1

    .line 178
    iget-object v3, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$1;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v3}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmListener(Lcom/samsung/android/media/mir/SemAudioThumbnail;)Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    move-result-object v3

    if-eqz v3, :cond_7a

    .line 179
    iget-object v3, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$1;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v3}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmListener(Lcom/samsung/android/media/mir/SemAudioThumbnail;)Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;->onDone(J)V
    :try_end_75
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_75} :catch_78
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_75} :catch_76

    goto :goto_7a

    .line 188
    :catch_76
    move-exception v3

    .line 189
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_8a

    .line 186
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_78
    move-exception v3

    .line 187
    .local v3, "e":Ljava/lang/NullPointerException;
    goto :goto_8a

    .line 190
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :cond_7a
    :goto_7a
    goto :goto_3

    .line 152
    :catch_7b
    move-exception v3

    .line 153
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_8a

    .line 148
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_7d
    move-exception v3

    .line 149
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 150
    iget-object v4, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$1;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v4}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmHandle(Lcom/samsung/android/media/mir/SemAudioThumbnail;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$mdeinit(Lcom/samsung/android/media/mir/SemAudioThumbnail;I)I

    .line 192
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_8a
    :goto_8a
    return-void

    nop

    :sswitch_data_8c
    .sparse-switch
        -0x4 -> :sswitch_61
        -0x1 -> :sswitch_61
        0x5 -> :sswitch_3b
        0x6 -> :sswitch_1d
    .end sparse-switch
.end method
