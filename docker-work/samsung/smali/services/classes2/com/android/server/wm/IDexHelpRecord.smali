.class public interface abstract Lcom/android/server/wm/IDexHelpRecord;
.super Ljava/lang/Object;
.source "IDexHelpRecord.java"


# virtual methods
.method public abstract addClientTransactionItemIfNeeded(Lcom/android/server/wm/ActivityRecord;Landroid/app/servertransaction/ClientTransaction;)Z
.end method

.method public abstract dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public abstract isCountExceed()Z
.end method

.method public abstract needToShow()Z
.end method

.method public abstract reportShown(Landroid/os/IBinder;)V
.end method

.method public abstract retrieveSettings(I)V
.end method

.method public abstract setHandler(Lcom/android/server/wm/DexHelpController$H;)V
.end method

.method public abstract timeout()V
.end method
