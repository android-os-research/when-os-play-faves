.class Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;
.super Ljava/lang/Object;
.source "UiAutomatorTestRunner.java"

# interfaces
.implements Landroid/app/IInstrumentationWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FakeInstrumentationWatcher"
.end annotation


# instance fields
.field private final mRawMode:Z

.field final synthetic this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;


# direct methods
.method private constructor <init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;->mRawMode:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 3

    .line 182
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "I\'m just a fake!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public instrumentationFinished(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .registers 10
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "resultCode"    # I
    .param p3, "results"    # Landroid/os/Bundle;

    .line 210
    monitor-enter p0

    .line 212
    const/4 v0, 0x0

    .line 216
    .local v0, "pretty":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 217
    :try_start_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_61

    .line 228
    .end local v0    # "pretty":Ljava/lang/String;
    :catchall_a
    move-exception v0

    goto :goto_66

    .line 219
    .restart local v0    # "pretty":Ljava/lang/String;
    :cond_c
    if-eqz p3, :cond_49

    .line 220
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 221
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

    .line 222
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 223
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_16

    .line 225
    :cond_49
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

    .line 227
    :goto_61
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 228
    .end local v0    # "pretty":Ljava/lang/String;
    monitor-exit p0

    .line 229
    return-void

    .line 228
    :goto_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_4 .. :try_end_67} :catchall_a

    throw v0
.end method

.method public instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .registers 10
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "resultCode"    # I
    .param p3, "results"    # Landroid/os/Bundle;

    .line 187
    monitor-enter p0

    .line 189
    const/4 v0, 0x0

    .line 193
    .local v0, "pretty":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 194
    :try_start_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_61

    .line 205
    .end local v0    # "pretty":Ljava/lang/String;
    :catchall_a
    move-exception v0

    goto :goto_66

    .line 196
    .restart local v0    # "pretty":Ljava/lang/String;
    :cond_c
    if-eqz p3, :cond_49

    .line 197
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 198
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
    goto :goto_16

    .line 202
    :cond_49
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

    .line 204
    :goto_61
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 205
    .end local v0    # "pretty":Ljava/lang/String;
    monitor-exit p0

    .line 206
    return-void

    .line 205
    :goto_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_4 .. :try_end_67} :catchall_a

    throw v0
.end method
