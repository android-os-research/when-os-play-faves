.class Lcom/android/commands/am/Instrument$TextStatusReporter;
.super Ljava/lang/Object;
.source "Instrument.java"

# interfaces
.implements Lcom/android/commands/am/Instrument$StatusReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/am/Instrument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextStatusReporter"
.end annotation


# instance fields
.field private mRawMode:Z

.field final synthetic this$0:Lcom/android/commands/am/Instrument;


# direct methods
.method public constructor <init>(Lcom/android/commands/am/Instrument;Z)V
    .registers 3
    .param p2, "rawMode"    # Z

    .line 160
    iput-object p1, p0, Lcom/android/commands/am/Instrument$TextStatusReporter;->this$0:Lcom/android/commands/am/Instrument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-boolean p2, p0, Lcom/android/commands/am/Instrument$TextStatusReporter;->mRawMode:Z

    .line 162
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "errorText"    # Ljava/lang/String;
    .param p2, "commandError"    # Z

    .line 208
    iget-boolean v0, p0, Lcom/android/commands/am/Instrument$TextStatusReporter;->mRawMode:Z

    if-eqz v0, :cond_26

    .line 209
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: commandError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    :cond_26
    if-nez p2, :cond_2d

    .line 214
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    :cond_2d
    return-void
.end method

.method public onInstrumentationFinishedLocked(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .registers 10
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "resultCode"    # I
    .param p3, "results"    # Landroid/os/Bundle;

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "pretty":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/commands/am/Instrument$TextStatusReporter;->mRawMode:Z

    if-nez v1, :cond_d

    if-eqz p3, :cond_d

    .line 191
    const-string v1, "stream"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    :cond_d
    if-eqz v0, :cond_15

    .line 194
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6e

    .line 196
    :cond_15
    if-eqz p3, :cond_56

    .line 197
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/commands/am/Instrument;->-$$Nest$smsorted(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 198
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSTRUMENTATION_RESULT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 199
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_23

    .line 202
    :cond_56
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSTRUMENTATION_CODE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 204
    :goto_6e
    return-void
.end method

.method public onInstrumentationStatusLocked(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .registers 10
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "resultCode"    # I
    .param p3, "results"    # Landroid/os/Bundle;

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "pretty":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/commands/am/Instrument$TextStatusReporter;->mRawMode:Z

    if-nez v1, :cond_d

    if-eqz p3, :cond_d

    .line 170
    const-string v1, "stream"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    :cond_d
    if-eqz v0, :cond_15

    .line 173
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_6e

    .line 175
    :cond_15
    if-eqz p3, :cond_56

    .line 176
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/commands/am/Instrument;->-$$Nest$smsorted(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 177
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSTRUMENTATION_STATUS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 178
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 179
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_23

    .line 181
    :cond_56
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSTRUMENTATION_STATUS_CODE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 183
    :goto_6e
    return-void
.end method
